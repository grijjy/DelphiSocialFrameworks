unit Grijjy.FBSDK.iOS;

{ Provides class abstraction for the Facebook SDK libraries for iOS }

{ To bypass compile errors you must add a custom modified FMX.Platform.iOS to
  your project, see the instructions at https://github.com/grijjy/DelphiSocialFrameworks for more details }

interface

uses
  System.SysUtils,
  System.Messaging,
  FMX.Platform,
  Macapi.ObjCRuntime,
  iOSapi.Foundation,
  iOSapi.UIKit,
  FMX.Platform.iOS,
  Grijjy.FBSDK.iOS.API;

type
  TgoFacebookSDK = class
  private
    FLoginManager: FBSDKLoginManager;
  private
    { Application Delegates }
    procedure applicationDidFinishLaunchingWithOptions(const Sender: TObject;
      const M: TMessage);
    procedure applicationOpenURLWithSourceAnnotation(const Sender: TObject;
      const M: TMessage);
    procedure applicationDidBecomeActive(const Sender: TObject;
      const M: TMessage);
  private
    { Login }
    procedure LoginHandler(result: FBSDKLoginManagerLoginResult; error: NSError);
  private
    { Graph Requests }
    procedure GraphRequestHandler(connection: FBSDKGraphRequestConnection; result: Pointer; error: NSError);
  public
    { Login }
    procedure LogInWithReadPermissions(const APermissions: TArray<String>; const AViewController: UIViewController = nil;
      const AHandler: FBSDKLoginManagerRequestTokenHandler = nil);
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
  iOSapi.CocoaTypes,
  iOSapi.CoreGraphics,
  Macapi.OCBlocks,
  Grijjy.Accounts.iOS.API,
  Grijjy.FBSDK.Types,
  Macapi.ObjectiveC,
  Macapi.Helpers;

function _StringsToNSArray(const AStrings: TArray<String>): NSMutableArray;
var
  S: NSString;
  AString: String;
begin
  Result := TNSMutableArray.Create;
  for AString in AStrings do
  begin
    S := StrToNSStr(AString);
    Result.addObject((S as ILocalObject).GetObjectID);
  end;
end;

function _NSSetToStrings(const ANSSet: NSSet): TArray<String>;
var
  StringArray: NSArray;
  I: Integer;
  AString: String;
begin
  if ANSSet <> nil then
  begin
    SetLength(Result, ANSSet.count);
    StringArray := ANSSet.allObjects;
    for I := 0 to StringArray.Count - 1 do
    begin
      AString := NSStrToStr(TNSString.Wrap(StringArray.objectAtIndex(I)));
      Result[I] := AString;
    end;
  end;
end;

function _ValueForKey(const AKey: String; const ANSDictionary: NSDictionary): String;
var
  Key: NSString;
begin
  Key := StrToNSStr(AKey);
  Result := NSStrToStr(TNSString.Wrap(ANSDictionary.valueForKey(key)));
end;

{ TgoFacebookSDK }

constructor TgoFacebookSDK.Create;
begin
  FLoginManager := TFBSDKLoginManager.Create;
end;

destructor TgoFacebookSDK.Destroy;
begin
  FLoginManager.release;
  inherited;
end;

procedure TgoFacebookSDK.applicationDidFinishLaunchingWithOptions(const Sender: TObject;
  const M: TMessage);
var
  SharedInstance: FBSDKApplicationDelegate;
{ To bypass compile errors you must add a custom modified FMX.Platform.iOS to
  your project, see the instructions at https://github.com/grijjy/DelphiSocialFrameworks for more details }
  AppDelegateMessage_applicationDidFinishLaunchingWithOptions: TAppDelegateMessage_applicationDidFinishLaunchingWithOptions;
begin
  AppDelegateMessage_applicationDidFinishLaunchingWithOptions := M as TAppDelegateMessage_applicationDidFinishLaunchingWithOptions;
  SharedInstance := TFBSDKApplicationDelegate.Wrap(TFBSDKApplicationDelegate.OCClass.sharedInstance);
  SharedInstance.application(AppDelegateMessage_applicationDidFinishLaunchingWithOptions.Value.Application,
    AppDelegateMessage_applicationDidFinishLaunchingWithOptions.Value.Options);
end;

procedure TgoFacebookSDK.applicationOpenURLWithSourceAnnotation(const Sender: TObject;
  const M: TMessage);
var
  SharedInstance: FBSDKApplicationDelegate;
  AppDelegateMessage_applicationOpenURLWithSourceAnnotation: TAppDelegateMessage_applicationOpenURLWithSourceAnnotation;
begin
  AppDelegateMessage_applicationOpenURLWithSourceAnnotation := M as TAppDelegateMessage_applicationOpenURLWithSourceAnnotation;
  SharedInstance := TFBSDKApplicationDelegate.Wrap(TFBSDKApplicationDelegate.OCClass.sharedInstance);
  SharedInstance.application(AppDelegateMessage_applicationOpenURLWithSourceAnnotation.Value.Application,
    AppDelegateMessage_applicationOpenURLWithSourceAnnotation.Value.Url,
    AppDelegateMessage_applicationOpenURLWithSourceAnnotation.Value.SourceApplication,
    AppDelegateMessage_applicationOpenURLWithSourceAnnotation.Value.Annotation);
end;

procedure TgoFacebookSDK.applicationDidBecomeActive(const Sender: TObject;
  const M: TMessage);
begin
  TFBSDKAppEvents.OCClass.activateApp;
end;

procedure TgoFacebookSDK.LoginHandler(result: FBSDKLoginManagerLoginResult; error: NSError);
var
  LoginResult: TFacebookLoginResult;
  LoginResultMessage: TFacebookLoginResultMessage;
begin
  LoginResult.Initialize;
  if error <> nil then
  begin
    // error
    LoginResult.Error := error.code;
    LoginResult.ErrorDesc := NSStrToStr(error.localizedDescription);
  end
  else
  if result.isCancelled then
  begin
    // cancelled
    LoginResult.IsCancelled := True;
    LoginResult.GrantedPermissions := _NSSetToStrings(result.grantedPermissions);
    if result.token <> nil then
    begin
      LoginResult.Token := NSStrToStr(result.token.tokenString);
      if result.token.userId <> nil then
        LoginResult.UserID := NSStrToStr(result.token.userID);
    end;
  end
  else
  begin
    LoginResult.Result := True;
    LoginResult.GrantedPermissions := _NSSetToStrings(result.grantedPermissions);
    if result.token <> nil then
    begin
      LoginResult.Token := NSStrToStr(result.token.tokenString);
      if result.token.userId <> nil then
        LoginResult.UserID := NSStrToStr(result.token.userID);
    end;
  end;
  LoginResultMessage := TFacebookLoginResultMessage.Create(LoginResult);
  TMessageManager.DefaultManager.SendMessage(Self, LoginResultMessage);
end;

procedure TgoFacebookSDK.LogInWithReadPermissions(const APermissions: TArray<String>; const AViewController: UIViewController;
  const AHandler: FBSDKLoginManagerRequestTokenHandler);
begin
  if not Assigned(AHandler) then
    FLoginManager.logInWithReadPermissions(_StringsToNSArray(APermissions), nil, LoginHandler)
  else
    FLoginManager.logInWithReadPermissions(_StringsToNSArray(APermissions), nil, AHandler);
end;

function TgoFacebookSDK.CurrentAccessToken: String;
var
  AccessToken: FBSDKAccessToken;
begin
  AccessToken := TFBSDKAccessToken.Wrap(TFBSDKAccessToken.OCClass.currentAccessToken);
  Result := NSStrToStr(AccessToken.tokenString);
end;

function TgoFacebookSDK.CurrentUserId: String;
var
  AccessToken: FBSDKAccessToken;
begin
  AccessToken := TFBSDKAccessToken.Wrap(TFBSDKAccessToken.OCClass.currentAccessToken);
  Result := NSStrToStr(AccessToken.userID);
end;

procedure TgoFacebookSDK.GraphRequestHandler(connection: FBSDKGraphRequestConnection; result: Pointer; error: NSError);
var
  GraphResult: TFacebookGraphResult;
  GraphResultMessage: TFacebookGraphResultMessage;
  Err: Pointer;
  JsonData: NSData;
  S: NSString;
begin
  GraphResult.Initialize;
  if error <> nil then
  begin
    GraphResult.Error := error.code;
    GraphResult.ErrorDesc := NSStrToStr(error.localizedDescription);
  end
  else
  begin
    JsonData := TNSJSONSerialization.OCClass.dataWithJSONObject(result, 0, @Err);
    S := TNSString.Wrap(TNSString.Alloc.initWithData(JsonData, NSUTF8StringEncoding));
    try
      if S <> nil then
        GraphResult.Json := NSStrToStr(S);
    finally
      S.release;
    end;
    GraphResult.Result := True;
  end;
  GraphResultMessage := TFacebookGraphResultMessage.Create(GraphResult);
  TMessageManager.DefaultManager.SendMessage(Self, GraphResultMessage);
end;

procedure TgoFacebookSDK.GraphPath(const APath: String);
var
  GraphRequest: FBSDKGraphRequest;
begin
  GraphRequest := TFBSDKGraphRequest.Alloc.initWithGraphPath(StrToNSStr(APath), nil);
  GraphRequest.startWithCompletionHandler(GraphRequestHandler);
end;

initialization
  { we need to initialize before startup to handle didFinishLaunchingWithOptions
    from the application delegate }
  FacebookSDK := TgoFacebookSDK.Create;
  TMessageManager.DefaultManager.SubscribeToMessage(TAppDelegateMessage_applicationDidFinishLaunchingWithOptions,
    FacebookSDK.applicationDidFinishLaunchingWithOptions);
  TMessageManager.DefaultManager.SubscribeToMessage(TAppDelegateMessage_applicationOpenURLWithSourceAnnotation,
    FacebookSDK.applicationOpenURLWithSourceAnnotation);
  TMessageManager.DefaultManager.SubscribeToMessage(TAppDelegateMessage_applicationDidBecomeActive,
    FacebookSDK.applicationDidBecomeActive);

finalization
  TMessageManager.DefaultManager.Unsubscribe(TAppDelegateMessage_applicationDidFinishLaunchingWithOptions,
    FacebookSDK.applicationDidFinishLaunchingWithOptions);
  TMessageManager.DefaultManager.Unsubscribe(TAppDelegateMessage_applicationOpenURLWithSourceAnnotation,
    FacebookSDK.applicationOpenURLWithSourceAnnotation);
  TMessageManager.DefaultManager.Unsubscribe(TAppDelegateMessage_applicationDidBecomeActive,
    FacebookSDK.applicationDidBecomeActive);
  FacebookSDK.Free;

end.
