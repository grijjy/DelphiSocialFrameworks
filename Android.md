# Embed Facebook SDK for Android in your Delphi mobile app (Part 2)
In this article we will demonstrate how to embed the Android SDK for Facebook for using the Facebook APIs and simplifying social login in your mobile app.  The techniques discussed in this article are also universal for adapting other 3rd party Android SDKs into Delphi apps.

[Part 1](iOS.md) focuses on Facebook/iOS, [Part 2](Android.md) focuses Facebook/Android, Part 3 focuses on Twitter/iOS and Part 4 focuses on Twitter/Android.

# Introduction
If you are currently creating mobile apps and you need authentication, you have to seriously consider using social login.  Many apps offer this functionality and users have a sense of comfort when they install your app and see that they can use their existing social credentials to interact with your app.

Facebook offers SDKs that you can embed into your iOS and Android applications.  The current method that is widely recommended and used in Delphi is to authenticate using OAuth via a web browser.  This method requires your user to launch a browser to authenticate and internally retrieve an OAuth token.  While this works, it is not ideal because users launch the web browser while your app goes into the background and when authentication is completed or fails, must return to your app.  Additionally the user is presented with the same behavior on subsequent launches of your application to help verify your authenticating credentials.  This is fine if necessary and as a backup method but it is hardly ideal when all you want to present a smoother experience for your user.

The beauty of embedding the SDK is that once the user approves your app for Facebook login, future app launches can be completely automatic and transparent because the Facebook framework abstracts the complexities of managing the access token and approval process for us.

