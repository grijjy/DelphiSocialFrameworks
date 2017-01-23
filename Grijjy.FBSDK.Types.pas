unit Grijjy.FBSDK.Types;

interface

uses
  System.Messaging;

type
  TFacebookLoginResult = record
  public
    Result: Boolean;
    Error: Integer;
    ErrorDesc: String;
    IsCancelled: Boolean;
    GrantedPermissions: TArray<String>;
    Token: String;
    UserId: String;
  public
    procedure Initialize;
  end;

  TFacebookLoginResultMessage = class(TMessage<TFacebookLoginResult>)
  public
    constructor Create(const AFacebookLoginResult: TFacebookLoginResult);
  end;

  TFacebookGraphResult = record
  public
    Result: Boolean;
    Error: Integer;
    ErrorDesc: String;
    Json: String;
  public
    procedure Initialize;
  end;

  TFacebookGraphResultMessage = class(TMessage<TFacebookGraphResult>)
  public
    constructor Create(const AFacebookGraphResult: TFacebookGraphResult);
  end;

type
  TFacebookUser = record
  public
    Id: String;
    Name: String;
    EMail: String;
    ImageUrl: String;
  public
    procedure Initialize;
  end;

  TFacebookUsers = TArray<TFacebookUser>;

implementation

{ TFacebookLoginResult }

procedure TFacebookLoginResult.Initialize;
begin
  Result := False;
  Error := 0;
  IsCancelled := False;
  GrantedPermissions := [];
  Token := '';
  UserId := '';
end;

{ TFacebookLoginResultMessage }

constructor TFacebookLoginResultMessage.Create(
  const AFacebookLoginResult: TFacebookLoginResult);
begin
  inherited Create(AFacebookLoginResult);
end;

{ TFacebookGraphResult }

procedure TFacebookGraphResult.Initialize;
begin
  Result := False;
  Error := 0;
  ErrorDesc := '';
end;

{ TFacebookGraphResultMessage }

constructor TFacebookGraphResultMessage.Create(const AFacebookGraphResult: TFacebookGraphResult);
begin
  inherited Create(AFacebookGraphResult);
end;

{ TFacebookUser }

procedure TFacebookUser.Initialize;
begin
  Id := '';
  Name := '';
  EMail := '';
end;

end.
