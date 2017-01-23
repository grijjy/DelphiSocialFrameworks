unit Grijjy.FBSDK.iOS.API;

interface

uses
  SysUtils,
  Macapi.ObjectiveC,
  iOSapi.CocoaTypes,
  iOSapi.Foundation,
  iOSapi.UIKit,
  Grijjy.Accounts.iOS.API;

const
  libFacebookSDKLoginKit = '/Library/Frameworks/FBSDKLoginKit.framework/FBSDKLoginKit';
  libFacebookSDKCoreKit = '/Library/Frameworks/FBSDKCoreKit.framework/FBSDKCoreKit';

{ FBSDKErrorCode }

const
  FBSDKReservedErrorCode = 0;
  FBSDKEncryptionErrorCode = 1;
  FBSDKInvalidArgumentErrorCode = 2;
  FBSDKUnknownErrorCode = 3;
  FBSDKNetworkErrorCode = 4;
  FBSDKAppEventsFlushErrorCode = 5;
  FBSDKGraphRequestNonTextMimeTypeReturnedErrorCode = 6;
  FBSDKGraphRequestProtocolMismatchErrorCode = 7;
  FBSDKGraphRequestGraphAPIErrorCode = 8;
  FBSDKDialogUnavailableErrorCode = 9;
  FBSDKAccessTokenRequiredErrorCode = 10;
  FBSDKAppVersionUnsupportedErrorCode = 11;
  FBSDKBrowswerUnavailableErrorCode = 12;

type
  FBSDKGraphRequestConnection = interface;

  FBSDKGraphRequestHandler = procedure (connection: FBSDKGraphRequestConnection; result: Pointer; error: NSError) of object;

{ FBSDKGraphRequest }

  FBSDKGraphRequest = interface;

  FBSDKGraphRequestClass = interface(NSObjectClass)
  ['{7A3567CF-A034-442D-983D-EE1E73BF165B}']
  end;

  FBSDKGraphRequest = interface(NSObject)
  ['{453E16B1-BBA0-41F2-85ED-0AD89CC41E5E}']
    function initWithGraphPath(graphPath: NSString; parameters: NSDictionary): FBSDKGraphRequest; overload; cdecl;
    function initWithGraphPath(graphPath: NSString; parameters: NSDictionary; HTTPMethod: NSString): FBSDKGraphRequest; overload; cdecl;
    function initWithGraphPath(graphPath: NSString; parameters: NSDictionary; tokenString: NSString; version: NSString; HTTPMethod: NSString): FBSDKGraphRequest; overload; cdecl;
    function parameters: NSMutableDictionary; cdecl;
    function tokenString: NSString; cdecl;
    function graphPath: NSString; cdecl;
    function HTTPMethod: NSString; cdecl;
    function version: NSString; cdecl;
    procedure setGraphErrorRecoveryDisabled(disable: Boolean); cdecl;
    function startWithCompletionHandler(handler: FBSDKGraphRequestHandler): FBSDKGraphRequestConnection; cdecl;
  end;

  TFBSDKGraphRequest = class(TOCGenericImport<FBSDKGraphRequestClass, FBSDKGraphRequest>) end;

