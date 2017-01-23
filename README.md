# Using Facebook SDK native framework for iOS and Android for Social Login and more (Part 1)
In this article we will demonstrate how to embed the iOS framework SDK for Facebook so you can present a more professional social login feature for users of your app.

We will also show how to perform various Facebook SDK requests transparently for the user from your client app using the Facebook SDK framework instead of making direct GraphPath http requests.  Additionally, we will also be covering how to best use the Facebook APIs from your backend Delphi service.

Part 1 focuses on Facebook/iOS, Part 2 focuses Facebook/Android, Part 3 focuses on Twitter/iOS and Part 4 focuses on Twitter/Android.

# Introduction
If you are building mobile apps today and those apps are interacting with a backend then you must consider using social login to streamline the experience for users.  People who install your app are going to leery of providing personal information or new authentication credentials to an app they do not trust and often look for a social login option that is consistent with other apps they have used. 

Facebook offers an embedded framework that you can include into your Delphi mobile application so that you can present a [native Facebook interface for social login](https://developers.facebook.com/docs/facebook-login/best-practices) to obtain a user's access token or their email address transparently.

Currently most Facebook API examples for Delphi involve obtaining an access token by launching a web browser such as Safari on iOS for OAuth.  While this works, it is not ideal because users launch the web browser while your app goes into the background and when authentication is completed or fails, must return to your app.  Additionally the user is presented with the same behavior on subsequent launches of your application to help verify your authenticating credentials.  This is fine if necessary and as a backup method but it is hardly ideal when all you want to present a smoother experience for your user.

Once the user approves your app for Facebook login, future app launches can be completely automatic and transparent because the Facebook framework abstracts the complexities of managing the access token and approval process for us.  

For more information about us, our support and services visit the [Grijjy homepage](http://www.grijjy.com) or the [Grijjy developers blog](http://blog.grijjy.com).

The example contained here depends upon part of our [Grijjy Foundation library](https://github.com/grijjy/GrijjyFoundation).

The source code and related example repository are hosted on GitHub at [https://github.com/grijjy/DelphiSocialFrameworks](https://github.com/grijjy/DelphiSocialFrameworks).

# Challenges with Delphi
Unfortunately, using these frameworks is not a straightforward exercise in Delphi.  Most of the frameworks for iOS and SDKs for Android (both Facebook and Twitter) expect a common environment for development such as XCode (Objective C) or Android Studio (Java).  This leads to some issues with the way that Delphi handles certain aspects of linking frameworks and libraries that were designed for Objective C and Android Studio. 

In this article and the articles to come we will discuss methods to work around the issues on iOS first. On both iOS and Android it requires a bit of hacking to get Delphi to conform more closely to what is expected.

But in the end, it works and you can have Facebook and Twitter social login in both iOS and Android Delphi apps.

# Getting Started with the Facebook SDK for iOS
To get started using the Facebook SDK framework for iOS inside your Delphi application you need to take care of a few steps.

## Create a Facebook developers account
You should start by creating a Facebook developers accounts at https://developers.facebook.com

To setup a new app for Facebook so you can test and build:
1. Select the `Add new app for Facebook`, then provide a `Display Name`, then click `Create App ID`.
  
2. Once the app is created on Facebook's dashboard, select `Settings`, `Basic` and note the `Display Name` and `App ID`.  You will need these values to communicate from your Delphi app.

3. On the same page, click `Add Platform` and choose `iOS`.

4. Under the `Bundle ID` for iOS you need to provide the name of your Delphi application.  This is usually the same as your Project name in Delphi (ex: LoginWithDelphi in our example).  You should also enable `Single Sign On` in the iOS section.
  
5. Click `Save Changes`.

At this point you are ready to create an application of the same project name that interacts with the Facebook APIs.

## Download the Facebook SDK for iOS
You can download the Facebook SDK framework for iOS from the following location, https://developers.facebook.com/docs/ios

To extract the static libraries required, unzip the SDK and copy the framework files to your Delphi library path:

1. Copy and rename the FBSDKCoreKit.framework\FBSDKCoreKit to FBSDKCoreKit.a

2. Copy and rename the FBSDKLoginKit.framework\FBSDKLoginKit to FBSDKLoginKit.a

These frameworks will be linked into your project automatically when you include the `Grijjy.FBSDK.iOS.API` unit.

> Note: Delphi will not normally link these libraries into the project so we trick Delphi into link them by creating an import to an existing OBJ_CLASS inside of the static library in the `Grijjy.FBSDK.iOS.API` unit.
>  
> procedure StubProc1; cdecl; external 'FBSDKCoreKit.a' name 'OBJC_CLASS_$_FBSDKAccessToken';
>
> procedure StubProc2; cdecl; external 'FBSDKLoginKit.a' name 'OBJC_CLASS_$_FBSDKLoginManager';
 
## Modify your project's info.plist.TemplateiOS.xml
Your info.plist needs to contain some extra keys that are specific to the Facebook SDK for iOS.  

```xml
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
<%VersionInfoPListKeys%>
<%ExtraInfoPListKeys%>

<--- Add your keys here

</dict>
</plist>
```

Add the following keys to the info.plist.TemplateiOS.xml.  Replace the string value under `CFBundleURLSchemes` of `fb12345678901234` with lowercase `fb` followed by your App ID.  Replace the string value under `FacebookAppID` with your actual App ID and replace the string value under `FacebookDisplayName` with your chosen Display Name for the Facebook app. 

```xml
  <key>CFBundleURLTypes</key>
  <array>
    <dict>
    <key>CFBundleURLSchemes</key>
    <array>
    <string>fb12345678901234</string>
    </array>
    </dict>
  </array>
  <key>FacebookAppID</key>
  <string>12345678901234</string>
  <key>FacebookDisplayName</key>
  <string>My Display Name</string>
  <key>NSAppTransportSecurity</key>
  <dict>
    <key>NSAllowsArbitraryLoads</key><true/>
    <key>NSExceptionDomains</key>
    <dict>
    <key>facebook.com</key>
    <dict>
      <key>NSIncludesSubdomains</key>
      <true/>
      <key>NSExceptionRequiresForwardSecrecy</key>
      <false/>
    </dict>
    <key>fbcdn.net</key>
    <dict>
      <key>NSIncludesSubdomains</key>
      <true/>
      <key>NSExceptionRequiresForwardSecrecy</key>
      <false/>
    </dict>
    <key>akamaihd.net</key>
    <dict>
      <key>NSIncludesSubdomains</key>
      <true/>
      <key>NSExceptionRequiresForwardSecrecy</key>
      <false/>
    </dict>
    </dict>
  </dict>  
  <key>LSApplicationQueriesSchemes</key>
    <array>
      <string>fbapi</string>
      <string>fb-messenger-api</string>
      <string>fbauth2</string>
      <string>fbshareextension</string>
	  <string>fb-messenger-platform-20150128</string>
	  <string>fb-messenger-platform-20150218</string>
	  <string>fb-messenger-platform-20150305</string>	  
    </array>  
```

## Add some common iOS frameworks to your Delphi environment
Under Tools, Options, SDK Manager you will need to add the following frameworks:

1. `CoreData`
2. `Social`
3. `Accounts`

In all the above cases the path on remote machine should be `$(SDKROOT)/System/Library/Frameworks`

Once completed, make sure you `Update Local File Cache`.

## Add the required application delegates callbacks to the RTL
Most of the various frameworks for iOS require that you implement application delegates.  For example, the Facebook SDK requires the implementation of the following app delegates:

1. `applicationDidFinishLaunchingWithOptions`
2. `applicationOpenURLWithSourceAnnotation`
3. `applicationDidBecomeActive`

Delphi internally attempts to simplify the process by managing delegates directly for you and instead firing TApplicationEventMessage or other events.  While this is useful for developing your Firemonkey application, it creates problems for certain iOS frameworks that require your application to read the options or parameters of the application delegate, respond to those options or parameters and in many cases forward them directly and intact to the framework SDK which acts as sub-delegate.  This model is very common in the iOS world for SDKs and Delphi's implementation simply is not compatible.

For example Delphi intercepts applicationDidFinishLaunchingWithOptions but does not expose the Options parameter to any application events or messages.  These Options are required by the Facebook framework and many other frameworks you might need for iOS apps.

Since we can only have a single application delegate for the app when calling UIApplicationMain() we must consider making a copy of FMX.Platform.iOS and modifying our own version of it so we can respond to the delegates in the manner that the framework expects.

## Missing Delphi functionality in FMX.Platform.iOS
One workable solution is to add events or messages to the individual application delegates that we can subscribe in our main application.  This would be more congruent with the way it is done in Objective C.  Unfortunately this requires us to add TMessage related callbacks into the FMX.Platform.iOS unit.  Each TMessage specifically contains the same parameters as the delegate in the same format so we can make sure we forward them as intended to the sub-delegate in the Facebook (or Twitter) framework.   

Since we need to add a bit of code to FMX.Platform.iOS, I suggest you make a copy of it, modify the copy and add the copy to each project.

Here are the steps required:

1. Move uses `iOSapi.Foundation` from implementation to interface
2. Move uses `System.Messaging` from implementation to interface
3. Add `Grijjy.iOSapi.UIKit` to your implementation uses list and your project.  It contains some missing interfaces and methods.
4. Comment out the following types in the implementation (we are relocating them to interface)
```Delphi
//  id = Pointer;
//  SEL = Pointer;
```
Add the following TMessage<> types for the application delegates we wish to expose to the interface section:
```Delphi
type
  // Moved from implementation
  id = Pointer;
  SEL = Pointer;

  // New types
  TAppDelegate_applicationDidFinishLaunchingWithOptions = record
  public
    Application: UIApplication;
    Options: NSDictionary;
  end;

  TAppDelegateMessage_applicationDidFinishLaunchingWithOptions = class(TMessage<TAppDelegate_applicationDidFinishLaunchingWithOptions>)
  public
    constructor Create(const AValue: TAppDelegate_applicationDidFinishLaunchingWithOptions);
  end;

  TAppDelegate_applicationOpenURLWithSourceAnnotation = record
  public
    Application: UIApplication;
    Url: NSUrl;
    SourceApplication: NSString;
    Annotation: id;
  end;

  TAppDelegateMessage_applicationOpenURLWithSourceAnnotation = class(TMessage<TAppDelegate_applicationOpenURLWithSourceAnnotation>)
  public
    constructor Create(const AValue: TAppDelegate_applicationOpenURLWithSourceAnnotation);
  end;

  TAppDelegate_applicationDidBecomeActive = record
  public
    Application: UIApplication;
  end;

  TAppDelegateMessage_applicationDidBecomeActive = class(TMessage<TAppDelegate_applicationDidBecomeActive>)
  public
    constructor Create(const AValue: TAppDelegate_applicationDidBecomeActive);
  end;
```
Add the following variables to `TApplicationDelegate.applicationDidBecomeActive`:
```Delphi
var
  AppDelegate_applicationDidBecomeActive: TAppDelegate_applicationDidBecomeActive;
  AppDelegate_applicationDidBecomeActiveMessage: TAppDelegateMessage_applicationDidBecomeActive;
```
Add the following code to `TApplicationDelegate.applicationDidBecomeActive`:
```Delphi
  AppDelegate_applicationDidBecomeActive.Application := TUIApplication.Wrap(application);
  AppDelegate_applicationDidBecomeActiveMessage := TAppDelegateMessage_applicationDidBecomeActive.Create(AppDelegate_applicationDidBecomeActive);
  TMessageManager.DefaultManager.SendMessage(Self, AppDelegate_applicationDidBecomeActiveMessage);
```
Add the following variables to `TApplicationDelegate.applicationDidFinishLaunchingWithOptions`:
```Delphi
  AppDelegate_applicationDidFinishLaunchingWithOptions: TAppDelegate_applicationDidFinishLaunchingWithOptions;
  AppDelegate_applicationDidFinishLaunchingWithOptionsMessage: TAppDelegateMessage_applicationDidFinishLaunchingWithOptions;
```
Add the following code to `TApplicationDelegate.applicationDidFinishLaunchingWithOptions`:
```Delphi
  AppDelegate_applicationDidFinishLaunchingWithOptions.Application := TUIApplication.Wrap(application);
  AppDelegate_applicationDidFinishLaunchingWithOptions.Options := TNSDictionary.Wrap(options);
  AppDelegate_applicationDidFinishLaunchingWithOptionsMessage := TAppDelegateMessage_applicationDidFinishLaunchingWithOptions.Create(AppDelegate_applicationDidFinishLaunchingWithOptions);
  TMessageManager.DefaultManager.SendMessage(Self, AppDelegate_applicationDidFinishLaunchingWithOptionsMessage);
```
Add the following variables to `TApplicationDelegate.applicationOpenURLWithOptions`:
```Delphi
  AppDelegate_applicationOpenURLWithSourceAnnotation: TAppDelegate_applicationOpenURLWithSourceAnnotation;
  AppDelegate_applicationOpenURLWithSourceAnnotationMessage: TAppDelegateMessage_applicationOpenURLWithSourceAnnotation;
  OptionsDict: NSDictionary;
  annotation: id;
  sourceApplication: PNSString;
```
Add the following code to `TApplicationDelegate.applicationOpenURLWithOptions`:
```Delphi
  OptionsDict := TNSDictionary.Wrap(options);
  annotation := OptionsDict.valueForKey(UIApplicationOpenURLOptionsAnnotationKey);
  sourceApplication := OptionsDict.valueForKey(UIApplicationOpenURLOptionsSourceApplicationKey);
  AppDelegate_applicationOpenURLWithSourceAnnotation.Application := TUIApplication.Wrap(application);
  AppDelegate_applicationOpenURLWithSourceAnnotation.Url := TNSUrl.Wrap(url);
  AppDelegate_applicationOpenURLWithSourceAnnotation.SourceApplication := TNSString.Wrap(sourceApplication);
  AppDelegate_applicationOpenURLWithSourceAnnotation.Annotation := annotation;
  AppDelegate_applicationOpenURLWithSourceAnnotationMessage := TAppDelegateMessage_applicationOpenURLWithSourceAnnotation.Create(AppDelegate_applicationOpenURLWithSourceAnnotation);
  TMessageManager.DefaultManager.SendMessage(Self, AppDelegate_applicationOpenURLWithSourceAnnotationMessage);
```
Add the following variables to `TApplicationDelegate.applicationOpenURLWithSourceAnnotation`:
```Delphi
  AppDelegate_applicationOpenURLWithSourceAnnotation: TAppDelegate_applicationOpenURLWithSourceAnnotation;
  AppDelegate_applicationOpenURLWithSourceAnnotationMessage: TAppDelegateMessage_applicationOpenURLWithSourceAnnotation;
```
Add the following code to `TApplicationDelegate.applicationOpenURLWithSourceAnnotation`:
```Delphi
  AppDelegate_applicationOpenURLWithSourceAnnotation.Application := TUIApplication.Wrap(application);
  AppDelegate_applicationOpenURLWithSourceAnnotation.Url := TNSUrl.Wrap(url);
  AppDelegate_applicationOpenURLWithSourceAnnotation.SourceApplication := TNSString.Wrap(sourceApplication);
  AppDelegate_applicationOpenURLWithSourceAnnotation.Annotation := annotation;
  AppDelegate_applicationOpenURLWithSourceAnnotationMessage := TAppDelegateMessage_applicationOpenURLWithSourceAnnotation.Create(AppDelegate_applicationOpenURLWithSourceAnnotation);
  TMessageManager.DefaultManager.SendMessage(Self, AppDelegate_applicationOpenURLWithSourceAnnotationMessage);
```
Then at the bottom of the implementation section add the following code to implement the TMessages: 

```Delphi
{ TAppDelegateMessage_applicationDidFinishLaunchingWithOptions }

constructor TAppDelegateMessage_applicationDidFinishLaunchingWithOptions.Create(
  const AValue: TAppDelegate_applicationDidFinishLaunchingWithOptions);
begin
  inherited Create(AValue);
end;

{ TAppDelegateMessage_applicationOpenURLWithSourceAnnotation }

constructor TAppDelegateMessage_applicationOpenURLWithSourceAnnotation.Create(
  const AValue: TAppDelegate_applicationOpenURLWithSourceAnnotation);
begin
  inherited Create(AValue);
end;

{ TAppDelegateMessage_applicationDidBecomeActive }

constructor TAppDelegateMessage_applicationDidBecomeActive.Create(
  const AValue: TAppDelegate_applicationDidBecomeActive);
begin
  inherited Create(AValue);
end;
```

# Application Delegate TMessages
Now we have established TMessages for the application delegates that are universal we can use them in our project as we choose.  It is now as simple as defining your TMessage subscriptions in the initialization section and unsubscribing in the finalization section of your unit or project.  Consider the following example,

```Delphi
initialization
  TMessageManager.DefaultManager.SubscribeToMessage(TAppDelegateMessage_applicationDidFinishLaunchingWithOptions,
    MyClass.applicationDidFinishLaunchingWithOptions);
  TMessageManager.DefaultManager.SubscribeToMessage(TAppDelegateMessage_applicationOpenURLWithSourceAnnotation,
    MyClass.applicationOpenURLWithSourceAnnotation);
  TMessageManager.DefaultManager.SubscribeToMessage(TAppDelegateMessage_applicationDidBecomeActive,
    MyClass.applicationDidBecomeActive);
```

```Delphi
finalization
  TMessageManager.DefaultManager.Unsubscribe(TAppDelegateMessage_applicationDidFinishLaunchingWithOptions,
    MyClass.applicationDidFinishLaunchingWithOptions);
  TMessageManager.DefaultManager.Unsubscribe(TAppDelegateMessage_applicationOpenURLWithSourceAnnotation,
    MyClass.applicationOpenURLWithSourceAnnotation);
  TMessageManager.DefaultManager.Unsubscribe(TAppDelegateMessage_applicationDidBecomeActive,
    FacebookSDK.applicationDidBecomeActive);
  MyClass.Free;
```
The above allows us to get notified whenever these application delegates are called and handle them how we choose including forwarding them to the Facebook SDK subdelegate as required by the framework.  See the `Grijjy.FBSDK.iOS` unit for a complete example.

# Social Class Architecture
Our next step is to create a base class architecture that can be consumed on both iOS and Android platforms and where we can add Login and social features for other social networks.

## TgoSocial (abstracts social network)
This class is the highest level class and wraps the frameworks and SDKs for all platforms and social networks into a consistent interface.  We start with defining a `TgoSocialNetwork` to represent the high level social network of choice.

```Delphi
type
  TgoSocialNetwork = (None, Facebook, Twitter);
```

The `TgoSocial` class abstracts the given social network into our project.

```Delphi
type
  TgoSocial = class
  public
    class function Facebook: TgoFacebook; static;
    {$IFDEF TWTR}
    class function Twitter: TgoTwitter; static;
    {$ENDIF}
  public
    procedure Login(const ANetwork: TgoSocialNetwork);
    procedure GetSelf(const ANetwork: TgoSocialNetwork);
  public
    constructor Create;
    destructor Destroy; override;
  end;
```

After we call the `TgoSocial.Login method` we receive a TMessage for the result of the login indicating success or failure.   

```Delphi
type
  TgoSocialLogin = record
  public
    Result: Boolean;
    Network: TgoSocialNetwork;
    Id: String;
    AccessToken: String;
  public
    procedure Initialize;
  end;

  TgoSocialLoginMessage = class(TMessage<TgoSocialLogin>)
  public
    constructor Create(const ASocialLogin: TgoSocialLogin);
  end;
```
If `Result` is `True` then `Id` will contain the social network specific id, which is the app scoped user id in the case of Facebook and `AccessToken` will return the current OAuth access token.

## TgoFacebook (abstracts the platform)
The TgoFacebook class implements the platform (iOS and Android) specific methods for the social network.  

```Delphi
type
  TgoFacebook = class
  public
    constructor Create;
    destructor Destroy; override;
  public
    procedure Login;
    procedure GetSelf;
  public
    property AccessToken: String read GetAccessToken;
  end;
```
This includes implementing the calls to the platform specific APIs and raising any results as TMessages.

Here we call `TgoFacebookSDK.LogInWithReadPermissions` and request the permissions array that includes the user's email address.  `['public_profile', 'user_friends', 'email']`

## TgoFacebookSDK (implementation for iOS or Android)
The TgoFacebookSDK class is implemented for each mobile platform, in this case iOS.  This implements the actual API methods for the platform.  As shown we have implemented `LoginWithReadPermissions`, `CurrentAccessToken` and `CurrentUserId`.  The callback results are abstracted and converted into Delphi TMessages.

Additionally we implement the GraphPath API by exposing a `GraphPath` method to make any given normal Facebook API call.

```Delphi
type
  TgoFacebookSDK = class
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
```
> Note: Even though Facebook provides a framework and SDK for both iOS and Android, the API syntax differs quite a bit.  We attempt to seamlessly blend these differences by use of the above class abstractions.

# Example LoginWithFacebook project
The [example application](https://github.com/grijjy/DelphiSocialFrameworks) shows the basic framework of implementing a Login with Facebook button into your application.  You create an instance of `TgoSocial` and implement a listener for `TgoSocialLoginMessage`.

The [example application LoginWithFacebook](https://github.com/grijjy/DelphiSocialFrameworks) is available in the Grijjy GitHub repository.

This project assumes you have applied the prerequisites discussed previously...

1.  Added your Bundle ID or Project name to the Facebook developer Settings.

2.  Placed the FBSDKCoreKit.a and FBSDKLoginKit.a into your Delphi library path.

3.  Modified the info.plist.TemplateiOS.xml for your project.

4.  Added the CoreData, Social and Accounts frameworks to your SDK Manager in Delphi.

5.  Added your modified FMX.Platform.iOS with the application delegate messages to your project.      

# I have an ID and an AccessToken, now what?
Once you have obtained the Facebook (AppScoped User) ID and the Access Token you can make Graph API calls to the various Facebook APIs.  Most implementations call HTTP methods directly, such as the one offered in Delphi but now that you have embedded the Facebook framework into your app you can use the native GraphPath method that is provided by the framework.  

This avoids all other considerations of whether your HTTP client implementation is fully compatible with Facebook's expectations or Apple app store requirements for IP protocols.

To add new API methods just create them in `TgoFacebook` class as new public methods and call the exposed FacebookSDK object's GraphPath method.  For example,

`FacebookSDK.GraphPath('me?fields=name,email');`

This will result in a `TFacebookGraphResultMessage`.  

`TFacebookGraphResultMessage.Value.Result` will indicate success or failure.  Upon failure, `TFacebookGraphResultMessage.Value.Error` will contain the error code.  If you are successful then `TFacebookGraphResultMessage.Value.Json` will contain the resulting response.

# Making Facebook API calls from your backend Delphi service 
Although it is possible to make various GraphPath calls from your app as demonstrated above, you may choose or prefer to make calls from your backend service.

The API methodology for GraphPath is the same, but since we do not need to embed framework SDKs into a server-side API, our examples will show how to make these calls directly using HTTP with our own [scalable client socket framework](https://blog.grijjy.com/2017/01/09/scalable-https-and-tcp-client-sockets-for-the-cloud). 

The unit [Grijjy.FacebookAPI](https://github.com/grijjy/DelphiSocialFrameworks/blob/master/Grijjy.FacebookAPI.pas) in our GitHub repository demonstrates how to make calls from your backend service directly to the Facebook Graph APIs over HTTP.  The class `TFacebook` implements various methods for the GraphPath API calls.

```Delphi
type
  TFacebook = class
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
```

## Get Facebook friends for user
To request a list of friends for a given user, you call `TFacebook.GetUserFriends`.  You must provide the access token that relates to the authenticated user from your backend service.  

```Delphi
var
  Facebook: TFacebook;
  Friends: TFacebookUsers;
  User: TFacebookUser;
begin
  Result := False;
  Facebook := TFacebook.Create;
  try
    Facebook.AccessToken := TheAccessToken;
    if Facebook.GetUserFriends('me', Friends) = 200 then
    begin
      for User in Friends do
      begin
      end;
    end;
  finally
    Facebook.Free;
  end;
end;
```

For each user you would iterate through an array of `TFacebookUser`.

```Delphi
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
```
The above is only one example of how to call GraphPath apis from your own service.  You could expand the class for various other APIs, which is beyond the scope of this discussion but relatively straightforward.

## Validating access tokens
Facebook provides a special set of APIs for backend services for validating tokens and requesting information about the token.

To use these methods you must construct `TFacebook.Create(MyAppId, MyAppSecret)` and supply your Facebook AppId and AppSecret as parameters.  These values are contained in the [Facebook developers portal](https://developers.facebook.com) on the dashboard for your given app. 

The method `TFacebook.DebugToken` in the class is used to validate the token.  You supply a given user access token as the `AInputToken` and it will provide you with a `ADebugAccessToken` that you can use for requests, `AAppId` for the application id and an `AUserId` for the app scoped user id that relates to the input token.  If the method fails it indicates that the token is invalid or expired.

## Email addresses of Facebook users
The method `TFacebook.DebugGetUser` shows an example of using the above API directly from your backend service to request information about the given user that relates to the access token.  In this case we are obtaining the email address of the Facebook user.

[Facebook and most other social network APIs suggest you use email addresses](https://developers.facebook.com/docs/facebook-login/multiple-providers) as either a primary or secondary index in your own service if you intend to use social login.  Both Facebook and Twitter provide access through their API unless a user has specifically blocked it.  Since User IDs in Facebook are app-scoped, it is important that you can correlate a given user with their account in your own service.  Users of your app may choose to use another social network to login such as Twitter, so having their email address to establish a correlation to an account on your own system is important.

# Conclusion
Phew, well that is all for now.  I know it seems like a lot of steps to embed the Facebook framework but wait until you see what it takes for Android!  With a few changes Delphi could much more easily consume iOS frameworks made for Objective C projects and Android SDKs made for Java/Android Studio. 

We hope you find this useful and are able to enjoy these examples inside your next mobile apps.

# License
TgoSocial, TgoFacebook, TgoFacebookSDK and related classes along with DelphiLoginWithFacebook are licensed under the Simplified BSD License. See License.txt for details.