unit Grijjy.FacebookAPI;

{ Http Rest interface for Facebook API }

interface

uses
  Grijjy.FBSDK.Types;

type
  TFacebook = class
  private
    FClientId: String;
    FClientSecret: String;
    FAccessToken: String;
  private
    { Http }
    function Get(const AUrl: String; out AResponse: String): Integer;
  public
    { Helpers }
    class function ValueForParam(const AParams, AName: String): String;
    class function ExistsParam(const AParams, AName: String): Boolean;
  public
    { Login & authentication flow }
    function OAuth2_Url: String;
  public
    function DebugToken(const AInputToken: String; out ADebugAccessToken: String;
      out AAppId, AUserId: String): Integer;
    function DebugGetUser(const AInputToken: String; out AAppId, AId, AName, AEmail: String): Integer;
  public
    function GetUser(const AUserId: String; out AUser: TFacebookUser): Integer;
    function GetUserFriendsCount(const AUserId: String; out AFriendsCount: Integer): Integer;
    function GetUserFriends(const AUserId: String; out AFriends: TFacebookUsers): Integer;
  public
    constructor Create(const AClientId: String = ''; const AClientSecret: String = '');
    destructor Destroy; override;
  public
    property AccessToken: String read FAccessToken write FAccessToken;
  end;

implementation

uses
  System.SysUtils,
  System.NetEncoding,
  Grijjy.Http,
  Grijjy.Bson,
  Grijjy.Bson.IO;

constructor TFacebook.Create(const AClientId, AClientSecret: String);
begin
  FClientId := AClientId;
  FClientSecret := AClientSecret;
end;

destructor TFacebook.Destroy;
begin
  inherited;
end;

class function TFacebook.ValueForParam(const AParams, AName: String): String;
var
  Strings: TArray<String>;
  S: String;
  Index: Integer;
begin
  Strings := AParams.Split(['&']);
  for S in Strings do
  begin
    Index := S.IndexOf(AName);
    if Index = 0 then
    begin
      Result := S.Substring(Index + Length(AName) + 1);
      Break;
    end;
  end;
end;

class function TFacebook.ExistsParam(const AParams, AName: String): Boolean;
var
  Strings: TArray<String>;
  S: String;
  Index: Integer;
begin
  Result := False;
  Strings := AParams.Split(['&']);
  for S in Strings do
  begin
    Index := S.IndexOf(AName);
    if Index = 0 then
    begin
      Result := True;
      Break;
    end;
  end;
end;

function TFacebook.OAuth2_Url: String;
begin
  Result := 'https://www.facebook.com/dialog/oauth' +
    '?client_id=' + TNetEncoding.URL.Encode(FClientId) +
    '&response_type=token' +
    '&redirect_uri=' + TNetEncoding.URL.Encode('https://www.facebook.com/connect/login_success.html');
end;

function TFacebook.DebugToken(const AInputToken: String; out ADebugAccessToken: String;
  out AAppId, AUserId: String): Integer;
var
  HTTP: TgoHTTPClient;
  Doc, DataDoc: TgoBsonDocument;
  Response: String;
begin
  HTTP := TgoHTTPClient.Create;
  try
    ADebugAccessToken := HTTP.Get('https://graph.facebook.com/oauth/access_token?' +
      'client_id=' + FClientId +
      '&client_secret=' + FClientSecret +
      '&grant_type=client_credentials');
    Result := HTTP.ResponseStatusCode;
    if Result = 200 then
    begin
      Response := HTTP.Get('https://graph.facebook.com/debug_token?' +
        'input_token=' + AInputToken +
        '&' + ADebugAccessToken);
      Result := HTTP.ResponseStatusCode;
      if Result = 200 then
      begin
        Doc := TgoBsonDocument.Parse(Response);
        DataDoc := Doc['data'].AsBsonDocument;
        AAppId := DataDoc['app_id'];
        AUserId := DataDoc['user_id'];
      end;
    end;
  finally
    HTTP.Free;
  end;
end;

function TFacebook.DebugGetUser(const AInputToken: String; out AAppId, AId, AName, AEmail: String): Integer;
var
  Doc: TgoBsonDocument;
  Response: String;
  DebugAccessToken: String;
begin
  Result := DebugToken(AInputToken, DebugAccessToken, AAppId, AId);
  if Result = 200 then
  begin
    Result := Get('https://graph.facebook.com/' + AId + '?fields=name,email&' + DebugAccessToken, Response);
    if Result = 200 then
    begin
      Doc := TgoBsonDocument.Parse(Response);
      AName := Doc['name'];
      AEmail:= Doc['email'];
    end;
  end;
end;

function TFacebook.Get(const AUrl: String; out AResponse: String): Integer;
var
  HTTP: TgoHTTPClient;
begin
  HTTP := TgoHTTPClient.Create;
  try
    AResponse := HTTP.Get(AUrl);
    Result := HTTP.ResponseStatusCode;
  finally
    HTTP.Free;
  end;
end;

function TFacebook.GetUser(const AUserId: String; out AUser: TFacebookUser): Integer;
var
  Doc: TgoBsonDocument;
  Response: String;
begin
  Result := Get('https://graph.facebook.com/' + AUserId + '?fields=id,name,email&access_token=' + FAccessToken, Response);
  if Result = 200 then
  begin
    Doc := TgoBsonDocument.Parse(Response);
    AUser.Id := Doc['id'];
    AUser.Name := Doc['name'];
    AUser.Email:= Doc['email'];
  end;
end;

function TFacebook.GetUserFriendsCount(const AUserId: String; out AFriendsCount: Integer): Integer;
var
  Url: String;
  Doc, Friends, Summary: TgoBsonDocument;
  Response: String;
begin
  Url := 'https://graph.facebook.com/' + AUserId + '?fields=friends.limit(0)&access_token=' + FAccessToken;
  Result := Get(Url, Response);
  if Result = 200 then
  begin
    Doc := TgoBsonDocument.Parse(Response);
    Friends := Doc['friends'].ToBsonDocument;
    Summary := Friends['summary'].ToBsonDocument;
    AFriendsCount := Summary['total_count'];
  end;
end;

function TFacebook.GetUserFriends(const AUserId: String; out AFriends: TFacebookUsers): Integer;
var
  Url: String;
  Doc, User, Paging, Picture, PictureData: TgoBsonDocument;
  Data: TgoBsonArray;
  Value: TgoBsonValue;
  I, Index: Integer;
  Response: String;
begin
  Index := 0;
  Url := 'https://graph.facebook.com/' + AUserId + '/friends?fields=id,name,picture.type(large)&access_token=' + FAccessToken;
  repeat
    Result := Get(Url, Response);
    if Result = 200 then
    begin
      Doc := TgoBsonDocument.Parse(Response);

      Data := Doc['data'].ToBsonArray;
      SetLength(AFriends, Length(AFriends) + Data.Count);
      for I := 0 to Data.Count - 1 do
      begin
        User := Data[I].AsBsonDocument;
        AFriends[Index].Id := User['id'];
        AFriends[Index].Name := User['name'];
        Picture := User['picture'].AsBsonDocument;
        if not Picture.IsNil then
        begin
          PictureData := Picture['data'].AsBsonDocument;
          if not PictureData.IsNil then
            AFriends[Index].ImageUrl := PictureData['url'];
        end;
        Inc(Index);
      end;

      { next page }
      if Doc.TryGetValue('paging', Value) then
      begin
        Paging := Value.AsBsonDocument;
        Url := Paging['next'];
      end
      else
        Break;
    end;
  until (Url = 'null') or (Result <> 200);
end;

end.