{ FBSDKGraphRequestConnection }

  FBSDKGraphRequestConnectionDelegate = interface;

  FBSDKGraphRequestConnectionDelegateClass = interface(NSObjectClass)
  ['{AE1060DA-018F-4A6A-A8E7-1158BE649FB5}']
  end;

  FBSDKGraphRequestConnectionDelegate = interface(NSObject)
  ['{04BF1607-4D0A-497F-BB2F-805A476F3506}']
    procedure requestConnectionWillBeginLoading(connection: FBSDKGraphRequestConnection); cdecl;
    procedure requestConnectionDidFinishLoading(connection: FBSDKGraphRequestConnection); cdecl;
    procedure requestConnection(connection: FBSDKGraphRequestConnection; didFailWithError: NSError); overload; cdecl;
    procedure requestConnection(connection: FBSDKGraphRequestConnection; didSendBodyData: NSInteger; totalBytesWritten: NSInteger; totalBytesExpectedToWrite: NSInteger); overload; cdecl;
  end;

  TFBSDKGraphRequestConnectionDelegate = class(TOCGenericImport<FBSDKGraphRequestConnectionDelegateClass, FBSDKGraphRequestConnectionDelegate>) end;

  FBSDKGraphRequestConnectionClass = interface(NSObjectClass)
  ['{9C98D218-16FB-40FA-83BE-C4E8C77921A5}']
    { class } procedure setDefaultConnectionTimeout(defaultConnectionTimeout: NSTimeInterval); cdecl;
  end;

  FBSDKGraphRequestConnection = interface(NSObject)
  ['{2C33CC94-A71D-4F28-BB1E-17DB2475973B}']
    function delegate: Pointer; cdecl;
    procedure setDelegate(delegate: Pointer); cdecl;
    function timeout: NSTimeInterval; cdecl;
    procedure setTimeout(timeout: NSTimeInterval); cdecl;
    function URLResponse: NSHTTPURLResponse; cdecl;
    procedure addRequest(request: FBSDKGraphRequest; completionHandler: FBSDKGraphRequestHandler); overload; cdecl;
    procedure addRequest(request: FBSDKGraphRequest; completionHandler: FBSDKGraphRequestHandler; batchEntryName: NSString); overload; cdecl;
    procedure addRequest(request: FBSDKGraphRequest; completionHandler: FBSDKGraphRequestHandler; batchParameters: NSDictionary); overload; cdecl;
    procedure cancel; cdecl;
    procedure start; cdecl;
    procedure setDelegateQueue(queue: NSOperationQueue); cdecl;
    procedure overrideVersionPartWith(version: NSString); cdecl;
  end;

  TFBSDKGraphRequestConnection = class(TOCGenericImport<FBSDKGraphRequestConnectionClass, FBSDKGraphRequestConnection>) end;

{ FBSDKAccessToken }

  FBSDKAccessToken = interface;

  FBSDKAccessTokenClass = interface(NSObjectClass)
  ['{0B82CAFF-496F-49B0-8F33-1E70C3FC8922}']
    { class } function new: FBSDKAccessToken; cdecl;
    { class } function currentAccessToken: Pointer{FBSDKAccessToken}; cdecl;
    { class } procedure setCurrentAccessToken(token: FBSDKAccessToken); cdecl;
    { class } procedure refreshCurrentAccessToken(completionHandler: FBSDKGraphRequestHandler); cdecl;
  end;

  FBSDKAccessToken = interface(NSObject)
  ['{BAFF0036-4F43-4E7E-9D60-02B57DE00C7B}']
    function appID: NSString; cdecl;
    function declinedPermissions: NSSet; cdecl;
    function expirationDate: NSDate; cdecl;
    function permissions: NSSet; cdecl;
    function refreshDate: NSDate; cdecl;
    function tokenString: NSString; cdecl;
    function userID: NSString; cdecl;
    function init: FBSDKAccessToken; cdecl;
    function initWithTokenString(tokenString: NSString; permissions: NSArray; declinedPermissions: NSArray; appID: NSString;
      userID: NSString; expirationDate: NSDate; refreshDate: NSDate): FBSDKAccessToken; cdecl;
    function hasGranted(permission: NSString): Boolean; cdecl;
    function isEqualToAccessToken(token: FBSDKAccessToken): Boolean; cdecl;
  end;

  TFBSDKAccessToken = class(TOCGenericImport<FBSDKAccessTokenClass, FBSDKAccessToken>) end;

{ FBSDKLoginManagerLoginResult }

  FBSDKLoginManagerLoginResult = interface;

  FBSDKLoginManagerLoginResultClass = interface(NSObjectClass)
  ['{856F1142-4B67-490E-B56F-28CA71AD5471}']
  end;

  FBSDKLoginManagerLoginResult = interface(NSObject)
  ['{A220B88C-9C80-4694-B386-53385601484D}']
    function token: FBSDKAccessToken; cdecl;
    procedure setToken(token: FBSDKAccessToken); cdecl;
    function isCancelled: Boolean; cdecl;
    function grantedPermissions: NSSet; cdecl;
    procedure setGrantedPermissions(grantedPermissions: NSSet); cdecl;
    function declinedPermissions: NSSet; cdecl;
    procedure setDeclinedPermissions(declinedPermissions: NSSet); cdecl;
    function initWithToken(token: FBSDKAccessToken; isCancelled: Boolean; grantedPermissions: NSSet; declinedPermissions: NSSet): FBSDKLoginManagerLoginResult; cdecl;
  end;

  TFBSDKLoginManagerLoginResult = class(TOCGenericImport<FBSDKLoginManagerLoginResultClass, FBSDKLoginManagerLoginResult>) end;

