unit Grijjy.FBSDK;

{ Cross platform abstraction for Facebook SDKs and libraries }

interface

uses
  Grijjy.FBSDK.Types,
  {$IF Defined(IOS)}
  Grijjy.FBSDK.iOS,
  {$ELSEIF Defined(ANDROID)}
  Grijjy.FBSDK.Android,
  {$ELSE}
    { Unsupported platform }
  {$ENDIF}
  System.Messaging,
  System.SysUtils;

type
  TgoFacebook = class
  private
    procedure FacebookLoginResultMessageListener(const Sender: TObject;
      const M: TMessage);
    procedure FacebookGraphResultMessageListener(const Sender: TObject;
      const M: TMessage);
  private
    function GetAccessToken: String;
  public
    constructor Create;
    destructor Destroy; override;
  public
    procedure Login;
    procedure GetSelf;
  public
    property AccessToken: String read GetAccessToken;
  end;

implementation

uses
  Grijjy.Bson,
  Grijjy.Bson.IO,
  Grijjy.Social;

{ TgoFacebook }

constructor TgoFacebook.Create;
begin
  TMessageManager.DefaultManager.SubscribeToMessage(TFacebookLoginResultMessage,
    FacebookLoginResultMessageListener);
  TMessageManager.DefaultManager.SubscribeToMessage(TFacebookGraphResultMessage,
    FacebookGraphResultMessageListener);
end;

destructor TgoFacebook.Destroy;
begin
  TMessageManager.DefaultManager.Unsubscribe(TFacebookLoginResultMessage,
    FacebookLoginResultMessageListener);
  TMessageManager.DefaultManager.Unsubscribe(TFacebookGraphResultMessage,
    FacebookGraphResultMessageListener);
  inherited;
end;

procedure TgoFacebook.FacebookLoginResultMessageListener(const Sender: TObject;
  const M: TMessage);
var
  FacebookLoginResultMessage: TFacebookLoginResultMessage;
  SocialLogin: TgoSocialLogin;
  SocialLoginMessage: TgoSocialLoginMessage;
begin
  FacebookLoginResultMessage := M as TFacebookLoginResultMessage;

  { social login message }
  SocialLogin.Result := FacebookLoginResultMessage.Value.Result;
  SocialLogin.Network := TgoSocialNetwork.Facebook;
  SocialLogin.Id := FacebookLoginResultMessage.Value.UserId;
  SocialLogin.AccessToken := FacebookLoginResultMessage.Value.Token;
  SocialLoginMessage := TgoSocialLoginMessage.Create(SocialLogin);
  TMessageManager.DefaultManager.SendMessage(Self, SocialLoginMessage);
end;

procedure TgoFacebook.FacebookGraphResultMessageListener(const Sender: TObject;
  const M: TMessage);
var
  FacebookGraphResultMessage: TFacebookGraphResultMessage;
begin
  FacebookGraphResultMessage := M as TFacebookGraphResultMessage;
end;

procedure TgoFacebook.Login;
var
  SocialLogin: TgoSocialLogin;
  SocialLoginMessage: TgoSocialLoginMessage;
begin
  {$IF Defined(IOS) or Defined(ANDROID)}
  if FacebookSDK.CurrentAccessToken = '' then
    FacebookSDK.LogInWithReadPermissions(['public_profile', 'user_friends', 'email'])
  else
  begin
    { social login message }
    SocialLogin.Result := True;
    SocialLogin.Network := TgoSocialNetwork.Facebook;
    SocialLogin.Id := FacebookSDK.CurrentUserId;
    SocialLogin.AccessToken := FacebookSDK.CurrentAccessToken;
    SocialLoginMessage := TgoSocialLoginMessage.Create(SocialLogin);
    TMessageManager.DefaultManager.SendMessage(Self, SocialLoginMessage);
  end;
  {$ELSEIF Defined(MSWINDOWS) and Defined(WINDOWS_SOCIAL)}
  FacebookSDK.LogIn(['public_profile', 'user_friends', 'email']);
  {$ELSE}
  { Facebook (currently) unsupported for this platform }
  SocialLogin.Result := False;
  SocialLogin.Network := TgoSocialNetwork.Facebook;
  SocialLogin.Username := '';
  SocialLogin.Password := '';
  SocialLoginMessage := TgoSocialLoginMessage.Create(SocialLogin);
  TMessageManager.DefaultManager.SendMessage(Self, SocialLoginMessage);
  {$ENDIF}
end;

function TgoFacebook.GetAccessToken: String;
begin
  {$IF Defined(IOS) or Defined(ANDROID)}
  Result := FacebookSDK.CurrentAccessToken;
  {$ELSEIF Defined(MSWINDOWS) and Defined(WINDOWS_SOCIAL)}
  Result := FacebookSDK.CurrentAccessToken;
  {$ELSE}
  Result := '';
  {$ENDIF}
end;

procedure TgoFacebook.GetSelf;
begin
  {$IF Defined(IOS) or Defined(ANDROID)}
  FacebookSDK.GraphPath('me?fields=name,email');
  {$ELSE}
  {$ENDIF}
end;

end.
