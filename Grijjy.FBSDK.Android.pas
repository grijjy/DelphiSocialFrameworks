unit Grijjy.FBSDK.Android;

{ Provides class abstraction for the Facebook SDK libraries for Android }

interface

uses
  System.SysUtils,
  System.Messaging,
  FMX.Platform,
  Androidapi.JNI,
  Androidapi.JNI.App,
  Androidapi.JNIBridge,
  Androidapi.JNI.JavaTypes,
  Androidapi.JNI.Os,
  Androidapi.JNI.GraphicsContentViewText,
  Grijjy.FBSDK.Android.API;

type
  TgoFacebookSDK = class
  private
    FCallbackManager: JCallbackManager;
    FLoginManager: JLoginManager;
  private type
    TFacebookCallback = class(TJavaLocal, JFacebookCallback)
    private
      [weak] FImplementation: TgoFacebookSDK;
    public
      procedure onCancel; cdecl;
      procedure onError(P1: JFacebookException); cdecl;
      { Login }
      procedure onSuccess(P1: JObject); cdecl;
    public
      constructor Create(const AImplementation: TgoFacebookSDK);
    end;
  private
    FFacebookCallback: TFacebookCallback;
    procedure HandleActivityMessage(const Sender: TObject; const M: TMessage);
    procedure ApplicationEventHandler(const Sender: TObject; const Msg: TMessage);
  private type
    { Graph Requests }
    TFacebookGraphRequestHandler = class(TJavaLocal, JGraphRequest_CallbackClass, JGraphRequest_Callback)
    private
      FImplementation: TgoFacebookSDK;
    public
      procedure onCompleted(P1: JGraphResponse); cdecl;
    public
      constructor Create(const AImplementation: TgoFacebookSDK);
    end;
  private
    FFacebookGraphRequestHandler: TFacebookGraphRequestHandler;
  public
    { Login }
    procedure LogInWithReadPermissions(const APermissions: TArray<String>);
    function CurrentAccessToken: String;
    function CurrentUserId: String;
  public
    { Graph Requests }
    procedure GraphPath(const APath: String);
  public
    constructor Create;
    destructor Destroy; override;
  end;

var
  FacebookSDK: TgoFacebookSDK;

implementation

uses
  System.Types,
  System.UITypes,
  System.Classes,
  Androidapi.Helpers,
  Grijjy.FBSDK.Types;

{ Helpers }

function _StringsToJArrayList(const AStrings: TArray<String>): JArrayList;
var
  S: JString;
  AString: String;
begin
  Result := TJArrayList.JavaClass.init(Length(AStrings));
  for AString in AStrings do
  begin
    S := StringToJString(AString);
    Result.add(S);
  end;
end;

function _JSetToStrings(const ASet: JSet): TArray<String>;
var
  Iterator: JIterator;
  Index: Integer;
  S: JString;
begin
  SetLength(Result, ASet.size);
  Index := 0;
  Iterator := ASet.iterator;
  while Iterator.hasNext do
  begin
    S := TJString.Wrap((Iterator.next as ILocalObject).GetObjectID);
    if S <> nil then
    begin
      Result[Index] := JStringToString(S);
      Inc(Index);
    end;
  end;
end;

function IsFacebookIntent(const AIntent: JIntent): Boolean;
var
  Extras: JBundle;
  ExtrasArray: TJavaObjectArray<AndroidApi.JNI.JavaTypes.JObject>;
begin
  Extras := AIntent.getExtras;
  if Extras <> nil then
  begin
    ExtrasArray := Extras.KeySet.toArray;
    if ExtrasArray.Length > 0 then
      Result := JStringToString(ExtrasArray.Items[0].toString) = 'com.facebook.LoginFragment:Result'
    else
      Result := False;
  end
  else
    Result := False;
end;

{ TgoFacebookSDK.TFacebookCallback }

constructor TgoFacebookSDK.TFacebookCallback.Create(
  const AImplementation: TgoFacebookSDK);
begin
  Assert(Assigned(AImplementation));
  inherited Create;
  FImplementation := AImplementation;
end;

procedure TgoFacebookSDK.HandleActivityMessage(const Sender: TObject; const M: TMessage);
begin
  if M is TMessageResultNotification then
  begin
    TMessageManager.DefaultManager.Unsubscribe(TMessageResultNotification, HandleActivityMessage);
    FCallbackManager.onActivityResult(TMessageResultNotification(M).RequestCode, TMessageResultNotification(M).ResultCode, TMessageResultNotification(M).Value);
  end;
end;

procedure TgoFacebookSDK.TFacebookCallback.onCancel;
var
  LoginResult: TFacebookLoginResult;
  LoginResultMessage: TFacebookLoginResultMessage;
begin
  LoginResult.Initialize;
  LoginResult.IsCancelled := True;
  LoginResultMessage := TFacebookLoginResultMessage.Create(LoginResult);
  TMessageManager.DefaultManager.SendMessage(Self, LoginResultMessage);
end;

procedure TgoFacebookSDK.TFacebookCallback.onError(P1: JFacebookException);
var
  LoginResult: TFacebookLoginResult;
  LoginResultMessage: TFacebookLoginResultMessage;
begin
  LoginResult.Initialize;
  if P1 <> nil then
    LoginResult.ErrorDesc := JStringToString(P1.toString);
  LoginResultMessage := TFacebookLoginResultMessage.Create(LoginResult);
  TMessageManager.DefaultManager.SendMessage(Self, LoginResultMessage);
end;

procedure TgoFacebookSDK.TFacebookCallback.onSuccess(P1: JObject);
var
  _LoginResult: JLoginResult;
  Token: JAccessToken;
  LoginResult: TFacebookLoginResult;
  LoginResultMessage: TFacebookLoginResultMessage;