{ FBSDKLoginManager }

  FBSDKDefaultAudience = NSUInteger;

const
  { Indicates that the user's friends are able to see posts made by the application }
  FBSDKDefaultAudienceFriends = 0;
  { Indicates that only the user is able to see posts made by the application }
  FBSDKDefaultAudienceOnlyMe = 1;
  { Indicates that all Facebook users are able to see posts made by the application }
  FBSDKDefaultAudienceEveryone = 2;

type
  FBSDKLoginBehavior = NSUInteger;

const
  { This is the default behavior, and indicates logging in through the native
   Facebook app may be used. The SDK may still use Safari instead. }
  FBSDKLoginBehaviorNative = 0;
  { Attempts log in through the Safari or SFSafariViewController, if available. }
  FBSDKLoginBehaviorBrowser = 1;
  { Attempts log in through the Facebook account currently signed in through
   the device Settings. If the account is not available to the app (either not configured by user or
   as determined by the SDK) this behavior falls back to FBSDKLoginBehaviorNative. }
  FBSDKLoginBehaviorSystemAccount = 2;
  { Attempts log in through a modal UIWebView pop up. This behavior is only available
    to certain types of apps. Please check the Facebook Platform Policy to verify your app
    meets the restrictions. }
  FBSDKLoginBehaviorWeb = 3;

type
{$M+}
  FBSDKLoginManagerRequestTokenHandler = procedure(result: FBSDKLoginManagerLoginResult; error: NSError) of object;

  FBSDKLoginManagerClass = interface(NSObjectClass)
  ['{5FDFCFC4-9A99-4E5C-A1A7-51DB58DF4E6C}']
    { class } procedure renewSystemCredentials(handler: TACAccountStoreCredentialRenewalHandler); cdecl;
  end;

  FBSDKLoginManager = interface(NSObject)
  ['{AF87DF68-D76C-460A-89BE-6340887EBB9A}']
    procedure logInWithReadPermissions(permissions: NSArray; handler: FBSDKLoginManagerRequestTokenHandler); cdecl; overload;
    procedure logInWithReadPermissions(permissions: NSArray; fromViewController: UIViewController; handler: FBSDKLoginManagerRequestTokenHandler); cdecl; overload;
    procedure logInWithPublishPermissions(permissions: NSArray; fromViewController: UIViewController; handler: FBSDKLoginManagerRequestTokenHandler); cdecl;
    procedure logOut; cdecl;
    function defaultAudience: FBSDKDefaultAudience; cdecl;
    procedure setDefaultAudience(defaultAudience: FBSDKDefaultAudience); cdecl;
    function loginBehavior: FBSDKLoginBehavior; cdecl;
    procedure setLoginBehavior(loginBehavior: FBSDKLoginBehavior); cdecl;
  end;

  TFBSDKLoginManager = class(TOCGenericImport<FBSDKLoginManagerClass, FBSDKLoginManager>) end;

{ FBSDKApplicationDelegate }

type
  FBSDKApplicationDelegateClass = interface(NSObjectClass)
  ['{F2DAC4C9-E5D4-436F-ABCC-E0D2325A2E2A}']
    { class } function sharedInstance: Pointer{FBSDKApplicationDelegate}; cdecl;
  end;

  FBSDKApplicationDelegate = interface(NSObject)
  ['{217B608D-C27E-473B-ACDC-2800520A03C8}']
    function application(application: UIApplication; openURL: NSURL; sourceApplication: NSString; annotation: Pointer): Boolean; cdecl; overload;
    function application(application: UIApplication; didFinishLaunchingWithOptions: NSDictionary): Boolean; cdecl; overload;
  end;

  TFBSDKApplicationDelegate = class(TOCGenericImport<FBSDKApplicationDelegateClass, FBSDKApplicationDelegate>) end;

{ FBSDKAppEvents }

type
  FBSDKAppEventsFlushBehavior = NSUInteger;

const
  { Flush automatically: periodically (once a minute or every 100 logged events) and always at app reactivation. }
  FBSDKAppEventsFlushBehaviorAuto = 0;

  { Only flush when the `flush` method is called. When an app is moved to background/terminated, the
   events are persisted and re-established at activation, but they will only be written with an
   explicit call to `flush`. }
  FBSDKAppEventsFlushBehaviorExplicitOnly = 1;

type
  FBSDKAppEventsClass = interface(NSObjectClass)
  ['{00B6C417-E8A4-4F93-BFAC-7DCBABD20055}']
    { class } procedure logEvent(eventName: NSString); cdecl; overload;
    { class } procedure logEvent(eventName: NSString; valueToSum: double); cdecl; overload;
    { class } procedure logEvent(eventName: NSString; parameters: NSDictionary); cdecl; overload;
    { class } procedure logEvent(eventName: NSString; valueToSum: double; parameters: NSDictionary); cdecl; overload;
    { class } procedure logEvent(eventName: NSString; valueToSum: NSNumber; parameters: NSDictionary; accessToken: FBSDKAccessToken); cdecl; overload;
    { class } procedure logPurchase(purchaseAmount: double; currency: NSString); cdecl; overload;
    { class } procedure logPurchase(purchaseAmount: double; currency: NSString; parameters: NSDictionary); cdecl; overload;
    { class } procedure logPurchase(purchaseAmount: double; currency: NSString; parameters: NSDictionary; accessToken: FBSDKAccessToken); cdecl; overload;
    { class } procedure activateApp; cdecl;
    { class } function flushBehavior: FBSDKAppEventsFlushBehavior; cdecl;
    { class } procedure setFlushBehavior(flushBehavior: FBSDKAppEventsFlushBehavior); cdecl;
    { class } procedure setLoggingOverrideAppID(appID: NSString); cdecl;
    { class } function loggingOverrideAppID: NSString; cdecl;
    { class } procedure flush; cdecl;
    { class } function requestForCustomAudienceThirdPartyIDWithAccessToken(accessToken: FBSDKAccessToken): FBSDKGraphRequest; cdecl;
  end;

  FBSDKAppEvents = interface(NSObject)
  ['{3E1F131C-F6C8-48D1-BFB5-1583D4B3B169}']
  end;

  TFBSDKAppEvents = class(TOCGenericImport<FBSDKAppEventsClass, FBSDKAppEvents>) end;

{ FBSDKAccessToken }

function FBSDKNonJSONResponseProperty: NSString; cdecl;
function FBSDKAccessTokenDidChangeNotification: NSString; cdecl;
function FBSDKAccessTokenDidChangeUserID: NSString; cdecl;
function FBSDKAccessTokenChangeOldKey: NSString; cdecl;
function FBSDKAccessTokenChangeNewKey: NSString; cdecl;

{ FBSDKAppEvents }

function FBSDKAppEventsLoggingResultNotification: NSString; cdecl;
function FBSDKAppEventsOverrideAppIDBundleKey: NSString; cdecl;
function FBSDKAppEventNameAchievedLevel: NSString; cdecl;
function FBSDKAppEventNameAddedPaymentInfo: NSString; cdecl;
function FBSDKAppEventNameAddedToCart: NSString; cdecl;
function FBSDKAppEventNameAddedToWishlist: NSString; cdecl;
function FBSDKAppEventNameCompletedRegistration: NSString; cdecl;
function FBSDKAppEventNameCompletedTutorial: NSString; cdecl;
function FBSDKAppEventNameInitiatedCheckout: NSString; cdecl;
function FBSDKAppEventNameRated: NSString; cdecl;
function FBSDKAppEventNameSearched: NSString; cdecl;
function FBSDKAppEventNameSpentCredits: NSString; cdecl;
function FBSDKAppEventNameUnlockedAchievement: NSString; cdecl;
function FBSDKAppEventNameViewedContent: NSString; cdecl;
function FBSDKAppEventParameterNameContentID: NSString; cdecl;
function FBSDKAppEventParameterNameContentType: NSString; cdecl;
function FBSDKAppEventParameterNameCurrency: NSString; cdecl;
function FBSDKAppEventParameterNameDescription: NSString; cdecl;
function FBSDKAppEventParameterNameLevel: NSString; cdecl;
function FBSDKAppEventParameterNameMaxRatingValue: NSString; cdecl;
function FBSDKAppEventParameterNameNumItems: NSString; cdecl;
function FBSDKAppEventParameterNamePaymentInfoAvailable: NSString; cdecl;
function FBSDKAppEventParameterNameRegistrationMethod: NSString; cdecl;
function FBSDKAppEventParameterNameSearchString: NSString; cdecl;
function FBSDKAppEventParameterNameSuccess: NSString; cdecl;
function FBSDKAppEventParameterValueYes: NSString; cdecl;
function FBSDKAppEventParameterValueNo: NSString; cdecl;

implementation

function FBSDKNonJSONResponseProperty: NSString; cdecl;
begin
  Result := CocoaNSStringConst(libFacebookSDKCoreKit, 'FBSDKNonJSONResponseProperty');
end;

function FBSDKAccessTokenDidChangeNotification: NSString; cdecl;
begin
  Result := CocoaNSStringConst(libFacebookSDKCoreKit, 'FBSDKAccessTokenDidChangeNotification');
end;

function FBSDKAccessTokenDidChangeUserID: NSString; cdecl;
begin
  Result := CocoaNSStringConst(libFacebookSDKCoreKit, 'FBSDKAccessTokenDidChangeUserID');
end;

function FBSDKAccessTokenChangeOldKey: NSString; cdecl;
begin
  Result := CocoaNSStringConst(libFacebookSDKCoreKit, 'FBSDKAccessTokenChangeOldKey');
end;

function FBSDKAccessTokenChangeNewKey: NSString; cdecl;
begin
  Result := CocoaNSStringConst(libFacebookSDKCoreKit, 'FBSDKAccessTokenChangeNewKey');
end;

function FBSDKAppEventsLoggingResultNotification: NSString; cdecl;
begin
  Result := CocoaNSStringConst(libFacebookSDKCoreKit, 'FBSDKAppEventsLoggingResultNotification');
end;

function FBSDKAppEventsOverrideAppIDBundleKey: NSString; cdecl;
begin
  Result := CocoaNSStringConst(libFacebookSDKCoreKit, 'FBSDKAppEventsOverrideAppIDBundleKey');
end;

function FBSDKAppEventNameAchievedLevel: NSString; cdecl;
begin
  Result := CocoaNSStringConst(libFacebookSDKCoreKit, 'FBSDKAppEventNameAchievedLevel');
end;

function FBSDKAppEventNameAddedPaymentInfo: NSString; cdecl;
begin
  Result := CocoaNSStringConst(libFacebookSDKCoreKit, 'FBSDKAppEventNameAddedPaymentInfo');
end;

function FBSDKAppEventNameAddedToCart: NSString; cdecl;
begin
  Result := CocoaNSStringConst(libFacebookSDKCoreKit, 'FBSDKAppEventNameAddedToCart');
end;

function FBSDKAppEventNameAddedToWishlist: NSString; cdecl;
begin
  Result := CocoaNSStringConst(libFacebookSDKCoreKit, 'FBSDKAppEventNameAddedToWishlist');
end;

function FBSDKAppEventNameCompletedRegistration: NSString; cdecl;
begin
  Result := CocoaNSStringConst(libFacebookSDKCoreKit, 'FBSDKAppEventNameCompletedRegistration');
end;

function FBSDKAppEventNameCompletedTutorial: NSString; cdecl;
begin
  Result := CocoaNSStringConst(libFacebookSDKCoreKit, 'FBSDKAppEventNameCompletedTutorial');
end;

function FBSDKAppEventNameInitiatedCheckout: NSString; cdecl;
begin
  Result := CocoaNSStringConst(libFacebookSDKCoreKit, 'FBSDKAppEventNameInitiatedCheckout');
end;

function FBSDKAppEventNameRated: NSString; cdecl;
begin
  Result := CocoaNSStringConst(libFacebookSDKCoreKit, 'FBSDKAppEventNameRated');
end;

function FBSDKAppEventNameSearched: NSString; cdecl;
begin
  Result := CocoaNSStringConst(libFacebookSDKCoreKit, 'FBSDKAppEventNameSearched');
end;

function FBSDKAppEventNameSpentCredits: NSString; cdecl;
begin
  Result := CocoaNSStringConst(libFacebookSDKCoreKit, 'FBSDKAppEventNameSpentCredits');
end;

function FBSDKAppEventNameUnlockedAchievement: NSString; cdecl;
begin
  Result := CocoaNSStringConst(libFacebookSDKCoreKit, 'FBSDKAppEventNameUnlockedAchievement');
end;

function FBSDKAppEventNameViewedContent: NSString; cdecl;
begin
  Result := CocoaNSStringConst(libFacebookSDKCoreKit, 'FBSDKAppEventNameViewedContent');
end;

function FBSDKAppEventParameterNameContentID: NSString; cdecl;
begin
  Result := CocoaNSStringConst(libFacebookSDKCoreKit, 'FBSDKAppEventParameterNameContentID');
end;

function FBSDKAppEventParameterNameContentType: NSString; cdecl;
begin
  Result := CocoaNSStringConst(libFacebookSDKCoreKit, 'FBSDKAppEventParameterNameContentType');
end;

function FBSDKAppEventParameterNameCurrency: NSString; cdecl;
begin
  Result := CocoaNSStringConst(libFacebookSDKCoreKit, 'FBSDKAppEventParameterNameCurrency');
end;

function FBSDKAppEventParameterNameDescription: NSString; cdecl;
begin
  Result := CocoaNSStringConst(libFacebookSDKCoreKit, 'FBSDKAppEventParameterNameDescription');
end;

function FBSDKAppEventParameterNameLevel: NSString; cdecl;
begin
  Result := CocoaNSStringConst(libFacebookSDKCoreKit, 'FBSDKAppEventParameterNameLevel');
end;

function FBSDKAppEventParameterNameMaxRatingValue: NSString; cdecl;
begin
  Result := CocoaNSStringConst(libFacebookSDKCoreKit, 'FBSDKAppEventParameterNameMaxRatingValue');
end;

function FBSDKAppEventParameterNameNumItems: NSString; cdecl;
begin
  Result := CocoaNSStringConst(libFacebookSDKCoreKit, 'FBSDKAppEventParameterNameNumItems');
end;

function FBSDKAppEventParameterNamePaymentInfoAvailable: NSString; cdecl;
begin
  Result := CocoaNSStringConst(libFacebookSDKCoreKit, 'FBSDKAppEventParameterNamePaymentInfoAvailable');
end;

function FBSDKAppEventParameterNameRegistrationMethod: NSString; cdecl;
begin
  Result := CocoaNSStringConst(libFacebookSDKCoreKit, 'FBSDKAppEventParameterNameRegistrationMethod');
end;

function FBSDKAppEventParameterNameSearchString: NSString; cdecl;
begin
  Result := CocoaNSStringConst(libFacebookSDKCoreKit, 'FBSDKAppEventParameterNameSearchString');
end;

function FBSDKAppEventParameterNameSuccess: NSString; cdecl;
begin
  Result := CocoaNSStringConst(libFacebookSDKCoreKit, 'FBSDKAppEventParameterNameSuccess');
end;

function FBSDKAppEventParameterValueYes: NSString; cdecl;
begin
  Result := CocoaNSStringConst(libFacebookSDKCoreKit, 'FBSDKAppEventParameterValueYes');
end;

function FBSDKAppEventParameterValueNo: NSString; cdecl;
begin
  Result := CocoaNSStringConst(libFacebookSDKCoreKit, 'FBSDKAppEventParameterValueNo');
end;

{ to trick Delphi into linking the static libraries }
procedure StubProc1; cdecl; external 'FBSDKCoreKit.a' name 'OBJC_CLASS_$_FBSDKAccessToken';
procedure StubProc2; cdecl; external 'FBSDKLoginKit.a' name 'OBJC_CLASS_$_FBSDKLoginManager';

end.
