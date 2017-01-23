unit Grijjy.Accounts.iOS.API;

interface

uses
  Macapi.ObjectiveC,
  iOSapi.CocoaTypes,
  iOSapi.Foundation;

const
  libAccounts = '/System/Library/Frameworks/Accounts.framework/Accounts';

const
  ACAccountCredentialRenewResultRenewed = 0;
  ACAccountCredentialRenewResultRejected = 1;
  ACAccountCredentialRenewResultFailed = 2;

type
  id = pointer;

  ACAccountCredentialRenewResult = NSInteger;

  TACAccountStoreSaveCompletionHandler = procedure(success: boolean; error: NSError) of object;
  TACAccountStoreRequestAccessCompletionHandler = procedure(granted: boolean; error: NSError) of object;
  TACAccountStoreCredentialRenewalHandler = procedure(renewResult: Pointer; error: Pointer) of object;
//  TACAccountStoreCredentialRenewalHandler = procedure(renewResult: ACAccountCredentialRenewResult; error: NSError) of object;
  TACAccountStoreRemoveCompletionHandler = procedure(success: boolean; error: NSError) of object;

  ACAccountCredentialClass = interface(NSObjectClass)
  ['{2E51DABF-F622-4B64-BEFF-F842D1C9CE55}']
  end;

  ACAccountCredential = interface(NSObject)
  ['{10364F41-00BF-492A-A332-82118DA4A14C}']
    function initWithOAuthToken(token: NSString; tokenSecret: NSString): id; cdecl;
    function initWithOAuth2Token(token: NSString; refreshToken: NSString; expiryDate: NSDate): id; cdecl;
    function oauthToken: NSString; cdecl;
  end;

  TACAccountCredential = class(TOCGenericImport<ACAccountCredentialClass, ACAccountCredential>) end;

  ACAccountTypeClass = interface(NSObjectClass)
  ['{EC4B3A71-60C4-484B-A033-C7FCC6469F7E}']
  end;

  ACAccountType = interface(NSObject)
  ['{91E09F0C-3FE8-497E-82E0-4D7FFE7E2DBC}']
    function accessGranted: boolean; cdecl;
    function accountTypeDescription: NSString; cdecl;
    function identifier: NSString; cdecl;
  end;

  TACAccountType = class(TOCGenericImport<ACAccountTypeClass, ACAccountType>) end;

  ACAccountClass = interface(NSObjectClass)
  ['{53F7AF2C-A723-44CC-ABAB-CE1787B4C7C0}']
  end;

  ACAccount = interface(NSObject)
  ['{527D16EE-9F66-4C88-A06B-F73B08727E5A}']
    function initWithAccountType(&type: ACAccountType): id; cdecl;
    function accountDescription: NSString; cdecl;
    function accountType: ACAccountType; cdecl;
    function credential: ACAccountCredential; cdecl;
    function identifier: NSString; cdecl;
    function username: NSString; cdecl;
  end;

  TACAccount = class(TOCGenericImport<ACAccountClass, ACAccount>) end;

  ACAccountStoreClass = interface(NSObjectClass)
  ['{676F573F-9E07-46CE-AB77-AE401CFC19F6}']
  end;

  ACAccountStore = interface(NSObject)
  ['{AB75F1C4-5A92-433D-8E78-5EDC58C74EF9}']
    function accounts: NSArray; cdecl;
    function accountWithIdentifier(identifier: NSString): ACAccount; cdecl;
    function accountsWithAccountType(accountType: ACAccountType): NSArray; cdecl;
    function accountTypeWithAccountTypeIdentifier(typeIdentifier: NSString): ACAccountType; cdecl;
    procedure saveAccount(account: ACAccount; completionHandler: TACAccountStoreSaveCompletionHandler); cdecl;
    procedure requestAccessToAccountsWithType(accountType: ACAccountType; options: NSDictionary; completion: TACAccountStoreRequestAccessCompletionHandler); cdecl;
    procedure renewCredentialsForAccount(account: ACAccount; completionHandler: TACAccountStoreCredentialRenewalHandler); cdecl;
    procedure removeAccount(account: ACAccount; completionHandler: TACAccountStoreRemoveCompletionHandler); cdecl;
  end;

  TACAccountStore = class(TOCGenericImport<ACAccountStoreClass, ACAccountStore>) end;

function ACAccountTypeIdentifierFacebook: NSString; cdecl;
function ACAccountTypeIdentifierSinaWeibo: NSString; cdecl;
function ACAccountTypeIdentifierTwitter: NSString; cdecl;
function ACAccountTypeIdentifierTencentWeibo: NSString; cdecl;

implementation

function ACAccountTypeIdentifierFacebook: NSString; cdecl;
begin
  Result := CocoaNSStringConst(libAccounts, 'ACAccountTypeIdentifierFacebook');
end;

function ACAccountTypeIdentifierSinaWeibo: NSString; cdecl;
begin
  Result := CocoaNSStringConst(libAccounts, 'ACAccountTypeIdentifierSinaWeibo');
end;

function ACAccountTypeIdentifierTwitter: NSString; cdecl;
begin
  Result := CocoaNSStringConst(libAccounts, 'ACAccountTypeIdentifierTwitter');
end;

function ACAccountTypeIdentifierTencentWeibo: NSString; cdecl;
begin
  Result := CocoaNSStringConst(libAccounts, 'ACAccountTypeIdentifierTencentWeibo');
end;

procedure libAccountsLoader; cdecl; external libAccounts;

end.