begin
  _LoginResult := TJLoginResult.Wrap((P1 as ILocalObject).GetObjectID);
  LoginResult.Initialize;
  LoginResult.Result := True;
  LoginResult.GrantedPermissions := _JSetToStrings(_LoginResult.getRecentlyGrantedPermissions);
  Token := _LoginResult.getAccessToken;
  if Token <> nil then
  begin
    LoginResult.Token := JStringToString(Token.GetToken);
    if Token.getUserId <> nil then
      LoginResult.UserID := JStringToString(Token.getUserId);
  end;
  LoginResultMessage := TFacebookLoginResultMessage.Create(LoginResult);
  TMessageManager.DefaultManager.SendMessage(Self, LoginResultMessage);
end;

{ TgoFacebookSDK.TFacebookGraphRequestHandler }

constructor TgoFacebookSDK.TFacebookGraphRequestHandler.Create(
  const AImplementation: TgoFacebookSDK);
begin
  Assert(Assigned(AImplementation));
  inherited Create;
  FImplementation := AImplementation;
end;

procedure TgoFacebookSDK.TFacebookGraphRequestHandler.onCompleted(
  P1: JGraphResponse);
var
  GraphResult: TFacebookGraphResult;
  GraphResultMessage: TFacebookGraphResultMessage;
begin
  GraphResult.Initialize;
  GraphResult.Json := JStringToString(P1.getRawResponse);
  GraphResult.Result := True;
  GraphResultMessage := TFacebookGraphResultMessage.Create(GraphResult);
  TMessageManager.DefaultManager.SendMessage(Self, GraphResultMessage);
end;

{ TgoFacebookSDK }

constructor TgoFacebookSDK.Create;
begin
  // TJFacebookSdk.JavaClass.sdkInitialize(TAndroidHelper.Context.getApplicationContext); { no longer needed since Facebook SDK 4.19 }
  TMessageManager.DefaultManager.SubscribeToMessage(TApplicationEventMessage, ApplicationEventHandler);
end;

destructor TgoFacebookSDK.Destroy;
begin
  inherited;
  TMessageManager.DefaultManager.Unsubscribe(TApplicationEventMessage, ApplicationEventHandler);
end;

procedure TgoFacebookSDK.ApplicationEventHandler(const Sender: TObject; const Msg: TMessage);
begin
  Assert(Assigned(Msg));
  Assert(Msg is TApplicationEventMessage);

  case TApplicationEventMessage(Msg).Value.Event of
    TApplicationEvent.WillBecomeForeground:
        TJAppEventsLogger.JavaClass.activateApp(TAndroidHelper.Context.getApplicationContext);
    TApplicationEvent.EnteredBackground:
        TJAppEventsLogger.JavaClass.deactivateApp(TAndroidHelper.Context.getApplicationContext);
  end;
end;

procedure TgoFacebookSDK.LogInWithReadPermissions(const APermissions: TArray<String>);
var
  ArrayList: JArrayList;
  Collection: JCollection;
begin
  TMessageManager.DefaultManager.SubscribeToMessage(TMessageResultNotification, HandleActivityMessage);

  FCallbackManager := TJCallbackManager_Factory.JavaClass.create;
  FFacebookCallback := TFacebookCallback.Create(Self);

  FLoginManager := TJLoginManager.Create;
  FLoginManager.registerCallback(FCallbackManager, FFacebookCallback);

  ArrayList := _StringsToJArrayList(APermissions);
  Collection := TJCollection.Wrap((ArrayList as ILocalObject).GetObjectID);
  FLoginManager.logInWithReadPermissions(TAndroidHelper.Activity, Collection);
end;

function TgoFacebookSDK.CurrentAccessToken: String;
var
  Token: JAccessToken;
begin
  Token := TJAccessToken.JavaClass.getCurrentAccessToken;
  if Token = nil then
    Result := ''
  else
    Result := JStringToString(Token.GetToken);
end;

function TgoFacebookSDK.CurrentUserId: String;
var
  Token: JAccessToken;
begin
  Token := TJAccessToken.JavaClass.getCurrentAccessToken;
  if Token = nil then
    Result := ''
  else
    Result := JStringToString(Token.getUserId);
end;

procedure TgoFacebookSDK.GraphPath(const APath: String);
var
  Token: JAccessToken;
  Bundle: JBundle;
  Path, Name, Value: JString;
  GraphRequest: JGraphRequest;
  Pos1, Pos2: Integer;
begin
  if FFacebookGraphRequestHandler = nil then
    FFacebookGraphRequestHandler := TFacebookGraphRequestHandler.Create(Self);
  Token := TJAccessToken.JavaClass.getCurrentAccessToken;
  if Token <> nil then
  begin
    Bundle := TJBundle.JavaClass.init;
    { parse path into strings }
    Pos1 := APath.IndexOf('?');
    if Pos1 >= 0 then
    begin
      Path := StringToJString('/' + APath.Substring(0, Pos1));
      Pos2 := APath.IndexOf('=', Pos1);
      if Pos2 >= 0 then
      begin
        Name := StringToJString(APath.Substring(Pos1 + 1, Pos2 - Pos1 - 1));
        Value := StringToJString(APath.Substring(Pos2 + 1));
      end;
    end
    else
      Path := StringToJString('/' + APath);
    Bundle.putString(Name, Value); { TODO: handle more complex requests }
    GraphRequest := TJGraphRequest.JavaClass.init(Token, Path, Bundle, TJHttpMethod.JavaClass.GET, FFacebookGraphRequestHandler);
    GraphRequest.executeAsync;
  end;
end;

initialization
  FacebookSDK := TgoFacebookSDK.Create;

finalization
  FacebookSDK.Free;

end.