For more information about us, our support and services visit the [Grijjy homepage](http://www.grijjy.com) or the [Grijjy developers blog](http://blog.grijjy.com).

The example contained here depends upon part of our [Grijjy Foundation library](https://github.com/grijjy/GrijjyFoundation).

The source code and related example repository are hosted on GitHub at [https://github.com/grijjy/DelphiSocialFrameworks](https://github.com/grijjy/DelphiSocialFrameworks).

# Getting Started with the Facebook SDK for Android
To get started using the Facebook SDK for Android inside your Delphi application you need to take care of a few steps.

## Create a Facebook developers account
You should start by creating a Facebook developers accounts at https://developers.facebook.com if you haven't already done so.

To setup a new app for Facebook so you can test and build:
1. Select the `Create New Facebook`, then provide a `Display Name`, choose a Category and then click `Create App ID`.
  
2. Once the app is created on Facebook's dashboard, take note of the App ID.  You will need this value to use the SDK from your Delphi app.

## Creating a Facebook compatible keyhash for Debug configuration apps
In order to interact with the Facebook APIs from your Delphi Android application you need to supply a key hash.  In Delphi there is a distinct key hash for any and all development test apps that applies to all apps you build in Debug configuration for a given installation of Delphi.  However, for each app you build in Release configuration there is a different key hash.

For our purposes here let's discuss how to create a Facebook key hash for your Delphi apps in Debug configuration.

To create the correct Key Hash for your Delphi application, navigate to the folder containing your debug.keystore file which is normally, C:\Users\name\AppData\Roaming\Embarcadero\BDS\version

From inside this folder, run the following command:

```shell
keytool -exportcert -alias androiddebugkey -keystore debug.keystore | openssl sha1 -binary | openssl base64
```
> Note: This requires both Java runtime and OpenSSL binaries in the path.

When asked for a password, hit Enter.  The output string is your debug keyhash, so you should copy and paste it (ex: Hit Ctrl-A, Ctrl-C, etc. from a DOS command prompt).

## Apply the Facebook keyhash for Debug configuration apps
Return to your Facebook developers page at https://developers.facebook.com and select your application.  Under the Setting page,

1. Select `Add Platform` button at the bottom and choose `Android`.  
 
2. Under `Key Hashes` add the keyhash string you copied above.

3. Set `Single Sign On` to `Yes`.
  
3. Click `Save Changes`.

At this point you are ready to create a Delphi application that interacts with the Facebook SDK.

## Creating a Facebook compatible keyhash for Release configuration apps
To create a keyhash for a Release build application you need to first go through the procedure at,
https://www.embarcadero.com/starthere/xe5/mobdevsetup/android/en/creating_a_keystore_file.html

The resulting .keystore file should be exported as a keyhash using the following command:
```shell
keytool -exportcert -alias productionkey -keystore project.keystore | openssl sha1 -binary | openssl base64
```
In the above example replace `project.keystore` with the actual name.  When asked for a password, hit Enter.  The output string is your project keyhash, so you should copy and paste it and add the keyhash to the list of Key Hashes under the Android application settings on the Facebook Developers console.

But since we are building a Debug configuration, for now, we don't need this keyhash so you can skip this step.

## Download the Facebook SDK for Android
You can download the Facebook SDK for Android from the following location, https://developers.facebook.com/docs/android/

At the time of writing this article, the current SDK version for Android is 4.19.  Facebook routinely updates their APIs and changes the instructions and breaks things, so please be aware. 

To extract the libraries required, unzip the SDK:

1. Unzip the file under the facebook folder \facebook\facebook-android-sdk-version.aar where version represents the current version of the Facebook Android SDK.
> Note: The file ends in the extension .AAR but it is internally just a .ZIP file.

2. Copy and rename the classes.jar to facebook-sdk.jar

3. Move the facebook-sdk.jar to a shared library location.

## Add Facebook SDK to your project
To add the Facebook SDK to your project simply add the `facebook-sdk.jar` file to the list of libraries for your Android target.  You can also drag and drop the library onto your project in the Delphi Project Manager.

## Copy the Facebook SDK resources to your project
Under the unzipped facebook folder `\facebook\facebook-android-sdk-version\res` copy the entire `\res` folder to a project location.  We copy it to a project location because we will be adding additional resources that are project specific.  We recommend something like `Project\Resources\Android\res`.  We will refer to this as the resources `\res` folder from now on.

## Create strings.xml in your \res\values folder
Create a new file under the `\res\values` folder called `strings.xml` that looks like the following:
```xml
<?xml version="1.0" encoding="utf-8"?>
<resources>
  <string name="facebook_app_id">123456788012345</string>
  <string name="app_name">my app name</string>
</resources>
```
The key `facebook_app_id` should be your actual Facebook App Id as presented in the developers console for Facebook and the `app_name` key should be a name of your choosing.

## Modify your project's AndroidManifest.template.xml
Your `AndroidManifest.template.xml` needs 3 new sections added to the list of keys that are specific to the Facebook SDK for Android.

1. Add `uses-permission` for `android.permission.INTERNET`
2. Add new `activity` for `com.facebook.FacebookActivity`
3. Add `meta-data` resource reference for your Facebook Application Id.

```xml
<?xml version="1.0" encoding="utf-8"?>
<!-- BEGIN_INCLUDE(manifest) -->
<manifest xmlns:android="http://schemas.android.com/apk/res/android"
        package="%package%"
        android:versionCode="%versionCode%"
        android:versionName="%versionName%"
        android:installLocation="%installLocation%">

    <!-- This is the platform API where NativeActivity was introduced. -->
    <uses-sdk android:minSdkVersion="%minSdkVersion%" android:targetSdkVersion="%targetSdkVersion%" />
<%uses-permission%>

<--- Add your uses permission here as follows:
	<uses-permission android:name="android.permission.INTERNET"/>

    <uses-feature android:glEsVersion="0x00020000" android:required="True"/>
    <application android:persistent="%persistent%" 
        android:restoreAnyVersion="%restoreAnyVersion%" 
        android:label="%label%" 
        android:debuggable="%debuggable%" 
        android:largeHeap="%largeHeap%"
        android:icon="%icon%"
        android:theme="%theme%"
        android:hardwareAccelerated="%hardwareAccelerated%">

<%application-meta-data%>
		<%services%>
        <!-- Our activity is a subclass of the built-in NativeActivity framework class.
             This will take care of integrating with our NDK code. -->
        <activity android:name="com.embarcadero.firemonkey.FMXNativeActivity"
                android:label="%activityLabel%"
                android:configChanges="orientation|keyboard|keyboardHidden|screenSize"
                android:launchMode="singleTask">
            <!-- Tell NativeActivity the name of our .so -->
            <meta-data android:name="android.app.lib_name"
                android:value="%libNameValue%" />
            <intent-filter>  
                <action android:name="android.intent.action.MAIN" />
                <category android:name="android.intent.category.LAUNCHER" />
            </intent-filter> 
        </activity>

<-- Add your activity here as follows:
      <activity android:name="com.facebook.FacebookActivity"
            android:configChanges=
                   "keyboard|keyboardHidden|screenLayout|screenSize|orientation"
            android:theme="@android:style/Theme.Translucent.NoTitleBar"
            android:label="@string/app_name" />

<-- Add your meta-data reference here as follows:
      <meta-data android:name="com.facebook.sdk.ApplicationId" android:value="@string/facebook_app_id"/> 

        <%activity%>
        <%receivers%>
    </application>
</manifest>
<!-- END_INCLUDE(manifest) -->
```
## Add the resources to the Delphi Deployment Manager for your Android project
Delphi will need to copy all the various Facebook SDK resources over to the target during the final build process so you must add them to the Delphi Deployment Manager.  Those resources that you are adding to your project are under the `Project\Resources\Android\res` folder and subfolders if you copied them as recommended in the previous steps.

I bet you are wondering right now how long will it take to add more than 140 files to the Delphi Deployment Manager for your Android project?  I would be ready to give up at this point and I wouldn't blame you.

In Android Studio we simply specify our resource locations and Android Studio automatically makes sure that all the resources and sub-folder resources are collected and merged.  Isn't that nice?

Here at Grijjy we needed a solution so we developed our own Delphi Deployment Manager alternative (for iOS and Android platforms only) called [DeployMan](https://github.com/grijjy/DelphiSocialFrameworks/DeployMan).

### USE THIS TOOL AT YOUR OWN RISK - BACKUP YOUR DPROJ FIRST

The Grijjy DeployMan primary purpose is to make managing the Deployment Manager settings contained inside your .dproj much easier in Delphi for iOS and Android apps.  It allows you to specify individual files or folders, indicate if subfolders should be included and automatically create target path structures if needed.  It also provides more control over the Delphi build configurations for the resource files.  It keeps the settings you specify in a separate .grdeploy file that you can Open, Edit and Save.  It can also import any existing Deployment Manager settings for iOS and Android.

![](http://i.imgur.com/dXBTnW3.png)

### To get started, FIRST CLOSE THE DELPHI PROJECT you intend to modify in RAD Studio.

With this tool you first click Import any existing Delphi Project settings from the File menu.  Then you select the Android tab.  Then specify that you want the `Project\Resources\Android\res` as your `Sourch Path` and your `Target Directory` is `res\`.  You check the box that you want `SubDirs?` and you indicate which Delphi Configurations these resources will apply.

Then finally you click `Save Project + .dproj` which creates a `.grdeploy` file for future use and modifies your existing `.dproj` file for the project.

Once you reopen your Delphi project and open the Deployment Manager in Delphi you should see that it automatically populated all the resource entries for you.

You can download DeployMan [here](https://github.com/grijjy/DelphiSocialFrameworks/DeployMan).

# Delphi challenges building Android with 3rd party libraries
As we discussed in the [previous article on using the Facebook iOS](iOS.md) framework within Delphi there are some unique challenges.  The 2 main challenges for iOS are the lack of usable application delegates in the RTL and an easy ability to link static libraries without stubbing out a fake procedure to a cdecl import.  With these 2 modifications integrated into the Delphi build environment, we could use and consume most any 3rd-party iOS frameworks.  

There are also some issues with importing and using iOS 3rd party framework resources, but for our purposes this could be worked around in most any Delphi application that uses iOS frameworks by manually adding those resources into our Deployment Manager in Delphi.

With Android libraries the lack of handling resources properly in Delphi is a much larger problem.  While Android libraries use resources in a very similar way to iOS, many 3rd party Android libraries access those resources at run-time using resource reference ids that are designated at build time.  Those reference ids are placed into a reference class known as R.Java.  This class is then compiled into the finalized Classes.dex.  Many 3rd party libraries reference those resources at run-time using Java methods such as findViewById().  You still have to copy all your library resources into the Deployment, but without the R$ class reference in the finalized Classes.dex, the resources themselves are orphaned.  

Delphi goes through the process of building but omits the R.Java file creation during the build so that the finalized resource references are not included in your resulting Classes.dex and subsequent finalized APKs will typical just crash from memory when they attempt to reference a resource by id.  

## Building an Android project
With Android Studio and various other build environments for Android projects, the build order is roughly the same.

1.  Create R.JAVA class using AAPT.EXE (Android Asset Packaging Tool)
2.  Compile your all code together and include the R.JAVA class using JAVAC.EXE
3.  Create CLASSES.DEX using the DX tool.
4.  Create PROJECT.APK using the AAPT.EXE (Android Asset Packaging Tool)
5.  Sign the PROJECT.APK

## Building an Android project the Delphi way
Delphi however takes a different approach to building that makes it non-compliant:

1.  Create CLASSES.DEX using the DX tool.
2.  Create PROJECT.APK using the AAPT.EXE (Android Asset Packaging Tool)
3.  Sign the PROJECT.APK

Delphi skips the process of running AAPT.EXE to compile the R.Java class before creating the Classes.dex even though Delphi is managing the resources for the Android project.

This is an even bigger problem if you are combining more than one Android third-party library that has required resources in the R.Java.  While you may have a different R.Java class created for each library, the finalized R$ class that is included in your Classes.dex must contained the combined resource id references.  See our discussion below about using our tool XmlMerge to combine resources from multiple libraries for more information on this topic.

# How to build the R.Java and include the the R$ classes in the Classes.dex
While we cannot change the build and run process in Delphi, but we can include our own Post Build Event within our Project settings and rebuild the Classes.dex the correct way before the final APK is created.  This means the Classes.dex is needlessly built twice, but it does offer a workaround.

## Post Build events
One nice thing about Delphi that I have not seen documented anywhere is that many of Delphi's internal environment settings for building can be retrieved in your batch file by passing them on the command line to your Post Build event.

Consider the following Post Build event syntax:
```shell
AddRJavaToClassesDex.bat $(PROJECTDIR) $(CONFIG) "$(SDKAaptPath)" "$(SDKApiLevelPath)" "$(JavaDxPath)"
```
Here we pass the $(SDKAaptPath), $(SDKApiLevelPath) and $(JavaDxPath) directly to our batch file.  Inside the batch file we can associate these with variables, for example:
```shell
set SDKAaptPath=%3
set SDKApiLevelPath=%4
set JavaDxPath=%5
```
Then we can use them to perform the same command line operations Delphi would do internally during the Post Build event. 

## To create the R.Java that relates to our resources
To create the R.Java we have to run AAPT.exe against our resources.  In the example %SDKAaptPath% is the location of the AAPT.exe used by Delphi for building internally and you can reference it directly as follows. 

```shell
%SDKAaptPath% package -f -m -M <path_to\AndroidManifest.xml> -I %SDKApiLevelPath% -S <path_to\res> -J <path_to_output\src>
```

AndroidManifest.xml is a generic AndroidManifest.xml, not your Delphi project version.  It should look something like this:
```xml
<?xml version="1.0" encoding="utf-8"?>
<!-- BEGIN_INCLUDE(manifest) -->
<manifest xmlns:android="http://schemas.android.com/apk/res/android"
        package="com.facebook"
        android:versionCode="1"
        android:versionName="1.0.0"
        android:installLocation="auto">
</manifest>
<!-- END_INCLUDE(manifest) -->
```
Notice the package name is set to `com.facebook`.  This is used in creating the R.Java to indicate the parent or root location for the R.Java for the Facebook SDK.  This needs to match the expectation of the library.

`%SDKApiLevelPath%` is passed to the batch file from the Post Build event.  `<path_to\res>` represents the location of all your resource files and `<path_to_output\src>` points to the location where your R.Java will be created. 

After running the above command you will produce an R.Java file under your `Project\Android\src\com\Facebook` folder.

## To compile your Android source files along with your R.Java
To create the object files for your source files and combine them with your R.Java you call the JAVAC.exe compiler.

```shell
%JDKPath%\javac -verbose -d %1\Android\obj -classpath %SDKApiLevelPath%;%1\Android\obj -sourcepath %1\Android\src %1\Android\src\com\facebook\*.java
```
This combines all source files together with the R.Java class.

> Note: If you notice we use %JDKPath% here which is undefined.  Delphi typically uses the newer Java 1.8 compiler (C:\Program Files\Java\jdk1.8.0_60\bin), but it does not work correctly for compiling the R.Java from the command line.  There are long threads on the Internet about this issue, so for now we compile it with Java 1.7 which works fine (C:\Program Files\Java\jdk1.7.0_71\bin).  If you don't have the Java 1.7 compiler installed, you can obtain it [here](http://www.oracle.com/technetwork/java/javase/downloads/java-archive-downloads-javase7-521261.html).
    
## To rebuild the Classes.dex
Finally to rebuild the Classes.dex you have to essentially call the DX tool to build the Classes.dex with a list of each and every .JAR library you use in your Delphi project (including the \path_to\facebook-sdk.jar) and include your R$ classes from the object folder (%1\Android\obj).

```shell
%JavaDxPath% --dex --verbose --output=%1\Android\%2\classes.dex "c:\program files (x86)\embarcadero\studio\18.0\lib\Android\Release\cloud-messaging.dex.jar" "c:\program files (x86)\embarcadero\studio\18.0\lib\Android\Release\fmx.dex.jar" "c:\program files (x86)\embarcadero\studio\18.0\lib\Android\Release\google-analytics-v2.dex.jar" "c:\program files (x86)\embarcadero\studio\18.0\lib\Android\Release\google-play-billing.dex.jar" "c:\program files (x86)\embarcadero\studio\18.0\lib\Android\Release\google-play-licensing.dex.jar" "c:\program files (x86)\embarcadero\studio\18.0\lib\Android\Release\android-support-v4.dex.jar" "c:\program files (x86)\embarcadero\studio\18.0\lib\Android\Release\google-play-services.dex.jar" "\path_to\facebook-sdk.jar" %1\Android\obj
```

# Putting it all together
To make it all work together for our project we create a batch file called AddRJavaToClassesDex.bat that looks like the following.

```shell
REM @echo OFF
setlocal ENABLEEXTENSIONS
set JDKPath="C:\Program Files\Java\jdk1.7.0_71\bin"

REM -- SDKAaptPath is passed by Delphi as an expansion of its internal SDKAaptPath variable
set SDKAaptPath=%3
@echo SDKAaptPath = %SDKAaptPath%

REM -- SDKApiLevelPath is passed by Delphi as an expansion of its internal SDKApiLevelPath variable
set SDKApiLevelPath=%4
@echo SDKApiLevelPath = %SDKApiLevelPath%

REM -- JavaDxPath is passed by Delphi as an expansion of its internal JavaDxPath variable
set JavaDxPath=%5
@echo JavaDxPath = %JavaDxPath%

REM -- Delete existing R.java related classes
rmdir /Q /S %1\Android\src
rmdir /Q /S %1\Android\obj
mkdir %1\Android\src
mkdir %1\Android\obj

REM -- Create R.java for resources for Facebook
%SDKAaptPath% package -f -m -M \Grijjy\GitHub\DelphiSocialFrameworks\LoginWithFacebook\Resources\Android\AndroidManifest.xml -I %SDKApiLevelPath% -S \Grijjy\GitHub\DelphiSocialFrameworks\LoginWithFacebook\Resources\Android\res -J %1\Android\src

REM -- Compile R.java into R$ classes for Facebook
%JDKPath%\javac -verbose -d %1\Android\obj -classpath %SDKApiLevelPath%;%1\Android\obj -sourcepath %1\Android\src %1\Android\src\com\facebook\*.java

REM -- Rebuild the classes.dex to include the R$ classes ** must add all the jars in the library and the path to the R$ class files
%JavaDxPath% --dex --verbose --output=%1\Android\%2\classes.dex "c:\program files (x86)\embarcadero\studio\18.0\lib\Android\Release\cloud-messaging.dex.jar" "c:\program files (x86)\embarcadero\studio\18.0\lib\Android\Release\fmx.dex.jar" "c:\program files (x86)\embarcadero\studio\18.0\lib\Android\Release\google-analytics-v2.dex.jar" "c:\program files (x86)\embarcadero\studio\18.0\lib\Android\Release\google-play-billing.dex.jar" "c:\program files (x86)\embarcadero\studio\18.0\lib\Android\Release\google-play-licensing.dex.jar" "c:\program files (x86)\embarcadero\studio\18.0\lib\Android\Release\android-support-v4.dex.jar" "c:\program files (x86)\embarcadero\studio\18.0\lib\Android\Release\google-play-services.dex.jar" "\Grijjy\GitHub\DelphiSocialFrameworks\LoginWithFacebook\facebook-sdk.jar" %1\Android\obj
```

1. Make sure that `set JDKPath="C:\Program Files\Java\jdk1.7.0_71\bin"` points to the actual location of the JDK command line utilities.

2. Change the various paths `\Grijjy\GitHub\DelphiSocialFrameworks\LoginWithFacebook` to our correct project location.

3. Change the `embarcadero\studio\18.0` path references to the correct Delphi version location. 

## Adding the Post Build event
Now we add a Project Option for a Build Event that is a Post Build event under the Delphi settings for our Project for all Android builds (Debug and Release).  That command line should be:

```shell
$(PROJECTDIR)\Resources\Android\AddRJavaToClassesDex.bat $(PROJECTDIR) $(CONFIG) "$(SDKAaptPath)" "$(SDKApiLevelPath)" "$(JavaDxPath)"
```
This will run your batch file and rebuild your Classes.dex between the Build and Run stages. 

# Android API Level 22 vs API Level 23
The current Facebook SDK requires API Level 23 related libraries and resources.  Delphi is currently using API Level 22 with the more recent releases.  This presents some additional challenges.  We could attempt to move Delphi to API Level 23 but this can create many other problems for our Delphi projects, so instead we are going to discuss the relatively minor changes you need to make to the Facebook SDK resources so they will work with API Level 22.

When you first attempt to Build and then Run your Delphi project and assuming you have performed the steps above you will receive some build errors.

```shell
[PAClient Error] Error: E2312 C:\Grijjy\GitHub\DelphiSocialFrameworks\LoginWithFacebook\Android\Debug\LoginWithFacebook\res\values\values.xml:134: error: Error retrieving parent for item: No resource found that matches the given name '@style/Theme.AppCompat.NoActionBar'.
[PAClient Error] Error: E2312 C:\Grijjy\GitHub\DelphiSocialFrameworks\LoginWithFacebook\Android\Debug\LoginWithFacebook\res\values\values.xml:139: error: Error retrieving parent for item: No resource found that matches the given name '@style/Theme.AppCompat.Dialog'.
```
This is caused by some missing libraries (com.android.support.appcompat-v7:19.+) and other requirements.  To ignore this error, simply edit `Project\Android\res\values\values.xml` and change `parent="@style/Theme.AppCompat.NoActionBar"` and `parent="@style/Theme.AppCompat.Dialog"` to `parent="@android:style/Theme.Translucent.NoTitleBar"`.

Once you attempt to Build and Run again, you might receive another error.

```shell
[PAClient Error] Error: E2312 C:\Grijjy\GitHub\DelphiSocialFrameworks\LoginWithFacebook\Android\Debug\LoginWithFacebook\res\layout\com_facebook_device_auth_dialog_fragment.xml:22: error: No resource identifier found for attribute 'cardBackgroundColor' in package 'com.embarcadero.LoginWithFacebook'
[PAClient Error] Error: E2312 C:\Grijjy\GitHub\DelphiSocialFrameworks\LoginWithFacebook\Android\Debug\LoginWithFacebook\res\layout\com_facebook_device_auth_dialog_fragment.xml:22: error: No resource identifier found for attribute 'cardElevation' in package 'com.embarcadero.LoginWithFacebook'
[PAClient Error] Error: E2312 C:\Grijjy\GitHub\DelphiSocialFrameworks\LoginWithFacebook\Android\Debug\LoginWithFacebook\res\layout\com_facebook_device_auth_dialog_fragment.xml:45: error: No resource identifier found for attribute 'srcCompat' in package 'com.embarcadero.LoginWithFacebook'
```
This is caused by the need for API level 23 and com.android.support.cardview-v7:23.2.0.  You will need to edit `Project\Android\res\layout\com_facebook_device_auth_dialog_fragment.xml` and `Project\Android\res\layout\com_facebook_smart_device_dialog_fragment.xml` and remove the Attributes for `cardBackgroundColor` and `cardElevation` and `srcCompat`.

Once you are done with those edits, Build and Run one more time and if you did all the steps correctly your app will finally run on the Android device.
> Note: Make sure you Build before you attempt to Run.

# Finally, running your app!
When you run the app you will be presented with a Login button.  Clicking it will bring up the Facebook interface requesting app approval.  Once you approve the app it will automatically return to your Delphi app.  
![](http://i.imgur.com/jFGPAe2.png)

For our example application we display your App Scoped User Id and the Access Token.  Subsequent launches will present only your App Scoped User Id and Access Token as Facebook handles these complexities internally.
![](http://i.imgur.com/1urXs85.png)

>Note: It is almost impossible to go through the approval process a second time without creating a new App ID for your test app because the Facebook SDK takes care of managing the access token internally.  This is good for your end user but makes testing a bit more complex.

The TgoSocial, TgoFacebook and TgoFacebookSDK classes presented provide a uniform class model to social login and other Facebook API related commands.  These classes work the same on both iOS and Android and provide a foundation so that you can add new Facebook method implementations without much effort. For more information on the class architecture, see [Part 1](iOS.md).

# Making GraphPath API requests directly
Once you have obtained the Facebook (AppScoped User) ID and the Access Token you can make Graph API calls to the various Facebook APIs.  Most implementations call HTTP methods directly, such as the one offered in Delphi but now that you have embedded the Facebook framework into your app you can use the native GraphPath method that is provided by the framework.  

This avoids all other considerations of whether your HTTP client implementation is fully compatible with Facebook's expectations or Google Play store requirements for IP protocols.

To add new API methods just create them in `TgoFacebook` class as new public methods and call the exposed FacebookSDK object's GraphPath method.  For example,

`FacebookSDK.GraphPath('me?fields=name,email');`

This will result in a `TFacebookGraphResultMessage`.  

`TFacebookGraphResultMessage.Value.Result` will indicate success or failure.  Upon failure, `TFacebookGraphResultMessage.Value.Error` will contain the error code.  If you are successful then `TFacebookGraphResultMessage.Value.Json` will contain the resulting response.

# How to combine resources from multiple libraries
If you have resources from multiple distinctly different SDKS on Android you may encounter a problem where a resource file exists in more than one library with the same name.  This is normal behavior for Android resources and the build tools for Android take care of merging the resource files into a common target file before the final build.

This is a critical step before the R.Java is created and the resource ids are assigned.  To work around this limitation with building in Delphi we created an [XmlMerge tool](https://github.com/grijjy/DelphiSocialFrameworks/XmlMerge) at Grijjy.  The tool examines all files and folders in one or more given paths, merges them in memory and saves the result of merged resources to a target location.

Consider the following,
`XmlMerge.exe <path_to_merged_res> <source_path_res1> <source_path_res2> etc...`

The above command merges the 2 distinct paths indicated (and all subfolders and files) and copies that result to the merged resource location.
> Note: While you do not need this tool if you are only using one SDK like the Facebook SDK for Android in your project, you will need it if you have more than one SDK (like using both the Facebook and Twitter SDK for Android which we will cover in a future article) or you already have numerous existing project resources that may need to be merged.

You can download XmlMerge [here](https://github.com/grijjy/DelphiSocialFrameworks/XmlMerge).

# Conclusion
The techniques we have discussed in this article such as using DeployMan and XmlMerge to handle resources and rebuilding the Classes.dex as a Post Build event are applicable to many other Android SDKs and using them in Delphi.

Once you are done with all these steps you should have a mobile app written in Delphi that supports the Facebook SDK on iOS and Android and offers social login.  You can also extend the classes internally to call most any Facebook GraphPath API from either platform in a uniform manner.  We hope you find this content useful and it helps you make your Delphi mobile app even better.

# License
TgoSocial, TgoFacebook, TgoFacebookSDK and related classes along with DelphiLoginWithFacebook are licensed under the Simplified BSD License. See License.txt for details.