unit Grijjy.FBSDK.Android.API;

interface

uses
  Androidapi.JNIBridge,
  Androidapi.JNI.App,
  Androidapi.JNI.GraphicsContentViewText,
  Androidapi.JNI.Java.Net,
//  Androidapi.JNI.Java.Util,
  Androidapi.JNI.JavaTypes,
  Androidapi.JNI.Location,
  Androidapi.JNI.Net,
  Androidapi.JNI.Os,
  Androidapi.JNI.Util,
  Androidapi.JNI.Webkit,
  Androidapi.JNI.Widget;

type
// ===== Forward declarations =====

  JAccount = interface;//android.accounts.Account
  JAnimator = interface;//android.animation.Animator
  JAnimator_AnimatorListener = interface;//android.animation.Animator$AnimatorListener
  JAnimator_AnimatorPauseListener = interface;//android.animation.Animator$AnimatorPauseListener
  JKeyframe = interface;//android.animation.Keyframe
  JLayoutTransition = interface;//android.animation.LayoutTransition
  JLayoutTransition_TransitionListener = interface;//android.animation.LayoutTransition$TransitionListener
  JPropertyValuesHolder = interface;//android.animation.PropertyValuesHolder
  JStateListAnimator = interface;//android.animation.StateListAnimator
  JTimeInterpolator = interface;//android.animation.TimeInterpolator
  JTypeConverter = interface;//android.animation.TypeConverter
  JTypeEvaluator = interface;//android.animation.TypeEvaluator
  JValueAnimator = interface;//android.animation.ValueAnimator
  JValueAnimator_AnimatorUpdateListener = interface;//android.animation.ValueAnimator$AnimatorUpdateListener
  JAsyncTask = interface;//android.os.AsyncTask
  JAsyncTask_Status = interface;//android.os.AsyncTask$Status
  JPathMotion = interface;//android.transition.PathMotion
  JScene = interface;//android.transition.Scene
  JTransition = interface;//android.transition.Transition
  JTransition_EpicenterCallback = interface;//android.transition.Transition$EpicenterCallback
  JTransition_TransitionListener = interface;//android.transition.Transition$TransitionListener
  JTransitionManager = interface;//android.transition.TransitionManager
  JTransitionPropagation = interface;//android.transition.TransitionPropagation
  JTransitionValues = interface;//android.transition.TransitionValues
  JInterpolator = interface;//android.view.animation.Interpolator
  JToolbar_LayoutParams = interface;//android.widget.Toolbar$LayoutParams
  JAccessToken = interface;//com.facebook.AccessToken
  JUtility_GraphMeRequestWithCacheCallback = interface;//com.facebook.internal.Utility$GraphMeRequestWithCacheCallback
  JAccessToken_1 = interface;//com.facebook.AccessToken$1
  JAccessToken_2 = interface;//com.facebook.AccessToken$2
  JAccessToken_AccessTokenCreationCallback = interface;//com.facebook.AccessToken$AccessTokenCreationCallback
  JAccessToken_AccessTokenRefreshCallback = interface;//com.facebook.AccessToken$AccessTokenRefreshCallback
  JAccessTokenCache = interface;//com.facebook.AccessTokenCache
  JAccessTokenCache_SharedPreferencesTokenCachingStrategyFactory = interface;//com.facebook.AccessTokenCache$SharedPreferencesTokenCachingStrategyFactory
  JAccessTokenManager = interface;//com.facebook.AccessTokenManager
  JAccessTokenManager_1 = interface;//com.facebook.AccessTokenManager$1
  JGraphRequest_Callback = interface;//com.facebook.GraphRequest$Callback
  JAccessTokenManager_2 = interface;//com.facebook.AccessTokenManager$2
  JAccessTokenManager_3 = interface;//com.facebook.AccessTokenManager$3
  JGraphRequestBatch_Callback = interface;//com.facebook.GraphRequestBatch$Callback
  JAccessTokenManager_4 = interface;//com.facebook.AccessTokenManager$4
  JAccessTokenManager_RefreshResult = interface;//com.facebook.AccessTokenManager$RefreshResult
  JAccessTokenSource = interface;//com.facebook.AccessTokenSource
  JAccessTokenTracker = interface;//com.facebook.AccessTokenTracker
  JAccessTokenTracker_1 = interface;//com.facebook.AccessTokenTracker$1
  JAccessTokenTracker_CurrentAccessTokenBroadcastReceiver = interface;//com.facebook.AccessTokenTracker$CurrentAccessTokenBroadcastReceiver
  Jfacebook_BuildConfig = interface;//com.facebook.BuildConfig
  JCallbackManager = interface;//com.facebook.CallbackManager
  JCallbackManager_Factory = interface;//com.facebook.CallbackManager$Factory
  JCustomTabActivity = interface;//com.facebook.CustomTabActivity
  //JFacebookActivity = interface;//com.facebook.FacebookActivity
  JFacebookException = interface;//com.facebook.FacebookException
  JFacebookAuthorizationException = interface;//com.facebook.FacebookAuthorizationException
  JFacebookBroadcastReceiver = interface;//com.facebook.FacebookBroadcastReceiver
  JFacebookButtonBase = interface;//com.facebook.FacebookButtonBase
  JFacebookButtonBase_1 = interface;//com.facebook.FacebookButtonBase$1
  JFacebookCallback = interface;//com.facebook.FacebookCallback
  JFacebookContentProvider = interface;//com.facebook.FacebookContentProvider
  JFacebookDialog = interface;//com.facebook.FacebookDialog
  JFacebookDialogException = interface;//com.facebook.FacebookDialogException
  JFacebookGraphResponseException = interface;//com.facebook.FacebookGraphResponseException
  JFacebookOperationCanceledException = interface;//com.facebook.FacebookOperationCanceledException
  JFacebookRequestError = interface;//com.facebook.FacebookRequestError
  JFacebookRequestError_1 = interface;//com.facebook.FacebookRequestError$1
  JFacebookRequestError_Category = interface;//com.facebook.FacebookRequestError$Category
  JFacebookRequestError_Range = interface;//com.facebook.FacebookRequestError$Range
  JFacebookSdk = interface;//com.facebook.FacebookSdk
//  JFacebookSdk_1 = interface;//com.facebook.FacebookSdk$1
  JFacebookSdk_2 = interface;//com.facebook.FacebookSdk$2
  JFacebookSdk_3 = interface;//com.facebook.FacebookSdk$3
  JFacebookSdk_4 = interface;//com.facebook.FacebookSdk$4
  JFacebookSdk_InitializeCallback = interface;//com.facebook.FacebookSdk$InitializeCallback
  JFacebookSdkNotInitializedException = interface;//com.facebook.FacebookSdkNotInitializedException
  JFacebookSdkVersion = interface;//com.facebook.FacebookSdkVersion
  JFacebookServiceException = interface;//com.facebook.FacebookServiceException
  JGraphRequest = interface;//com.facebook.GraphRequest
  JGraphRequest_1 = interface;//com.facebook.GraphRequest$1
  JGraphRequest_2 = interface;//com.facebook.GraphRequest$2
  JGraphRequest_3 = interface;//com.facebook.GraphRequest$3
  JGraphRequest_4 = interface;//com.facebook.GraphRequest$4
  JGraphRequest_5 = interface;//com.facebook.GraphRequest$5
  JGraphRequest_KeyValueSerializer = interface;//com.facebook.GraphRequest$KeyValueSerializer
  JGraphRequest_6 = interface;//com.facebook.GraphRequest$6
  JOpenGraphJSONUtility_PhotoJSONProcessor = interface;//com.facebook.share.internal.OpenGraphJSONUtility$PhotoJSONProcessor
  JGraphRequest_7 = interface;//com.facebook.GraphRequest$7
  JGraphRequest_Attachment = interface;//com.facebook.GraphRequest$Attachment
  JGraphRequest_GraphJSONArrayCallback = interface;//com.facebook.GraphRequest$GraphJSONArrayCallback
  JGraphRequest_GraphJSONObjectCallback = interface;//com.facebook.GraphRequest$GraphJSONObjectCallback
  JGraphRequest_OnProgressCallback = interface;//com.facebook.GraphRequest$OnProgressCallback
  JGraphRequest_ParcelableResourceWithMimeType = interface;//com.facebook.GraphRequest$ParcelableResourceWithMimeType
  JParcelableResourceWithMimeType_1 = interface;//com.facebook.GraphRequest$ParcelableResourceWithMimeType$1
  JGraphRequest_Serializer = interface;//com.facebook.GraphRequest$Serializer
  JGraphRequestAsyncTask = interface;//com.facebook.GraphRequestAsyncTask
  JGraphRequestBatch = interface;//com.facebook.GraphRequestBatch
  JGraphRequestBatch_OnProgressCallback = interface;//com.facebook.GraphRequestBatch$OnProgressCallback
  JGraphResponse = interface;//com.facebook.GraphResponse
  JGraphResponse_PagingDirection = interface;//com.facebook.GraphResponse$PagingDirection
  JHttpMethod = interface;//com.facebook.HttpMethod
  JLegacyTokenHelper = interface;//com.facebook.LegacyTokenHelper
  JLoggingBehavior = interface;//com.facebook.LoggingBehavior
  JProfile = interface;//com.facebook.Profile
  JProfile_1 = interface;//com.facebook.Profile$1
  JProfile_2 = interface;//com.facebook.Profile$2
  JProfileCache = interface;//com.facebook.ProfileCache
  JProfileManager = interface;//com.facebook.ProfileManager
  JProfileTracker = interface;//com.facebook.ProfileTracker
  JProfileTracker_1 = interface;//com.facebook.ProfileTracker$1
  JProfileTracker_ProfileBroadcastReceiver = interface;//com.facebook.ProfileTracker$ProfileBroadcastReceiver
  JProgressNoopOutputStream = interface;//com.facebook.ProgressNoopOutputStream
  JProgressOutputStream = interface;//com.facebook.ProgressOutputStream
  JProgressOutputStream_1 = interface;//com.facebook.ProgressOutputStream$1
  JRequestOutputStream = interface;//com.facebook.RequestOutputStream
  JRequestProgress = interface;//com.facebook.RequestProgress
  JRequestProgress_1 = interface;//com.facebook.RequestProgress$1
  JTestUserManager = interface;//com.facebook.TestUserManager
  JTestUserManager_Mode = interface;//com.facebook.TestUserManager$Mode
  JAccessTokenAppIdPair = interface;//com.facebook.appevents.AccessTokenAppIdPair
  JAccessTokenAppIdPair_1 = interface;//com.facebook.appevents.AccessTokenAppIdPair$1
  JAccessTokenAppIdPair_SerializationProxyV1 = interface;//com.facebook.appevents.AccessTokenAppIdPair$SerializationProxyV1
  JAppEvent = interface;//com.facebook.appevents.AppEvent
  JAppEvent_1 = interface;//com.facebook.appevents.AppEvent$1
  JAppEvent_SerializationProxyV1 = interface;//com.facebook.appevents.AppEvent$SerializationProxyV1
  JAppEventCollection = interface;//com.facebook.appevents.AppEventCollection
  JAppEventQueue = interface;//com.facebook.appevents.AppEventQueue
  JAppEventQueue_1 = interface;//com.facebook.appevents.AppEventQueue$1
  JAppEventQueue_2 = interface;//com.facebook.appevents.AppEventQueue$2
  JAppEventQueue_3 = interface;//com.facebook.appevents.AppEventQueue$3
  JAppEventQueue_4 = interface;//com.facebook.appevents.AppEventQueue$4
  JAppEventQueue_5 = interface;//com.facebook.appevents.AppEventQueue$5
  JAppEventQueue_6 = interface;//com.facebook.appevents.AppEventQueue$6
  JAppEventStore = interface;//com.facebook.appevents.AppEventStore
  JObjectInputStream = interface;//java.io.ObjectInputStream
  JAppEventStore_MovedClassObjectInputStream = interface;//com.facebook.appevents.AppEventStore$MovedClassObjectInputStream
  JAppEventsConstants = interface;//com.facebook.appevents.AppEventsConstants
  JAppEventsLogger = interface;//com.facebook.appevents.AppEventsLogger
  JAppEventsLogger_1 = interface;//com.facebook.appevents.AppEventsLogger$1
  JAppEventsLogger_2 = interface;//com.facebook.appevents.AppEventsLogger$2
  JAppEventsLogger_3 = interface;//com.facebook.appevents.AppEventsLogger$3
  JAppEventsLogger_FlushBehavior = interface;//com.facebook.appevents.AppEventsLogger$FlushBehavior
  JAppEventsLogger_PersistedAppSessionInfo = interface;//com.facebook.appevents.AppEventsLogger$PersistedAppSessionInfo
  JPersistedAppSessionInfo_1 = interface;//com.facebook.appevents.AppEventsLogger$PersistedAppSessionInfo$1
  JFacebookTimeSpentData = interface;//com.facebook.appevents.FacebookTimeSpentData
  JFacebookTimeSpentData_1 = interface;//com.facebook.appevents.FacebookTimeSpentData$1
  JFacebookTimeSpentData_SerializationProxyV1 = interface;//com.facebook.appevents.FacebookTimeSpentData$SerializationProxyV1
  JFacebookTimeSpentData_SerializationProxyV2 = interface;//com.facebook.appevents.FacebookTimeSpentData$SerializationProxyV2
  JFlushReason = interface;//com.facebook.appevents.FlushReason
  JFlushResult = interface;//com.facebook.appevents.FlushResult
  JFlushStatistics = interface;//com.facebook.appevents.FlushStatistics
  JPersistedEvents = interface;//com.facebook.appevents.PersistedEvents
  JSessionEventsState = interface;//com.facebook.appevents.SessionEventsState
  JActivityLifecycleTracker = interface;//com.facebook.appevents.internal.ActivityLifecycleTracker
  JActivityLifecycleTracker_1 = interface;//com.facebook.appevents.internal.ActivityLifecycleTracker$1
  JActivityLifecycleTracker_2 = interface;//com.facebook.appevents.internal.ActivityLifecycleTracker$2
  JActivityLifecycleTracker_3 = interface;//com.facebook.appevents.internal.ActivityLifecycleTracker$3
  JActivityLifecycleTracker_4 = interface;//com.facebook.appevents.internal.ActivityLifecycleTracker$4
  J4_1 = interface;//com.facebook.appevents.internal.ActivityLifecycleTracker$4$1
  Jinternal_Constants = interface;//com.facebook.appevents.internal.Constants
  JSessionInfo = interface;//com.facebook.appevents.internal.SessionInfo
  JSessionLogger = interface;//com.facebook.appevents.internal.SessionLogger
  JSourceApplicationInfo = interface;//com.facebook.appevents.internal.SourceApplicationInfo
  JSourceApplicationInfo_1 = interface;//com.facebook.appevents.internal.SourceApplicationInfo$1
  JSourceApplicationInfo_Factory = interface;//com.facebook.appevents.internal.SourceApplicationInfo$Factory
  JAppLinkData = interface;//com.facebook.applinks.AppLinkData
  JAppLinkData_1 = interface;//com.facebook.applinks.AppLinkData$1
  JAppLinkData_CompletionHandler = interface;//com.facebook.applinks.AppLinkData$CompletionHandler
  //JFacebookAppLinkResolver = interface;//com.facebook.applinks.FacebookAppLinkResolver
  //JFacebookAppLinkResolver_1 = interface;//com.facebook.applinks.FacebookAppLinkResolver$1
  JFacebookAppLinkResolver_2 = interface;//com.facebook.applinks.FacebookAppLinkResolver$2
  JAnalyticsEvents = interface;//com.facebook.internal.AnalyticsEvents
  JAppCall = interface;//com.facebook.internal.AppCall
  JAppEventsLoggerUtility = interface;//com.facebook.internal.AppEventsLoggerUtility
  JAppEventsLoggerUtility_1 = interface;//com.facebook.internal.AppEventsLoggerUtility$1
  JAppEventsLoggerUtility_GraphAPIActivityType = interface;//com.facebook.internal.AppEventsLoggerUtility$GraphAPIActivityType
  JAttributionIdentifiers = interface;//com.facebook.internal.AttributionIdentifiers
  JAttributionIdentifiers_1 = interface;//com.facebook.internal.AttributionIdentifiers$1
  JAttributionIdentifiers_GoogleAdInfo = interface;//com.facebook.internal.AttributionIdentifiers$GoogleAdInfo
  JAttributionIdentifiers_GoogleAdServiceConnection = interface;//com.facebook.internal.AttributionIdentifiers$GoogleAdServiceConnection
  JBoltsMeasurementEventListener = interface;//com.facebook.internal.BoltsMeasurementEventListener
  JBundleJSONConverter = interface;//com.facebook.internal.BundleJSONConverter
  JBundleJSONConverter_Setter = interface;//com.facebook.internal.BundleJSONConverter$Setter
  JBundleJSONConverter_1 = interface;//com.facebook.internal.BundleJSONConverter$1
  JBundleJSONConverter_2 = interface;//com.facebook.internal.BundleJSONConverter$2
  JBundleJSONConverter_3 = interface;//com.facebook.internal.BundleJSONConverter$3
  JBundleJSONConverter_4 = interface;//com.facebook.internal.BundleJSONConverter$4
  JBundleJSONConverter_5 = interface;//com.facebook.internal.BundleJSONConverter$5
  JBundleJSONConverter_6 = interface;//com.facebook.internal.BundleJSONConverter$6
  JBundleJSONConverter_7 = interface;//com.facebook.internal.BundleJSONConverter$7
  JCallbackManagerImpl = interface;//com.facebook.internal.CallbackManagerImpl
  JCallbackManagerImpl_Callback = interface;//com.facebook.internal.CallbackManagerImpl$Callback
  JCallbackManagerImpl_RequestCodeOffset = interface;//com.facebook.internal.CallbackManagerImpl$RequestCodeOffset
  JCollectionMapper = interface;//com.facebook.internal.CollectionMapper
  JCollectionMapper_OnErrorListener = interface;//com.facebook.internal.CollectionMapper$OnErrorListener
  JCollectionMapper_OnMapperCompleteListener = interface;//com.facebook.internal.CollectionMapper$OnMapperCompleteListener
  JCollectionMapper_1 = interface;//com.facebook.internal.CollectionMapper$1
  JCollectionMapper_OnMapValueCompleteListener = interface;//com.facebook.internal.CollectionMapper$OnMapValueCompleteListener
  JCollectionMapper_2 = interface;//com.facebook.internal.CollectionMapper$2
  JCollectionMapper_Collection = interface;//com.facebook.internal.CollectionMapper$Collection
  JCollectionMapper_ValueMapper = interface;//com.facebook.internal.CollectionMapper$ValueMapper
  JCustomTab = interface;//com.facebook.internal.CustomTab
  JDialogFeature = interface;//com.facebook.internal.DialogFeature
  JDialogPresenter = interface;//com.facebook.internal.DialogPresenter
  JDialogPresenter_ParameterProvider = interface;//com.facebook.internal.DialogPresenter$ParameterProvider
  JFacebookDialogBase = interface;//com.facebook.internal.FacebookDialogBase
  JFacebookDialogBase_ModeHandler = interface;//com.facebook.internal.FacebookDialogBase$ModeHandler
  //JFacebookDialogFragment = interface;//com.facebook.internal.FacebookDialogFragment
  JWebDialog_OnCompleteListener = interface;//com.facebook.internal.WebDialog$OnCompleteListener
  JFacebookDialogFragment_1 = interface;//com.facebook.internal.FacebookDialogFragment$1
  JFacebookDialogFragment_2 = interface;//com.facebook.internal.FacebookDialogFragment$2
  JFacebookRequestErrorClassification = interface;//com.facebook.internal.FacebookRequestErrorClassification
  JFacebookRequestErrorClassification_1 = interface;//com.facebook.internal.FacebookRequestErrorClassification$1
  JFacebookRequestErrorClassification_2 = interface;//com.facebook.internal.FacebookRequestErrorClassification$2
  JFacebookRequestErrorClassification_3 = interface;//com.facebook.internal.FacebookRequestErrorClassification$3
  JWebDialog = interface;//com.facebook.internal.WebDialog
  JFacebookWebFallbackDialog = interface;//com.facebook.internal.FacebookWebFallbackDialog
  JFacebookWebFallbackDialog_1 = interface;//com.facebook.internal.FacebookWebFallbackDialog$1
  JFileLruCache = interface;//com.facebook.internal.FileLruCache
  JFileLruCache_StreamCloseCallback = interface;//com.facebook.internal.FileLruCache$StreamCloseCallback
  JFileLruCache_1 = interface;//com.facebook.internal.FileLruCache$1
  JFileLruCache_2 = interface;//com.facebook.internal.FileLruCache$2
  JFileLruCache_3 = interface;//com.facebook.internal.FileLruCache$3
  JFileLruCache_BufferFile = interface;//com.facebook.internal.FileLruCache$BufferFile
  JBufferFile_1 = interface;//com.facebook.internal.FileLruCache$BufferFile$1
  JBufferFile_2 = interface;//com.facebook.internal.FileLruCache$BufferFile$2
  JFileLruCache_CloseCallbackOutputStream = interface;//com.facebook.internal.FileLruCache$CloseCallbackOutputStream
  JFileLruCache_CopyingInputStream = interface;//com.facebook.internal.FileLruCache$CopyingInputStream
  JFileLruCache_Limits = interface;//com.facebook.internal.FileLruCache$Limits
  JFileLruCache_ModifiedFile = interface;//com.facebook.internal.FileLruCache$ModifiedFile
  JFileLruCache_StreamHeader = interface;//com.facebook.internal.FileLruCache$StreamHeader
  JFragmentWrapper = interface;//com.facebook.internal.FragmentWrapper
  JGraphUtil = interface;//com.facebook.internal.GraphUtil
  JImageDownloader = interface;//com.facebook.internal.ImageDownloader
  JImageDownloader_1 = interface;//com.facebook.internal.ImageDownloader$1
  JImageDownloader_CacheReadWorkItem = interface;//com.facebook.internal.ImageDownloader$CacheReadWorkItem
  JImageDownloader_DownloadImageWorkItem = interface;//com.facebook.internal.ImageDownloader$DownloadImageWorkItem
  JImageDownloader_DownloaderContext = interface;//com.facebook.internal.ImageDownloader$DownloaderContext
  JImageDownloader_RequestKey = interface;//com.facebook.internal.ImageDownloader$RequestKey
  JImageRequest = interface;//com.facebook.internal.ImageRequest
  JImageRequest_1 = interface;//com.facebook.internal.ImageRequest$1
  JImageRequest_Builder = interface;//com.facebook.internal.ImageRequest$Builder
  JImageRequest_Callback = interface;//com.facebook.internal.ImageRequest$Callback
  JImageResponse = interface;//com.facebook.internal.ImageResponse
  JImageResponseCache = interface;//com.facebook.internal.ImageResponseCache
  JFilterInputStream = interface;//java.io.FilterInputStream
  JBufferedInputStream = interface;//java.io.BufferedInputStream
  JImageResponseCache_BufferedHttpInputStream = interface;//com.facebook.internal.ImageResponseCache$BufferedHttpInputStream
  JInternalSettings = interface;//com.facebook.internal.InternalSettings
  JJsonUtil = interface;//com.facebook.internal.JsonUtil
  JMap_Entry = interface;//java.util.Map$Entry
  JJsonUtil_JSONObjectEntry = interface;//com.facebook.internal.JsonUtil$JSONObjectEntry
  JLockOnGetVariable = interface;//com.facebook.internal.LockOnGetVariable
  JLockOnGetVariable_1 = interface;//com.facebook.internal.LockOnGetVariable$1
  Jinternal_Logger = interface;//com.facebook.internal.Logger
  JLoginAuthorizationType = interface;//com.facebook.internal.LoginAuthorizationType
  JMutable = interface;//com.facebook.internal.Mutable
  JNativeAppCallAttachmentStore = interface;//com.facebook.internal.NativeAppCallAttachmentStore
  JNativeAppCallAttachmentStore_1 = interface;//com.facebook.internal.NativeAppCallAttachmentStore$1
  JNativeAppCallAttachmentStore_Attachment = interface;//com.facebook.internal.NativeAppCallAttachmentStore$Attachment
  JNativeProtocol = interface;//com.facebook.internal.NativeProtocol
  JNativeProtocol_1 = interface;//com.facebook.internal.NativeProtocol$1
  JNativeProtocol_NativeAppInfo = interface;//com.facebook.internal.NativeProtocol$NativeAppInfo
  JNativeProtocol_KatanaAppInfo = interface;//com.facebook.internal.NativeProtocol$KatanaAppInfo
  JNativeProtocol_MessengerAppInfo = interface;//com.facebook.internal.NativeProtocol$MessengerAppInfo
  JNativeProtocol_WakizashiAppInfo = interface;//com.facebook.internal.NativeProtocol$WakizashiAppInfo
  JPermissionType = interface;//com.facebook.internal.PermissionType
  JPlatformServiceClient = interface;//com.facebook.internal.PlatformServiceClient
  JPlatformServiceClient_1 = interface;//com.facebook.internal.PlatformServiceClient$1
  JPlatformServiceClient_CompletedListener = interface;//com.facebook.internal.PlatformServiceClient$CompletedListener
  JProfileInformationCache = interface;//com.facebook.internal.ProfileInformationCache
  JServerProtocol = interface;//com.facebook.internal.ServerProtocol
  JUrlRedirectCache = interface;//com.facebook.internal.UrlRedirectCache
  JUtility = interface;//com.facebook.internal.Utility
  JUtility_1 = interface;//com.facebook.internal.Utility$1
  JUtility_2 = interface;//com.facebook.internal.Utility$2
  JUtility_3 = interface;//com.facebook.internal.Utility$3
  JUtility_DialogFeatureConfig = interface;//com.facebook.internal.Utility$DialogFeatureConfig
  JUtility_FetchedAppSettings = interface;//com.facebook.internal.Utility$FetchedAppSettings
  JUtility_Mapper = interface;//com.facebook.internal.Utility$Mapper
  JUtility_PermissionsPair = interface;//com.facebook.internal.Utility$PermissionsPair
  JUtility_Predicate = interface;//com.facebook.internal.Utility$Predicate
  JValidate = interface;//com.facebook.internal.Validate
  JWebDialog_1 = interface;//com.facebook.internal.WebDialog$1
  JWebDialog_2 = interface;//com.facebook.internal.WebDialog$2
  JWebDialog_3 = interface;//com.facebook.internal.WebDialog$3
  JWebDialog_4 = interface;//com.facebook.internal.WebDialog$4
  JWebDialog_Builder = interface;//com.facebook.internal.WebDialog$Builder
  JWebDialog_DialogWebViewClient = interface;//com.facebook.internal.WebDialog$DialogWebViewClient
  JWorkQueue = interface;//com.facebook.internal.WorkQueue
  JWorkQueue_1 = interface;//com.facebook.internal.WorkQueue$1
  JWorkQueue_WorkItem = interface;//com.facebook.internal.WorkQueue$WorkItem
  JWorkQueue_WorkNode = interface;//com.facebook.internal.WorkQueue$WorkNode
  JLoginMethodHandler = interface;//com.facebook.login.LoginMethodHandler
  JWebLoginMethodHandler = interface;//com.facebook.login.WebLoginMethodHandler
  JCustomTabLoginMethodHandler = interface;//com.facebook.login.CustomTabLoginMethodHandler
  JCustomTabLoginMethodHandler_1 = interface;//com.facebook.login.CustomTabLoginMethodHandler$1
  JDefaultAudience = interface;//com.facebook.login.DefaultAudience
  //JDeviceAuthDialog = interface;//com.facebook.login.DeviceAuthDialog
  JDeviceAuthDialog_1 = interface;//com.facebook.login.DeviceAuthDialog$1
  JDeviceAuthDialog_2 = interface;//com.facebook.login.DeviceAuthDialog$2
  JDeviceAuthDialog_3 = interface;//com.facebook.login.DeviceAuthDialog$3
  JDeviceAuthDialog_4 = interface;//com.facebook.login.DeviceAuthDialog$4
  JDeviceAuthDialog_5 = interface;//com.facebook.login.DeviceAuthDialog$5
  JDeviceAuthDialog_RequestState = interface;//com.facebook.login.DeviceAuthDialog$RequestState
  JRequestState_1 = interface;//com.facebook.login.DeviceAuthDialog$RequestState$1
  JDeviceAuthMethodHandler = interface;//com.facebook.login.DeviceAuthMethodHandler
  JDeviceAuthMethodHandler_1 = interface;//com.facebook.login.DeviceAuthMethodHandler$1
  JLoginManager = interface;//com.facebook.login.LoginManager
  JDeviceLoginManager = interface;//com.facebook.login.DeviceLoginManager
  JGetTokenClient = interface;//com.facebook.login.GetTokenClient
  JGetTokenLoginMethodHandler = interface;//com.facebook.login.GetTokenLoginMethodHandler
  JGetTokenLoginMethodHandler_1 = interface;//com.facebook.login.GetTokenLoginMethodHandler$1
  JGetTokenLoginMethodHandler_2 = interface;//com.facebook.login.GetTokenLoginMethodHandler$2
  JGetTokenLoginMethodHandler_3 = interface;//com.facebook.login.GetTokenLoginMethodHandler$3
  JKatanaProxyLoginMethodHandler = interface;//com.facebook.login.KatanaProxyLoginMethodHandler
  JKatanaProxyLoginMethodHandler_1 = interface;//com.facebook.login.KatanaProxyLoginMethodHandler$1
  JLoginBehavior = interface;//com.facebook.login.LoginBehavior
  JLoginClient = interface;//com.facebook.login.LoginClient
  JLoginClient_1 = interface;//com.facebook.login.LoginClient$1
  JLoginClient_BackgroundProcessingListener = interface;//com.facebook.login.LoginClient$BackgroundProcessingListener
  JLoginClient_OnCompletedListener = interface;//com.facebook.login.LoginClient$OnCompletedListener
  JLoginClient_Request = interface;//com.facebook.login.LoginClient$Request
  JRequest_1 = interface;//com.facebook.login.LoginClient$Request$1
  JLoginClient_Result = interface;//com.facebook.login.LoginClient$Result
  JResult_1 = interface;//com.facebook.login.LoginClient$Result$1
  JResult_Code = interface;//com.facebook.login.LoginClient$Result$Code
  //JLoginFragment = interface;//com.facebook.login.LoginFragment
  JLoginFragment_1 = interface;//com.facebook.login.LoginFragment$1
  JLoginFragment_2 = interface;//com.facebook.login.LoginFragment$2
  JLoginLogger = interface;//com.facebook.login.LoginLogger
  JLoginManager_1 = interface;//com.facebook.login.LoginManager$1
  JLoginManager_2 = interface;//com.facebook.login.LoginManager$2
  JLoginManager_3 = interface;//com.facebook.login.LoginManager$3
  JStartActivityDelegate = interface;//com.facebook.login.StartActivityDelegate
  JLoginManager_ActivityStartActivityDelegate = interface;//com.facebook.login.LoginManager$ActivityStartActivityDelegate
  JLoginManager_FragmentStartActivityDelegate = interface;//com.facebook.login.LoginManager$FragmentStartActivityDelegate
  JLoginManager_LoginLoggerHolder = interface;//com.facebook.login.LoginManager$LoginLoggerHolder
  JLoginResult = interface;//com.facebook.login.LoginResult
  JWebViewLoginMethodHandler = interface;//com.facebook.login.WebViewLoginMethodHandler
  JWebViewLoginMethodHandler_1 = interface;//com.facebook.login.WebViewLoginMethodHandler$1
  JWebViewLoginMethodHandler_2 = interface;//com.facebook.login.WebViewLoginMethodHandler$2
  JWebViewLoginMethodHandler_AuthDialogBuilder = interface;//com.facebook.login.WebViewLoginMethodHandler$AuthDialogBuilder
  JLoginButton = interface;//com.facebook.login.widget.LoginButton
  JDeviceLoginButton = interface;//com.facebook.login.widget.DeviceLoginButton
  JDeviceLoginButton_1 = interface;//com.facebook.login.widget.DeviceLoginButton$1
  JLoginButton_LoginClickListener = interface;//com.facebook.login.widget.LoginButton$LoginClickListener
  JDeviceLoginButton_DeviceLoginClickListener = interface;//com.facebook.login.widget.DeviceLoginButton$DeviceLoginClickListener
  JLoginButton_1 = interface;//com.facebook.login.widget.LoginButton$1
  J1_1 = interface;//com.facebook.login.widget.LoginButton$1$1
  JLoginButton_2 = interface;//com.facebook.login.widget.LoginButton$2
  JLoginButton_3 = interface;//com.facebook.login.widget.LoginButton$3
  JLoginButton_LoginButtonProperties = interface;//com.facebook.login.widget.LoginButton$LoginButtonProperties
  JLoginClickListener_1 = interface;//com.facebook.login.widget.LoginButton$LoginClickListener$1
  JLoginButton_ToolTipMode = interface;//com.facebook.login.widget.LoginButton$ToolTipMode
  JProfilePictureView = interface;//com.facebook.login.widget.ProfilePictureView
  JProfilePictureView_1 = interface;//com.facebook.login.widget.ProfilePictureView$1
  JProfilePictureView_OnErrorListener = interface;//com.facebook.login.widget.ProfilePictureView$OnErrorListener
  JToolTipPopup = interface;//com.facebook.login.widget.ToolTipPopup
  JToolTipPopup_1 = interface;//com.facebook.login.widget.ToolTipPopup$1
  JToolTipPopup_2 = interface;//com.facebook.login.widget.ToolTipPopup$2
  JToolTipPopup_3 = interface;//com.facebook.login.widget.ToolTipPopup$3
  JToolTipPopup_PopupContentView = interface;//com.facebook.login.widget.ToolTipPopup$PopupContentView
  JToolTipPopup_Style = interface;//com.facebook.login.widget.ToolTipPopup$Style
  JMessengerThreadParams = interface;//com.facebook.messenger.MessengerThreadParams
  JMessengerThreadParams_Origin = interface;//com.facebook.messenger.MessengerThreadParams$Origin
  JMessengerUtils = interface;//com.facebook.messenger.MessengerUtils
  JShareToMessengerParams = interface;//com.facebook.messenger.ShareToMessengerParams
  JShareToMessengerParamsBuilder = interface;//com.facebook.messenger.ShareToMessengerParamsBuilder
  JDeviceShareDialog = interface;//com.facebook.share.DeviceShareDialog
  JDeviceShareDialog_1 = interface;//com.facebook.share.DeviceShareDialog$1
  JDeviceShareDialog_Result = interface;//com.facebook.share.DeviceShareDialog$Result
  JShareApi = interface;//com.facebook.share.ShareApi
  JShareApi_1 = interface;//com.facebook.share.ShareApi$1
  JShareApi_10 = interface;//com.facebook.share.ShareApi$10
  JShareApi_11 = interface;//com.facebook.share.ShareApi$11
  JShareApi_12 = interface;//com.facebook.share.ShareApi$12
  JShareApi_2 = interface;//com.facebook.share.ShareApi$2
  JShareApi_3 = interface;//com.facebook.share.ShareApi$3
  JShareApi_4 = interface;//com.facebook.share.ShareApi$4
  JShareApi_5 = interface;//com.facebook.share.ShareApi$5
  J5_1 = interface;//com.facebook.share.ShareApi$5$1
  JShareApi_6 = interface;//com.facebook.share.ShareApi$6
  JShareApi_7 = interface;//com.facebook.share.ShareApi$7
  JShareApi_8 = interface;//com.facebook.share.ShareApi$8
  JShareApi_9 = interface;//com.facebook.share.ShareApi$9
  JShareBuilder = interface;//com.facebook.share.ShareBuilder
  JSharer = interface;//com.facebook.share.Sharer
  JSharer_Result = interface;//com.facebook.share.Sharer$Result
  JAppInviteDialogFeature = interface;//com.facebook.share.internal.AppInviteDialogFeature
  //JDeviceShareDialogFragment = interface;//com.facebook.share.internal.DeviceShareDialogFragment
  JDeviceShareDialogFragment_1 = interface;//com.facebook.share.internal.DeviceShareDialogFragment$1
  JDeviceShareDialogFragment_2 = interface;//com.facebook.share.internal.DeviceShareDialogFragment$2
  JDeviceShareDialogFragment_3 = interface;//com.facebook.share.internal.DeviceShareDialogFragment$3
  JDeviceShareDialogFragment_RequestState = interface;//com.facebook.share.internal.DeviceShareDialogFragment$RequestState
  JDeviceShareDialogFragment_RequestState_1 = interface;//com.facebook.share.internal.DeviceShareDialogFragment$RequestState$1
  JGameRequestValidation = interface;//com.facebook.share.internal.GameRequestValidation
  JLegacyNativeDialogParameters = interface;//com.facebook.share.internal.LegacyNativeDialogParameters
  JLikeActionController = interface;//com.facebook.share.internal.LikeActionController
  JLikeActionController_CreationCallback = interface;//com.facebook.share.internal.LikeActionController$CreationCallback
  JLikeActionController_1 = interface;//com.facebook.share.internal.LikeActionController$1
  JLikeActionController_10 = interface;//com.facebook.share.internal.LikeActionController$10
  JLikeActionController_11 = interface;//com.facebook.share.internal.LikeActionController$11
  JLikeActionController_12 = interface;//com.facebook.share.internal.LikeActionController$12
  JLikeActionController_2 = interface;//com.facebook.share.internal.LikeActionController$2
  JLikeActionController_3 = interface;//com.facebook.share.internal.LikeActionController$3
  JLikeActionController_4 = interface;//com.facebook.share.internal.LikeActionController$4
  JLikeActionController_5 = interface;//com.facebook.share.internal.LikeActionController$5
  JResultProcessor = interface;//com.facebook.share.internal.ResultProcessor
  JLikeActionController_6 = interface;//com.facebook.share.internal.LikeActionController$6
  JLikeActionController_RequestCompletionCallback = interface;//com.facebook.share.internal.LikeActionController$RequestCompletionCallback
  JLikeActionController_7 = interface;//com.facebook.share.internal.LikeActionController$7
  J7_1 = interface;//com.facebook.share.internal.LikeActionController$7$1
  JLikeActionController_8 = interface;//com.facebook.share.internal.LikeActionController$8
  JLikeActionController_9 = interface;//com.facebook.share.internal.LikeActionController$9
  J9_1 = interface;//com.facebook.share.internal.LikeActionController$9$1
  JLikeActionController_RequestWrapper = interface;//com.facebook.share.internal.LikeActionController$RequestWrapper
  JLikeActionController_AbstractRequestWrapper = interface;//com.facebook.share.internal.LikeActionController$AbstractRequestWrapper
  JAbstractRequestWrapper_1 = interface;//com.facebook.share.internal.LikeActionController$AbstractRequestWrapper$1
  JLikeActionController_CreateLikeActionControllerWorkItem = interface;//com.facebook.share.internal.LikeActionController$CreateLikeActionControllerWorkItem
  JLikeActionController_GetEngagementRequestWrapper = interface;//com.facebook.share.internal.LikeActionController$GetEngagementRequestWrapper
  JLikeActionController_GetOGObjectIdRequestWrapper = interface;//com.facebook.share.internal.LikeActionController$GetOGObjectIdRequestWrapper
  JLikeActionController_GetOGObjectLikesRequestWrapper = interface;//com.facebook.share.internal.LikeActionController$GetOGObjectLikesRequestWrapper
  JLikeActionController_GetPageIdRequestWrapper = interface;//com.facebook.share.internal.LikeActionController$GetPageIdRequestWrapper
  JLikeActionController_GetPageLikesRequestWrapper = interface;//com.facebook.share.internal.LikeActionController$GetPageLikesRequestWrapper
  JLikeActionController_LikeRequestWrapper = interface;//com.facebook.share.internal.LikeActionController$LikeRequestWrapper
  JLikeActionController_MRUCacheWorkItem = interface;//com.facebook.share.internal.LikeActionController$MRUCacheWorkItem
  JLikeActionController_PublishLikeRequestWrapper = interface;//com.facebook.share.internal.LikeActionController$PublishLikeRequestWrapper
  JLikeActionController_PublishUnlikeRequestWrapper = interface;//com.facebook.share.internal.LikeActionController$PublishUnlikeRequestWrapper
  JLikeActionController_SerializeToDiskWorkItem = interface;//com.facebook.share.internal.LikeActionController$SerializeToDiskWorkItem
  JLikeBoxCountView = interface;//com.facebook.share.internal.LikeBoxCountView
  JLikeBoxCountView_1 = interface;//com.facebook.share.internal.LikeBoxCountView$1
  JLikeBoxCountView_LikeBoxCountViewCaretPosition = interface;//com.facebook.share.internal.LikeBoxCountView$LikeBoxCountViewCaretPosition
  JLikeButton = interface;//com.facebook.share.internal.LikeButton
  JShareModel = interface;//com.facebook.share.model.ShareModel
  JLikeContent = interface;//com.facebook.share.internal.LikeContent
  JLikeContent_1 = interface;//com.facebook.share.internal.LikeContent$1
  JShareModelBuilder = interface;//com.facebook.share.model.ShareModelBuilder
  JLikeContent_Builder = interface;//com.facebook.share.internal.LikeContent$Builder
  JLikeDialog = interface;//com.facebook.share.internal.LikeDialog
  JLikeDialog_1 = interface;//com.facebook.share.internal.LikeDialog$1
  JLikeDialog_2 = interface;//com.facebook.share.internal.LikeDialog$2
  JLikeDialog_NativeHandler = interface;//com.facebook.share.internal.LikeDialog$NativeHandler
  JNativeHandler_1 = interface;//com.facebook.share.internal.LikeDialog$NativeHandler$1
  JLikeDialog_Result = interface;//com.facebook.share.internal.LikeDialog$Result
  JLikeDialog_WebFallbackHandler = interface;//com.facebook.share.internal.LikeDialog$WebFallbackHandler
  JLikeDialogFeature = interface;//com.facebook.share.internal.LikeDialogFeature
  JLikeStatusClient = interface;//com.facebook.share.internal.LikeStatusClient
  JMessageDialogFeature = interface;//com.facebook.share.internal.MessageDialogFeature
  JNativeDialogParameters = interface;//com.facebook.share.internal.NativeDialogParameters
  JOpenGraphActionDialogFeature = interface;//com.facebook.share.internal.OpenGraphActionDialogFeature
  JOpenGraphJSONUtility = interface;//com.facebook.share.internal.OpenGraphJSONUtility
  JOpenGraphMessageDialogFeature = interface;//com.facebook.share.internal.OpenGraphMessageDialogFeature
  JShareConstants = interface;//com.facebook.share.internal.ShareConstants
  JShareContentValidation = interface;//com.facebook.share.internal.ShareContentValidation
  JShareContentValidation_1 = interface;//com.facebook.share.internal.ShareContentValidation$1
  JShareContentValidation_Validator = interface;//com.facebook.share.internal.ShareContentValidation$Validator
  JShareContentValidation_ApiValidator = interface;//com.facebook.share.internal.ShareContentValidation$ApiValidator
  JShareContentValidation_WebShareValidator = interface;//com.facebook.share.internal.ShareContentValidation$WebShareValidator
  JShareDialogFeature = interface;//com.facebook.share.internal.ShareDialogFeature
  JShareContent = interface;//com.facebook.share.model.ShareContent
  JShareFeedContent = interface;//com.facebook.share.internal.ShareFeedContent
  JShareFeedContent_1 = interface;//com.facebook.share.internal.ShareFeedContent$1
  JShareContent_Builder = interface;//com.facebook.share.model.ShareContent$Builder
  JShareFeedContent_Builder = interface;//com.facebook.share.internal.ShareFeedContent$Builder
  JShareInternalUtility = interface;//com.facebook.share.internal.ShareInternalUtility
  JShareInternalUtility_1 = interface;//com.facebook.share.internal.ShareInternalUtility$1
  JShareInternalUtility_2 = interface;//com.facebook.share.internal.ShareInternalUtility$2
  JShareInternalUtility_3 = interface;//com.facebook.share.internal.ShareInternalUtility$3
  JShareInternalUtility_4 = interface;//com.facebook.share.internal.ShareInternalUtility$4
  JShareInternalUtility_5 = interface;//com.facebook.share.internal.ShareInternalUtility$5
  JShareInternalUtility_6 = interface;//com.facebook.share.internal.ShareInternalUtility$6
  JShareInternalUtility_7 = interface;//com.facebook.share.internal.ShareInternalUtility$7
  JShareInternalUtility_8 = interface;//com.facebook.share.internal.ShareInternalUtility$8
  JVideoUploader = interface;//com.facebook.share.internal.VideoUploader
  JVideoUploader_1 = interface;//com.facebook.share.internal.VideoUploader$1
  JVideoUploader_UploadWorkItemBase = interface;//com.facebook.share.internal.VideoUploader$UploadWorkItemBase
  JVideoUploader_FinishUploadWorkItem = interface;//com.facebook.share.internal.VideoUploader$FinishUploadWorkItem
  JFinishUploadWorkItem_1 = interface;//com.facebook.share.internal.VideoUploader$FinishUploadWorkItem$1
  JVideoUploader_StartUploadWorkItem = interface;//com.facebook.share.internal.VideoUploader$StartUploadWorkItem
  JStartUploadWorkItem_1 = interface;//com.facebook.share.internal.VideoUploader$StartUploadWorkItem$1
  JVideoUploader_TransferChunkWorkItem = interface;//com.facebook.share.internal.VideoUploader$TransferChunkWorkItem
  JTransferChunkWorkItem_1 = interface;//com.facebook.share.internal.VideoUploader$TransferChunkWorkItem$1
  JVideoUploader_UploadContext = interface;//com.facebook.share.internal.VideoUploader$UploadContext
  JUploadWorkItemBase_1 = interface;//com.facebook.share.internal.VideoUploader$UploadWorkItemBase$1
  JUploadWorkItemBase_2 = interface;//com.facebook.share.internal.VideoUploader$UploadWorkItemBase$2
  JWebDialogParameters = interface;//com.facebook.share.internal.WebDialogParameters
  JAppGroupCreationContent = interface;//com.facebook.share.model.AppGroupCreationContent
  JAppGroupCreationContent_1 = interface;//com.facebook.share.model.AppGroupCreationContent$1
  JAppGroupCreationContent_AppGroupPrivacy = interface;//com.facebook.share.model.AppGroupCreationContent$AppGroupPrivacy
  JAppGroupCreationContent_Builder = interface;//com.facebook.share.model.AppGroupCreationContent$Builder
  JAppInviteContent = interface;//com.facebook.share.model.AppInviteContent
  JAppInviteContent_1 = interface;//com.facebook.share.model.AppInviteContent$1
  JAppInviteContent_Builder = interface;//com.facebook.share.model.AppInviteContent$Builder
  JGameRequestContent = interface;//com.facebook.share.model.GameRequestContent
  JGameRequestContent_1 = interface;//com.facebook.share.model.GameRequestContent$1
  JGameRequestContent_ActionType = interface;//com.facebook.share.model.GameRequestContent$ActionType
  JGameRequestContent_Builder = interface;//com.facebook.share.model.GameRequestContent$Builder
  JGameRequestContent_Filters = interface;//com.facebook.share.model.GameRequestContent$Filters
  JShareHashtag = interface;//com.facebook.share.model.ShareHashtag
  JShareHashtag_1 = interface;//com.facebook.share.model.ShareHashtag$1
  JShareHashtag_Builder = interface;//com.facebook.share.model.ShareHashtag$Builder
  JShareLinkContent = interface;//com.facebook.share.model.ShareLinkContent
  JShareLinkContent_1 = interface;//com.facebook.share.model.ShareLinkContent$1
  JShareLinkContent_Builder = interface;//com.facebook.share.model.ShareLinkContent$Builder
  JShareMedia = interface;//com.facebook.share.model.ShareMedia
  JShareMedia_Builder = interface;//com.facebook.share.model.ShareMedia$Builder
  JShareMedia_Type = interface;//com.facebook.share.model.ShareMedia$Type
  JShareMediaContent = interface;//com.facebook.share.model.ShareMediaContent
  JShareMediaContent_1 = interface;//com.facebook.share.model.ShareMediaContent$1
  JShareMediaContent_Builder = interface;//com.facebook.share.model.ShareMediaContent$Builder
  JShareOpenGraphValueContainer = interface;//com.facebook.share.model.ShareOpenGraphValueContainer
  JShareOpenGraphAction = interface;//com.facebook.share.model.ShareOpenGraphAction
  JShareOpenGraphAction_1 = interface;//com.facebook.share.model.ShareOpenGraphAction$1
  JShareOpenGraphValueContainer_Builder = interface;//com.facebook.share.model.ShareOpenGraphValueContainer$Builder
  JShareOpenGraphAction_Builder = interface;//com.facebook.share.model.ShareOpenGraphAction$Builder
  JShareOpenGraphContent = interface;//com.facebook.share.model.ShareOpenGraphContent
  JShareOpenGraphContent_1 = interface;//com.facebook.share.model.ShareOpenGraphContent$1
  JShareOpenGraphContent_Builder = interface;//com.facebook.share.model.ShareOpenGraphContent$Builder
  JShareOpenGraphObject = interface;//com.facebook.share.model.ShareOpenGraphObject
  JShareOpenGraphObject_1 = interface;//com.facebook.share.model.ShareOpenGraphObject$1
  JShareOpenGraphObject_Builder = interface;//com.facebook.share.model.ShareOpenGraphObject$Builder
  JSharePhoto = interface;//com.facebook.share.model.SharePhoto
  JSharePhoto_1 = interface;//com.facebook.share.model.SharePhoto$1
  JSharePhoto_Builder = interface;//com.facebook.share.model.SharePhoto$Builder
  JSharePhotoContent = interface;//com.facebook.share.model.SharePhotoContent
  JSharePhotoContent_1 = interface;//com.facebook.share.model.SharePhotoContent$1
  JSharePhotoContent_Builder = interface;//com.facebook.share.model.SharePhotoContent$Builder
  JShareVideo = interface;//com.facebook.share.model.ShareVideo
  JShareVideo_1 = interface;//com.facebook.share.model.ShareVideo$1
  JShareVideo_Builder = interface;//com.facebook.share.model.ShareVideo$Builder
  JShareVideoContent = interface;//com.facebook.share.model.ShareVideoContent
  JShareVideoContent_1 = interface;//com.facebook.share.model.ShareVideoContent$1
  JShareVideoContent_Builder = interface;//com.facebook.share.model.ShareVideoContent$Builder
  JAppInviteDialog = interface;//com.facebook.share.widget.AppInviteDialog
  JAppInviteDialog_1 = interface;//com.facebook.share.widget.AppInviteDialog$1
  JAppInviteDialog_2 = interface;//com.facebook.share.widget.AppInviteDialog$2
  JAppInviteDialog_NativeHandler = interface;//com.facebook.share.widget.AppInviteDialog$NativeHandler
  JAppInviteDialog_NativeHandler_1 = interface;//com.facebook.share.widget.AppInviteDialog$NativeHandler$1
  JAppInviteDialog_Result = interface;//com.facebook.share.widget.AppInviteDialog$Result
  JAppInviteDialog_WebFallbackHandler = interface;//com.facebook.share.widget.AppInviteDialog$WebFallbackHandler
  JCreateAppGroupDialog = interface;//com.facebook.share.widget.CreateAppGroupDialog
  JCreateAppGroupDialog_1 = interface;//com.facebook.share.widget.CreateAppGroupDialog$1
  JCreateAppGroupDialog_2 = interface;//com.facebook.share.widget.CreateAppGroupDialog$2
  JCreateAppGroupDialog_Result = interface;//com.facebook.share.widget.CreateAppGroupDialog$Result
  JCreateAppGroupDialog_WebHandler = interface;//com.facebook.share.widget.CreateAppGroupDialog$WebHandler
  JDeviceShareButton = interface;//com.facebook.share.widget.DeviceShareButton
  JDeviceShareButton_1 = interface;//com.facebook.share.widget.DeviceShareButton$1
  JGameRequestDialog = interface;//com.facebook.share.widget.GameRequestDialog
  JGameRequestDialog_1 = interface;//com.facebook.share.widget.GameRequestDialog$1
  JGameRequestDialog_2 = interface;//com.facebook.share.widget.GameRequestDialog$2
  JGameRequestDialog_Result = interface;//com.facebook.share.widget.GameRequestDialog$Result
  JGameRequestDialog_WebHandler = interface;//com.facebook.share.widget.GameRequestDialog$WebHandler
  JJoinAppGroupDialog = interface;//com.facebook.share.widget.JoinAppGroupDialog
  JJoinAppGroupDialog_1 = interface;//com.facebook.share.widget.JoinAppGroupDialog$1
  JJoinAppGroupDialog_2 = interface;//com.facebook.share.widget.JoinAppGroupDialog$2
  JJoinAppGroupDialog_Result = interface;//com.facebook.share.widget.JoinAppGroupDialog$Result
  JJoinAppGroupDialog_WebHandler = interface;//com.facebook.share.widget.JoinAppGroupDialog$WebHandler
  JLikeView = interface;//com.facebook.share.widget.LikeView
  JLikeView_1 = interface;//com.facebook.share.widget.LikeView$1
  JLikeView_2 = interface;//com.facebook.share.widget.LikeView$2
  JLikeView_AuxiliaryViewPosition = interface;//com.facebook.share.widget.LikeView$AuxiliaryViewPosition
  JLikeView_HorizontalAlignment = interface;//com.facebook.share.widget.LikeView$HorizontalAlignment
  JLikeView_LikeActionControllerCreationCallback = interface;//com.facebook.share.widget.LikeView$LikeActionControllerCreationCallback
  JLikeView_LikeControllerBroadcastReceiver = interface;//com.facebook.share.widget.LikeView$LikeControllerBroadcastReceiver
  JLikeView_ObjectType = interface;//com.facebook.share.widget.LikeView$ObjectType
  JLikeView_OnErrorListener = interface;//com.facebook.share.widget.LikeView$OnErrorListener
  JLikeView_Style = interface;//com.facebook.share.widget.LikeView$Style
  JMessageDialog = interface;//com.facebook.share.widget.MessageDialog
  JMessageDialog_1 = interface;//com.facebook.share.widget.MessageDialog$1
  JMessageDialog_NativeHandler = interface;//com.facebook.share.widget.MessageDialog$NativeHandler
  JMessageDialog_NativeHandler_1 = interface;//com.facebook.share.widget.MessageDialog$NativeHandler$1
  JShareButtonBase = interface;//com.facebook.share.widget.ShareButtonBase
  JSendButton = interface;//com.facebook.share.widget.SendButton
  JShareButton = interface;//com.facebook.share.widget.ShareButton
  JShareButtonBase_1 = interface;//com.facebook.share.widget.ShareButtonBase$1
  JShareDialog = interface;//com.facebook.share.widget.ShareDialog
  JShareDialog_1 = interface;//com.facebook.share.widget.ShareDialog$1
  JShareDialog_FeedHandler = interface;//com.facebook.share.widget.ShareDialog$FeedHandler
  JShareDialog_Mode = interface;//com.facebook.share.widget.ShareDialog$Mode
  JShareDialog_NativeHandler = interface;//com.facebook.share.widget.ShareDialog$NativeHandler
  JShareDialog_NativeHandler_1 = interface;//com.facebook.share.widget.ShareDialog$NativeHandler$1
  JShareDialog_WebShareHandler = interface;//com.facebook.share.widget.ShareDialog$WebShareHandler
  JObjectInputStream_GetField = interface;//java.io.ObjectInputStream$GetField
  JObjectInputValidation = interface;//java.io.ObjectInputValidation
  Jio_ObjectStreamClass = interface;//java.io.ObjectStreamClass
  JObjectStreamField = interface;//java.io.ObjectStreamField
  //JStringBuffer = interface;//java.lang.StringBuffer
  //JStringBuilder = interface;//java.lang.StringBuilder
  JVoid = interface;//java.lang.Void
  JBigDecimal = interface;//java.math.BigDecimal
  JMathContext = interface;//java.math.MathContext
  JRoundingMode = interface;//java.math.RoundingMode
  JCurrency = interface;//java.util.Currency
  JSortedSet = interface;//java.util.SortedSet
  JNavigableSet = interface;//java.util.NavigableSet
  JTreeSet = interface;//java.util.TreeSet
  JAtomicBoolean = interface;//java.util.concurrent.atomic.AtomicBoolean

// ===== Interface declarations =====

  JAccountClass = interface(JObjectClass)
    ['{94EE6861-F326-489F-8919-E20B39E3D9C1}']
    {class} function _GetCREATOR: JParcelable_Creator; cdecl;
    {class} function _Gettype: JString; cdecl;
    {class} function init(name: JString; &type: JString): JAccount; cdecl; overload;//Deprecated
    {class} function init(&in:  JParcel): JAccount; cdecl; overload;//Deprecated
    {class} function equals(o: JObject): Boolean; cdecl;//Deprecated
    {class} function hashCode: Integer; cdecl;//Deprecated
    {class} function toString: JString; cdecl;//Deprecated
    {class} property CREATOR: JParcelable_Creator read _GetCREATOR;
    {class} property &type: JString read _Gettype;
  end;

  [JavaSignature('android/accounts/Account')]
  JAccount = interface(JObject)
    ['{71476381-8B6E-471F-9189-9857ECD7508C}']
    function _Getname: JString; cdecl;
    function describeContents: Integer; cdecl;//Deprecated
    procedure writeToParcel(dest: JParcel; flags: Integer); cdecl;//Deprecated
    property name: JString read _Getname;
  end;
  TJAccount = class(TJavaGenericImport<JAccountClass, JAccount>) end;

  JAnimatorClass = interface(JObjectClass)
    ['{3F76A5DF-389E-4BD3-9861-04C5B00CEADE}']
    {class} function init: JAnimator; cdecl;//Deprecated
    {class} procedure addListener(listener: JAnimator_AnimatorListener); cdecl;
    {class} procedure addPauseListener(listener: JAnimator_AnimatorPauseListener); cdecl;
    {class} procedure &end; cdecl;//Deprecated
    {class} function getDuration: Int64; cdecl;//Deprecated
    {class} function getInterpolator: JTimeInterpolator; cdecl;//Deprecated
    {class} function isRunning: Boolean; cdecl;//Deprecated
    {class} function isStarted: Boolean; cdecl;//Deprecated
    {class} procedure pause; cdecl;//Deprecated
    {class} procedure resume; cdecl;//Deprecated
    {class} function setDuration(duration: Int64): JAnimator; cdecl;//Deprecated
    {class} procedure setInterpolator(value: JTimeInterpolator); cdecl;//Deprecated
    {class} procedure setupStartValues; cdecl;//Deprecated
    {class} procedure start; cdecl;//Deprecated
  end;

  [JavaSignature('android/animation/Animator')]
  JAnimator = interface(JObject)
    ['{FA13E56D-1B6D-4A3D-8327-9E5BA785CF21}']
    procedure cancel; cdecl;//Deprecated
    function clone: JAnimator; cdecl;//Deprecated
    function getListeners: JArrayList; cdecl;//Deprecated
    function getStartDelay: Int64; cdecl;//Deprecated
    function isPaused: Boolean; cdecl;//Deprecated
    procedure removeAllListeners; cdecl;//Deprecated
    procedure removeListener(listener: JAnimator_AnimatorListener); cdecl;//Deprecated
    procedure removePauseListener(listener: JAnimator_AnimatorPauseListener); cdecl;//Deprecated
    procedure setStartDelay(startDelay: Int64); cdecl;//Deprecated
    procedure setTarget(target: JObject); cdecl;//Deprecated
    procedure setupEndValues; cdecl;//Deprecated
  end;
  TJAnimator = class(TJavaGenericImport<JAnimatorClass, JAnimator>) end;

  JAnimator_AnimatorListenerClass = interface(IJavaClass)
    ['{5ED6075A-B997-469C-B8D9-0AA8FB7E4798}']
    {class} procedure onAnimationCancel(animation: JAnimator); cdecl;
    {class} procedure onAnimationEnd(animation: JAnimator); cdecl;
  end;

  [JavaSignature('android/animation/Animator$AnimatorListener')]
  JAnimator_AnimatorListener = interface(IJavaInstance)
    ['{E2DE8DD6-628B-4D84-AA46-8A1E3F00FF13}']
    procedure onAnimationRepeat(animation: JAnimator); cdecl;
    procedure onAnimationStart(animation: JAnimator); cdecl;
  end;
  TJAnimator_AnimatorListener = class(TJavaGenericImport<JAnimator_AnimatorListenerClass, JAnimator_AnimatorListener>) end;

  JAnimator_AnimatorPauseListenerClass = interface(IJavaClass)
    ['{CB0DC3F0-63BC-4284-ADD0-2ED367AE11E5}']
  end;

  [JavaSignature('android/animation/Animator$AnimatorPauseListener')]
  JAnimator_AnimatorPauseListener = interface(IJavaInstance)
    ['{43C9C106-65EA-4A7D-A958-FAB9E43FA4A6}']
    procedure onAnimationPause(animation: JAnimator); cdecl;
    procedure onAnimationResume(animation: JAnimator); cdecl;
  end;
  TJAnimator_AnimatorPauseListener = class(TJavaGenericImport<JAnimator_AnimatorPauseListenerClass, JAnimator_AnimatorPauseListener>) end;

  JKeyframeClass = interface(JObjectClass)
    ['{D383116E-5CCF-48D8-9EA1-B26FBF24BA39}']
    {class} function init: JKeyframe; cdecl;//Deprecated
    {class} function clone: JKeyframe; cdecl;//Deprecated
    {class} function getFraction: Single; cdecl;//Deprecated
    {class} function hasValue: Boolean; cdecl;//Deprecated
    {class} function ofFloat(fraction: Single; value: Single): JKeyframe; cdecl; overload;//Deprecated
    {class} function ofFloat(fraction: Single): JKeyframe; cdecl; overload;
    {class} function ofInt(fraction: Single; value: Integer): JKeyframe; cdecl; overload;
    {class} function ofInt(fraction: Single): JKeyframe; cdecl; overload;
    {class} function ofObject(fraction: Single; value: JObject): JKeyframe; cdecl; overload;
    {class} function ofObject(fraction: Single): JKeyframe; cdecl; overload;
    {class} procedure setFraction(fraction: Single); cdecl;
  end;

  [JavaSignature('android/animation/Keyframe')]
  JKeyframe = interface(JObject)
    ['{9D0687A4-669E-440F-8290-154739405019}']
    function getInterpolator: JTimeInterpolator; cdecl;//Deprecated
    function getType: Jlang_Class; cdecl;//Deprecated
    function getValue: JObject; cdecl;//Deprecated
    procedure setInterpolator(interpolator: JTimeInterpolator); cdecl;
    procedure setValue(value: JObject); cdecl;
  end;
  TJKeyframe = class(TJavaGenericImport<JKeyframeClass, JKeyframe>) end;

  JLayoutTransitionClass = interface(JObjectClass)
    ['{433C5359-0A96-4796-AD7B-8084EF7EF7C4}']
    {class} function _GetAPPEARING: Integer; cdecl;
    {class} function _GetCHANGE_APPEARING: Integer; cdecl;
    {class} function _GetCHANGE_DISAPPEARING: Integer; cdecl;
    {class} function _GetCHANGING: Integer; cdecl;
    {class} function _GetDISAPPEARING: Integer; cdecl;
    {class} function init: JLayoutTransition; cdecl;//Deprecated
    {class} procedure addChild(parent: JViewGroup; child: JView); cdecl;//Deprecated
    {class} procedure enableTransitionType(transitionType: Integer); cdecl;//Deprecated
    {class} function getAnimator(transitionType: Integer): JAnimator; cdecl;//Deprecated
    {class} function getDuration(transitionType: Integer): Int64; cdecl;//Deprecated
    {class} function getTransitionListeners: JList; cdecl;//Deprecated
    {class} procedure hideChild(parent: JViewGroup; child: JView); cdecl; overload;//Deprecated
    {class} procedure hideChild(parent: JViewGroup; child: JView; newVisibility: Integer); cdecl; overload;//Deprecated
    {class} procedure removeChild(parent: JViewGroup; child: JView); cdecl;//Deprecated
    {class} procedure removeTransitionListener(listener: JLayoutTransition_TransitionListener); cdecl;//Deprecated
    {class} procedure setAnimateParentHierarchy(animateParentHierarchy: Boolean); cdecl;//Deprecated
    {class} procedure setInterpolator(transitionType: Integer; interpolator: JTimeInterpolator); cdecl;
    {class} procedure setStagger(transitionType: Integer; duration: Int64); cdecl;
    {class} procedure setStartDelay(transitionType: Integer; delay: Int64); cdecl;
    {class} property APPEARING: Integer read _GetAPPEARING;
    {class} property CHANGE_APPEARING: Integer read _GetCHANGE_APPEARING;
    {class} property CHANGE_DISAPPEARING: Integer read _GetCHANGE_DISAPPEARING;
    {class} property CHANGING: Integer read _GetCHANGING;
    {class} property DISAPPEARING: Integer read _GetDISAPPEARING;
  end;

  [JavaSignature('android/animation/LayoutTransition')]
  JLayoutTransition = interface(JObject)
    ['{42450BEE-EBF2-4954-B9B7-F8DAE7DF0EC1}']
    procedure addTransitionListener(listener: JLayoutTransition_TransitionListener); cdecl;//Deprecated
    procedure disableTransitionType(transitionType: Integer); cdecl;//Deprecated
    function getInterpolator(transitionType: Integer): JTimeInterpolator; cdecl;//Deprecated
    function getStagger(transitionType: Integer): Int64; cdecl;//Deprecated
    function getStartDelay(transitionType: Integer): Int64; cdecl;//Deprecated
    function isChangingLayout: Boolean; cdecl;//Deprecated
    function isRunning: Boolean; cdecl;//Deprecated
    function isTransitionTypeEnabled(transitionType: Integer): Boolean; cdecl;//Deprecated
    procedure setAnimator(transitionType: Integer; animator: JAnimator); cdecl;
    procedure setDuration(duration: Int64); cdecl; overload;
    procedure setDuration(transitionType: Integer; duration: Int64); cdecl; overload;
    procedure showChild(parent: JViewGroup; child: JView); cdecl; overload;//Deprecated
    procedure showChild(parent: JViewGroup; child: JView; oldVisibility: Integer); cdecl; overload;
  end;
  TJLayoutTransition = class(TJavaGenericImport<JLayoutTransitionClass, JLayoutTransition>) end;

  JLayoutTransition_TransitionListenerClass = interface(IJavaClass)
    ['{9FA6F1EC-8EDB-4A05-AF58-B55A525AE114}']
  end;

  [JavaSignature('android/animation/LayoutTransition$TransitionListener')]
  JLayoutTransition_TransitionListener = interface(IJavaInstance)
    ['{0FBE048F-FCDA-4692-B6F1-DE0F07FAE885}']
    procedure endTransition(transition: JLayoutTransition; container: JViewGroup; view: JView; transitionType: Integer); cdecl;
    procedure startTransition(transition: JLayoutTransition; container: JViewGroup; view: JView; transitionType: Integer); cdecl;
  end;
  TJLayoutTransition_TransitionListener = class(TJavaGenericImport<JLayoutTransition_TransitionListenerClass, JLayoutTransition_TransitionListener>) end;

  JPropertyValuesHolderClass = interface(JObjectClass)
    ['{36C77AFF-9C3F-42B6-88F3-320FE8CF9B25}']
    {class} function clone: JPropertyValuesHolder; cdecl;//Deprecated
    {class} function getPropertyName: JString; cdecl;//Deprecated
    {class} function ofMultiFloat(propertyName: JString; values: TJavaBiArray<Single>): JPropertyValuesHolder; cdecl; overload;//Deprecated
    {class} function ofMultiFloat(propertyName: JString; path: JPath): JPropertyValuesHolder; cdecl; overload;//Deprecated
    {class} function ofMultiInt(propertyName: JString; values: TJavaBiArray<Integer>): JPropertyValuesHolder; cdecl; overload;//Deprecated
    {class} function ofMultiInt(propertyName: JString; path: JPath): JPropertyValuesHolder; cdecl; overload;//Deprecated
    {class} function ofObject(propertyName: JString; converter: JTypeConverter; path: JPath): JPropertyValuesHolder; cdecl; overload;//Deprecated
    {class} function ofObject(&property: JProperty; converter: JTypeConverter; path: JPath): JPropertyValuesHolder; cdecl; overload;
    {class} procedure setEvaluator(evaluator: JTypeEvaluator); cdecl;
    {class} procedure setPropertyName(propertyName: JString); cdecl;
    {class} function toString: JString; cdecl;
  end;

  [JavaSignature('android/animation/PropertyValuesHolder')]
  JPropertyValuesHolder = interface(JObject)
    ['{12B4ABFD-CBCA-4636-AF2D-C386EF895DC3}']
    procedure setConverter(converter: JTypeConverter); cdecl;
    procedure setProperty(&property: JProperty); cdecl;
  end;
  TJPropertyValuesHolder = class(TJavaGenericImport<JPropertyValuesHolderClass, JPropertyValuesHolder>) end;

  JStateListAnimatorClass = interface(JObjectClass)
    ['{109E4067-E218-47B1-93EB-65B8916A98D8}']
    {class} function init: JStateListAnimator; cdecl;//Deprecated
    {class} procedure addState(specs: TJavaArray<Integer>; animator: JAnimator); cdecl;//Deprecated
  end;

  [JavaSignature('android/animation/StateListAnimator')]
  JStateListAnimator = interface(JObject)
    ['{CA2A9587-26AA-4DC2-8DFF-A1305A37608F}']
    function clone: JStateListAnimator; cdecl;//Deprecated
    procedure jumpToCurrentState; cdecl;//Deprecated
  end;
  TJStateListAnimator = class(TJavaGenericImport<JStateListAnimatorClass, JStateListAnimator>) end;

  JTimeInterpolatorClass = interface(IJavaClass)
    ['{1E682A1C-9102-461D-A3CA-5596683F1D66}']
    {class} function getInterpolation(input: Single): Single; cdecl;
  end;

  [JavaSignature('android/animation/TimeInterpolator')]
  JTimeInterpolator = interface(IJavaInstance)
    ['{639F8A83-7D9B-49AF-A19E-96B27E46D2AB}']
  end;
  TJTimeInterpolator = class(TJavaGenericImport<JTimeInterpolatorClass, JTimeInterpolator>) end;

  JTypeConverterClass = interface(JObjectClass)
    ['{BE2DD177-6D79-4B0C-B4F5-4E4CD9D7436D}']
    {class} function init(fromClass: Jlang_Class; toClass: Jlang_Class): JTypeConverter; cdecl;//Deprecated
  end;

  [JavaSignature('android/animation/TypeConverter')]
  JTypeConverter = interface(JObject)
    ['{BFEA4116-0766-4AD9-AA8F-4C15A583EB2E}']
    function convert(value: JObject): JObject; cdecl;
  end;
  TJTypeConverter = class(TJavaGenericImport<JTypeConverterClass, JTypeConverter>) end;

  JTypeEvaluatorClass = interface(IJavaClass)
    ['{15B67CAF-6F50-4AA3-A88F-C5AF78D62FD4}']
    {class} function evaluate(fraction: Single; startValue: JObject; endValue: JObject): JObject; cdecl;
  end;

  [JavaSignature('android/animation/TypeEvaluator')]
  JTypeEvaluator = interface(IJavaInstance)
    ['{F436383D-6F44-40D8-ACDD-9057777691FC}']
  end;
  TJTypeEvaluator = class(TJavaGenericImport<JTypeEvaluatorClass, JTypeEvaluator>) end;

  JValueAnimatorClass = interface(JAnimatorClass)
    ['{FF3B71ED-5A33-45B0-8500-7672B0B98E2C}']
    {class} function _GetINFINITE: Integer; cdecl;
    {class} function _GetRESTART: Integer; cdecl;
    {class} function _GetREVERSE: Integer; cdecl;
    {class} function init: JValueAnimator; cdecl;//Deprecated
    {class} procedure addUpdateListener(listener: JValueAnimator_AnimatorUpdateListener); cdecl;
    {class} procedure cancel; cdecl;
    {class} function getAnimatedValue: JObject; cdecl; overload;
    {class} function getAnimatedValue(propertyName: JString): JObject; cdecl; overload;
    {class} function getCurrentPlayTime: Int64; cdecl;
    {class} function getFrameDelay: Int64; cdecl;//Deprecated
    {class} function getInterpolator: JTimeInterpolator; cdecl;//Deprecated
    {class} function getRepeatCount: Integer; cdecl;//Deprecated
    {class} function getRepeatMode: Integer; cdecl;//Deprecated
    {class} function isStarted: Boolean; cdecl;//Deprecated
    {class} procedure pause; cdecl;//Deprecated
    {class} procedure removeAllUpdateListeners; cdecl;//Deprecated
    {class} procedure removeUpdateListener(listener: JValueAnimator_AnimatorUpdateListener); cdecl;//Deprecated
    {class} procedure setCurrentPlayTime(playTime: Int64); cdecl;//Deprecated
    {class} function setDuration(duration: Int64): JValueAnimator; cdecl;//Deprecated
    {class} procedure setEvaluator(value: JTypeEvaluator); cdecl;//Deprecated
    {class} procedure setFrameDelay(frameDelay: Int64); cdecl;
    {class} procedure setInterpolator(value: JTimeInterpolator); cdecl;
    {class} procedure setRepeatCount(value: Integer); cdecl;
    {class} procedure start; cdecl;
    {class} function toString: JString; cdecl;
    {class} property INFINITE: Integer read _GetINFINITE;
    {class} property RESTART: Integer read _GetRESTART;
    {class} property REVERSE: Integer read _GetREVERSE;
  end;

  [JavaSignature('android/animation/ValueAnimator')]
  JValueAnimator = interface(JAnimator)
    ['{70F92B14-EFD4-4DC7-91DE-6617417AE194}']
    function clone: JValueAnimator; cdecl;
    procedure &end; cdecl;
    function getAnimatedFraction: Single; cdecl;
    function getDuration: Int64; cdecl;//Deprecated
    function getStartDelay: Int64; cdecl;//Deprecated
    function getValues: TJavaObjectArray<JPropertyValuesHolder>; cdecl;//Deprecated
    function isRunning: Boolean; cdecl;//Deprecated
    procedure resume; cdecl;//Deprecated
    procedure reverse; cdecl;//Deprecated
    procedure setCurrentFraction(fraction: Single); cdecl;//Deprecated
    procedure setRepeatMode(value: Integer); cdecl;
    procedure setStartDelay(startDelay: Int64); cdecl;
  end;
  TJValueAnimator = class(TJavaGenericImport<JValueAnimatorClass, JValueAnimator>) end;

  JValueAnimator_AnimatorUpdateListenerClass = interface(IJavaClass)
    ['{9CA50CBF-4462-4445-82CD-13CE985E2DE4}']
    {class} procedure onAnimationUpdate(animation: JValueAnimator); cdecl;//Deprecated
  end;

  [JavaSignature('android/animation/ValueAnimator$AnimatorUpdateListener')]
  JValueAnimator_AnimatorUpdateListener = interface(IJavaInstance)
    ['{0F883491-52EF-4A40-B7D2-FC23E11E46FE}']
  end;
  TJValueAnimator_AnimatorUpdateListener = class(TJavaGenericImport<JValueAnimator_AnimatorUpdateListenerClass, JValueAnimator_AnimatorUpdateListener>) end;

  JAsyncTaskClass = interface(JObjectClass)
    ['{73C141D6-F8D7-4FE4-BFA3-3441B6367189}']
    {class} function _GetSERIAL_EXECUTOR: JExecutor; cdecl;
    {class} function _GetTHREAD_POOL_EXECUTOR: JExecutor; cdecl;
    {class} function init: JAsyncTask; cdecl;//Deprecated
    {class} function cancel(mayInterruptIfRunning: Boolean): Boolean; cdecl;//Deprecated
    {class} procedure execute(runnable: JRunnable); cdecl; overload;//Deprecated
    {class} function getStatus: JAsyncTask_Status; cdecl;//Deprecated
    {class} function isCancelled: Boolean; cdecl;//Deprecated
    {class} property SERIAL_EXECUTOR: JExecutor read _GetSERIAL_EXECUTOR;
    {class} property THREAD_POOL_EXECUTOR: JExecutor read _GetTHREAD_POOL_EXECUTOR;
  end;

  [JavaSignature('android/os/AsyncTask')]
  JAsyncTask = interface(JObject)
    ['{8BC49850-F199-4620-BCFF-ACDA1D69417A}']
    function get: JObject; cdecl; overload;//Deprecated
    function get(timeout: Int64; &unit: JTimeUnit): JObject; cdecl; overload;//Deprecated
  end;
  TJAsyncTask = class(TJavaGenericImport<JAsyncTaskClass, JAsyncTask>) end;

  JAsyncTask_StatusClass = interface(JEnumClass)
    ['{16452E24-44D5-4E84-990E-3C1916FB372B}']
    {class} function _GetFINISHED: JAsyncTask_Status; cdecl;
    {class} function _GetPENDING: JAsyncTask_Status; cdecl;
    {class} function _GetRUNNING: JAsyncTask_Status; cdecl;
    {class} function valueOf(name: JString): JAsyncTask_Status; cdecl;
    {class} function values: TJavaObjectArray<JAsyncTask_Status>; cdecl;
    {class} property FINISHED: JAsyncTask_Status read _GetFINISHED;
    {class} property PENDING: JAsyncTask_Status read _GetPENDING;
    {class} property RUNNING: JAsyncTask_Status read _GetRUNNING;
  end;

  [JavaSignature('android/os/AsyncTask$Status')]
  JAsyncTask_Status = interface(JEnum)
    ['{96B0BCE7-1312-49B9-9F33-43541680B0E7}']
  end;
  TJAsyncTask_Status = class(TJavaGenericImport<JAsyncTask_StatusClass, JAsyncTask_Status>) end;

  JPathMotionClass = interface(JObjectClass)
    ['{E1CD1A94-115C-492C-A490-37F0E72956EB}']
    {class} function init: JPathMotion; cdecl; overload;//Deprecated
    {class} function init(context: JContext; attrs: JAttributeSet): JPathMotion; cdecl; overload;//Deprecated
    {class} function getPath(startX: Single; startY: Single; endX: Single; endY: Single): JPath; cdecl;
  end;

  [JavaSignature('android/transition/PathMotion')]
  JPathMotion = interface(JObject)
    ['{BDC08353-C9FB-42D7-97CC-C35837D2F536}']
  end;
  TJPathMotion = class(TJavaGenericImport<JPathMotionClass, JPathMotion>) end;

  JSceneClass = interface(JObjectClass)
    ['{8B9120CA-AEEA-4DE3-BDC9-15CFD23A7B07}']
    {class} function init(sceneRoot: JViewGroup): JScene; cdecl; overload;//Deprecated
    {class} function init(sceneRoot: JViewGroup; layout: JView): JScene; cdecl; overload;//Deprecated
    {class} function init(sceneRoot: JViewGroup; layout: JViewGroup): JScene; cdecl; overload;//Deprecated
    {class} procedure enter; cdecl;//Deprecated
    {class} procedure exit; cdecl;//Deprecated
    {class} function getSceneForLayout(sceneRoot: JViewGroup; layoutId: Integer; context: JContext): JScene; cdecl;//Deprecated
    {class} procedure setExitAction(action: JRunnable); cdecl;//Deprecated
  end;

  [JavaSignature('android/transition/Scene')]
  JScene = interface(JObject)
    ['{85A60B99-5837-4F1F-A344-C627DD586B82}']
    function getSceneRoot: JViewGroup; cdecl;//Deprecated
    procedure setEnterAction(action: JRunnable); cdecl;//Deprecated
  end;
  TJScene = class(TJavaGenericImport<JSceneClass, JScene>) end;

  JTransitionClass = interface(JObjectClass)
    ['{60EC06BC-8F7A-4416-A04B-5B57987EB18E}']
    {class} function _GetMATCH_ID: Integer; cdecl;
    {class} function _GetMATCH_INSTANCE: Integer; cdecl;
    {class} function _GetMATCH_ITEM_ID: Integer; cdecl;
    {class} function _GetMATCH_NAME: Integer; cdecl;
    {class} function init: JTransition; cdecl; overload;//Deprecated
    {class} function init(context: JContext; attrs: JAttributeSet): JTransition; cdecl; overload;//Deprecated
    {class} function addTarget(targetType: Jlang_Class): JTransition; cdecl; overload;//Deprecated
    {class} function addTarget(target: JView): JTransition; cdecl; overload;//Deprecated
    {class} function canRemoveViews: Boolean; cdecl;//Deprecated
    {class} function createAnimator(sceneRoot: JViewGroup; startValues: JTransitionValues; endValues: JTransitionValues): JAnimator; cdecl;//Deprecated
    {class} function excludeChildren(targetId: Integer; exclude: Boolean): JTransition; cdecl; overload;//Deprecated
    {class} function excludeChildren(target: JView; exclude: Boolean): JTransition; cdecl; overload;//Deprecated
    {class} function excludeTarget(target: JView; exclude: Boolean): JTransition; cdecl; overload;//Deprecated
    {class} function excludeTarget(&type: Jlang_Class; exclude: Boolean): JTransition; cdecl; overload;//Deprecated
    {class} function getInterpolator: JTimeInterpolator; cdecl;
    {class} function getName: JString; cdecl;
    {class} function getPathMotion: JPathMotion; cdecl;
    {class} function getTargetNames: JList; cdecl;
    {class} function getTargetTypes: JList; cdecl;
    {class} function getTargets: JList; cdecl;
    {class} function removeListener(listener: JTransition_TransitionListener): JTransition; cdecl;
    {class} function removeTarget(targetId: Integer): JTransition; cdecl; overload;
    {class} function removeTarget(targetName: JString): JTransition; cdecl; overload;
    {class} procedure setEpicenterCallback(epicenterCallback: JTransition_EpicenterCallback); cdecl;
    {class} function setInterpolator(interpolator: JTimeInterpolator): JTransition; cdecl;
    {class} function toString: JString; cdecl;//Deprecated
    {class} property MATCH_ID: Integer read _GetMATCH_ID;
    {class} property MATCH_INSTANCE: Integer read _GetMATCH_INSTANCE;
    {class} property MATCH_ITEM_ID: Integer read _GetMATCH_ITEM_ID;
    {class} property MATCH_NAME: Integer read _GetMATCH_NAME;
  end;

  [JavaSignature('android/transition/Transition')]
  JTransition = interface(JObject)
    ['{C2F8200F-1C83-40AE-8C5B-C0C8BFF17F88}']
    function addListener(listener: JTransition_TransitionListener): JTransition; cdecl;//Deprecated
    function addTarget(targetId: Integer): JTransition; cdecl; overload;//Deprecated
    function addTarget(targetName: JString): JTransition; cdecl; overload;//Deprecated
    procedure captureEndValues(transitionValues: JTransitionValues); cdecl;//Deprecated
    procedure captureStartValues(transitionValues: JTransitionValues); cdecl;//Deprecated
    function clone: JTransition; cdecl;//Deprecated
    function excludeChildren(&type: Jlang_Class; exclude: Boolean): JTransition; cdecl; overload;//Deprecated
    function excludeTarget(targetId: Integer; exclude: Boolean): JTransition; cdecl; overload;//Deprecated
    function excludeTarget(targetName: JString; exclude: Boolean): JTransition; cdecl; overload;//Deprecated
    function getDuration: Int64; cdecl;
    function getEpicenter: JRect; cdecl;
    function getEpicenterCallback: JTransition_EpicenterCallback; cdecl;
    function getPropagation: JTransitionPropagation; cdecl;
    function getStartDelay: Int64; cdecl;
    function getTargetIds: JList; cdecl;
    function getTransitionProperties: TJavaObjectArray<JString>; cdecl;
    function getTransitionValues(view: JView; start: Boolean): JTransitionValues; cdecl;
    function isTransitionRequired(startValues: JTransitionValues; endValues: JTransitionValues): Boolean; cdecl;
    function removeTarget(target: JView): JTransition; cdecl; overload;
    function removeTarget(target: Jlang_Class): JTransition; cdecl; overload;
    function setDuration(duration: Int64): JTransition; cdecl;
    procedure setPathMotion(pathMotion: JPathMotion); cdecl;//Deprecated
    procedure setPropagation(transitionPropagation: JTransitionPropagation); cdecl;//Deprecated
    function setStartDelay(startDelay: Int64): JTransition; cdecl;//Deprecated
  end;
  TJTransition = class(TJavaGenericImport<JTransitionClass, JTransition>) end;

  JTransition_EpicenterCallbackClass = interface(JObjectClass)
    ['{8141257A-130B-466C-A08D-AA3A00946F4C}']
    {class} function init: JTransition_EpicenterCallback; cdecl;//Deprecated
  end;

  [JavaSignature('android/transition/Transition$EpicenterCallback')]
  JTransition_EpicenterCallback = interface(JObject)
    ['{CE004917-266F-4076-8913-F23184824FBA}']
    function onGetEpicenter(transition: JTransition): JRect; cdecl;//Deprecated
  end;
  TJTransition_EpicenterCallback = class(TJavaGenericImport<JTransition_EpicenterCallbackClass, JTransition_EpicenterCallback>) end;

  JTransition_TransitionListenerClass = interface(IJavaClass)
    ['{D5083752-E8A6-46DF-BE40-AE11073C387E}']
    {class} procedure onTransitionCancel(transition: JTransition); cdecl;//Deprecated
    {class} procedure onTransitionEnd(transition: JTransition); cdecl;//Deprecated
  end;

  [JavaSignature('android/transition/Transition$TransitionListener')]
  JTransition_TransitionListener = interface(IJavaInstance)
    ['{C32BE107-6E05-4898-AF0A-FAD970D66E29}']
    procedure onTransitionPause(transition: JTransition); cdecl;//Deprecated
    procedure onTransitionResume(transition: JTransition); cdecl;//Deprecated
    procedure onTransitionStart(transition: JTransition); cdecl;//Deprecated
  end;
  TJTransition_TransitionListener = class(TJavaGenericImport<JTransition_TransitionListenerClass, JTransition_TransitionListener>) end;

  JTransitionManagerClass = interface(JObjectClass)
    ['{4160EFA0-3499-4964-817E-46497BB5B957}']
    {class} function init: JTransitionManager; cdecl;//Deprecated
    {class} procedure beginDelayedTransition(sceneRoot: JViewGroup); cdecl; overload;
    {class} procedure beginDelayedTransition(sceneRoot: JViewGroup; transition: JTransition); cdecl; overload;
    {class} procedure endTransitions(sceneRoot: JViewGroup); cdecl;
    {class} procedure go(scene: JScene); cdecl; overload;
    {class} procedure go(scene: JScene; transition: JTransition); cdecl; overload;
    {class} procedure setTransition(scene: JScene; transition: JTransition); cdecl; overload;
    {class} procedure setTransition(fromScene: JScene; toScene: JScene; transition: JTransition); cdecl; overload;
  end;

  [JavaSignature('android/transition/TransitionManager')]
  JTransitionManager = interface(JObject)
    ['{FF5E1210-1F04-4F81-9CAC-3D7A5C4E972B}']
    procedure transitionTo(scene: JScene); cdecl;
  end;
  TJTransitionManager = class(TJavaGenericImport<JTransitionManagerClass, JTransitionManager>) end;

  JTransitionPropagationClass = interface(JObjectClass)
    ['{A881388A-C877-4DD9-9BAD-1BA4F56133EE}']
    {class} function init: JTransitionPropagation; cdecl;//Deprecated
    {class} procedure captureValues(transitionValues: JTransitionValues); cdecl;//Deprecated
    {class} function getPropagationProperties: TJavaObjectArray<JString>; cdecl;//Deprecated
  end;

  [JavaSignature('android/transition/TransitionPropagation')]
  JTransitionPropagation = interface(JObject)
    ['{7595B7EF-6BCE-4281-BC67-335E2FB6C091}']
    function getStartDelay(sceneRoot: JViewGroup; transition: JTransition; startValues: JTransitionValues; endValues: JTransitionValues): Int64; cdecl;//Deprecated
  end;
  TJTransitionPropagation = class(TJavaGenericImport<JTransitionPropagationClass, JTransitionPropagation>) end;

  JTransitionValuesClass = interface(JObjectClass)
    ['{3BF98CFA-6A4D-4815-8D42-15E97C916D91}']
    {class} function _Getvalues: JMap; cdecl;
    {class} function init: JTransitionValues; cdecl;//Deprecated
    {class} function hashCode: Integer; cdecl;//Deprecated
    {class} function toString: JString; cdecl;//Deprecated
    {class} property values: JMap read _Getvalues;
  end;

  [JavaSignature('android/transition/TransitionValues')]
  JTransitionValues = interface(JObject)
    ['{178E09E6-D32C-48A9-ADCF-8CCEA804052A}']
    function _Getview: JView; cdecl;
    procedure _Setview(Value: JView); cdecl;
    function equals(other: JObject): Boolean; cdecl;//Deprecated
    property view: JView read _Getview write _Setview;
  end;
  TJTransitionValues = class(TJavaGenericImport<JTransitionValuesClass, JTransitionValues>) end;

  JInterpolatorClass = interface(JTimeInterpolatorClass)
    ['{A575B46A-E489-409C-807A-1B8F2BE092E8}']
  end;

  [JavaSignature('android/view/animation/Interpolator')]
  JInterpolator = interface(JTimeInterpolator)
    ['{F1082403-52DA-4AF0-B017-DAB334325FC7}']
  end;
  TJInterpolator = class(TJavaGenericImport<JInterpolatorClass, JInterpolator>) end;

  JToolbar_LayoutParamsClass = interface(JActionBar_LayoutParamsClass)
    ['{6D43796C-C163-4084-BB30-6FE68AFD7ABB}']
    {class} function init(c: JContext; attrs: JAttributeSet): JToolbar_LayoutParams; cdecl; overload;//Deprecated
    {class} function init(width: Integer; height: Integer): JToolbar_LayoutParams; cdecl; overload;//Deprecated
    {class} function init(width: Integer; height: Integer; gravity: Integer): JToolbar_LayoutParams; cdecl; overload;//Deprecated
    {class} function init(gravity: Integer): JToolbar_LayoutParams; cdecl; overload;//Deprecated
    {class} function init(source: JToolbar_LayoutParams): JToolbar_LayoutParams; cdecl; overload;//Deprecated
    {class} function init(source: JActionBar_LayoutParams): JToolbar_LayoutParams; cdecl; overload;//Deprecated
    {class} function init(source: JViewGroup_MarginLayoutParams): JToolbar_LayoutParams; cdecl; overload;//Deprecated
    {class} function init(source: JViewGroup_LayoutParams): JToolbar_LayoutParams; cdecl; overload;//Deprecated
  end;

  [JavaSignature('android/widget/Toolbar$LayoutParams')]
  JToolbar_LayoutParams = interface(JActionBar_LayoutParams)
    ['{BCD101F9-B7B7-4B2F-9460-056B3EA7B9F0}']
  end;
  TJToolbar_LayoutParams = class(TJavaGenericImport<JToolbar_LayoutParamsClass, JToolbar_LayoutParams>) end;

  JAccessTokenClass = interface(JParcelableClass)
    ['{ADFEEC0A-A8BA-4286-9718-A98687BCCA2B}']
    {class} function _GetACCESS_TOKEN_KEY: JString; cdecl;
    {class} function _GetCREATOR: JParcelable_Creator; cdecl;
    {class} function _GetEXPIRES_IN_KEY: JString; cdecl;
    {class} function _GetUSER_ID_KEY: JString; cdecl;
    {class} function createFromJSONObject(P1: JJSONObject): JAccessToken; cdecl;//Deprecated
    {class} function createFromLegacyCache(P1: JBundle): JAccessToken; cdecl;//Deprecated
    {class} procedure createFromNativeLinkingIntent(P1: JIntent; P2: JString; P3: JAccessToken_AccessTokenCreationCallback); cdecl;//Deprecated
    {class} function createFromRefresh(P1: JAccessToken; P2: JBundle): JAccessToken; cdecl;//Deprecated
    {class} function getCurrentAccessToken: JAccessToken; cdecl;//Deprecated
    {class} function getPermissionsFromBundle(P1: JBundle; P2: JString): JList; cdecl;//Deprecated
    {class} function init(P1: JParcel): JAccessToken; cdecl; overload;//Deprecated
    {class} function init(P1: JString; P2: JString; P3: JString; P4: JCollection; P5: JCollection; P6: JAccessTokenSource; P7: JDate; P8: JDate): JAccessToken; cdecl; overload;//Deprecated
    {class} procedure refreshCurrentAccessTokenAsync; cdecl; overload;//Deprecated
    {class} procedure refreshCurrentAccessTokenAsync(P1: JAccessToken_AccessTokenRefreshCallback); cdecl; overload;//Deprecated
    {class} procedure setCurrentAccessToken(P1: JAccessToken); cdecl;//Deprecated
    {class} property ACCESS_TOKEN_KEY: JString read _GetACCESS_TOKEN_KEY;
    {class} property CREATOR: JParcelable_Creator read _GetCREATOR;
    {class} property EXPIRES_IN_KEY: JString read _GetEXPIRES_IN_KEY;
    {class} property USER_ID_KEY: JString read _GetUSER_ID_KEY;
  end;

  [JavaSignature('com/facebook/AccessToken')]
  JAccessToken = interface(JParcelable)
    ['{6AE6AC45-3E1B-4FE4-BE32-E4AF0EA5E6E0}']
    function describeContents: Integer; cdecl;//Deprecated
    function equals(P1: JObject): Boolean; cdecl;//Deprecated
    function getApplicationId: JString; cdecl;//Deprecated
    function getDeclinedPermissions: JSet; cdecl;//Deprecated
    function getExpires: JDate; cdecl;//Deprecated
    function getLastRefresh: JDate; cdecl;//Deprecated
    function getPermissions: JSet; cdecl;//Deprecated
    function getSource: JAccessTokenSource; cdecl;//Deprecated
    function getToken: JString; cdecl;//Deprecated
    function getUserId: JString; cdecl;//Deprecated
    function hashCode: Integer; cdecl;//Deprecated
    function isExpired: Boolean; cdecl;//Deprecated
    function toJSONObject: JJSONObject; cdecl;//Deprecated
    function toString: JString; cdecl;//Deprecated
    procedure writeToParcel(P1: JParcel; P2: Integer); cdecl;//Deprecated
  end;
  TJAccessToken = class(TJavaGenericImport<JAccessTokenClass, JAccessToken>) end;

  JUtility_GraphMeRequestWithCacheCallbackClass = interface(IJavaClass)
    ['{C2AE06AF-7FAA-44DF-944E-B07AB7C17952}']
  end;

  [JavaSignature('com/facebook/internal/Utility$GraphMeRequestWithCacheCallback')]
  JUtility_GraphMeRequestWithCacheCallback = interface(IJavaInstance)
    ['{B069591F-728A-4668-A26C-DD8E81DA2840}']
    procedure onFailure(P1: JFacebookException); cdecl;//Deprecated
    procedure onSuccess(P1: JJSONObject); cdecl;//Deprecated
  end;
  TJUtility_GraphMeRequestWithCacheCallback = class(TJavaGenericImport<JUtility_GraphMeRequestWithCacheCallbackClass, JUtility_GraphMeRequestWithCacheCallback>) end;

  JAccessToken_1Class = interface(JUtility_GraphMeRequestWithCacheCallbackClass)
    ['{66072135-570C-4DFF-9E78-807F7F80EEF4}']
    {class} function init(P1: JBundle; P2: JAccessToken_AccessTokenCreationCallback; P3: JString): JAccessToken_1; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/AccessToken$1')]
  JAccessToken_1 = interface(JUtility_GraphMeRequestWithCacheCallback)
    ['{6C5098FF-F16D-457F-9F81-97F93C74616E}']
//    function _Getval$accessTokenCallback: JAccessToken_AccessTokenCreationCallback; cdecl;
//    function _Getval$applicationId: JString; cdecl;
    procedure onFailure(P1: JFacebookException); cdecl;//Deprecated
    procedure onSuccess(P1: JJSONObject); cdecl;//Deprecated
//    property val$accessTokenCallback: JAccessToken_AccessTokenCreationCallback read _Getval$accessTokenCallback;
//    property val$applicationId: JString read _Getval$applicationId;
  end;
  TJAccessToken_1 = class(TJavaGenericImport<JAccessToken_1Class, JAccessToken_1>) end;

  JAccessToken_2Class = interface(JParcelable_CreatorClass)
    ['{169CA198-C837-47AB-BF04-CD5639D651A0}']
  end;

  [JavaSignature('com/facebook/AccessToken$2')]
  JAccessToken_2 = interface(JParcelable_Creator)
    ['{6D552C5D-E09F-445E-8490-5492BF683902}']
    function createFromParcel(P1: JParcel): JAccessToken; cdecl;//Deprecated
    function newArray(P1: Integer): TJavaObjectArray<JAccessToken>; cdecl;//Deprecated
  end;
  TJAccessToken_2 = class(TJavaGenericImport<JAccessToken_2Class, JAccessToken_2>) end;

  JAccessToken_AccessTokenCreationCallbackClass = interface(IJavaClass)
    ['{1C80B652-BADC-41E2-8310-66DDBFC14D73}']
  end;

  [JavaSignature('com/facebook/AccessToken$AccessTokenCreationCallback')]
  JAccessToken_AccessTokenCreationCallback = interface(IJavaInstance)
    ['{1B0FCB57-B60D-4865-88DB-05906FEF479B}']
    procedure onError(P1: JFacebookException); cdecl;//Deprecated
    procedure onSuccess(P1: JAccessToken); cdecl;//Deprecated
  end;
  TJAccessToken_AccessTokenCreationCallback = class(TJavaGenericImport<JAccessToken_AccessTokenCreationCallbackClass, JAccessToken_AccessTokenCreationCallback>) end;

  JAccessToken_AccessTokenRefreshCallbackClass = interface(IJavaClass)
    ['{5E3BC126-199A-42BE-9A32-10553E6BA2AC}']
  end;

  [JavaSignature('com/facebook/AccessToken$AccessTokenRefreshCallback')]
  JAccessToken_AccessTokenRefreshCallback = interface(IJavaInstance)
    ['{4CE9B34B-A12D-49DF-B1E9-289CB939A925}']
    procedure OnTokenRefreshFailed(P1: JFacebookException); cdecl;//Deprecated
    procedure OnTokenRefreshed(P1: JAccessToken); cdecl;//Deprecated
  end;
  TJAccessToken_AccessTokenRefreshCallback = class(TJavaGenericImport<JAccessToken_AccessTokenRefreshCallbackClass, JAccessToken_AccessTokenRefreshCallback>) end;

  JAccessTokenCacheClass = interface(JObjectClass)
    ['{256E7BCA-6F90-4C51-8903-3B444E95FBD7}']
    {class} function init: JAccessTokenCache; cdecl; overload;//Deprecated
    {class} function init(P1: JSharedPreferences; P2: JAccessTokenCache_SharedPreferencesTokenCachingStrategyFactory): JAccessTokenCache; cdecl; overload;//Deprecated
  end;

  [JavaSignature('com/facebook/AccessTokenCache')]
  JAccessTokenCache = interface(JObject)
    ['{368BB640-B9A0-4951-A62B-F86358585AAC}']
    procedure clear; cdecl;//Deprecated
    function load: JAccessToken; cdecl;//Deprecated
    procedure save(P1: JAccessToken); cdecl;//Deprecated
  end;
  TJAccessTokenCache = class(TJavaGenericImport<JAccessTokenCacheClass, JAccessTokenCache>) end;

  JAccessTokenCache_SharedPreferencesTokenCachingStrategyFactoryClass = interface(JObjectClass)
    ['{7503A5D8-19FE-48A8-9F52-0FB53FC54F87}']
  end;

  [JavaSignature('com/facebook/AccessTokenCache$SharedPreferencesTokenCachingStrategyFactory')]
  JAccessTokenCache_SharedPreferencesTokenCachingStrategyFactory = interface(JObject)
    ['{CC5E60EF-7A82-4DC1-9C99-C786F91F34AE}']
    function create: JLegacyTokenHelper; cdecl;//Deprecated
  end;
  TJAccessTokenCache_SharedPreferencesTokenCachingStrategyFactory = class(TJavaGenericImport<JAccessTokenCache_SharedPreferencesTokenCachingStrategyFactoryClass, JAccessTokenCache_SharedPreferencesTokenCachingStrategyFactory>) end;

  JAccessTokenManagerClass = interface(JObjectClass)
    ['{04A1D3F5-E45A-4ABC-86E3-702B2C14C20E}']
    {class} function _GetACTION_CURRENT_ACCESS_TOKEN_CHANGED: JString; cdecl;
    {class} function _GetEXTRA_NEW_ACCESS_TOKEN: JString; cdecl;
    {class} function _GetEXTRA_OLD_ACCESS_TOKEN: JString; cdecl;
    {class} function _GetSHARED_PREFERENCES_NAME: JString; cdecl;
    {class} function getInstance: JAccessTokenManager; cdecl;//Deprecated
    {class} //function init(P1: JLocalBroadcastManager; P2: JAccessTokenCache): JAccessTokenManager; cdecl;//Deprecated
    {class} property ACTION_CURRENT_ACCESS_TOKEN_CHANGED: JString read _GetACTION_CURRENT_ACCESS_TOKEN_CHANGED;
    {class} property EXTRA_NEW_ACCESS_TOKEN: JString read _GetEXTRA_NEW_ACCESS_TOKEN;
    {class} property EXTRA_OLD_ACCESS_TOKEN: JString read _GetEXTRA_OLD_ACCESS_TOKEN;
    {class} property SHARED_PREFERENCES_NAME: JString read _GetSHARED_PREFERENCES_NAME;
  end;

  [JavaSignature('com/facebook/AccessTokenManager')]
  JAccessTokenManager = interface(JObject)
    ['{5EFD50EC-9CD0-4FF5-91D4-823F090F0933}']
    procedure extendAccessTokenIfNeeded; cdecl;//Deprecated
    function getCurrentAccessToken: JAccessToken; cdecl;//Deprecated
    function loadCurrentAccessToken: Boolean; cdecl;//Deprecated
    procedure refreshCurrentAccessToken(P1: JAccessToken_AccessTokenRefreshCallback); cdecl;//Deprecated
    procedure setCurrentAccessToken(P1: JAccessToken); cdecl;//Deprecated
  end;
  TJAccessTokenManager = class(TJavaGenericImport<JAccessTokenManagerClass, JAccessTokenManager>) end;

  JAccessTokenManager_1Class = interface(JRunnableClass)
    ['{7C3952E4-D310-4DC1-B996-CFC035B853EF}']
    {class} function init(P1: JAccessTokenManager; P2: JAccessToken_AccessTokenRefreshCallback): JAccessTokenManager_1; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/AccessTokenManager$1')]
  JAccessTokenManager_1 = interface(JRunnable)
    ['{4F3A4608-C0C9-47A5-A8E6-4CCE4D803EC9}']
//    function _Getthis$0: JAccessTokenManager; cdecl;
    procedure run; cdecl;//Deprecated
//    property this$0: JAccessTokenManager read _Getthis$0;
  end;
  TJAccessTokenManager_1 = class(TJavaGenericImport<JAccessTokenManager_1Class, JAccessTokenManager_1>) end;

  JGraphRequest_CallbackClass = interface(IJavaClass)
    ['{CDF3EC26-B98F-409C-8A8E-014720118E4E}']
  end;

  [JavaSignature('com/facebook/GraphRequest$Callback')]
  JGraphRequest_Callback = interface(IJavaInstance)
    ['{F74708E1-1A2C-4F24-A5CC-C3B47D94F35C}']
    procedure onCompleted(P1: JGraphResponse); cdecl;//Deprecated
  end;
  TJGraphRequest_Callback = class(TJavaGenericImport<JGraphRequest_CallbackClass, JGraphRequest_Callback>) end;

  JAccessTokenManager_2Class = interface(JGraphRequest_CallbackClass)
    ['{C6D8AE00-C153-4FB9-91E0-711174EF0971}']
    {class} function init(P1: JAccessTokenManager; P2: JAtomicBoolean; P3: JSet; P4: JSet): JAccessTokenManager_2; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/AccessTokenManager$2')]
  JAccessTokenManager_2 = interface(JGraphRequest_Callback)
    ['{F24F0F0D-E99C-4641-B0E1-FFCB4C4812B9}']
//    function _Getthis$0: JAccessTokenManager; cdecl;
//    function _Getval$declinedPermissions: JSet; cdecl;
//    function _Getval$permissions: JSet; cdecl;
    procedure onCompleted(P1: JGraphResponse); cdecl;//Deprecated
//    property this$0: JAccessTokenManager read _Getthis$0;
//    property val$declinedPermissions: JSet read _Getval$declinedPermissions;
//    property val$permissions: JSet read _Getval$permissions;
  end;
  TJAccessTokenManager_2 = class(TJavaGenericImport<JAccessTokenManager_2Class, JAccessTokenManager_2>) end;

  JAccessTokenManager_3Class = interface(JGraphRequest_CallbackClass)
    ['{3572FD69-EB7F-4EF5-9E61-9ACCFDD92E12}']
    {class} function init(P1: JAccessTokenManager; P2: JAccessTokenManager_RefreshResult): JAccessTokenManager_3; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/AccessTokenManager$3')]
  JAccessTokenManager_3 = interface(JGraphRequest_Callback)
    ['{D44AE8B9-1416-4D60-A076-FD53E37EA025}']
//    function _Getthis$0: JAccessTokenManager; cdecl;
    procedure onCompleted(P1: JGraphResponse); cdecl;//Deprecated
//    property this$0: JAccessTokenManager read _Getthis$0;
  end;
  TJAccessTokenManager_3 = class(TJavaGenericImport<JAccessTokenManager_3Class, JAccessTokenManager_3>) end;

  JGraphRequestBatch_CallbackClass = interface(IJavaClass)
    ['{D94C9D15-F5BC-4E36-BAFB-3C486E5AE3D1}']
  end;

  [JavaSignature('com/facebook/GraphRequestBatch$Callback')]
  JGraphRequestBatch_Callback = interface(IJavaInstance)
    ['{B4749434-BD50-412D-A975-C0056B070E07}']
    procedure onBatchCompleted(P1: JGraphRequestBatch); cdecl;//Deprecated
  end;
  TJGraphRequestBatch_Callback = class(TJavaGenericImport<JGraphRequestBatch_CallbackClass, JGraphRequestBatch_Callback>) end;

  JAccessTokenManager_4Class = interface(JGraphRequestBatch_CallbackClass)
    ['{AEC737D6-DB68-4656-A472-91E59F1E5378}']
    {class} function init(P1: JAccessTokenManager; P2: JAccessToken; P3: JAccessToken_AccessTokenRefreshCallback; P4: JAtomicBoolean; P5: JAccessTokenManager_RefreshResult; P6: JSet; P7: JSet): JAccessTokenManager_4; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/AccessTokenManager$4')]
  JAccessTokenManager_4 = interface(JGraphRequestBatch_Callback)
    ['{ADC8F732-AF1C-408C-BDF8-3DA7B3D0EDCE}']
//    function _Getthis$0: JAccessTokenManager; cdecl;
//    function _Getval$callback: JAccessToken_AccessTokenRefreshCallback; cdecl;
//    function _Getval$declinedPermissions: JSet; cdecl;
//    function _Getval$permissions: JSet; cdecl;
//    function _Getval$permissionsCallSucceeded: JAtomicBoolean; cdecl;
//    function _Getval$refreshResult: JAccessTokenManager_RefreshResult; cdecl;
    procedure onBatchCompleted(P1: JGraphRequestBatch); cdecl;//Deprecated
//    property this$0: JAccessTokenManager read _Getthis$0;
//    property val$callback: JAccessToken_AccessTokenRefreshCallback read _Getval$callback;
//    property val$declinedPermissions: JSet read _Getval$declinedPermissions;
//    property val$permissions: JSet read _Getval$permissions;
//    property val$permissionsCallSucceeded: JAtomicBoolean read _Getval$permissionsCallSucceeded;
//    property val$refreshResult: JAccessTokenManager_RefreshResult read _Getval$refreshResult;
  end;
  TJAccessTokenManager_4 = class(TJavaGenericImport<JAccessTokenManager_4Class, JAccessTokenManager_4>) end;

  JAccessTokenManager_RefreshResultClass = interface(JObjectClass)
    ['{621F3535-6DDF-4900-B766-2DFA8746BE0A}']
    {class} function init(P1: JAccessTokenManager_1): JAccessTokenManager_RefreshResult; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/AccessTokenManager$RefreshResult')]
  JAccessTokenManager_RefreshResult = interface(JObject)
    ['{193C47DA-41DF-456F-A65D-6E781D1C6832}']
    function _GetaccessToken: JString; cdecl;
    procedure _SetaccessToken(Value: JString); cdecl;
    function _GetexpiresAt: Integer; cdecl;
    procedure _SetexpiresAt(Value: Integer); cdecl;
    property accessToken: JString read _GetaccessToken write _SetaccessToken;
    property expiresAt: Integer read _GetexpiresAt write _SetexpiresAt;
  end;
  TJAccessTokenManager_RefreshResult = class(TJavaGenericImport<JAccessTokenManager_RefreshResultClass, JAccessTokenManager_RefreshResult>) end;

  JAccessTokenSourceClass = interface(JEnumClass)
    ['{A9869159-661B-47A4-8E9A-905D2EC04EAB}']
    {class} function _GetCHROME_CUSTOM_TAB: JAccessTokenSource; cdecl;
    {class} function _GetCLIENT_TOKEN: JAccessTokenSource; cdecl;
    {class} function _GetDEVICE_AUTH: JAccessTokenSource; cdecl;
    {class} function _GetFACEBOOK_APPLICATION_NATIVE: JAccessTokenSource; cdecl;
    {class} function _GetFACEBOOK_APPLICATION_SERVICE: JAccessTokenSource; cdecl;
    {class} function _GetFACEBOOK_APPLICATION_WEB: JAccessTokenSource; cdecl;
    {class} function _GetNONE: JAccessTokenSource; cdecl;
    {class} function _GetTEST_USER: JAccessTokenSource; cdecl;
    {class} function _GetWEB_VIEW: JAccessTokenSource; cdecl;
    {class} function valueOf(P1: JString): JAccessTokenSource; cdecl;//Deprecated
    {class} function values: TJavaObjectArray<JAccessTokenSource>; cdecl;//Deprecated
    {class} property CHROME_CUSTOM_TAB: JAccessTokenSource read _GetCHROME_CUSTOM_TAB;
    {class} property CLIENT_TOKEN: JAccessTokenSource read _GetCLIENT_TOKEN;
    {class} property DEVICE_AUTH: JAccessTokenSource read _GetDEVICE_AUTH;
    {class} property FACEBOOK_APPLICATION_NATIVE: JAccessTokenSource read _GetFACEBOOK_APPLICATION_NATIVE;
    {class} property FACEBOOK_APPLICATION_SERVICE: JAccessTokenSource read _GetFACEBOOK_APPLICATION_SERVICE;
    {class} property FACEBOOK_APPLICATION_WEB: JAccessTokenSource read _GetFACEBOOK_APPLICATION_WEB;
    {class} property NONE: JAccessTokenSource read _GetNONE;
    {class} property TEST_USER: JAccessTokenSource read _GetTEST_USER;
    {class} property WEB_VIEW: JAccessTokenSource read _GetWEB_VIEW;
  end;

  [JavaSignature('com/facebook/AccessTokenSource')]
  JAccessTokenSource = interface(JEnum)
    ['{CE25A5C3-5E23-46C9-AB20-50185C69370C}']
    function canExtendToken: Boolean; cdecl;//Deprecated
  end;
  TJAccessTokenSource = class(TJavaGenericImport<JAccessTokenSourceClass, JAccessTokenSource>) end;

  JAccessTokenTrackerClass = interface(JObjectClass)
    ['{8D2DB48D-85D2-45B0-A8E4-F72C5985A708}']
    {class} function init: JAccessTokenTracker; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/AccessTokenTracker')]
  JAccessTokenTracker = interface(JObject)
    ['{F17F0248-6CD4-4C2B-846E-B7AA0859BAB4}']
    function isTracking: Boolean; cdecl;//Deprecated
    procedure startTracking; cdecl;//Deprecated
    procedure stopTracking; cdecl;//Deprecated
  end;
  TJAccessTokenTracker = class(TJavaGenericImport<JAccessTokenTrackerClass, JAccessTokenTracker>) end;

  JAccessTokenTracker_1Class = interface(JObjectClass)
    ['{91BEA53E-0641-4076-886A-E6611C121BB0}']
  end;

  [JavaSignature('com/facebook/AccessTokenTracker$1')]
  JAccessTokenTracker_1 = interface(JObject)
    ['{A50E4479-45B1-4921-8221-4865E3A629CD}']
  end;
  TJAccessTokenTracker_1 = class(TJavaGenericImport<JAccessTokenTracker_1Class, JAccessTokenTracker_1>) end;

  JAccessTokenTracker_CurrentAccessTokenBroadcastReceiverClass = interface(JBroadcastReceiverClass)
    ['{9522A631-82C5-4262-B57B-03E8030BAD4F}']
    {class} function init(P1: JAccessTokenTracker; P2: JAccessTokenTracker_1): JAccessTokenTracker_CurrentAccessTokenBroadcastReceiver; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/AccessTokenTracker$CurrentAccessTokenBroadcastReceiver')]
  JAccessTokenTracker_CurrentAccessTokenBroadcastReceiver = interface(JBroadcastReceiver)
    ['{9906FD9E-F865-4E20-AD77-5AA66C2C5D94}']
    procedure onReceive(P1: JContext; P2: JIntent); cdecl;//Deprecated
  end;
  TJAccessTokenTracker_CurrentAccessTokenBroadcastReceiver = class(TJavaGenericImport<JAccessTokenTracker_CurrentAccessTokenBroadcastReceiverClass, JAccessTokenTracker_CurrentAccessTokenBroadcastReceiver>) end;

  Jfacebook_BuildConfigClass = interface(JObjectClass)
    ['{3A1DF27C-7A4D-49DF-AC43-5E7E85A08EE0}']
    {class} function _GetAPPLICATION_ID: JString; cdecl;
    {class} function _GetBUILD_TYPE: JString; cdecl;
    {class} function _GetDEBUG: Boolean; cdecl;
    {class} function _GetFLAVOR: JString; cdecl;
    {class} function _GetVERSION_CODE: Integer; cdecl;
    {class} function _GetVERSION_NAME: JString; cdecl;
    {class} function init: Jfacebook_BuildConfig; cdecl;//Deprecated
    {class} property APPLICATION_ID: JString read _GetAPPLICATION_ID;
    {class} property BUILD_TYPE: JString read _GetBUILD_TYPE;
    {class} property DEBUG: Boolean read _GetDEBUG;
    {class} property FLAVOR: JString read _GetFLAVOR;
    {class} property VERSION_CODE: Integer read _GetVERSION_CODE;
    {class} property VERSION_NAME: JString read _GetVERSION_NAME;
  end;

  [JavaSignature('com/facebook/BuildConfig')]
  Jfacebook_BuildConfig = interface(JObject)
    ['{52A2CB41-5587-4E2E-BED6-7C7DD5DA5C75}']
  end;
  TJfacebook_BuildConfig = class(TJavaGenericImport<Jfacebook_BuildConfigClass, Jfacebook_BuildConfig>) end;

  JCallbackManagerClass = interface(IJavaClass)
    ['{D56C502E-596B-4479-881F-FEB4D423C979}']
  end;

  [JavaSignature('com/facebook/CallbackManager')]
  JCallbackManager = interface(IJavaInstance)
    ['{19512D8A-68E6-485B-AD48-380C00533812}']
    function onActivityResult(P1: Integer; P2: Integer; P3: JIntent): Boolean; cdecl;//Deprecated
  end;
  TJCallbackManager = class(TJavaGenericImport<JCallbackManagerClass, JCallbackManager>) end;

  JCallbackManager_FactoryClass = interface(JObjectClass)
    ['{3C9682F1-D474-4BE9-8A7D-6D6844C02687}']
    {class} function create: JCallbackManager; cdecl;//Deprecated
    {class} function init: JCallbackManager_Factory; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/CallbackManager$Factory')]
  JCallbackManager_Factory = interface(JObject)
    ['{8F0392C7-D698-40CD-BDE0-964284ED43E2}']
  end;
  TJCallbackManager_Factory = class(TJavaGenericImport<JCallbackManager_FactoryClass, JCallbackManager_Factory>) end;

  JCustomTabActivityClass = interface(JActivityClass)
    ['{43655212-E64C-484C-AB49-E694A017A84B}']
    {class} function init: JCustomTabActivity; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/CustomTabActivity')]
  JCustomTabActivity = interface(JActivity)
    ['{0F5107B6-9476-4948-83DA-F199243D67E7}']
  end;
  TJCustomTabActivity = class(TJavaGenericImport<JCustomTabActivityClass, JCustomTabActivity>) end;

  // com.facebook.FacebookActivity
  JFacebookExceptionClass = interface(JRuntimeExceptionClass)
    ['{CC82C286-E7FB-4EE7-8222-B3E99EA07832}']
    {class} function init: JFacebookException; cdecl; overload;//Deprecated
    {class} function init(P1: JThrowable): JFacebookException; cdecl; overload;//Deprecated
    {class} function init(P1: JString): JFacebookException; cdecl; overload;//Deprecated
    {class} function init(P1: JString; P2: JThrowable): JFacebookException; cdecl; overload;//Deprecated
  end;

  [JavaSignature('com/facebook/FacebookException')]
  JFacebookException = interface(JRuntimeException)
    ['{656CE807-4204-4C7B-904C-26768179F227}']
    function toString: JString; cdecl;//Deprecated
  end;
  TJFacebookException = class(TJavaGenericImport<JFacebookExceptionClass, JFacebookException>) end;

  JFacebookAuthorizationExceptionClass = interface(JFacebookExceptionClass)
    ['{04E5A9B0-8F41-4BC1-ABE0-2C61742B7B06}']
    {class} function init: JFacebookAuthorizationException; cdecl; overload;//Deprecated
    {class} function init(P1: JThrowable): JFacebookAuthorizationException; cdecl; overload;//Deprecated
    {class} function init(P1: JString): JFacebookAuthorizationException; cdecl; overload;//Deprecated
    {class} function init(P1: JString; P2: JThrowable): JFacebookAuthorizationException; cdecl; overload;//Deprecated
  end;

  [JavaSignature('com/facebook/FacebookAuthorizationException')]
  JFacebookAuthorizationException = interface(JFacebookException)
    ['{C7ED3166-5AB4-40FA-AEF3-D868AD1037BD}']
  end;
  TJFacebookAuthorizationException = class(TJavaGenericImport<JFacebookAuthorizationExceptionClass, JFacebookAuthorizationException>) end;

  JFacebookBroadcastReceiverClass = interface(JBroadcastReceiverClass)
    ['{9600F938-5C7C-43ED-9CF4-0B044D03906C}']
    {class} function init: JFacebookBroadcastReceiver; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/FacebookBroadcastReceiver')]
  JFacebookBroadcastReceiver = interface(JBroadcastReceiver)
    ['{E2A7F617-37E1-4727-98BA-87B87D3E116F}']
    procedure onReceive(P1: JContext; P2: JIntent); cdecl;//Deprecated
  end;
  TJFacebookBroadcastReceiver = class(TJavaGenericImport<JFacebookBroadcastReceiverClass, JFacebookBroadcastReceiver>) end;

  JFacebookButtonBaseClass = interface(JButtonClass)
    ['{7B444AAF-F5E0-40D1-A384-9C04F554DBBA}']
  end;

  [JavaSignature('com/facebook/FacebookButtonBase')]
  JFacebookButtonBase = interface(JButton)
    ['{6C481A97-6F19-4F1C-8B9A-321146C58B48}']
    function getCompoundPaddingLeft: Integer; cdecl;//Deprecated
    function getCompoundPaddingRight: Integer; cdecl;//Deprecated
    //function getFragment: Japp_Fragment; cdecl;//Deprecated
    function getNativeFragment: JFragment; cdecl;//Deprecated
    function getRequestCode: Integer; cdecl;//Deprecated
    procedure setFragment(P1: JFragment); cdecl; overload;//Deprecated
    //procedure setFragment(P1: Japp_Fragment); cdecl; overload;//Deprecated
    procedure setOnClickListener(P1: JView_OnClickListener); cdecl;//Deprecated
  end;
  TJFacebookButtonBase = class(TJavaGenericImport<JFacebookButtonBaseClass, JFacebookButtonBase>) end;

  JFacebookButtonBase_1Class = interface(JView_OnClickListenerClass)
    ['{853981E3-F44B-4AE3-9BFD-EE2E9F0140D6}']
    {class} function init(P1: JFacebookButtonBase): JFacebookButtonBase_1; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/FacebookButtonBase$1')]
  JFacebookButtonBase_1 = interface(JView_OnClickListener)
    ['{6E7AAD92-6FAC-4D64-A3A1-3823BA671714}']
    procedure onClick(P1: JView); cdecl;//Deprecated
  end;
  TJFacebookButtonBase_1 = class(TJavaGenericImport<JFacebookButtonBase_1Class, JFacebookButtonBase_1>) end;

  JFacebookCallbackClass = interface(IJavaClass)
    ['{87C5D4BF-0AB8-45FE-9C2B-CE1CA63120AF}']
  end;

  [JavaSignature('com/facebook/FacebookCallback')]
  JFacebookCallback = interface(IJavaInstance)
    ['{8DECCF5F-01D4-46BC-9CFA-2869B9A958E8}']
    procedure onCancel; cdecl;//Deprecated
    procedure onError(P1: JFacebookException); cdecl;//Deprecated
    procedure onSuccess(P1: JObject); cdecl;//Deprecated
  end;
  TJFacebookCallback = class(TJavaGenericImport<JFacebookCallbackClass, JFacebookCallback>) end;

  JFacebookContentProviderClass = interface(JContentProviderClass)
    ['{255C11D9-C741-4616-9C8C-D2988847EA46}']
    {class} function getAttachmentUrl(P1: JString; P2: JUUID; P3: JString): JString; cdecl;//Deprecated
    {class} function init: JFacebookContentProvider; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/FacebookContentProvider')]
  JFacebookContentProvider = interface(JContentProvider)
    ['{FE6ABD28-B690-4FC2-9D36-BF7E7ADBE3B1}']
    function delete(P1: Jnet_Uri; P2: JString; P3: TJavaObjectArray<JString>): Integer; cdecl;//Deprecated
    function getType(P1: Jnet_Uri): JString; cdecl;//Deprecated
    function insert(P1: Jnet_Uri; P2: JContentValues): Jnet_Uri; cdecl;//Deprecated
    function onCreate: Boolean; cdecl;//Deprecated
    function openFile(P1: Jnet_Uri; P2: JString): JParcelFileDescriptor; cdecl;//Deprecated
    function query(P1: Jnet_Uri; P2: TJavaObjectArray<JString>; P3: JString; P4: TJavaObjectArray<JString>; P5: JString): JCursor; cdecl;//Deprecated
    function update(P1: Jnet_Uri; P2: JContentValues; P3: JString; P4: TJavaObjectArray<JString>): Integer; cdecl;//Deprecated
  end;
  TJFacebookContentProvider = class(TJavaGenericImport<JFacebookContentProviderClass, JFacebookContentProvider>) end;

  JFacebookDialogClass = interface(IJavaClass)
    ['{71AF085C-585C-48AA-98F4-2339E34768A0}']
  end;

  [JavaSignature('com/facebook/FacebookDialog')]
  JFacebookDialog = interface(IJavaInstance)
    ['{6165C2F6-2D69-4565-9E29-7388653F1E30}']
    //function canShow(P1: J): Boolean; cdecl;//Deprecated
    procedure registerCallback(P1: JCallbackManager; P2: JFacebookCallback); cdecl; overload;//Deprecated
    procedure registerCallback(P1: JCallbackManager; P2: JFacebookCallback; P3: Integer); cdecl; overload;//Deprecated
    //procedure show(P1: J); cdecl;//Deprecated
  end;
  TJFacebookDialog = class(TJavaGenericImport<JFacebookDialogClass, JFacebookDialog>) end;

  JFacebookDialogExceptionClass = interface(JFacebookExceptionClass)
    ['{9298C2CB-2CC4-4DD1-8954-11C080799BE6}']
    {class} function init(P1: JString; P2: Integer; P3: JString): JFacebookDialogException; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/FacebookDialogException')]
  JFacebookDialogException = interface(JFacebookException)
    ['{B861D4C1-B211-4C19-B80A-A618C5449695}']
    function getErrorCode: Integer; cdecl;//Deprecated
    function getFailingUrl: JString; cdecl;//Deprecated
    function toString: JString; cdecl;//Deprecated
  end;
  TJFacebookDialogException = class(TJavaGenericImport<JFacebookDialogExceptionClass, JFacebookDialogException>) end;

  JFacebookGraphResponseExceptionClass = interface(JFacebookExceptionClass)
    ['{59DF6537-ED72-46C6-B365-54B62B65E2DF}']
    {class} function init(P1: JGraphResponse; P2: JString): JFacebookGraphResponseException; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/FacebookGraphResponseException')]
  JFacebookGraphResponseException = interface(JFacebookException)
    ['{1FDF45BA-2F98-4297-BF96-5CCB6C5DF1BB}']
    function getGraphResponse: JGraphResponse; cdecl;//Deprecated
    function toString: JString; cdecl;//Deprecated
  end;
  TJFacebookGraphResponseException = class(TJavaGenericImport<JFacebookGraphResponseExceptionClass, JFacebookGraphResponseException>) end;

  JFacebookOperationCanceledExceptionClass = interface(JFacebookExceptionClass)
    ['{D7558C6D-B299-4F53-B433-B6F046B89D00}']
    {class} function init: JFacebookOperationCanceledException; cdecl; overload;//Deprecated
    {class} function init(P1: JThrowable): JFacebookOperationCanceledException; cdecl; overload;//Deprecated
    {class} function init(P1: JString): JFacebookOperationCanceledException; cdecl; overload;//Deprecated
    {class} function init(P1: JString; P2: JThrowable): JFacebookOperationCanceledException; cdecl; overload;//Deprecated
  end;

  [JavaSignature('com/facebook/FacebookOperationCanceledException')]
  JFacebookOperationCanceledException = interface(JFacebookException)
    ['{7870D188-741F-4684-9570-550AE808170C}']
  end;
  TJFacebookOperationCanceledException = class(TJavaGenericImport<JFacebookOperationCanceledExceptionClass, JFacebookOperationCanceledException>) end;

  JFacebookRequestErrorClass = interface(JParcelableClass)
    ['{5920D691-C1E3-4DA2-91FF-E5AB411AFFBD}']
    {class} function _GetCREATOR: JParcelable_Creator; cdecl;
    {class} function _GetHTTP_RANGE_SUCCESS: JFacebookRequestError_Range; cdecl;
    {class} function _GetINVALID_ERROR_CODE: Integer; cdecl;
    {class} function _GetINVALID_HTTP_STATUS_CODE: Integer; cdecl;
    {class} function checkResponseAndCreateError(P1: JJSONObject; P2: JObject; P3: JHttpURLConnection): JFacebookRequestError; cdecl;//Deprecated
    {class} function getErrorClassification: JFacebookRequestErrorClassification; cdecl;//Deprecated
    {class} function init(P1: JHttpURLConnection; P2: JException): JFacebookRequestError; cdecl; overload;//Deprecated
    {class} function init(P1: JParcel; P2: JFacebookRequestError_1): JFacebookRequestError; cdecl; overload;//Deprecated
    {class} function init(P1: Integer; P2: JString; P3: JString): JFacebookRequestError; cdecl; overload;//Deprecated
    {class} property CREATOR: JParcelable_Creator read _GetCREATOR;
    {class} property HTTP_RANGE_SUCCESS: JFacebookRequestError_Range read _GetHTTP_RANGE_SUCCESS;
    {class} property INVALID_ERROR_CODE: Integer read _GetINVALID_ERROR_CODE;
    {class} property INVALID_HTTP_STATUS_CODE: Integer read _GetINVALID_HTTP_STATUS_CODE;
  end;

  [JavaSignature('com/facebook/FacebookRequestError')]
  JFacebookRequestError = interface(JParcelable)
    ['{92588039-F52A-4B96-865D-242BFAF3B6C2}']
    function describeContents: Integer; cdecl;//Deprecated
    function getBatchRequestResult: JObject; cdecl;//Deprecated
    function getCategory: JFacebookRequestError_Category; cdecl;//Deprecated
    function getConnection: JHttpURLConnection; cdecl;//Deprecated
    function getErrorCode: Integer; cdecl;//Deprecated
    function getErrorMessage: JString; cdecl;//Deprecated
    function getErrorRecoveryMessage: JString; cdecl;//Deprecated
    function getErrorType: JString; cdecl;//Deprecated
    function getErrorUserMessage: JString; cdecl;//Deprecated
    function getErrorUserTitle: JString; cdecl;//Deprecated
    function getException: JFacebookException; cdecl;//Deprecated
    function getRequestResult: JJSONObject; cdecl;//Deprecated
    function getRequestResultBody: JJSONObject; cdecl;//Deprecated
    function getRequestStatusCode: Integer; cdecl;//Deprecated
    function getSubErrorCode: Integer; cdecl;//Deprecated
    function toString: JString; cdecl;//Deprecated
    procedure writeToParcel(P1: JParcel; P2: Integer); cdecl;//Deprecated
  end;
  TJFacebookRequestError = class(TJavaGenericImport<JFacebookRequestErrorClass, JFacebookRequestError>) end;

  JFacebookRequestError_1Class = interface(JParcelable_CreatorClass)
    ['{CCE85183-86D2-409D-A374-5B6C06B3C8F2}']
  end;

  [JavaSignature('com/facebook/FacebookRequestError$1')]
  JFacebookRequestError_1 = interface(JParcelable_Creator)
    ['{85458014-CF79-43D8-8F58-3054B48FDEB0}']
    function createFromParcel(P1: JParcel): JFacebookRequestError; cdecl;//Deprecated
    function newArray(P1: Integer): TJavaObjectArray<JFacebookRequestError>; cdecl;//Deprecated
  end;
  TJFacebookRequestError_1 = class(TJavaGenericImport<JFacebookRequestError_1Class, JFacebookRequestError_1>) end;

  JFacebookRequestError_CategoryClass = interface(JEnumClass)
    ['{BAC330A6-EF88-4719-9EC4-A7FD05B7007D}']
    {class} function _GetLOGIN_RECOVERABLE: JFacebookRequestError_Category; cdecl;
    {class} function _GetOTHER: JFacebookRequestError_Category; cdecl;
    {class} function _GetTRANSIENT: JFacebookRequestError_Category; cdecl;
    {class} function valueOf(P1: JString): JFacebookRequestError_Category; cdecl;//Deprecated
    {class} function values: TJavaObjectArray<JFacebookRequestError_Category>; cdecl;//Deprecated
    {class} property LOGIN_RECOVERABLE: JFacebookRequestError_Category read _GetLOGIN_RECOVERABLE;
    {class} property OTHER: JFacebookRequestError_Category read _GetOTHER;
    {class} property TRANSIENT: JFacebookRequestError_Category read _GetTRANSIENT;
  end;

  [JavaSignature('com/facebook/FacebookRequestError$Category')]
  JFacebookRequestError_Category = interface(JEnum)
    ['{B4E1F38E-2115-43F4-8BCD-9529F69B56F3}']
  end;
  TJFacebookRequestError_Category = class(TJavaGenericImport<JFacebookRequestError_CategoryClass, JFacebookRequestError_Category>) end;

  JFacebookRequestError_RangeClass = interface(JObjectClass)
    ['{557AB43F-FA13-471E-87E5-D7870329E319}']
  end;

  [JavaSignature('com/facebook/FacebookRequestError$Range')]
  JFacebookRequestError_Range = interface(JObject)
    ['{04AD0B9D-4330-4CAE-8CDA-F937794A3257}']
  end;
  TJFacebookRequestError_Range = class(TJavaGenericImport<JFacebookRequestError_RangeClass, JFacebookRequestError_Range>) end;

  JFacebookSdkClass = interface(JObjectClass)
    ['{85A66D78-FE5A-4FB5-B9DB-819CCC18C8D3}']
    {class} function _GetAPPLICATION_ID_PROPERTY: JString; cdecl;
    {class} function _GetAPPLICATION_NAME_PROPERTY: JString; cdecl;
    {class} function _GetCALLBACK_OFFSET_NEGATIVE: JString; cdecl;
    {class} function _GetCLIENT_TOKEN_PROPERTY: JString; cdecl;
    {class} function _GetWEB_DIALOG_THEME: JString; cdecl;
    {class} procedure addLoggingBehavior(P1: JLoggingBehavior); cdecl;//Deprecated
    {class} procedure clearLoggingBehaviors; cdecl;//Deprecated
    {class} function getApplicationContext: JContext; cdecl;//Deprecated
    {class} function getApplicationId: JString; cdecl;//Deprecated
    {class} function getApplicationName: JString; cdecl;//Deprecated
    {class} function getApplicationSignature(P1: JContext): JString; cdecl;//Deprecated
    {class} function getCacheDir: JFile; cdecl;//Deprecated
    {class} function getCallbackRequestCodeOffset: Integer; cdecl;//Deprecated
    {class} function getClientToken: JString; cdecl;//Deprecated
    {class} function getExecutor: JExecutor; cdecl;//Deprecated
    {class} function getFacebookDomain: JString; cdecl;//Deprecated
    {class} function getLimitEventAndDataUsage(P1: JContext): Boolean; cdecl;//Deprecated
    {class} function getLoggingBehaviors: JSet; cdecl;//Deprecated
    {class} function getOnProgressThreshold: Int64; cdecl;//Deprecated
    {class} function getSdkVersion: JString; cdecl;//Deprecated
    {class} function getWebDialogTheme: Integer; cdecl;//Deprecated
    {class} function init: JFacebookSdk; cdecl;//Deprecated
    {class} function isDebugEnabled: Boolean; cdecl;//Deprecated
    {class} function isFacebookRequestCode(P1: Integer): Boolean; cdecl;//Deprecated
    {class} function isInitialized: Boolean; cdecl;//Deprecated
    {class} function isLegacyTokenUpgradeSupported: Boolean; cdecl;//Deprecated
    {class} function isLoggingBehaviorEnabled(P1: JLoggingBehavior): Boolean; cdecl;//Deprecated
    {class} procedure loadDefaultsFromMetadata(P1: JContext); cdecl;//Deprecated
    {class} function publishInstallAndWaitForResponse(P1: JContext; P2: JString): JGraphResponse; cdecl;//Deprecated
    {class} procedure publishInstallAsync(P1: JContext; P2: JString); cdecl;//Deprecated
    {class} procedure removeLoggingBehavior(P1: JLoggingBehavior); cdecl;//Deprecated
    {class} procedure sdkInitialize(P1: JContext); cdecl; overload;//Deprecated
    {class} procedure sdkInitialize(P1: JContext; P2: Integer); cdecl; overload;//Deprecated
    {class} procedure sdkInitialize(P1: JContext; P2: JFacebookSdk_InitializeCallback); cdecl; overload;//Deprecated
    {class} procedure sdkInitialize(P1: JContext; P2: Integer; P3: JFacebookSdk_InitializeCallback); cdecl; overload;//Deprecated
    {class} procedure setApplicationId(P1: JString); cdecl;//Deprecated
    {class} procedure setApplicationName(P1: JString); cdecl;//Deprecated
    {class} procedure setCacheDir(P1: JFile); cdecl;//Deprecated
    {class} procedure setClientToken(P1: JString); cdecl;//Deprecated
    {class} procedure setExecutor(P1: JExecutor); cdecl;//Deprecated
    {class} procedure setFacebookDomain(P1: JString); cdecl;//Deprecated
    {class} procedure setIsDebugEnabled(P1: Boolean); cdecl;//Deprecated
    {class} procedure setLegacyTokenUpgradeSupported(P1: Boolean); cdecl;//Deprecated
    {class} procedure setLimitEventAndDataUsage(P1: JContext; P2: Boolean); cdecl;//Deprecated
    {class} procedure setOnProgressThreshold(P1: Int64); cdecl;//Deprecated
    {class} procedure setWebDialogTheme(P1: Integer); cdecl;//Deprecated
    {class} property APPLICATION_ID_PROPERTY: JString read _GetAPPLICATION_ID_PROPERTY;
    {class} property APPLICATION_NAME_PROPERTY: JString read _GetAPPLICATION_NAME_PROPERTY;
    {class} property CALLBACK_OFFSET_NEGATIVE: JString read _GetCALLBACK_OFFSET_NEGATIVE;
    {class} property CLIENT_TOKEN_PROPERTY: JString read _GetCLIENT_TOKEN_PROPERTY;
    {class} property WEB_DIALOG_THEME: JString read _GetWEB_DIALOG_THEME;
  end;

  [JavaSignature('com/facebook/FacebookSdk')]
  JFacebookSdk = interface(JObject)
    ['{F412A82C-ED54-4F64-BEEA-F6ED02BB54AD}']
  end;
  TJFacebookSdk = class(TJavaGenericImport<JFacebookSdkClass, JFacebookSdk>) end;

//  JFacebookSdk_1Class = interface(JThreadFactoryClass)
//    ['{9D2B4C7C-7B0F-458A-BCAA-40ED1A573F41}']
//  end;
//
//  [JavaSignature('com/facebook/FacebookSdk$1')]
//  JFacebookSdk_1 = interface(JThreadFactory)
//    ['{24BF4D9F-526C-4FB1-B920-4EFADA4FDD0B}']
//    function newThread(P1: JRunnable): JThread; cdecl;//Deprecated
//  end;
//  TJFacebookSdk_1 = class(TJavaGenericImport<JFacebookSdk_1Class, JFacebookSdk_1>) end;

  JFacebookSdk_2Class = interface(JCallableClass)
    ['{EDAABA16-D5C6-48A1-9D0E-483DF9E97909}']
  end;

  [JavaSignature('com/facebook/FacebookSdk$2')]
  JFacebookSdk_2 = interface(JCallable)
    ['{D1BC6BDB-34B2-4405-8B82-6C8B1054A513}']
    function call: JFile; cdecl;//Deprecated
  end;
  TJFacebookSdk_2 = class(TJavaGenericImport<JFacebookSdk_2Class, JFacebookSdk_2>) end;

  JFacebookSdk_3Class = interface(JCallableClass)
    ['{61173895-AB63-462A-8E38-206C668AE7FB}']
    {class} function init(P1: JFacebookSdk_InitializeCallback; P2: JContext): JFacebookSdk_3; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/FacebookSdk$3')]
  JFacebookSdk_3 = interface(JCallable)
    ['{3F4509FF-F99D-4FE0-8B2B-86508A54CF87}']
//    function _Getval$applicationContext: JContext; cdecl;
    function call: JVoid; cdecl;//Deprecated
//    property val$applicationContext: JContext read _Getval$applicationContext;
  end;
  TJFacebookSdk_3 = class(TJavaGenericImport<JFacebookSdk_3Class, JFacebookSdk_3>) end;

  JFacebookSdk_4Class = interface(JRunnableClass)
    ['{5AA7746C-331C-4B79-98D1-E7BF52D26500}']
    {class} function init(P1: JContext; P2: JString): JFacebookSdk_4; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/FacebookSdk$4')]
  JFacebookSdk_4 = interface(JRunnable)
    ['{2A6E0647-BA16-4939-84E1-3C71DB8978A5}']
//    function _Getval$applicationId: JString; cdecl;
    procedure run; cdecl;//Deprecated
//    property val$applicationId: JString read _Getval$applicationId;
  end;
  TJFacebookSdk_4 = class(TJavaGenericImport<JFacebookSdk_4Class, JFacebookSdk_4>) end;

  JFacebookSdk_InitializeCallbackClass = interface(IJavaClass)
    ['{52DA3F76-7F9C-43A3-A690-8B6AD3702608}']
  end;

  [JavaSignature('com/facebook/FacebookSdk$InitializeCallback')]
  JFacebookSdk_InitializeCallback = interface(IJavaInstance)
    ['{E143D7F2-E243-4DA9-81F1-C7929427AECF}']
    procedure onInitialized; cdecl;//Deprecated
  end;
  TJFacebookSdk_InitializeCallback = class(TJavaGenericImport<JFacebookSdk_InitializeCallbackClass, JFacebookSdk_InitializeCallback>) end;

  JFacebookSdkNotInitializedExceptionClass = interface(JFacebookExceptionClass)
    ['{310B242B-BA8A-44D2-AC40-C63CD5C1522C}']
    {class} function init: JFacebookSdkNotInitializedException; cdecl; overload;//Deprecated
    {class} function init(P1: JThrowable): JFacebookSdkNotInitializedException; cdecl; overload;//Deprecated
    {class} function init(P1: JString): JFacebookSdkNotInitializedException; cdecl; overload;//Deprecated
    {class} function init(P1: JString; P2: JThrowable): JFacebookSdkNotInitializedException; cdecl; overload;//Deprecated
  end;

  [JavaSignature('com/facebook/FacebookSdkNotInitializedException')]
  JFacebookSdkNotInitializedException = interface(JFacebookException)
    ['{B16710C5-04D4-4F2A-973A-A0CD1002F883}']
  end;
  TJFacebookSdkNotInitializedException = class(TJavaGenericImport<JFacebookSdkNotInitializedExceptionClass, JFacebookSdkNotInitializedException>) end;

  JFacebookSdkVersionClass = interface(JObjectClass)
    ['{8D8A8931-2E52-413E-BBFA-12E9C47AA280}']
    {class} function _GetBUILD: JString; cdecl;
    {class} function init: JFacebookSdkVersion; cdecl;//Deprecated
    {class} property BUILD: JString read _GetBUILD;
  end;

  [JavaSignature('com/facebook/FacebookSdkVersion')]
  JFacebookSdkVersion = interface(JObject)
    ['{8B9FD5C5-11AA-4F61-BC28-BF917EFE8C20}']
  end;
  TJFacebookSdkVersion = class(TJavaGenericImport<JFacebookSdkVersionClass, JFacebookSdkVersion>) end;

  JFacebookServiceExceptionClass = interface(JFacebookExceptionClass)
    ['{058BDC24-3478-4B35-B424-882341376C9B}']
    {class} function init(P1: JFacebookRequestError; P2: JString): JFacebookServiceException; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/FacebookServiceException')]
  JFacebookServiceException = interface(JFacebookException)
    ['{963E7902-720B-49E4-A0AE-D44712A9DF33}']
    function getRequestError: JFacebookRequestError; cdecl;//Deprecated
    function toString: JString; cdecl;//Deprecated
  end;
  TJFacebookServiceException = class(TJavaGenericImport<JFacebookServiceExceptionClass, JFacebookServiceException>) end;

  JGraphRequestClass = interface(JObjectClass)
    ['{7A7D75C3-FDE7-475D-BBE5-D35BA686D65D}']
    {class} function _GetACCESS_TOKEN_PARAM: JString; cdecl;
    {class} function _GetFIELDS_PARAM: JString; cdecl;
    {class} function _GetMAXIMUM_BATCH_SIZE: Integer; cdecl;
    {class} function _GetTAG: JString; cdecl;
    {class} function createOpenGraphObject(P1: JShareOpenGraphObject): JGraphRequest; cdecl;//Deprecated
    {class} function executeAndWait(P1: JGraphRequest): JGraphResponse; cdecl; overload;//Deprecated
    {class} function executeBatchAndWait(P1: JGraphRequestBatch): JList; cdecl; overload;//Deprecated
    {class} function executeBatchAndWait(P1: JCollection): JList; cdecl; overload;//Deprecated
    {class} function executeBatchAsync(P1: JGraphRequestBatch): JGraphRequestAsyncTask; cdecl; overload;//Deprecated
    {class} function executeBatchAsync(P1: JCollection): JGraphRequestAsyncTask; cdecl; overload;//Deprecated
    {class} function executeConnectionAndWait(P1: JHttpURLConnection; P2: JGraphRequestBatch): JList; cdecl; overload;//Deprecated
    {class} function executeConnectionAndWait(P1: JHttpURLConnection; P2: JCollection): JList; cdecl; overload;//Deprecated
    {class} function executeConnectionAsync(P1: JHttpURLConnection; P2: JGraphRequestBatch): JGraphRequestAsyncTask; cdecl; overload;//Deprecated
    {class} function executeConnectionAsync(P1: JHandler; P2: JHttpURLConnection; P3: JGraphRequestBatch): JGraphRequestAsyncTask; cdecl; overload;//Deprecated
    {class} function getDefaultBatchApplicationId: JString; cdecl;//Deprecated
    {class} function init: JGraphRequest; cdecl; overload;//Deprecated
    {class} function init(P1: JAccessToken; P2: JString): JGraphRequest; cdecl; overload;//Deprecated
    {class} function init(P1: JAccessToken; P2: JURL): JGraphRequest; cdecl; overload;//Deprecated
    {class} function init(P1: JAccessToken; P2: JString; P3: JBundle; P4: JHttpMethod): JGraphRequest; cdecl; overload;//Deprecated
    {class} function init(P1: JAccessToken; P2: JString; P3: JBundle; P4: JHttpMethod; P5: JGraphRequest_Callback): JGraphRequest; cdecl; overload;//Deprecated
    {class} function init(P1: JAccessToken; P2: JString; P3: JBundle; P4: JHttpMethod; P5: JGraphRequest_Callback; P6: JString): JGraphRequest; cdecl; overload;//Deprecated
    {class} function newCustomAudienceThirdPartyIdRequest(P1: JAccessToken; P2: JContext; P3: JGraphRequest_Callback): JGraphRequest; cdecl; overload;//Deprecated
    {class} function newCustomAudienceThirdPartyIdRequest(P1: JAccessToken; P2: JContext; P3: JString; P4: JGraphRequest_Callback): JGraphRequest; cdecl; overload;//Deprecated
    {class} function newDeleteObjectRequest(P1: JAccessToken; P2: JString; P3: JGraphRequest_Callback): JGraphRequest; cdecl;//Deprecated
    {class} function newGraphPathRequest(P1: JAccessToken; P2: JString; P3: JGraphRequest_Callback): JGraphRequest; cdecl;//Deprecated
    {class} function newMeRequest(P1: JAccessToken; P2: JGraphRequest_GraphJSONObjectCallback): JGraphRequest; cdecl;//Deprecated
    {class} function newMyFriendsRequest(P1: JAccessToken; P2: JGraphRequest_GraphJSONArrayCallback): JGraphRequest; cdecl;//Deprecated
    {class} function newPlacesSearchRequest(P1: JAccessToken; P2: JLocation; P3: Integer; P4: Integer; P5: JString; P6: JGraphRequest_GraphJSONArrayCallback): JGraphRequest; cdecl;//Deprecated
    {class} function newPostRequest(P1: JAccessToken; P2: JString; P3: JJSONObject; P4: JGraphRequest_Callback): JGraphRequest; cdecl;//Deprecated
    {class} function newUploadPhotoRequest(P1: JAccessToken; P2: JString; P3: JBitmap; P4: JString; P5: JBundle; P6: JGraphRequest_Callback): JGraphRequest; cdecl; overload;//Deprecated
    {class} function newUploadPhotoRequest(P1: JAccessToken; P2: JString; P3: Jnet_Uri; P4: JString; P5: JBundle; P6: JGraphRequest_Callback): JGraphRequest; cdecl; overload;//Deprecated
    {class} function newUploadPhotoRequest(P1: JAccessToken; P2: JString; P3: JFile; P4: JString; P5: JBundle; P6: JGraphRequest_Callback): JGraphRequest; cdecl; overload;//Deprecated
    {class} procedure runCallbacks(P1: JGraphRequestBatch; P2: JList); cdecl;//Deprecated
    {class} procedure serializeToUrlConnection(P1: JGraphRequestBatch; P2: JHttpURLConnection); cdecl;//Deprecated
    {class} procedure setDefaultBatchApplicationId(P1: JString); cdecl;//Deprecated
    {class} function shouldWarnOnMissingFieldsParam(P1: JGraphRequest): Boolean; cdecl;//Deprecated
    {class} function toHttpConnection(P1: JGraphRequestBatch): JHttpURLConnection; cdecl; overload;//Deprecated
    {class} function toHttpConnection(P1: JCollection): JHttpURLConnection; cdecl; overload;//Deprecated
    {class} procedure validateFieldsParamForGetRequests(P1: JGraphRequestBatch); cdecl;//Deprecated
    {class} property ACCESS_TOKEN_PARAM: JString read _GetACCESS_TOKEN_PARAM;
    {class} property FIELDS_PARAM: JString read _GetFIELDS_PARAM;
    {class} property MAXIMUM_BATCH_SIZE: Integer read _GetMAXIMUM_BATCH_SIZE;
    {class} property TAG: JString read _GetTAG;
  end;

  [JavaSignature('com/facebook/GraphRequest')]
  JGraphRequest = interface(JObject)
    ['{CF97C683-2BFF-4048-AB99-3EB042ACBD93}']
    function executeAndWait: JGraphResponse; cdecl; overload;//Deprecated
    function executeAsync: JGraphRequestAsyncTask; cdecl;//Deprecated
    function getAccessToken: JAccessToken; cdecl;//Deprecated
    function getBatchEntryDependsOn: JString; cdecl;//Deprecated
    function getBatchEntryName: JString; cdecl;//Deprecated
    function getBatchEntryOmitResultOnSuccess: Boolean; cdecl;//Deprecated
    function getCallback: JGraphRequest_Callback; cdecl;//Deprecated
    function getGraphObject: JJSONObject; cdecl;//Deprecated
    function getGraphPath: JString; cdecl;//Deprecated
    function getHttpMethod: JHttpMethod; cdecl;//Deprecated
    function getParameters: JBundle; cdecl;//Deprecated
    function getTag: JObject; cdecl;//Deprecated
    function getUrlForBatchedRequest: JString; cdecl;//Deprecated
    function getUrlForSingleRequest: JString; cdecl;//Deprecated
    function getVersion: JString; cdecl;//Deprecated
    procedure setAccessToken(P1: JAccessToken); cdecl;//Deprecated
    procedure setBatchEntryDependsOn(P1: JString); cdecl;//Deprecated
    procedure setBatchEntryName(P1: JString); cdecl;//Deprecated
    procedure setBatchEntryOmitResultOnSuccess(P1: Boolean); cdecl;//Deprecated
    procedure setCallback(P1: JGraphRequest_Callback); cdecl;//Deprecated
    procedure setGraphObject(P1: JJSONObject); cdecl;//Deprecated
    procedure setGraphPath(P1: JString); cdecl;//Deprecated
    procedure setHttpMethod(P1: JHttpMethod); cdecl;//Deprecated
    procedure setParameters(P1: JBundle); cdecl;//Deprecated
    procedure setSkipClientToken(P1: Boolean); cdecl;//Deprecated
    procedure setTag(P1: JObject); cdecl;//Deprecated
    procedure setVersion(P1: JString); cdecl;//Deprecated
    function toString: JString; cdecl;//Deprecated
  end;
  TJGraphRequest = class(TJavaGenericImport<JGraphRequestClass, JGraphRequest>) end;

  JGraphRequest_1Class = interface(JGraphRequest_CallbackClass)
    ['{AB93374D-531D-41F3-B01D-6F89211FB5BF}']
    {class} function init(P1: JGraphRequest_GraphJSONObjectCallback): JGraphRequest_1; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/GraphRequest$1')]
  JGraphRequest_1 = interface(JGraphRequest_Callback)
    ['{70285D8F-DB29-4DAE-AD19-8AD065EF7649}']
    procedure onCompleted(P1: JGraphResponse); cdecl;//Deprecated
  end;
  TJGraphRequest_1 = class(TJavaGenericImport<JGraphRequest_1Class, JGraphRequest_1>) end;

  JGraphRequest_2Class = interface(JGraphRequest_CallbackClass)
    ['{AA9DE877-72CA-43C1-9AA3-7DBF16BCB9D4}']
    {class} function init(P1: JGraphRequest_GraphJSONArrayCallback): JGraphRequest_2; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/GraphRequest$2')]
  JGraphRequest_2 = interface(JGraphRequest_Callback)
    ['{DE038E89-F937-40CA-96A2-5BFB2A0B6D03}']
    procedure onCompleted(P1: JGraphResponse); cdecl;//Deprecated
  end;
  TJGraphRequest_2 = class(TJavaGenericImport<JGraphRequest_2Class, JGraphRequest_2>) end;

  JGraphRequest_3Class = interface(JGraphRequest_CallbackClass)
    ['{DA4AB2D9-F691-4C90-A89F-C284DD68799B}']
    {class} function init(P1: JGraphRequest_GraphJSONArrayCallback): JGraphRequest_3; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/GraphRequest$3')]
  JGraphRequest_3 = interface(JGraphRequest_Callback)
    ['{87E6C4E1-7803-486A-9C16-FA3792819AE5}']
    procedure onCompleted(P1: JGraphResponse); cdecl;//Deprecated
  end;
  TJGraphRequest_3 = class(TJavaGenericImport<JGraphRequest_3Class, JGraphRequest_3>) end;

  JGraphRequest_4Class = interface(JGraphRequest_CallbackClass)
    ['{6763E0B7-EFA7-4315-8CE0-C02FC62ED368}']
    {class} function init(P1: JGraphRequest; P2: JGraphRequest_Callback): JGraphRequest_4; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/GraphRequest$4')]
  JGraphRequest_4 = interface(JGraphRequest_Callback)
    ['{CF71EAB5-3E59-4640-A2A5-3CB7AF617AD6}']
//    function _Getthis$0: JGraphRequest; cdecl;
    procedure onCompleted(P1: JGraphResponse); cdecl;//Deprecated
//    property this$0: JGraphRequest read _Getthis$0;
  end;
  TJGraphRequest_4 = class(TJavaGenericImport<JGraphRequest_4Class, JGraphRequest_4>) end;

  JGraphRequest_5Class = interface(JRunnableClass)
    ['{8A04550A-151F-4A1F-9E3E-9C36826AB4CC}']
    {class} function init(P1: JArrayList; P2: JGraphRequestBatch): JGraphRequest_5; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/GraphRequest$5')]
  JGraphRequest_5 = interface(JRunnable)
    ['{DB36822E-AD5E-4197-B1F5-4A911EDADBC2}']
//    function _Getval$requests: JGraphRequestBatch; cdecl;
    procedure run; cdecl;//Deprecated
//    property val$requests: JGraphRequestBatch read _Getval$requests;
  end;
  TJGraphRequest_5 = class(TJavaGenericImport<JGraphRequest_5Class, JGraphRequest_5>) end;

  JGraphRequest_KeyValueSerializerClass = interface(IJavaClass)
    ['{1C15E321-3980-49A9-A18A-2614B9625291}']
  end;

  [JavaSignature('com/facebook/GraphRequest$KeyValueSerializer')]
  JGraphRequest_KeyValueSerializer = interface(IJavaInstance)
    ['{30410D86-E8B7-4896-9D49-7B3C72047899}']
    procedure writeString(P1: JString; P2: JString); cdecl;//Deprecated
  end;
  TJGraphRequest_KeyValueSerializer = class(TJavaGenericImport<JGraphRequest_KeyValueSerializerClass, JGraphRequest_KeyValueSerializer>) end;

  JGraphRequest_6Class = interface(JGraphRequest_KeyValueSerializerClass)
    ['{FFC70258-681D-4410-BA16-6866481955B4}']
    {class} function init(P1: JGraphRequest; P2: JArrayList): JGraphRequest_6; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/GraphRequest$6')]
  JGraphRequest_6 = interface(JGraphRequest_KeyValueSerializer)
    ['{DF2B49F8-D9F2-4BC0-8C8D-E0EFBF1D823D}']
//    function _Getthis$0: JGraphRequest; cdecl;
    procedure writeString(P1: JString; P2: JString); cdecl;//Deprecated
//    property this$0: JGraphRequest read _Getthis$0;
  end;
  TJGraphRequest_6 = class(TJavaGenericImport<JGraphRequest_6Class, JGraphRequest_6>) end;

  JOpenGraphJSONUtility_PhotoJSONProcessorClass = interface(IJavaClass)
    ['{AA815228-B341-4655-95C8-F4BADD94A87E}']
  end;

  [JavaSignature('com/facebook/share/internal/OpenGraphJSONUtility$PhotoJSONProcessor')]
  JOpenGraphJSONUtility_PhotoJSONProcessor = interface(IJavaInstance)
    ['{2EEDCE4C-5284-4900-BCD1-2F3AECB945EA}']
    function toJSONObject(P1: JSharePhoto): JJSONObject; cdecl;//Deprecated
  end;
  TJOpenGraphJSONUtility_PhotoJSONProcessor = class(TJavaGenericImport<JOpenGraphJSONUtility_PhotoJSONProcessorClass, JOpenGraphJSONUtility_PhotoJSONProcessor>) end;

  JGraphRequest_7Class = interface(JOpenGraphJSONUtility_PhotoJSONProcessorClass)
    ['{70EABA31-3C38-4EC8-BA7A-909F2CC9F815}']
  end;

  [JavaSignature('com/facebook/GraphRequest$7')]
  JGraphRequest_7 = interface(JOpenGraphJSONUtility_PhotoJSONProcessor)
    ['{1CC286AE-58C8-4478-AB29-FA3ADA1EE5ED}']
    function toJSONObject(P1: JSharePhoto): JJSONObject; cdecl;//Deprecated
  end;
  TJGraphRequest_7 = class(TJavaGenericImport<JGraphRequest_7Class, JGraphRequest_7>) end;

  JGraphRequest_AttachmentClass = interface(JObjectClass)
    ['{8451B6F3-7728-4F4E-B291-BC7B84CD38A1}']
    {class} function init(P1: JGraphRequest; P2: JObject): JGraphRequest_Attachment; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/GraphRequest$Attachment')]
  JGraphRequest_Attachment = interface(JObject)
    ['{DA69D31D-280C-4A47-AAEF-83157E5D23AF}']
    function getRequest: JGraphRequest; cdecl;//Deprecated
    function getValue: JObject; cdecl;//Deprecated
  end;
  TJGraphRequest_Attachment = class(TJavaGenericImport<JGraphRequest_AttachmentClass, JGraphRequest_Attachment>) end;

  JGraphRequest_GraphJSONArrayCallbackClass = interface(IJavaClass)
    ['{27AF3BA3-2F40-453B-8942-CE7063BCF48E}']
  end;

  [JavaSignature('com/facebook/GraphRequest$GraphJSONArrayCallback')]
  JGraphRequest_GraphJSONArrayCallback = interface(IJavaInstance)
    ['{608B1CB1-0924-43E1-8C28-ED55BA37210B}']
    procedure onCompleted(P1: JJSONArray; P2: JGraphResponse); cdecl;//Deprecated
  end;
  TJGraphRequest_GraphJSONArrayCallback = class(TJavaGenericImport<JGraphRequest_GraphJSONArrayCallbackClass, JGraphRequest_GraphJSONArrayCallback>) end;

  JGraphRequest_GraphJSONObjectCallbackClass = interface(IJavaClass)
    ['{FC3DEE31-7666-4D54-99BF-59DF42070591}']
  end;

  [JavaSignature('com/facebook/GraphRequest$GraphJSONObjectCallback')]
  JGraphRequest_GraphJSONObjectCallback = interface(IJavaInstance)
    ['{E2EEFFEC-9A04-489F-AF5F-7EE9C2E5EE25}']
    procedure onCompleted(P1: JJSONObject; P2: JGraphResponse); cdecl;//Deprecated
  end;
  TJGraphRequest_GraphJSONObjectCallback = class(TJavaGenericImport<JGraphRequest_GraphJSONObjectCallbackClass, JGraphRequest_GraphJSONObjectCallback>) end;

  JGraphRequest_OnProgressCallbackClass = interface(JGraphRequest_CallbackClass)
    ['{B0926E1B-3C29-4313-B2C1-91D549AE1DA1}']
  end;

  [JavaSignature('com/facebook/GraphRequest$OnProgressCallback')]
  JGraphRequest_OnProgressCallback = interface(JGraphRequest_Callback)
    ['{D21902CA-38DB-42D4-8803-693BC98985C7}']
    procedure onProgress(P1: Int64; P2: Int64); cdecl;//Deprecated
  end;
  TJGraphRequest_OnProgressCallback = class(TJavaGenericImport<JGraphRequest_OnProgressCallbackClass, JGraphRequest_OnProgressCallback>) end;

  JGraphRequest_ParcelableResourceWithMimeTypeClass = interface(JParcelableClass)
    ['{E703FB5E-1F6C-4465-82CE-93A5315564A8}']
    {class} function _GetCREATOR: JParcelable_Creator; cdecl;
    {class} //function init(P1: J; P2: JString): JGraphRequest_ParcelableResourceWithMimeType; cdecl; overload;//Deprecated
    {class} function init(P1: JParcel; P2: JGraphRequest_1): JGraphRequest_ParcelableResourceWithMimeType; cdecl; overload;//Deprecated
    {class} property CREATOR: JParcelable_Creator read _GetCREATOR;
  end;

  [JavaSignature('com/facebook/GraphRequest$ParcelableResourceWithMimeType')]
  JGraphRequest_ParcelableResourceWithMimeType = interface(JParcelable)
    ['{6C845BDC-68D3-453C-B5A2-03E90A2C5202}']
    function describeContents: Integer; cdecl;//Deprecated
    function getMimeType: JString; cdecl;//Deprecated
    //function getResource: J; cdecl;//Deprecated
    procedure writeToParcel(P1: JParcel; P2: Integer); cdecl;//Deprecated
  end;
  TJGraphRequest_ParcelableResourceWithMimeType = class(TJavaGenericImport<JGraphRequest_ParcelableResourceWithMimeTypeClass, JGraphRequest_ParcelableResourceWithMimeType>) end;

  JParcelableResourceWithMimeType_1Class = interface(JParcelable_CreatorClass)
    ['{3688A453-631D-4FAC-A58D-4EC4C1843BB2}']
  end;

  [JavaSignature('com/facebook/GraphRequest$ParcelableResourceWithMimeType$1')]
  JParcelableResourceWithMimeType_1 = interface(JParcelable_Creator)
    ['{662259A5-9113-49F4-B3FD-5B8AE6A49667}']
    function createFromParcel(P1: JParcel): JGraphRequest_ParcelableResourceWithMimeType; cdecl;//Deprecated
    function newArray(P1: Integer): TJavaObjectArray<JGraphRequest_ParcelableResourceWithMimeType>; cdecl;//Deprecated
  end;
  TJParcelableResourceWithMimeType_1 = class(TJavaGenericImport<JParcelableResourceWithMimeType_1Class, JParcelableResourceWithMimeType_1>) end;

  JGraphRequest_SerializerClass = interface(JGraphRequest_KeyValueSerializerClass)
    ['{74509204-CC03-4068-80DD-FF1D2472C174}']
    {class} function init(P1: JOutputStream; P2: Jinternal_Logger; P3: Boolean): JGraphRequest_Serializer; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/GraphRequest$Serializer')]
  JGraphRequest_Serializer = interface(JGraphRequest_KeyValueSerializer)
    ['{2E75D4D8-971E-47BD-983B-A1BCD09DB03D}']
    procedure writeBitmap(P1: JString; P2: JBitmap); cdecl;//Deprecated
    procedure writeBytes(P1: JString; P2: TJavaArray<Byte>); cdecl;//Deprecated
    procedure writeContentDisposition(P1: JString; P2: JString; P3: JString); cdecl;//Deprecated
    procedure writeContentUri(P1: JString; P2: Jnet_Uri; P3: JString); cdecl;//Deprecated
    procedure writeFile(P1: JString; P2: JParcelFileDescriptor; P3: JString); cdecl;//Deprecated
    procedure writeObject(P1: JString; P2: JObject; P3: JGraphRequest); cdecl;//Deprecated
    procedure writeRecordBoundary; cdecl;//Deprecated
    procedure writeRequestsAsJson(P1: JString; P2: JJSONArray; P3: JCollection); cdecl;//Deprecated
    procedure writeString(P1: JString; P2: JString); cdecl;//Deprecated
  end;
  TJGraphRequest_Serializer = class(TJavaGenericImport<JGraphRequest_SerializerClass, JGraphRequest_Serializer>) end;

  JGraphRequestAsyncTaskClass = interface(JAsyncTaskClass)
    ['{6FB5F4B6-9436-4464-A680-F37DC9633FAE}']
    {class} function init(P1: JCollection): JGraphRequestAsyncTask; cdecl; overload;//Deprecated
    {class} function init(P1: JGraphRequestBatch): JGraphRequestAsyncTask; cdecl; overload;//Deprecated
    {class} function init(P1: JHttpURLConnection; P2: JCollection): JGraphRequestAsyncTask; cdecl; overload;//Deprecated
    {class} function init(P1: JHttpURLConnection; P2: JGraphRequestBatch): JGraphRequestAsyncTask; cdecl; overload;//Deprecated
  end;

  [JavaSignature('com/facebook/GraphRequestAsyncTask')]
  JGraphRequestAsyncTask = interface(JAsyncTask)
    ['{F41B57EC-1AC5-4E50-A539-EE99A17B4025}']
    function toString: JString; cdecl;//Deprecated
  end;
  TJGraphRequestAsyncTask = class(TJavaGenericImport<JGraphRequestAsyncTaskClass, JGraphRequestAsyncTask>) end;

  JGraphRequestBatchClass = interface(JAbstractListClass)
    ['{9558CF41-298E-4D19-B219-10A8DF43502A}']
    {class} function init: JGraphRequestBatch; cdecl; overload;//Deprecated
    {class} function init(P1: JCollection): JGraphRequestBatch; cdecl; overload;//Deprecated
    {class} function init(P1: JGraphRequestBatch): JGraphRequestBatch; cdecl; overload;//Deprecated
  end;

  [JavaSignature('com/facebook/GraphRequestBatch')]
  JGraphRequestBatch = interface(JAbstractList)
    ['{7D1D4C5C-74CC-4E10-A5C5-7103A14EA733}']
    function add(P1: JObject): Boolean; cdecl; overload;//Deprecated
    function add(P1: JGraphRequest): Boolean; cdecl; overload;//Deprecated
    procedure add(P1: Integer; P2: JObject); cdecl; overload;//Deprecated
    procedure add(P1: Integer; P2: JGraphRequest); cdecl; overload;//Deprecated
    procedure addCallback(P1: JGraphRequestBatch_Callback); cdecl;//Deprecated
    procedure clear; cdecl;//Deprecated
    function executeAndWait: JList; cdecl;//Deprecated
    function executeAsync: JGraphRequestAsyncTask; cdecl;//Deprecated
    function get(P1: Integer): JGraphRequest; cdecl;//Deprecated
    function getBatchApplicationId: JString; cdecl;//Deprecated
    function getTimeout: Integer; cdecl;//Deprecated
    function remove(P1: Integer): JGraphRequest; cdecl;//Deprecated
    procedure removeCallback(P1: JGraphRequestBatch_Callback); cdecl;//Deprecated
    function &set(P1: Integer; P2: JObject): JObject; cdecl; overload;//Deprecated
    function &set(P1: Integer; P2: JGraphRequest): JGraphRequest; cdecl; overload;//Deprecated
    procedure setBatchApplicationId(P1: JString); cdecl;//Deprecated
    procedure setTimeout(P1: Integer); cdecl;//Deprecated
    function size: Integer; cdecl;//Deprecated
  end;
  TJGraphRequestBatch = class(TJavaGenericImport<JGraphRequestBatchClass, JGraphRequestBatch>) end;

  JGraphRequestBatch_OnProgressCallbackClass = interface(JGraphRequestBatch_CallbackClass)
    ['{7FF3494C-D983-4C8D-BCFD-9D2F895E2B4F}']
  end;

  [JavaSignature('com/facebook/GraphRequestBatch$OnProgressCallback')]
  JGraphRequestBatch_OnProgressCallback = interface(JGraphRequestBatch_Callback)
    ['{192CD078-119B-4748-A297-17F0004CFD9A}']
    procedure onBatchProgress(P1: JGraphRequestBatch; P2: Int64; P3: Int64); cdecl;//Deprecated
  end;
  TJGraphRequestBatch_OnProgressCallback = class(TJavaGenericImport<JGraphRequestBatch_OnProgressCallbackClass, JGraphRequestBatch_OnProgressCallback>) end;

  JGraphResponseClass = interface(JObjectClass)
    ['{6B8ED285-97D9-43EB-871D-3F14CEBC065A}']
    {class} function _GetNON_JSON_RESPONSE_PROPERTY: JString; cdecl;
    {class} function _GetSUCCESS_KEY: JString; cdecl;
    {class} function constructErrorResponses(P1: JList; P2: JHttpURLConnection; P3: JFacebookException): JList; cdecl;//Deprecated
    {class} function createResponsesFromStream(P1: JInputStream; P2: JHttpURLConnection; P3: JGraphRequestBatch): JList; cdecl;//Deprecated
    {class} function createResponsesFromString(P1: JString; P2: JHttpURLConnection; P3: JGraphRequestBatch): JList; cdecl;//Deprecated
    {class} function fromHttpConnection(P1: JHttpURLConnection; P2: JGraphRequestBatch): JList; cdecl;//Deprecated
    {class} function init(P1: JGraphRequest; P2: JHttpURLConnection; P3: JFacebookRequestError): JGraphResponse; cdecl; overload;//Deprecated
    {class} function init(P1: JGraphRequest; P2: JHttpURLConnection; P3: JString; P4: JJSONArray): JGraphResponse; cdecl; overload;//Deprecated
    {class} function init(P1: JGraphRequest; P2: JHttpURLConnection; P3: JString; P4: JJSONObject): JGraphResponse; cdecl; overload;//Deprecated
    {class} function init(P1: JGraphRequest; P2: JHttpURLConnection; P3: JString; P4: JJSONObject; P5: JJSONArray; P6: JFacebookRequestError): JGraphResponse; cdecl; overload;//Deprecated
    {class} property NON_JSON_RESPONSE_PROPERTY: JString read _GetNON_JSON_RESPONSE_PROPERTY;
    {class} property SUCCESS_KEY: JString read _GetSUCCESS_KEY;
  end;

  [JavaSignature('com/facebook/GraphResponse')]
  JGraphResponse = interface(JObject)
    ['{763C88F9-ACF1-4269-BF0E-467B34619A3B}']
    function getConnection: JHttpURLConnection; cdecl;//Deprecated
    function getError: JFacebookRequestError; cdecl;//Deprecated
    function getJSONArray: JJSONArray; cdecl;//Deprecated
    function getJSONObject: JJSONObject; cdecl;//Deprecated
    function getRawResponse: JString; cdecl;//Deprecated
    function getRequest: JGraphRequest; cdecl;//Deprecated
    function getRequestForPagedResults(P1: JGraphResponse_PagingDirection): JGraphRequest; cdecl;//Deprecated
    function toString: JString; cdecl;//Deprecated
  end;
  TJGraphResponse = class(TJavaGenericImport<JGraphResponseClass, JGraphResponse>) end;

  JGraphResponse_PagingDirectionClass = interface(JEnumClass)
    ['{B85B58B0-94F4-42A6-BCE5-40F4B9F6230A}']
    {class} function _GetNEXT: JGraphResponse_PagingDirection; cdecl;
    {class} function _GetPREVIOUS: JGraphResponse_PagingDirection; cdecl;
    {class} function valueOf(P1: JString): JGraphResponse_PagingDirection; cdecl;//Deprecated
    {class} function values: TJavaObjectArray<JGraphResponse_PagingDirection>; cdecl;//Deprecated
    {class} property NEXT: JGraphResponse_PagingDirection read _GetNEXT;
    {class} property PREVIOUS: JGraphResponse_PagingDirection read _GetPREVIOUS;
  end;

  [JavaSignature('com/facebook/GraphResponse$PagingDirection')]
  JGraphResponse_PagingDirection = interface(JEnum)
    ['{465F5FF7-04E8-439B-8470-DA1B25523586}']
  end;
  TJGraphResponse_PagingDirection = class(TJavaGenericImport<JGraphResponse_PagingDirectionClass, JGraphResponse_PagingDirection>) end;

  JHttpMethodClass = interface(JEnumClass)
    ['{4239C470-A319-4C99-8AE7-41ABAC554033}']
    {class} function _GetDELETE: JHttpMethod; cdecl;
    {class} function _GetGET: JHttpMethod; cdecl;
    {class} function _GetPOST: JHttpMethod; cdecl;
    {class} function valueOf(P1: JString): JHttpMethod; cdecl;//Deprecated
    {class} function values: TJavaObjectArray<JHttpMethod>; cdecl;//Deprecated
    {class} property DELETE: JHttpMethod read _GetDELETE;
    {class} property GET: JHttpMethod read _GetGET;
    {class} property POST: JHttpMethod read _GetPOST;
  end;

  [JavaSignature('com/facebook/HttpMethod')]
  JHttpMethod = interface(JEnum)
    ['{3862DF63-CB5A-4038-B7D4-79D770637C61}']
  end;
  TJHttpMethod = class(TJavaGenericImport<JHttpMethodClass, JHttpMethod>) end;

  JLegacyTokenHelperClass = interface(JObjectClass)
    ['{B900B24E-F3CE-4514-86D3-A9526FB3E6B0}']
    {class} function _GetAPPLICATION_ID_KEY: JString; cdecl;
    {class} function _GetDECLINED_PERMISSIONS_KEY: JString; cdecl;
    {class} function _GetDEFAULT_CACHE_KEY: JString; cdecl;
    {class} function _GetEXPIRATION_DATE_KEY: JString; cdecl;
    {class} function _GetLAST_REFRESH_DATE_KEY: JString; cdecl;
    {class} function _GetPERMISSIONS_KEY: JString; cdecl;
    {class} function _GetTOKEN_KEY: JString; cdecl;
    {class} function _GetTOKEN_SOURCE_KEY: JString; cdecl;
    {class} function getApplicationId(P1: JBundle): JString; cdecl;//Deprecated
    {class} function getDate(P1: JBundle; P2: JString): JDate; cdecl;//Deprecated
    {class} function getExpirationDate(P1: JBundle): JDate; cdecl;//Deprecated
    {class} function getExpirationMilliseconds(P1: JBundle): Int64; cdecl;//Deprecated
    {class} function getLastRefreshDate(P1: JBundle): JDate; cdecl;//Deprecated
    {class} function getLastRefreshMilliseconds(P1: JBundle): Int64; cdecl;//Deprecated
    {class} function getPermissions(P1: JBundle): JSet; cdecl;//Deprecated
    {class} function getSource(P1: JBundle): JAccessTokenSource; cdecl;//Deprecated
    {class} function getToken(P1: JBundle): JString; cdecl;//Deprecated
    {class} function hasTokenInformation(P1: JBundle): Boolean; cdecl;//Deprecated
    {class} function init(P1: JContext): JLegacyTokenHelper; cdecl; overload;//Deprecated
    {class} function init(P1: JContext; P2: JString): JLegacyTokenHelper; cdecl; overload;//Deprecated
    {class} procedure putApplicationId(P1: JBundle; P2: JString); cdecl;//Deprecated
    {class} procedure putDate(P1: JBundle; P2: JString; P3: JDate); cdecl;//Deprecated
    {class} procedure putDeclinedPermissions(P1: JBundle; P2: JCollection); cdecl;//Deprecated
    {class} procedure putExpirationDate(P1: JBundle; P2: JDate); cdecl;//Deprecated
    {class} procedure putExpirationMilliseconds(P1: JBundle; P2: Int64); cdecl;//Deprecated
    {class} procedure putLastRefreshDate(P1: JBundle; P2: JDate); cdecl;//Deprecated
    {class} procedure putLastRefreshMilliseconds(P1: JBundle; P2: Int64); cdecl;//Deprecated
    {class} procedure putPermissions(P1: JBundle; P2: JCollection); cdecl;//Deprecated
    {class} procedure putSource(P1: JBundle; P2: JAccessTokenSource); cdecl;//Deprecated
    {class} procedure putToken(P1: JBundle; P2: JString); cdecl;//Deprecated
    {class} property APPLICATION_ID_KEY: JString read _GetAPPLICATION_ID_KEY;
    {class} property DECLINED_PERMISSIONS_KEY: JString read _GetDECLINED_PERMISSIONS_KEY;
    {class} property DEFAULT_CACHE_KEY: JString read _GetDEFAULT_CACHE_KEY;
    {class} property EXPIRATION_DATE_KEY: JString read _GetEXPIRATION_DATE_KEY;
    {class} property LAST_REFRESH_DATE_KEY: JString read _GetLAST_REFRESH_DATE_KEY;
    {class} property PERMISSIONS_KEY: JString read _GetPERMISSIONS_KEY;
    {class} property TOKEN_KEY: JString read _GetTOKEN_KEY;
    {class} property TOKEN_SOURCE_KEY: JString read _GetTOKEN_SOURCE_KEY;
  end;

  [JavaSignature('com/facebook/LegacyTokenHelper')]
  JLegacyTokenHelper = interface(JObject)
    ['{F61D1F44-504B-489D-90D4-6115F086E15B}']
    procedure clear; cdecl;//Deprecated
    function load: JBundle; cdecl;//Deprecated
    procedure save(P1: JBundle); cdecl;//Deprecated
  end;
  TJLegacyTokenHelper = class(TJavaGenericImport<JLegacyTokenHelperClass, JLegacyTokenHelper>) end;

  JLoggingBehaviorClass = interface(JEnumClass)
    ['{ACD6A804-AF98-47A3-8AEE-0E7804010CE1}']
    {class} function _GetAPP_EVENTS: JLoggingBehavior; cdecl;
    {class} function _GetCACHE: JLoggingBehavior; cdecl;
    {class} function _GetDEVELOPER_ERRORS: JLoggingBehavior; cdecl;
    {class} function _GetGRAPH_API_DEBUG_INFO: JLoggingBehavior; cdecl;
    {class} function _GetGRAPH_API_DEBUG_WARNING: JLoggingBehavior; cdecl;
    {class} function _GetINCLUDE_ACCESS_TOKENS: JLoggingBehavior; cdecl;
    {class} function _GetINCLUDE_RAW_RESPONSES: JLoggingBehavior; cdecl;
    {class} function _GetREQUESTS: JLoggingBehavior; cdecl;
    {class} function valueOf(P1: JString): JLoggingBehavior; cdecl;//Deprecated
    {class} function values: TJavaObjectArray<JLoggingBehavior>; cdecl;//Deprecated
    {class} property APP_EVENTS: JLoggingBehavior read _GetAPP_EVENTS;
    {class} property CACHE: JLoggingBehavior read _GetCACHE;
    {class} property DEVELOPER_ERRORS: JLoggingBehavior read _GetDEVELOPER_ERRORS;
    {class} property GRAPH_API_DEBUG_INFO: JLoggingBehavior read _GetGRAPH_API_DEBUG_INFO;
    {class} property GRAPH_API_DEBUG_WARNING: JLoggingBehavior read _GetGRAPH_API_DEBUG_WARNING;
    {class} property INCLUDE_ACCESS_TOKENS: JLoggingBehavior read _GetINCLUDE_ACCESS_TOKENS;
    {class} property INCLUDE_RAW_RESPONSES: JLoggingBehavior read _GetINCLUDE_RAW_RESPONSES;
    {class} property REQUESTS: JLoggingBehavior read _GetREQUESTS;
  end;

  [JavaSignature('com/facebook/LoggingBehavior')]
  JLoggingBehavior = interface(JEnum)
    ['{FE3F3C26-3E82-4E96-A4A1-6999FCD3C7BF}']
  end;
  TJLoggingBehavior = class(TJavaGenericImport<JLoggingBehaviorClass, JLoggingBehavior>) end;

  JProfileClass = interface(JParcelableClass)
    ['{410EF64F-70A5-4B8C-94D4-BDC6CFA2B462}']
    {class} function _GetCREATOR: JParcelable_Creator; cdecl;
    {class} procedure fetchProfileForCurrentAccessToken; cdecl;//Deprecated
    {class} function getCurrentProfile: JProfile; cdecl;//Deprecated
    {class} function init(P1: JJSONObject): JProfile; cdecl; overload;//Deprecated
    {class} function init(P1: JParcel; P2: JProfile_1): JProfile; cdecl; overload;//Deprecated
    {class} function init(P1: JString; P2: JString; P3: JString; P4: JString; P5: JString; P6: Jnet_Uri): JProfile; cdecl; overload;//Deprecated
    {class} procedure setCurrentProfile(P1: JProfile); cdecl;//Deprecated
    {class} property CREATOR: JParcelable_Creator read _GetCREATOR;
  end;

  [JavaSignature('com/facebook/Profile')]
  JProfile = interface(JParcelable)
    ['{AE9612EF-6ADF-4537-ABD4-B85718EA1A55}']
    function describeContents: Integer; cdecl;//Deprecated
    function equals(P1: JObject): Boolean; cdecl;//Deprecated
    function getFirstName: JString; cdecl;//Deprecated
    function getId: JString; cdecl;//Deprecated
    function getLastName: JString; cdecl;//Deprecated
    function getLinkUri: Jnet_Uri; cdecl;//Deprecated
    function getMiddleName: JString; cdecl;//Deprecated
    function getName: JString; cdecl;//Deprecated
    function getProfilePictureUri(P1: Integer; P2: Integer): Jnet_Uri; cdecl;//Deprecated
    function hashCode: Integer; cdecl;//Deprecated
    function toJSONObject: JJSONObject; cdecl;//Deprecated
    procedure writeToParcel(P1: JParcel; P2: Integer); cdecl;//Deprecated
  end;
  TJProfile = class(TJavaGenericImport<JProfileClass, JProfile>) end;

  JProfile_1Class = interface(JUtility_GraphMeRequestWithCacheCallbackClass)
    ['{176F27DC-4DEB-4EC4-B843-D6AA0A63D93F}']
  end;

  [JavaSignature('com/facebook/Profile$1')]
  JProfile_1 = interface(JUtility_GraphMeRequestWithCacheCallback)
    ['{3ACEA82E-AB44-488E-A5A1-D399AC76A097}']
    procedure onFailure(P1: JFacebookException); cdecl;//Deprecated
    procedure onSuccess(P1: JJSONObject); cdecl;//Deprecated
  end;
  TJProfile_1 = class(TJavaGenericImport<JProfile_1Class, JProfile_1>) end;

  JProfile_2Class = interface(JParcelable_CreatorClass)
    ['{4F77257E-A915-4DC6-B35A-140246A53886}']
  end;

  [JavaSignature('com/facebook/Profile$2')]
  JProfile_2 = interface(JParcelable_Creator)
    ['{D16FD301-0B1E-4175-98A4-8D68C6A19892}']
    function createFromParcel(P1: JParcel): JProfile; cdecl;//Deprecated
    function newArray(P1: Integer): TJavaObjectArray<JProfile>; cdecl;//Deprecated
  end;
  TJProfile_2 = class(TJavaGenericImport<JProfile_2Class, JProfile_2>) end;

  JProfileCacheClass = interface(JObjectClass)
    ['{F9ADCB45-CDE5-42C0-A59C-39F37B746DF3}']
    {class} function _GetSHARED_PREFERENCES_NAME: JString; cdecl;
    {class} function init: JProfileCache; cdecl;//Deprecated
    {class} property SHARED_PREFERENCES_NAME: JString read _GetSHARED_PREFERENCES_NAME;
  end;

  [JavaSignature('com/facebook/ProfileCache')]
  JProfileCache = interface(JObject)
    ['{414603BD-6CBD-4401-9608-13A5E2A13C22}']
    procedure clear; cdecl;//Deprecated
    function load: JProfile; cdecl;//Deprecated
    procedure save(P1: JProfile); cdecl;//Deprecated
  end;
  TJProfileCache = class(TJavaGenericImport<JProfileCacheClass, JProfileCache>) end;

  JProfileManagerClass = interface(JObjectClass)
    ['{50FE4D28-B67A-4960-9767-A5B9FBFE0429}']
    {class} function _GetEXTRA_NEW_PROFILE: JString; cdecl;
    {class} function _GetEXTRA_OLD_PROFILE: JString; cdecl;
    {class} function getInstance: JProfileManager; cdecl;//Deprecated
    {class} //function init(P1: JLocalBroadcastManager; P2: JProfileCache): JProfileManager; cdecl;//Deprecated
    {class} property EXTRA_NEW_PROFILE: JString read _GetEXTRA_NEW_PROFILE;
    {class} property EXTRA_OLD_PROFILE: JString read _GetEXTRA_OLD_PROFILE;
  end;

  [JavaSignature('com/facebook/ProfileManager')]
  JProfileManager = interface(JObject)
    ['{F0BB4D44-8D44-475A-B37C-85FFD6291035}']
    function getCurrentProfile: JProfile; cdecl;//Deprecated
    function loadCurrentProfile: Boolean; cdecl;//Deprecated
    procedure setCurrentProfile(P1: JProfile); cdecl;//Deprecated
  end;
  TJProfileManager = class(TJavaGenericImport<JProfileManagerClass, JProfileManager>) end;

  JProfileTrackerClass = interface(JObjectClass)
    ['{CAD7574B-FF91-42F5-989C-F68EFB2034AB}']
    {class} function init: JProfileTracker; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/ProfileTracker')]
  JProfileTracker = interface(JObject)
    ['{E0D9A11A-CDC6-4DE7-A7B9-88E4A2CE8179}']
    function isTracking: Boolean; cdecl;//Deprecated
    procedure startTracking; cdecl;//Deprecated
    procedure stopTracking; cdecl;//Deprecated
  end;
  TJProfileTracker = class(TJavaGenericImport<JProfileTrackerClass, JProfileTracker>) end;

  JProfileTracker_1Class = interface(JObjectClass)
    ['{4C919307-703C-473F-9FAA-3CD2DE3DB2E5}']
  end;

  [JavaSignature('com/facebook/ProfileTracker$1')]
  JProfileTracker_1 = interface(JObject)
    ['{834BEA64-0F10-4AA8-BFDB-D90B3D079EEC}']
  end;
  TJProfileTracker_1 = class(TJavaGenericImport<JProfileTracker_1Class, JProfileTracker_1>) end;

  JProfileTracker_ProfileBroadcastReceiverClass = interface(JBroadcastReceiverClass)
    ['{92A26CB2-6AEE-4B83-A84A-CFC00B59616D}']
    {class} function init(P1: JProfileTracker; P2: JProfileTracker_1): JProfileTracker_ProfileBroadcastReceiver; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/ProfileTracker$ProfileBroadcastReceiver')]
  JProfileTracker_ProfileBroadcastReceiver = interface(JBroadcastReceiver)
    ['{89B7717F-3E70-4A88-BA3C-DE513EA9D809}']
    procedure onReceive(P1: JContext; P2: JIntent); cdecl;//Deprecated
  end;
  TJProfileTracker_ProfileBroadcastReceiver = class(TJavaGenericImport<JProfileTracker_ProfileBroadcastReceiverClass, JProfileTracker_ProfileBroadcastReceiver>) end;

  JProgressNoopOutputStreamClass = interface(JOutputStreamClass)
    ['{41A29467-0D93-43C3-A50A-962ABFBB3448}']
  end;

  [JavaSignature('com/facebook/ProgressNoopOutputStream')]
  JProgressNoopOutputStream = interface(JOutputStream)
    ['{C6846308-8CF7-42B6-B65D-31DC3D77B368}']
    procedure setCurrentRequest(P1: JGraphRequest); cdecl;//Deprecated
    procedure write(P1: Integer); cdecl; overload;//Deprecated
    procedure write(P1: TJavaArray<Byte>); cdecl; overload;//Deprecated
    procedure write(P1: TJavaArray<Byte>; P2: Integer; P3: Integer); cdecl; overload;//Deprecated
  end;
  TJProgressNoopOutputStream = class(TJavaGenericImport<JProgressNoopOutputStreamClass, JProgressNoopOutputStream>) end;

  JProgressOutputStreamClass = interface(JFilterOutputStreamClass)
    ['{FE36529F-6CA2-4CB5-BF36-A4CE5160AB10}']
  end;

  [JavaSignature('com/facebook/ProgressOutputStream')]
  JProgressOutputStream = interface(JFilterOutputStream)
    ['{D66C6C70-EAFD-42C1-8628-61641BFE6EC2}']
    procedure close; cdecl;//Deprecated
    procedure setCurrentRequest(P1: JGraphRequest); cdecl;//Deprecated
    procedure write(P1: Integer); cdecl; overload;//Deprecated
    procedure write(P1: TJavaArray<Byte>); cdecl; overload;//Deprecated
    procedure write(P1: TJavaArray<Byte>; P2: Integer; P3: Integer); cdecl; overload;//Deprecated
  end;
  TJProgressOutputStream = class(TJavaGenericImport<JProgressOutputStreamClass, JProgressOutputStream>) end;

  JProgressOutputStream_1Class = interface(JRunnableClass)
    ['{D2702E3E-73D6-4A88-88E5-A8E5D1E05B60}']
    {class} function init(P1: JProgressOutputStream; P2: JGraphRequestBatch_OnProgressCallback): JProgressOutputStream_1; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/ProgressOutputStream$1')]
  JProgressOutputStream_1 = interface(JRunnable)
    ['{3744CD32-BDC3-43CE-AC7D-7331EAB1208C}']
//    function _Getthis$0: JProgressOutputStream; cdecl;
    procedure run; cdecl;//Deprecated
//    property this$0: JProgressOutputStream read _Getthis$0;
  end;
  TJProgressOutputStream_1 = class(TJavaGenericImport<JProgressOutputStream_1Class, JProgressOutputStream_1>) end;

  JRequestOutputStreamClass = interface(IJavaClass)
    ['{2F62B6BE-E62F-4C82-95B0-7F67F3B6D6BA}']
  end;

  [JavaSignature('com/facebook/RequestOutputStream')]
  JRequestOutputStream = interface(IJavaInstance)
    ['{6229B1AC-9D9D-439F-B9AB-3DB271307E48}']
    procedure setCurrentRequest(P1: JGraphRequest); cdecl;//Deprecated
  end;
  TJRequestOutputStream = class(TJavaGenericImport<JRequestOutputStreamClass, JRequestOutputStream>) end;

  JRequestProgressClass = interface(JObjectClass)
    ['{901265C2-6A51-4E89-A6F8-130F73C1A513}']
  end;

  [JavaSignature('com/facebook/RequestProgress')]
  JRequestProgress = interface(JObject)
    ['{F5F8FE77-9ACD-47B0-AFD4-C0DD37F0849B}']
  end;
  TJRequestProgress = class(TJavaGenericImport<JRequestProgressClass, JRequestProgress>) end;

  JRequestProgress_1Class = interface(JRunnableClass)
    ['{4CAC40CC-E135-495B-9250-49968F942A27}']
    {class} function init(P1: JRequestProgress; P2: JGraphRequest_OnProgressCallback; P3: Int64; P4: Int64): JRequestProgress_1; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/RequestProgress$1')]
  JRequestProgress_1 = interface(JRunnable)
    ['{CC5B83CB-174E-4F1E-BFAC-9ADD04D9C87E}']
//    function _Getthis$0: JRequestProgress; cdecl;
//    function _Getval$currentCopy: Int64; cdecl;
//    function _Getval$maxProgressCopy: Int64; cdecl;
    procedure run; cdecl;//Deprecated
//    property this$0: JRequestProgress read _Getthis$0;
//    property val$currentCopy: Int64 read _Getval$currentCopy;
//    property val$maxProgressCopy: Int64 read _Getval$maxProgressCopy;
  end;
  TJRequestProgress_1 = class(TJavaGenericImport<JRequestProgress_1Class, JRequestProgress_1>) end;

  JTestUserManagerClass = interface(JObjectClass)
    ['{57D7B31C-4454-41A1-B75F-1AC670A93682}']
    {class} function init(P1: JString; P2: JString): JTestUserManager; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/TestUserManager')]
  JTestUserManager = interface(JObject)
    ['{F59C3449-2475-4F9D-8EFE-66F2554258D3}']
    function getAccessTokenForPrivateUser(P1: JList): JAccessToken; cdecl;//Deprecated
    function getAccessTokenForSharedUser(P1: JList): JAccessToken; cdecl; overload;//Deprecated
    function getAccessTokenForSharedUser(P1: JList; P2: JString): JAccessToken; cdecl; overload;//Deprecated
    function getAppAccessToken: JString; cdecl;//Deprecated
    function getTestApplicationId: JString; cdecl;//Deprecated
    function getTestApplicationSecret: JString; cdecl;//Deprecated
  end;
  TJTestUserManager = class(TJavaGenericImport<JTestUserManagerClass, JTestUserManager>) end;

  JTestUserManager_ModeClass = interface(JEnumClass)
    ['{68A781DA-B171-4CFA-8229-AC58163B8368}']
    {class} function _GetPRIVATE: JTestUserManager_Mode; cdecl;
    {class} function _GetSHARED: JTestUserManager_Mode; cdecl;
    {class} function valueOf(P1: JString): JTestUserManager_Mode; cdecl;//Deprecated
    {class} function values: TJavaObjectArray<JTestUserManager_Mode>; cdecl;//Deprecated
    {class} property PRIVATE: JTestUserManager_Mode read _GetPRIVATE;
    {class} property SHARED: JTestUserManager_Mode read _GetSHARED;
  end;

  [JavaSignature('com/facebook/TestUserManager$Mode')]
  JTestUserManager_Mode = interface(JEnum)
    ['{585F0734-7F47-4CA8-8805-1CB901C9B77A}']
  end;
  TJTestUserManager_Mode = class(TJavaGenericImport<JTestUserManager_ModeClass, JTestUserManager_Mode>) end;

  JAccessTokenAppIdPairClass = interface(JSerializableClass)
    ['{FE7DD4E8-33BA-4095-8E0C-E76EEF1CF56F}']
    {class} function init(P1: JAccessToken): JAccessTokenAppIdPair; cdecl; overload;//Deprecated
    {class} function init(P1: JString; P2: JString): JAccessTokenAppIdPair; cdecl; overload;//Deprecated
  end;

  [JavaSignature('com/facebook/appevents/AccessTokenAppIdPair')]
  JAccessTokenAppIdPair = interface(JSerializable)
    ['{D72FDBAD-CD88-4389-86D6-C20839CDE5FE}']
    function equals(P1: JObject): Boolean; cdecl;//Deprecated
    function getAccessTokenString: JString; cdecl;//Deprecated
    function getApplicationId: JString; cdecl;//Deprecated
    function hashCode: Integer; cdecl;//Deprecated
  end;
  TJAccessTokenAppIdPair = class(TJavaGenericImport<JAccessTokenAppIdPairClass, JAccessTokenAppIdPair>) end;

  JAccessTokenAppIdPair_1Class = interface(JObjectClass)
    ['{A2156B51-E994-4A3A-A2FC-D3D81C6E149F}']
  end;

  [JavaSignature('com/facebook/appevents/AccessTokenAppIdPair$1')]
  JAccessTokenAppIdPair_1 = interface(JObject)
    ['{929A8EDB-55A0-43AA-9187-42548CA7FAE5}']
  end;
  TJAccessTokenAppIdPair_1 = class(TJavaGenericImport<JAccessTokenAppIdPair_1Class, JAccessTokenAppIdPair_1>) end;

  JAccessTokenAppIdPair_SerializationProxyV1Class = interface(JSerializableClass)
    ['{3D90BEF1-DAD1-414A-A6C7-7399E4979187}']
  end;

  [JavaSignature('com/facebook/appevents/AccessTokenAppIdPair$SerializationProxyV1')]
  JAccessTokenAppIdPair_SerializationProxyV1 = interface(JSerializable)
    ['{FC69B0CB-B144-4FC7-97E8-C0370F894E06}']
  end;
  TJAccessTokenAppIdPair_SerializationProxyV1 = class(TJavaGenericImport<JAccessTokenAppIdPair_SerializationProxyV1Class, JAccessTokenAppIdPair_SerializationProxyV1>) end;

  JAppEventClass = interface(JSerializableClass)
    ['{A5471CE6-DE3F-4085-9EA1-2BE3D1C2FCD6}']
    {class} function init(P1: JString; P2: JString; P3: JDouble; P4: JBundle; P5: Boolean; P6: JUUID): JAppEvent; cdecl; overload;//Deprecated
  end;

  [JavaSignature('com/facebook/appevents/AppEvent')]
  JAppEvent = interface(JSerializable)
    ['{A0DF4F5C-66F8-42BD-A146-892D3CA516B1}']
    function getIsImplicit: Boolean; cdecl;//Deprecated
    function getJSONObject: JJSONObject; cdecl;//Deprecated
    function getName: JString; cdecl;//Deprecated
    function toString: JString; cdecl;//Deprecated
  end;
  TJAppEvent = class(TJavaGenericImport<JAppEventClass, JAppEvent>) end;

  JAppEvent_1Class = interface(JObjectClass)
    ['{19DA5DF9-DCBB-4BA6-A869-F608E530BFCE}']
  end;

  [JavaSignature('com/facebook/appevents/AppEvent$1')]
  JAppEvent_1 = interface(JObject)
    ['{246E2B75-E087-409B-B946-B9291F5ED877}']
  end;
  TJAppEvent_1 = class(TJavaGenericImport<JAppEvent_1Class, JAppEvent_1>) end;

  JAppEvent_SerializationProxyV1Class = interface(JSerializableClass)
    ['{3F95FF17-9679-438D-8583-165C24FD3804}']
  end;

  [JavaSignature('com/facebook/appevents/AppEvent$SerializationProxyV1')]
  JAppEvent_SerializationProxyV1 = interface(JSerializable)
    ['{217C901F-763E-4B76-931F-DFF5925E0935}']
  end;
  TJAppEvent_SerializationProxyV1 = class(TJavaGenericImport<JAppEvent_SerializationProxyV1Class, JAppEvent_SerializationProxyV1>) end;

  JAppEventCollectionClass = interface(JObjectClass)
    ['{C6D47421-0898-4A44-9362-DA4D4CBF1422}']
    {class} function init: JAppEventCollection; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/appevents/AppEventCollection')]
  JAppEventCollection = interface(JObject)
    ['{8334CC44-1130-4A4A-B884-1DE6651225D6}']
    procedure addEvent(P1: JAccessTokenAppIdPair; P2: JAppEvent); cdecl;//Deprecated
    procedure addPersistedEvents(P1: JPersistedEvents); cdecl;//Deprecated
    function get(P1: JAccessTokenAppIdPair): JSessionEventsState; cdecl;//Deprecated
    function getEventCount: Integer; cdecl;//Deprecated
    function keySet: JSet; cdecl;//Deprecated
  end;
  TJAppEventCollection = class(TJavaGenericImport<JAppEventCollectionClass, JAppEventCollection>) end;

  JAppEventQueueClass = interface(JObjectClass)
    ['{9D99D48B-FACB-41E5-9288-7266E1E99E8E}']
    {class} procedure add(P1: JAccessTokenAppIdPair; P2: JAppEvent); cdecl;//Deprecated
    {class} procedure flush(P1: JFlushReason); cdecl;//Deprecated
    {class} function getKeySet: JSet; cdecl;//Deprecated
    {class} procedure persistToDisk; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/appevents/AppEventQueue')]
  JAppEventQueue = interface(JObject)
    ['{A6842DA7-8DCE-4F90-B72D-E1D6A916C834}']
  end;
  TJAppEventQueue = class(TJavaGenericImport<JAppEventQueueClass, JAppEventQueue>) end;

  JAppEventQueue_1Class = interface(JRunnableClass)
    ['{B877BA2A-25C5-44A3-A6DA-84FC434A43D8}']
  end;

  [JavaSignature('com/facebook/appevents/AppEventQueue$1')]
  JAppEventQueue_1 = interface(JRunnable)
    ['{B587E465-1362-45A6-BFB3-E4D62C162201}']
    procedure run; cdecl;//Deprecated
  end;
  TJAppEventQueue_1 = class(TJavaGenericImport<JAppEventQueue_1Class, JAppEventQueue_1>) end;

  JAppEventQueue_2Class = interface(JRunnableClass)
    ['{F39A83D7-B176-435B-9F95-FF16A2957BB5}']
  end;

  [JavaSignature('com/facebook/appevents/AppEventQueue$2')]
  JAppEventQueue_2 = interface(JRunnable)
    ['{54D2841D-130E-423B-B5BB-C24CBEA10BE8}']
    procedure run; cdecl;//Deprecated
  end;
  TJAppEventQueue_2 = class(TJavaGenericImport<JAppEventQueue_2Class, JAppEventQueue_2>) end;

  JAppEventQueue_3Class = interface(JRunnableClass)
    ['{FE6E7DCF-5A96-4258-B367-92CE54276E49}']
    {class} function init(P1: JFlushReason): JAppEventQueue_3; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/appevents/AppEventQueue$3')]
  JAppEventQueue_3 = interface(JRunnable)
    ['{29A8E190-62E4-49AD-9C2A-DCBECAA09B0C}']
    procedure run; cdecl;//Deprecated
  end;
  TJAppEventQueue_3 = class(TJavaGenericImport<JAppEventQueue_3Class, JAppEventQueue_3>) end;

  JAppEventQueue_4Class = interface(JRunnableClass)
    ['{EC86F545-7AAB-4808-8088-54095207C9D2}']
    {class} function init(P1: JAccessTokenAppIdPair; P2: JAppEvent): JAppEventQueue_4; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/appevents/AppEventQueue$4')]
  JAppEventQueue_4 = interface(JRunnable)
    ['{3107BEA6-2F99-4059-8E62-DD6E2E781EF0}']
//    function _Getval$appEvent: JAppEvent; cdecl;
    procedure run; cdecl;//Deprecated
//    property val$appEvent: JAppEvent read _Getval$appEvent;
  end;
  TJAppEventQueue_4 = class(TJavaGenericImport<JAppEventQueue_4Class, JAppEventQueue_4>) end;

  JAppEventQueue_5Class = interface(JGraphRequest_CallbackClass)
    ['{DB4CA799-75E3-48E2-A198-A1BA1C9B1731}']
    {class} function init(P1: JAccessTokenAppIdPair; P2: JGraphRequest; P3: JSessionEventsState; P4: JFlushStatistics): JAppEventQueue_5; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/appevents/AppEventQueue$5')]
  JAppEventQueue_5 = interface(JGraphRequest_Callback)
    ['{FF711534-9AE9-4030-A983-BC836D03DE84}']
//    function _Getval$appEvents: JSessionEventsState; cdecl;
//    function _Getval$flushState: JFlushStatistics; cdecl;
//    function _Getval$postRequest: JGraphRequest; cdecl;
    procedure onCompleted(P1: JGraphResponse); cdecl;//Deprecated
//    property val$appEvents: JSessionEventsState read _Getval$appEvents;
//    property val$flushState: JFlushStatistics read _Getval$flushState;
//    property val$postRequest: JGraphRequest read _Getval$postRequest;
  end;
  TJAppEventQueue_5 = class(TJavaGenericImport<JAppEventQueue_5Class, JAppEventQueue_5>) end;

  JAppEventQueue_6Class = interface(JRunnableClass)
    ['{FCBFE911-C165-4EE6-8781-5E1F1F1199EB}']
    {class} function init(P1: JAccessTokenAppIdPair; P2: JSessionEventsState): JAppEventQueue_6; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/appevents/AppEventQueue$6')]
  JAppEventQueue_6 = interface(JRunnable)
    ['{346ECFFD-3386-4EC8-99F8-9859BBF299B2}']
//    function _Getval$appEvents: JSessionEventsState; cdecl;
    procedure run; cdecl;//Deprecated
//    property val$appEvents: JSessionEventsState read _Getval$appEvents;
  end;
  TJAppEventQueue_6 = class(TJavaGenericImport<JAppEventQueue_6Class, JAppEventQueue_6>) end;

  JAppEventStoreClass = interface(JObjectClass)
    ['{082ED27C-3BE9-476E-A155-EA2A78C673E4}']
    {class} procedure persistEvents(P1: JAppEventCollection); cdecl; overload;//Deprecated
    {class} procedure persistEvents(P1: JAccessTokenAppIdPair; P2: JSessionEventsState); cdecl; overload;//Deprecated
    {class} function readAndClearStore: JPersistedEvents; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/appevents/AppEventStore')]
  JAppEventStore = interface(JObject)
    ['{7AC454BB-695B-4B17-8C72-412A43A9E41B}']
  end;
  TJAppEventStore = class(TJavaGenericImport<JAppEventStoreClass, JAppEventStore>) end;

  JObjectInputStreamClass = interface(JInputStreamClass)
    ['{443A1BEF-E21F-4012-A28B-4D7735136BD3}']
    {class} function init(input: JInputStream): JObjectInputStream; cdecl;//Deprecated
    {class} function available: Integer; cdecl;
    {class} procedure close; cdecl;
    {class} function readBoolean: Boolean; cdecl;
    {class} function readByte: Byte; cdecl;
    {class} function readChar: Char; cdecl;
    {class} procedure readFully(dst: TJavaArray<Byte>); cdecl; overload;//Deprecated
    {class} procedure readFully(dst: TJavaArray<Byte>; offset: Integer; byteCount: Integer); cdecl; overload;//Deprecated
    {class} function readInt: Integer; cdecl;//Deprecated
    {class} function readShort: SmallInt; cdecl;//Deprecated
    {class} function readUTF: JString; cdecl;//Deprecated
    {class} function readUnshared: JObject; cdecl;//Deprecated
    {class} procedure registerValidation(&object: JObjectInputValidation; priority: Integer); cdecl;//Deprecated
    {class} function skipBytes(length: Integer): Integer; cdecl;//Deprecated
  end;

  [JavaSignature('java/io/ObjectInputStream')]
  JObjectInputStream = interface(JInputStream)
    ['{C1360ABB-AF58-4607-B43E-C1E1652E8FC2}']
    procedure defaultReadObject; cdecl;
    function read: Integer; cdecl; overload;
    function read(buffer: TJavaArray<Byte>; byteOffset: Integer; byteCount: Integer): Integer; cdecl; overload;
    function readDouble: Double; cdecl;//Deprecated
    function readFields: JObjectInputStream_GetField; cdecl;//Deprecated
    function readFloat: Single; cdecl;//Deprecated
    function readLine: JString; cdecl;//Deprecated
    function readLong: Int64; cdecl;//Deprecated
    function readObject: JObject; cdecl;//Deprecated
    function readUnsignedByte: Integer; cdecl;//Deprecated
    function readUnsignedShort: Integer; cdecl;//Deprecated
  end;
  TJObjectInputStream = class(TJavaGenericImport<JObjectInputStreamClass, JObjectInputStream>) end;

  JAppEventStore_MovedClassObjectInputStreamClass = interface(JObjectInputStreamClass)
    ['{F118CC32-4068-4B1B-BCE7-460771CFCD23}']
    {class} function init(P1: JInputStream): JAppEventStore_MovedClassObjectInputStream; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/appevents/AppEventStore$MovedClassObjectInputStream')]
  JAppEventStore_MovedClassObjectInputStream = interface(JObjectInputStream)
    ['{EA65723C-59BB-4CCC-B79C-02D4A5FB1B62}']
  end;
  TJAppEventStore_MovedClassObjectInputStream = class(TJavaGenericImport<JAppEventStore_MovedClassObjectInputStreamClass, JAppEventStore_MovedClassObjectInputStream>) end;

  JAppEventsConstantsClass = interface(JObjectClass)
    ['{D28599BC-9D0F-4C3F-813C-7188EBE38EE4}']
    {class} function _GetEVENT_NAME_ACHIEVED_LEVEL: JString; cdecl;
    {class} function _GetEVENT_NAME_ACTIVATED_APP: JString; cdecl;
    {class} function _GetEVENT_NAME_ADDED_PAYMENT_INFO: JString; cdecl;
    {class} function _GetEVENT_NAME_ADDED_TO_CART: JString; cdecl;
    {class} function _GetEVENT_NAME_ADDED_TO_WISHLIST: JString; cdecl;
    {class} function _GetEVENT_NAME_COMPLETED_REGISTRATION: JString; cdecl;
    {class} function _GetEVENT_NAME_COMPLETED_TUTORIAL: JString; cdecl;
    {class} function _GetEVENT_NAME_DEACTIVATED_APP: JString; cdecl;
    {class} function _GetEVENT_NAME_INITIATED_CHECKOUT: JString; cdecl;
    {class} function _GetEVENT_NAME_PURCHASED: JString; cdecl;
    {class} function _GetEVENT_NAME_RATED: JString; cdecl;
    {class} function _GetEVENT_NAME_SEARCHED: JString; cdecl;
    {class} function _GetEVENT_NAME_SESSION_INTERRUPTIONS: JString; cdecl;
    {class} function _GetEVENT_NAME_SPENT_CREDITS: JString; cdecl;
    {class} function _GetEVENT_NAME_TIME_BETWEEN_SESSIONS: JString; cdecl;
    {class} function _GetEVENT_NAME_UNLOCKED_ACHIEVEMENT: JString; cdecl;
    {class} function _GetEVENT_NAME_VIEWED_CONTENT: JString; cdecl;
    {class} function _GetEVENT_PARAM_CONTENT_ID: JString; cdecl;
    {class} function _GetEVENT_PARAM_CONTENT_TYPE: JString; cdecl;
    {class} function _GetEVENT_PARAM_CURRENCY: JString; cdecl;
    {class} function _GetEVENT_PARAM_DESCRIPTION: JString; cdecl;
    {class} function _GetEVENT_PARAM_LEVEL: JString; cdecl;
    {class} function _GetEVENT_PARAM_MAX_RATING_VALUE: JString; cdecl;
    {class} function _GetEVENT_PARAM_NUM_ITEMS: JString; cdecl;
    {class} function _GetEVENT_PARAM_PAYMENT_INFO_AVAILABLE: JString; cdecl;
    {class} function _GetEVENT_PARAM_REGISTRATION_METHOD: JString; cdecl;
    {class} function _GetEVENT_PARAM_SEARCH_STRING: JString; cdecl;
    {class} function _GetEVENT_PARAM_SOURCE_APPLICATION: JString; cdecl;
    {class} function _GetEVENT_PARAM_SUCCESS: JString; cdecl;
    {class} function _GetEVENT_PARAM_VALUE_NO: JString; cdecl;
    {class} function _GetEVENT_PARAM_VALUE_YES: JString; cdecl;
    {class} function init: JAppEventsConstants; cdecl;//Deprecated
    {class} property EVENT_NAME_ACHIEVED_LEVEL: JString read _GetEVENT_NAME_ACHIEVED_LEVEL;
    {class} property EVENT_NAME_ACTIVATED_APP: JString read _GetEVENT_NAME_ACTIVATED_APP;
    {class} property EVENT_NAME_ADDED_PAYMENT_INFO: JString read _GetEVENT_NAME_ADDED_PAYMENT_INFO;
    {class} property EVENT_NAME_ADDED_TO_CART: JString read _GetEVENT_NAME_ADDED_TO_CART;
    {class} property EVENT_NAME_ADDED_TO_WISHLIST: JString read _GetEVENT_NAME_ADDED_TO_WISHLIST;
    {class} property EVENT_NAME_COMPLETED_REGISTRATION: JString read _GetEVENT_NAME_COMPLETED_REGISTRATION;
    {class} property EVENT_NAME_COMPLETED_TUTORIAL: JString read _GetEVENT_NAME_COMPLETED_TUTORIAL;
    {class} property EVENT_NAME_DEACTIVATED_APP: JString read _GetEVENT_NAME_DEACTIVATED_APP;
    {class} property EVENT_NAME_INITIATED_CHECKOUT: JString read _GetEVENT_NAME_INITIATED_CHECKOUT;
    {class} property EVENT_NAME_PURCHASED: JString read _GetEVENT_NAME_PURCHASED;
    {class} property EVENT_NAME_RATED: JString read _GetEVENT_NAME_RATED;
    {class} property EVENT_NAME_SEARCHED: JString read _GetEVENT_NAME_SEARCHED;
    {class} property EVENT_NAME_SESSION_INTERRUPTIONS: JString read _GetEVENT_NAME_SESSION_INTERRUPTIONS;
    {class} property EVENT_NAME_SPENT_CREDITS: JString read _GetEVENT_NAME_SPENT_CREDITS;
    {class} property EVENT_NAME_TIME_BETWEEN_SESSIONS: JString read _GetEVENT_NAME_TIME_BETWEEN_SESSIONS;
    {class} property EVENT_NAME_UNLOCKED_ACHIEVEMENT: JString read _GetEVENT_NAME_UNLOCKED_ACHIEVEMENT;
    {class} property EVENT_NAME_VIEWED_CONTENT: JString read _GetEVENT_NAME_VIEWED_CONTENT;
    {class} property EVENT_PARAM_CONTENT_ID: JString read _GetEVENT_PARAM_CONTENT_ID;
    {class} property EVENT_PARAM_CONTENT_TYPE: JString read _GetEVENT_PARAM_CONTENT_TYPE;
    {class} property EVENT_PARAM_CURRENCY: JString read _GetEVENT_PARAM_CURRENCY;
    {class} property EVENT_PARAM_DESCRIPTION: JString read _GetEVENT_PARAM_DESCRIPTION;
    {class} property EVENT_PARAM_LEVEL: JString read _GetEVENT_PARAM_LEVEL;
    {class} property EVENT_PARAM_MAX_RATING_VALUE: JString read _GetEVENT_PARAM_MAX_RATING_VALUE;
    {class} property EVENT_PARAM_NUM_ITEMS: JString read _GetEVENT_PARAM_NUM_ITEMS;
    {class} property EVENT_PARAM_PAYMENT_INFO_AVAILABLE: JString read _GetEVENT_PARAM_PAYMENT_INFO_AVAILABLE;
    {class} property EVENT_PARAM_REGISTRATION_METHOD: JString read _GetEVENT_PARAM_REGISTRATION_METHOD;
    {class} property EVENT_PARAM_SEARCH_STRING: JString read _GetEVENT_PARAM_SEARCH_STRING;
    {class} property EVENT_PARAM_SOURCE_APPLICATION: JString read _GetEVENT_PARAM_SOURCE_APPLICATION;
    {class} property EVENT_PARAM_SUCCESS: JString read _GetEVENT_PARAM_SUCCESS;
    {class} property EVENT_PARAM_VALUE_NO: JString read _GetEVENT_PARAM_VALUE_NO;
    {class} property EVENT_PARAM_VALUE_YES: JString read _GetEVENT_PARAM_VALUE_YES;
  end;

  [JavaSignature('com/facebook/appevents/AppEventsConstants')]
  JAppEventsConstants = interface(JObject)
    ['{5736AD7F-691B-48E3-B120-14F1A6A54270}']
  end;
  TJAppEventsConstants = class(TJavaGenericImport<JAppEventsConstantsClass, JAppEventsConstants>) end;

  JAppEventsLoggerClass = interface(JObjectClass)
    ['{57465C89-63C4-49C1-8061-39A803E5F90C}']
    {class} function _GetACTION_APP_EVENTS_FLUSHED: JString; cdecl;
    {class} function _GetAPP_EVENTS_EXTRA_FLUSH_RESULT: JString; cdecl;
    {class} function _GetAPP_EVENTS_EXTRA_NUM_EVENTS_FLUSHED: JString; cdecl;
    {class} function _GetAPP_EVENT_PREFERENCES: JString; cdecl;
    {class} procedure activateApp(P1: JContext); cdecl; overload;//Deprecated
    {class} procedure activateApp(P1: JApplication); cdecl; overload;//Deprecated
    {class} procedure activateApp(P1: JContext; P2: JString); cdecl; overload;//Deprecated
    {class} procedure activateApp(P1: JApplication; P2: JString); cdecl; overload;//Deprecated
    {class} procedure deactivateApp(P1: JContext); cdecl; overload;//Deprecated
    {class} procedure deactivateApp(P1: JContext; P2: JString); cdecl; overload;//Deprecated
    {class} procedure eagerFlush; cdecl;//Deprecated
    {class} function getAnonymousAppDeviceGUID(P1: JContext): JString; cdecl;//Deprecated
    {class} function getApplicationContext: JContext; cdecl;//Deprecated
    {class} function getFlushBehavior: JAppEventsLogger_FlushBehavior; cdecl;//Deprecated
    {class} function getPushNotificationsRegistrationId: JString; cdecl;//Deprecated
    {class} function getSourceApplication: JString; cdecl;//Deprecated
    {class} function newLogger(P1: JContext): JAppEventsLogger; cdecl; overload;//Deprecated
    {class} function newLogger(P1: JContext; P2: JString): JAppEventsLogger; cdecl; overload;//Deprecated
    {class} function newLogger(P1: JContext; P2: JAccessToken): JAppEventsLogger; cdecl; overload;//Deprecated
    {class} function newLogger(P1: JContext; P2: JString; P3: JAccessToken): JAppEventsLogger; cdecl; overload;//Deprecated
    {class} procedure onContextStop; cdecl;//Deprecated
    {class} procedure resetSourceApplication; cdecl;//Deprecated
    {class} procedure setFlushBehavior(P1: JAppEventsLogger_FlushBehavior); cdecl;//Deprecated
    {class} procedure setPushNotificationsRegistrationId(P1: JString); cdecl;//Deprecated
    {class} procedure setSourceApplication(P1: JString; P2: Boolean); cdecl;//Deprecated
    {class} property ACTION_APP_EVENTS_FLUSHED: JString read _GetACTION_APP_EVENTS_FLUSHED;
    {class} property APP_EVENTS_EXTRA_FLUSH_RESULT: JString read _GetAPP_EVENTS_EXTRA_FLUSH_RESULT;
    {class} property APP_EVENTS_EXTRA_NUM_EVENTS_FLUSHED: JString read _GetAPP_EVENTS_EXTRA_NUM_EVENTS_FLUSHED;
    {class} property APP_EVENT_PREFERENCES: JString read _GetAPP_EVENT_PREFERENCES;
  end;

  [JavaSignature('com/facebook/appevents/AppEventsLogger')]
  JAppEventsLogger = interface(JObject)
    ['{30DAEE54-6091-4D17-B624-90D52096AF10}']
    procedure flush; cdecl;//Deprecated
    function getApplicationId: JString; cdecl;//Deprecated
    function isValidForAccessToken(P1: JAccessToken): Boolean; cdecl;//Deprecated
    procedure logEvent(P1: JString); cdecl; overload;//Deprecated
    procedure logEvent(P1: JString; P2: Double); cdecl; overload;//Deprecated
    procedure logEvent(P1: JString; P2: JBundle); cdecl; overload;//Deprecated
    procedure logEvent(P1: JString; P2: Double; P3: JBundle); cdecl; overload;//Deprecated
    procedure logPurchase(P1: JBigDecimal; P2: JCurrency); cdecl; overload;//Deprecated
    procedure logPurchase(P1: JBigDecimal; P2: JCurrency; P3: JBundle); cdecl; overload;//Deprecated
    procedure logPushNotificationOpen(P1: JBundle); cdecl; overload;//Deprecated
    procedure logPushNotificationOpen(P1: JBundle; P2: JString); cdecl; overload;//Deprecated
    procedure logSdkEvent(P1: JString; P2: JDouble; P3: JBundle); cdecl;//Deprecated
  end;
  TJAppEventsLogger = class(TJavaGenericImport<JAppEventsLoggerClass, JAppEventsLogger>) end;

  JAppEventsLogger_1Class = interface(JRunnableClass)
    ['{0260DC92-457B-4030-845A-28399DA8F0A0}']
    {class} function init(P1: JAppEventsLogger; P2: Int64; P3: JString): JAppEventsLogger_1; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/appevents/AppEventsLogger$1')]
  JAppEventsLogger_1 = interface(JRunnable)
    ['{9D32BF3C-997A-48D3-8DB9-9E818638C0A1}']
//    function _Getval$eventTime: Int64; cdecl;
//    function _Getval$sourceApplicationInfo: JString; cdecl;
    procedure run; cdecl;//Deprecated
//    property val$eventTime: Int64 read _Getval$eventTime;
//    property val$sourceApplicationInfo: JString read _Getval$sourceApplicationInfo;
  end;
  TJAppEventsLogger_1 = class(TJavaGenericImport<JAppEventsLogger_1Class, JAppEventsLogger_1>) end;

  JAppEventsLogger_2Class = interface(JRunnableClass)
    ['{6D7CF6EF-54ED-42FC-AFCB-15B95075E7BC}']
    {class} function init(P1: JAppEventsLogger; P2: Int64): JAppEventsLogger_2; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/appevents/AppEventsLogger$2')]
  JAppEventsLogger_2 = interface(JRunnable)
    ['{5B52C587-FFE8-4BE4-B2FD-A3AEFC15BF7B}']
//    function _Getval$eventTime: Int64; cdecl;
    procedure run; cdecl;//Deprecated
//    property val$eventTime: Int64 read _Getval$eventTime;
  end;
  TJAppEventsLogger_2 = class(TJavaGenericImport<JAppEventsLogger_2Class, JAppEventsLogger_2>) end;

  JAppEventsLogger_3Class = interface(JRunnableClass)
    ['{97F94824-C6FB-47CC-A5ED-EFBB19CC00DE}']
  end;

  [JavaSignature('com/facebook/appevents/AppEventsLogger$3')]
  JAppEventsLogger_3 = interface(JRunnable)
    ['{B7EDB087-2EDE-417C-9A16-28D8E341C91A}']
    procedure run; cdecl;//Deprecated
  end;
  TJAppEventsLogger_3 = class(TJavaGenericImport<JAppEventsLogger_3Class, JAppEventsLogger_3>) end;

  JAppEventsLogger_FlushBehaviorClass = interface(JEnumClass)
    ['{A39F51C1-2C34-4ACE-A436-9D0D2719AF74}']
    {class} function _GetAUTO: JAppEventsLogger_FlushBehavior; cdecl;
    {class} function _GetEXPLICIT_ONLY: JAppEventsLogger_FlushBehavior; cdecl;
    {class} function valueOf(P1: JString): JAppEventsLogger_FlushBehavior; cdecl;//Deprecated
    {class} function values: TJavaObjectArray<JAppEventsLogger_FlushBehavior>; cdecl;//Deprecated
    {class} property AUTO: JAppEventsLogger_FlushBehavior read _GetAUTO;
    {class} property EXPLICIT_ONLY: JAppEventsLogger_FlushBehavior read _GetEXPLICIT_ONLY;
  end;

  [JavaSignature('com/facebook/appevents/AppEventsLogger$FlushBehavior')]
  JAppEventsLogger_FlushBehavior = interface(JEnum)
    ['{8CBC2BC3-E0D9-4270-93A0-0C30ED0088A9}']
  end;
  TJAppEventsLogger_FlushBehavior = class(TJavaGenericImport<JAppEventsLogger_FlushBehaviorClass, JAppEventsLogger_FlushBehavior>) end;

  JAppEventsLogger_PersistedAppSessionInfoClass = interface(JObjectClass)
    ['{AF647587-9A0B-4597-A4A1-A6D1F23EFE66}']
  end;

  [JavaSignature('com/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo')]
  JAppEventsLogger_PersistedAppSessionInfo = interface(JObject)
    ['{0354E5B9-6AE7-4770-93A1-6E9BFD2E6A6B}']
  end;
  TJAppEventsLogger_PersistedAppSessionInfo = class(TJavaGenericImport<JAppEventsLogger_PersistedAppSessionInfoClass, JAppEventsLogger_PersistedAppSessionInfo>) end;

  JPersistedAppSessionInfo_1Class = interface(JRunnableClass)
    ['{AE9AEED2-0322-4FAF-9921-87B72F2E60CC}']
  end;

  [JavaSignature('com/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo$1')]
  JPersistedAppSessionInfo_1 = interface(JRunnable)
    ['{FDA2DBBF-118B-4F37-A3F0-8D200E9EDCC4}']
    procedure run; cdecl;//Deprecated
  end;
  TJPersistedAppSessionInfo_1 = class(TJavaGenericImport<JPersistedAppSessionInfo_1Class, JPersistedAppSessionInfo_1>) end;

  JFacebookTimeSpentDataClass = interface(JSerializableClass)
    ['{030B3747-7104-4788-8692-E683CFC8FF53}']
  end;

  [JavaSignature('com/facebook/appevents/FacebookTimeSpentData')]
  JFacebookTimeSpentData = interface(JSerializable)
    ['{D117745A-9700-4E1F-9710-787A3CB943F2}']
  end;
  TJFacebookTimeSpentData = class(TJavaGenericImport<JFacebookTimeSpentDataClass, JFacebookTimeSpentData>) end;

  JFacebookTimeSpentData_1Class = interface(JObjectClass)
    ['{D55A963F-1B11-4F80-BDFA-EF6F6ADE1F8C}']
  end;

  [JavaSignature('com/facebook/appevents/FacebookTimeSpentData$1')]
  JFacebookTimeSpentData_1 = interface(JObject)
    ['{6AA5A41D-22C2-4134-9FE6-664C05EF7370}']
  end;
  TJFacebookTimeSpentData_1 = class(TJavaGenericImport<JFacebookTimeSpentData_1Class, JFacebookTimeSpentData_1>) end;

  JFacebookTimeSpentData_SerializationProxyV1Class = interface(JSerializableClass)
    ['{FBE61FC6-3047-482F-B9F1-23D50C450377}']
  end;

  [JavaSignature('com/facebook/appevents/FacebookTimeSpentData$SerializationProxyV1')]
  JFacebookTimeSpentData_SerializationProxyV1 = interface(JSerializable)
    ['{E3F65AC4-0604-4D44-BE69-05F10EB86422}']
  end;
  TJFacebookTimeSpentData_SerializationProxyV1 = class(TJavaGenericImport<JFacebookTimeSpentData_SerializationProxyV1Class, JFacebookTimeSpentData_SerializationProxyV1>) end;

  JFacebookTimeSpentData_SerializationProxyV2Class = interface(JSerializableClass)
    ['{7616C8B3-7E69-4463-B5F5-27FBACD81584}']
  end;

  [JavaSignature('com/facebook/appevents/FacebookTimeSpentData$SerializationProxyV2')]
  JFacebookTimeSpentData_SerializationProxyV2 = interface(JSerializable)
    ['{8BC41B5E-319F-4D46-91CB-26E7FEDD901A}']
  end;
  TJFacebookTimeSpentData_SerializationProxyV2 = class(TJavaGenericImport<JFacebookTimeSpentData_SerializationProxyV2Class, JFacebookTimeSpentData_SerializationProxyV2>) end;

  JFlushReasonClass = interface(JEnumClass)
    ['{B3E7A2F9-A99E-4C46-A111-BD57FB66B081}']
    {class} function _GetEAGER_FLUSHING_EVENT: JFlushReason; cdecl;
    {class} function _GetEVENT_THRESHOLD: JFlushReason; cdecl;
    {class} function _GetEXPLICIT: JFlushReason; cdecl;
    {class} function _GetPERSISTED_EVENTS: JFlushReason; cdecl;
    {class} function _GetSESSION_CHANGE: JFlushReason; cdecl;
    {class} function _GetTIMER: JFlushReason; cdecl;
    {class} function valueOf(P1: JString): JFlushReason; cdecl;//Deprecated
    {class} function values: TJavaObjectArray<JFlushReason>; cdecl;//Deprecated
    {class} property EAGER_FLUSHING_EVENT: JFlushReason read _GetEAGER_FLUSHING_EVENT;
    {class} property EVENT_THRESHOLD: JFlushReason read _GetEVENT_THRESHOLD;
    {class} property EXPLICIT: JFlushReason read _GetEXPLICIT;
    {class} property PERSISTED_EVENTS: JFlushReason read _GetPERSISTED_EVENTS;
    {class} property SESSION_CHANGE: JFlushReason read _GetSESSION_CHANGE;
    {class} property TIMER: JFlushReason read _GetTIMER;
  end;

  [JavaSignature('com/facebook/appevents/FlushReason')]
  JFlushReason = interface(JEnum)
    ['{931C438A-E774-4CA8-A8EC-35B5885D2D7C}']
  end;
  TJFlushReason = class(TJavaGenericImport<JFlushReasonClass, JFlushReason>) end;

  JFlushResultClass = interface(JEnumClass)
    ['{B0EBA3D1-17C3-44BB-9370-6A6C8CE3161B}']
    {class} function _GetNO_CONNECTIVITY: JFlushResult; cdecl;
    {class} function _GetSERVER_ERROR: JFlushResult; cdecl;
    {class} function _GetSUCCESS: JFlushResult; cdecl;
    {class} function _GetUNKNOWN_ERROR: JFlushResult; cdecl;
    {class} function valueOf(P1: JString): JFlushResult; cdecl;//Deprecated
    {class} function values: TJavaObjectArray<JFlushResult>; cdecl;//Deprecated
    {class} property NO_CONNECTIVITY: JFlushResult read _GetNO_CONNECTIVITY;
    {class} property SERVER_ERROR: JFlushResult read _GetSERVER_ERROR;
    {class} property SUCCESS: JFlushResult read _GetSUCCESS;
    {class} property UNKNOWN_ERROR: JFlushResult read _GetUNKNOWN_ERROR;
  end;

  [JavaSignature('com/facebook/appevents/FlushResult')]
  JFlushResult = interface(JEnum)
    ['{4537F5E0-B75A-4DE9-93EC-9DF098CEA96B}']
  end;
  TJFlushResult = class(TJavaGenericImport<JFlushResultClass, JFlushResult>) end;

  JFlushStatisticsClass = interface(JObjectClass)
    ['{489B713E-EB43-48DF-B278-706C9B385799}']
    {class} function init: JFlushStatistics; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/appevents/FlushStatistics')]
  JFlushStatistics = interface(JObject)
    ['{972A3B26-B4C5-4538-916C-3368F360B4EF}']
    function _GetnumEvents: Integer; cdecl;
    procedure _SetnumEvents(Value: Integer); cdecl;
    function _Getresult: JFlushResult; cdecl;
    procedure _Setresult(Value: JFlushResult); cdecl;
    property numEvents: Integer read _GetnumEvents write _SetnumEvents;
    property result: JFlushResult read _Getresult write _Setresult;
  end;
  TJFlushStatistics = class(TJavaGenericImport<JFlushStatisticsClass, JFlushStatistics>) end;

  JPersistedEventsClass = interface(JHashMapClass)
    ['{E9047E36-11EE-4057-8BF0-09798CDC3153}']
    {class} function init: JPersistedEvents; cdecl; overload;//Deprecated
    {class} function init(P1: JHashMap): JPersistedEvents; cdecl; overload;//Deprecated
  end;

  [JavaSignature('com/facebook/appevents/PersistedEvents')]
  JPersistedEvents = interface(JHashMap)
    ['{94047FBA-9E3F-445A-8ACC-9277901B44C4}']
  end;
  TJPersistedEvents = class(TJavaGenericImport<JPersistedEventsClass, JPersistedEvents>) end;

  JSessionEventsStateClass = interface(JObjectClass)
    ['{09796A9A-7479-44E7-918A-836B3BEBA927}']
    {class} function init(P1: JAttributionIdentifiers; P2: JString): JSessionEventsState; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/appevents/SessionEventsState')]
  JSessionEventsState = interface(JObject)
    ['{2A060A97-EF8C-4DF0-BDFA-9A3D6D2F2E68}']
    procedure accumulatePersistedEvents(P1: JList); cdecl;//Deprecated
    procedure addEvent(P1: JAppEvent); cdecl;//Deprecated
    procedure clearInFlightAndStats(P1: Boolean); cdecl;//Deprecated
    function getAccumulatedEventCount: Integer; cdecl;//Deprecated
    function getEventsToPersist: JList; cdecl;//Deprecated
    function populateRequest(P1: JGraphRequest; P2: JContext; P3: Boolean; P4: Boolean): Integer; cdecl;//Deprecated
  end;
  TJSessionEventsState = class(TJavaGenericImport<JSessionEventsStateClass, JSessionEventsState>) end;

  JActivityLifecycleTrackerClass = interface(JObjectClass)
    ['{9F756316-EFC5-4ED3-8785-630E336095F9}']
    {class} function getCurrentSessionGuid: JUUID; cdecl;//Deprecated
    {class} function init: JActivityLifecycleTracker; cdecl;//Deprecated
    {class} function isTracking: Boolean; cdecl;//Deprecated
    {class} procedure onActivityCreated(P1: JActivity); cdecl;//Deprecated
    {class} procedure onActivityResumed(P1: JActivity); cdecl;//Deprecated
    {class} procedure startTracking(P1: JApplication; P2: JString); cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/appevents/internal/ActivityLifecycleTracker')]
  JActivityLifecycleTracker = interface(JObject)
    ['{DDA1CB5C-E545-4E73-8F49-CC6294D45C2D}']
  end;
  TJActivityLifecycleTracker = class(TJavaGenericImport<JActivityLifecycleTrackerClass, JActivityLifecycleTracker>) end;

  JActivityLifecycleTracker_1Class = interface(JApplication_ActivityLifecycleCallbacksClass)
    ['{035D3625-0AAB-45DD-AF26-82D57C8BAE83}']
  end;

  [JavaSignature('com/facebook/appevents/internal/ActivityLifecycleTracker$1')]
  JActivityLifecycleTracker_1 = interface(JApplication_ActivityLifecycleCallbacks)
    ['{A31A9357-A133-4DB6-9173-D4EB71102976}']
    procedure onActivityCreated(P1: JActivity; P2: JBundle); cdecl;//Deprecated
    procedure onActivityDestroyed(P1: JActivity); cdecl;//Deprecated
    procedure onActivityPaused(P1: JActivity); cdecl;//Deprecated
    procedure onActivityResumed(P1: JActivity); cdecl;//Deprecated
    procedure onActivitySaveInstanceState(P1: JActivity; P2: JBundle); cdecl;//Deprecated
    procedure onActivityStarted(P1: JActivity); cdecl;//Deprecated
    procedure onActivityStopped(P1: JActivity); cdecl;//Deprecated
  end;
  TJActivityLifecycleTracker_1 = class(TJavaGenericImport<JActivityLifecycleTracker_1Class, JActivityLifecycleTracker_1>) end;

  JActivityLifecycleTracker_2Class = interface(JRunnableClass)
    ['{089FCA4E-A118-4755-9F42-2AE050EDFEAB}']
    {class} function init(P1: JActivity; P2: Int64): JActivityLifecycleTracker_2; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/appevents/internal/ActivityLifecycleTracker$2')]
  JActivityLifecycleTracker_2 = interface(JRunnable)
    ['{708E9BCD-78C0-4028-9DC7-1783E20C1744}']
//    function _Getval$currentTime: Int64; cdecl;
    procedure run; cdecl;//Deprecated
//    property val$currentTime: Int64 read _Getval$currentTime;
  end;
  TJActivityLifecycleTracker_2 = class(TJavaGenericImport<JActivityLifecycleTracker_2Class, JActivityLifecycleTracker_2>) end;

  JActivityLifecycleTracker_3Class = interface(JRunnableClass)
    ['{3AC456AF-0496-4300-B911-51ED49838B9D}']
    {class} function init(P1: JActivity; P2: Int64): JActivityLifecycleTracker_3; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/appevents/internal/ActivityLifecycleTracker$3')]
  JActivityLifecycleTracker_3 = interface(JRunnable)
    ['{1624826A-4791-44B8-BBCA-136C7D39BED1}']
//    function _Getval$currentTime: Int64; cdecl;
    procedure run; cdecl;//Deprecated
//    property val$currentTime: Int64 read _Getval$currentTime;
  end;
  TJActivityLifecycleTracker_3 = class(TJavaGenericImport<JActivityLifecycleTracker_3Class, JActivityLifecycleTracker_3>) end;

  JActivityLifecycleTracker_4Class = interface(JRunnableClass)
    ['{95800EE6-1A04-4FC7-970D-759065E18377}']
    {class} function init(P1: Int64; P2: JActivity): JActivityLifecycleTracker_4; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/appevents/internal/ActivityLifecycleTracker$4')]
  JActivityLifecycleTracker_4 = interface(JRunnable)
    ['{FFD05B50-433C-4C01-ADDF-10176C119226}']
//    function _Getval$activity: JActivity; cdecl;
    procedure run; cdecl;//Deprecated
//    property val$activity: JActivity read _Getval$activity;
  end;
  TJActivityLifecycleTracker_4 = class(TJavaGenericImport<JActivityLifecycleTracker_4Class, JActivityLifecycleTracker_4>) end;

  J4_1Class = interface(JRunnableClass)
    ['{015B8B41-CA2D-44C0-9DDF-59BD09438554}']
    {class} function init(P1: JActivityLifecycleTracker_4): J4_1; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/appevents/internal/ActivityLifecycleTracker$4$1')]
  J4_1 = interface(JRunnable)
    ['{9A643C51-155E-4161-B9FF-FD245B8A64D3}']
    procedure run; cdecl;//Deprecated
  end;
  TJ4_1 = class(TJavaGenericImport<J4_1Class, J4_1>) end;

  Jinternal_ConstantsClass = interface(JObjectClass)
    ['{22B04674-9135-4D9A-AE85-E3F7ED5B6478}']
    {class} function _GetLOG_TIME_APP_EVENT_KEY: JString; cdecl;
    {class} function getDefaultAppEventsSessionTimeoutInSeconds: Integer; cdecl;//Deprecated
    {class} function init: Jinternal_Constants; cdecl;//Deprecated
    {class} property LOG_TIME_APP_EVENT_KEY: JString read _GetLOG_TIME_APP_EVENT_KEY;
  end;

  [JavaSignature('com/facebook/appevents/internal/Constants')]
  Jinternal_Constants = interface(JObject)
    ['{1E40AE24-B30C-4143-89D6-313653B1AD45}']
  end;
  TJinternal_Constants = class(TJavaGenericImport<Jinternal_ConstantsClass, Jinternal_Constants>) end;

  JSessionInfoClass = interface(JObjectClass)
    ['{B30E7A69-ED21-4E8B-924E-27DEA850B0DF}']
    {class} procedure clearSavedSessionFromDisk; cdecl;//Deprecated
    {class} function getStoredSessionInfo: JSessionInfo; cdecl;//Deprecated
    {class} function init(P1: JLong; P2: JLong): JSessionInfo; cdecl; overload;//Deprecated
    {class} function init(P1: JLong; P2: JLong; P3: JUUID): JSessionInfo; cdecl; overload;//Deprecated
  end;

  [JavaSignature('com/facebook/appevents/internal/SessionInfo')]
  JSessionInfo = interface(JObject)
    ['{182BAA1C-88B4-4DD7-9E4C-B80076E58017}']
    function getDiskRestoreTime: Int64; cdecl;//Deprecated
    function getInterruptionCount: Integer; cdecl;//Deprecated
    function getSessionId: JUUID; cdecl;//Deprecated
    function getSessionLastEventTime: JLong; cdecl;//Deprecated
    function getSessionLength: Int64; cdecl;//Deprecated
    function getSessionStartTime: JLong; cdecl;//Deprecated
    function getSourceApplicationInfo: JSourceApplicationInfo; cdecl;//Deprecated
    procedure incrementInterruptionCount; cdecl;//Deprecated
    procedure setSessionLastEventTime(P1: JLong); cdecl;//Deprecated
    procedure setSessionStartTime(P1: JLong); cdecl;//Deprecated
    procedure setSourceApplicationInfo(P1: JSourceApplicationInfo); cdecl;//Deprecated
    procedure writeSessionToDisk; cdecl;//Deprecated
  end;
  TJSessionInfo = class(TJavaGenericImport<JSessionInfoClass, JSessionInfo>) end;

  JSessionLoggerClass = interface(JObjectClass)
    ['{CDB6DA47-ACB9-445D-976E-DFE81CBEA79B}']
    {class} procedure logActivateApp(P1: JActivity; P2: JSourceApplicationInfo; P3: JString); cdecl;//Deprecated
    {class} procedure logDeactivateApp(P1: JActivity; P2: JSessionInfo; P3: JString); cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/appevents/internal/SessionLogger')]
  JSessionLogger = interface(JObject)
    ['{4B7D52F7-388A-44FE-8D6B-1E963D140FB1}']
  end;
  TJSessionLogger = class(TJavaGenericImport<JSessionLoggerClass, JSessionLogger>) end;

  JSourceApplicationInfoClass = interface(JObjectClass)
    ['{7D47C5A4-6147-49DF-9CF1-E1C6191B79C1}']
    {class} procedure clearSavedSourceApplicationInfoFromDisk; cdecl;//Deprecated
    {class} function getStoredSourceApplicatioInfo: JSourceApplicationInfo; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/appevents/internal/SourceApplicationInfo')]
  JSourceApplicationInfo = interface(JObject)
    ['{31667C8B-CA0A-473A-8279-BCB422C45FC9}']
    function getCallingApplicationPackage: JString; cdecl;//Deprecated
    function isOpenedByApplink: Boolean; cdecl;//Deprecated
    function toString: JString; cdecl;//Deprecated
    procedure writeSourceApplicationInfoToDisk; cdecl;//Deprecated
  end;
  TJSourceApplicationInfo = class(TJavaGenericImport<JSourceApplicationInfoClass, JSourceApplicationInfo>) end;

  JSourceApplicationInfo_1Class = interface(JObjectClass)
    ['{BA4FEDC9-961D-4695-93EB-94DEDE055C7A}']
  end;

  [JavaSignature('com/facebook/appevents/internal/SourceApplicationInfo$1')]
  JSourceApplicationInfo_1 = interface(JObject)
    ['{B4538538-BDD2-4AC5-8A84-4C02AA240DEC}']
  end;
  TJSourceApplicationInfo_1 = class(TJavaGenericImport<JSourceApplicationInfo_1Class, JSourceApplicationInfo_1>) end;

  JSourceApplicationInfo_FactoryClass = interface(JObjectClass)
    ['{28868D23-F84F-4481-9C27-DD5D816F0CD6}']
    {class} function create(P1: JActivity): JSourceApplicationInfo; cdecl;//Deprecated
    {class} function init: JSourceApplicationInfo_Factory; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/appevents/internal/SourceApplicationInfo$Factory')]
  JSourceApplicationInfo_Factory = interface(JObject)
    ['{6585616F-F6DB-4662-886F-05BAC1EBB7AC}']
  end;
  TJSourceApplicationInfo_Factory = class(TJavaGenericImport<JSourceApplicationInfo_FactoryClass, JSourceApplicationInfo_Factory>) end;

  JAppLinkDataClass = interface(JObjectClass)
    ['{A3788A9A-608B-48F5-9454-910282444004}']
    {class} function _GetARGUMENTS_EXTRAS_KEY: JString; cdecl;
    {class} function _GetARGUMENTS_NATIVE_CLASS_KEY: JString; cdecl;
    {class} function _GetARGUMENTS_NATIVE_URL: JString; cdecl;
    {class} function _GetARGUMENTS_REFERER_DATA_KEY: JString; cdecl;
    {class} function _GetARGUMENTS_TAPTIME_KEY: JString; cdecl;
    {class} function _GetBUNDLE_APPLINK_ARGS_KEY: JString; cdecl;
    {class} function createFromActivity(P1: JActivity): JAppLinkData; cdecl;//Deprecated
    {class} function createFromAlApplinkData(P1: JIntent): JAppLinkData; cdecl;//Deprecated
    {class} procedure fetchDeferredAppLinkData(P1: JContext; P2: JAppLinkData_CompletionHandler); cdecl; overload;//Deprecated
    {class} procedure fetchDeferredAppLinkData(P1: JContext; P2: JString; P3: JAppLinkData_CompletionHandler); cdecl; overload;//Deprecated
    {class} property ARGUMENTS_EXTRAS_KEY: JString read _GetARGUMENTS_EXTRAS_KEY;
    {class} property ARGUMENTS_NATIVE_CLASS_KEY: JString read _GetARGUMENTS_NATIVE_CLASS_KEY;
    {class} property ARGUMENTS_NATIVE_URL: JString read _GetARGUMENTS_NATIVE_URL;
    {class} property ARGUMENTS_REFERER_DATA_KEY: JString read _GetARGUMENTS_REFERER_DATA_KEY;
    {class} property ARGUMENTS_TAPTIME_KEY: JString read _GetARGUMENTS_TAPTIME_KEY;
    {class} property BUNDLE_APPLINK_ARGS_KEY: JString read _GetBUNDLE_APPLINK_ARGS_KEY;
  end;

  [JavaSignature('com/facebook/applinks/AppLinkData')]
  JAppLinkData = interface(JObject)
    ['{B932EAFE-829F-49E8-942C-217E11807860}']
    function getArgumentBundle: JBundle; cdecl;//Deprecated
    function getPromotionCode: JString; cdecl;//Deprecated
    function getRef: JString; cdecl;//Deprecated
    function getRefererData: JBundle; cdecl;//Deprecated
    function getTargetUri: Jnet_Uri; cdecl;//Deprecated
  end;
  TJAppLinkData = class(TJavaGenericImport<JAppLinkDataClass, JAppLinkData>) end;

  JAppLinkData_1Class = interface(JRunnableClass)
    ['{6E9D4EC1-E8D5-43FB-87D3-1517F05C8308}']
    {class} function init(P1: JContext; P2: JString; P3: JAppLinkData_CompletionHandler): JAppLinkData_1; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/applinks/AppLinkData$1')]
  JAppLinkData_1 = interface(JRunnable)
    ['{CA50A1FB-0A2E-4886-BEB5-18AFC2AA64D4}']
//    function _Getval$applicationIdCopy: JString; cdecl;
//    function _Getval$completionHandler: JAppLinkData_CompletionHandler; cdecl;
    procedure run; cdecl;//Deprecated
//    property val$applicationIdCopy: JString read _Getval$applicationIdCopy;
//    property val$completionHandler: JAppLinkData_CompletionHandler read _Getval$completionHandler;
  end;
  TJAppLinkData_1 = class(TJavaGenericImport<JAppLinkData_1Class, JAppLinkData_1>) end;

  JAppLinkData_CompletionHandlerClass = interface(IJavaClass)
    ['{5DFF02D4-CD7F-4D71-8A1C-3FE1C2F502ED}']
  end;

  [JavaSignature('com/facebook/applinks/AppLinkData$CompletionHandler')]
  JAppLinkData_CompletionHandler = interface(IJavaInstance)
    ['{CBA86AD9-040E-4572-9631-4B4E71DC24C6}']
    procedure onDeferredAppLinkDataFetched(P1: JAppLinkData); cdecl;//Deprecated
  end;
  TJAppLinkData_CompletionHandler = class(TJavaGenericImport<JAppLinkData_CompletionHandlerClass, JAppLinkData_CompletionHandler>) end;

  // com.facebook.applinks.FacebookAppLinkResolver
  // com.facebook.applinks.FacebookAppLinkResolver$1
  JFacebookAppLinkResolver_2Class = interface(JGraphRequest_CallbackClass)
    ['{9E056819-42C8-4505-A4A5-76A5A0CB471C}']
    {class} //function init(P1: JFacebookAppLinkResolver; P2: JTask_TaskCompletionSource; P3: JMap; P4: JHashSet): JFacebookAppLinkResolver_2; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/applinks/FacebookAppLinkResolver$2')]
  JFacebookAppLinkResolver_2 = interface(JGraphRequest_Callback)
    ['{F22DB183-7B7A-441F-BE0C-5F42ED2A13D3}']
    //function _Getthis$0: JFacebookAppLinkResolver; cdecl;
//    function _Getval$appLinkResults: JMap; cdecl;
//    function _Getval$urisToRequest: JHashSet; cdecl;
    procedure onCompleted(P1: JGraphResponse); cdecl;//Deprecated
    //property this$0: JFacebookAppLinkResolver read _Getthis$0;
//    property val$appLinkResults: JMap read _Getval$appLinkResults;
//    property val$urisToRequest: JHashSet read _Getval$urisToRequest;
  end;
  TJFacebookAppLinkResolver_2 = class(TJavaGenericImport<JFacebookAppLinkResolver_2Class, JFacebookAppLinkResolver_2>) end;

  JAnalyticsEventsClass = interface(JObjectClass)
    ['{02DB7392-C024-4899-A963-63C159FC7814}']
    {class} function _GetEVENT_DEVICE_SHARE_BUTTON_CREATE: JString; cdecl;
    {class} function _GetEVENT_DEVICE_SHARE_BUTTON_DID_TAP: JString; cdecl;
    {class} function _GetEVENT_FRIEND_PICKER_USAGE: JString; cdecl;
    {class} function _GetEVENT_LIKE_BUTTON_CREATE: JString; cdecl;
    {class} function _GetEVENT_LIKE_BUTTON_DID_TAP: JString; cdecl;
    {class} function _GetEVENT_LIKE_VIEW_CANNOT_PRESENT_DIALOG: JString; cdecl;
    {class} function _GetEVENT_LIKE_VIEW_DIALOG_DID_SUCCEED: JString; cdecl;
    {class} function _GetEVENT_LIKE_VIEW_DID_LIKE: JString; cdecl;
    {class} function _GetEVENT_LIKE_VIEW_DID_PRESENT_DIALOG: JString; cdecl;
    {class} function _GetEVENT_LIKE_VIEW_DID_PRESENT_FALLBACK: JString; cdecl;
    {class} function _GetEVENT_LIKE_VIEW_DID_UNDO_QUICKLY: JString; cdecl;
    {class} function _GetEVENT_LIKE_VIEW_DID_UNLIKE: JString; cdecl;
    {class} function _GetEVENT_LIKE_VIEW_ERROR: JString; cdecl;
    {class} function _GetEVENT_LOGIN_BUTTON_CREATE: JString; cdecl;
    {class} function _GetEVENT_LOGIN_BUTTON_DID_TAP: JString; cdecl;
    {class} function _GetEVENT_LOGIN_VIEW_USAGE: JString; cdecl;
    {class} function _GetEVENT_NATIVE_DIALOG_COMPLETE: JString; cdecl;
    {class} function _GetEVENT_NATIVE_DIALOG_START: JString; cdecl;
    {class} function _GetEVENT_NATIVE_DIALOG_TYPE_LIKE: JString; cdecl;
    {class} function _GetEVENT_NATIVE_DIALOG_TYPE_MESSAGE: JString; cdecl;
    {class} function _GetEVENT_NATIVE_DIALOG_TYPE_OG_MESSAGE: JString; cdecl;
    {class} function _GetEVENT_NATIVE_DIALOG_TYPE_OG_SHARE: JString; cdecl;
    {class} function _GetEVENT_NATIVE_DIALOG_TYPE_PHOTO_MESSAGE: JString; cdecl;
    {class} function _GetEVENT_NATIVE_DIALOG_TYPE_PHOTO_SHARE: JString; cdecl;
    {class} function _GetEVENT_NATIVE_DIALOG_TYPE_SHARE: JString; cdecl;
    {class} function _GetEVENT_NATIVE_DIALOG_TYPE_VIDEO_SHARE: JString; cdecl;
    {class} function _GetEVENT_NATIVE_LOGIN_DIALOG_COMPLETE: JString; cdecl;
    {class} function _GetEVENT_NATIVE_LOGIN_DIALOG_START: JString; cdecl;
    {class} function _GetEVENT_PLACE_PICKER_USAGE: JString; cdecl;
    {class} function _GetEVENT_SEND_BUTTON_CREATE: JString; cdecl;
    {class} function _GetEVENT_SEND_BUTTON_DID_TAP: JString; cdecl;
    {class} function _GetEVENT_SHARE_BUTTON_CREATE: JString; cdecl;
    {class} function _GetEVENT_SHARE_BUTTON_DID_TAP: JString; cdecl;
    {class} function _GetEVENT_SHARE_DIALOG_SHOW: JString; cdecl;
    {class} function _GetEVENT_SHARE_RESULT: JString; cdecl;
    {class} function _GetEVENT_USER_SETTINGS_USAGE: JString; cdecl;
    {class} function _GetEVENT_WEB_LOGIN_COMPLETE: JString; cdecl;
    {class} function _GetPARAMETER_ACTION_ID: JString; cdecl;
    {class} function _GetPARAMETER_APP_ID: JString; cdecl;
    {class} function _GetPARAMETER_CALL_ID: JString; cdecl;
    {class} function _GetPARAMETER_DIALOG_OUTCOME: JString; cdecl;
    {class} function _GetPARAMETER_DIALOG_OUTCOME_VALUE_CANCELLED: JString; cdecl;
    {class} function _GetPARAMETER_DIALOG_OUTCOME_VALUE_COMPLETED: JString; cdecl;
    {class} function _GetPARAMETER_DIALOG_OUTCOME_VALUE_FAILED: JString; cdecl;
    {class} function _GetPARAMETER_DIALOG_OUTCOME_VALUE_UNKNOWN: JString; cdecl;
    {class} function _GetPARAMETER_LIKE_VIEW_AUXILIARY_POSITION: JString; cdecl;
    {class} function _GetPARAMETER_LIKE_VIEW_CURRENT_ACTION: JString; cdecl;
    {class} function _GetPARAMETER_LIKE_VIEW_ERROR_JSON: JString; cdecl;
    {class} function _GetPARAMETER_LIKE_VIEW_HORIZONTAL_ALIGNMENT: JString; cdecl;
    {class} function _GetPARAMETER_LIKE_VIEW_OBJECT_ID: JString; cdecl;
    {class} function _GetPARAMETER_LIKE_VIEW_OBJECT_TYPE: JString; cdecl;
    {class} function _GetPARAMETER_LIKE_VIEW_STYLE: JString; cdecl;
    {class} function _GetPARAMETER_NATIVE_LOGIN_DIALOG_COMPLETE_TIME: JString; cdecl;
    {class} function _GetPARAMETER_NATIVE_LOGIN_DIALOG_START_TIME: JString; cdecl;
    {class} function _GetPARAMETER_SHARE_DIALOG_CONTENT_OPENGRAPH: JString; cdecl;
    {class} function _GetPARAMETER_SHARE_DIALOG_CONTENT_PHOTO: JString; cdecl;
    {class} function _GetPARAMETER_SHARE_DIALOG_CONTENT_STATUS: JString; cdecl;
    {class} function _GetPARAMETER_SHARE_DIALOG_CONTENT_TYPE: JString; cdecl;
    {class} function _GetPARAMETER_SHARE_DIALOG_CONTENT_UNKNOWN: JString; cdecl;
    {class} function _GetPARAMETER_SHARE_DIALOG_CONTENT_VIDEO: JString; cdecl;
    {class} function _GetPARAMETER_SHARE_DIALOG_SHOW: JString; cdecl;
    {class} function _GetPARAMETER_SHARE_DIALOG_SHOW_AUTOMATIC: JString; cdecl;
    {class} function _GetPARAMETER_SHARE_DIALOG_SHOW_NATIVE: JString; cdecl;
    {class} function _GetPARAMETER_SHARE_DIALOG_SHOW_UNKNOWN: JString; cdecl;
    {class} function _GetPARAMETER_SHARE_DIALOG_SHOW_WEB: JString; cdecl;
    {class} function _GetPARAMETER_SHARE_ERROR_MESSAGE: JString; cdecl;
    {class} function _GetPARAMETER_SHARE_OUTCOME: JString; cdecl;
    {class} function _GetPARAMETER_SHARE_OUTCOME_CANCELLED: JString; cdecl;
    {class} function _GetPARAMETER_SHARE_OUTCOME_ERROR: JString; cdecl;
    {class} function _GetPARAMETER_SHARE_OUTCOME_SUCCEEDED: JString; cdecl;
    {class} function _GetPARAMETER_SHARE_OUTCOME_UNKNOWN: JString; cdecl;
    {class} function _GetPARAMETER_WEB_LOGIN_E2E: JString; cdecl;
    {class} function _GetPARAMETER_WEB_LOGIN_SWITCHBACK_TIME: JString; cdecl;
    {class} function init: JAnalyticsEvents; cdecl;//Deprecated
    {class} property EVENT_DEVICE_SHARE_BUTTON_CREATE: JString read _GetEVENT_DEVICE_SHARE_BUTTON_CREATE;
    {class} property EVENT_DEVICE_SHARE_BUTTON_DID_TAP: JString read _GetEVENT_DEVICE_SHARE_BUTTON_DID_TAP;
    {class} property EVENT_FRIEND_PICKER_USAGE: JString read _GetEVENT_FRIEND_PICKER_USAGE;
    {class} property EVENT_LIKE_BUTTON_CREATE: JString read _GetEVENT_LIKE_BUTTON_CREATE;
    {class} property EVENT_LIKE_BUTTON_DID_TAP: JString read _GetEVENT_LIKE_BUTTON_DID_TAP;
    {class} property EVENT_LIKE_VIEW_CANNOT_PRESENT_DIALOG: JString read _GetEVENT_LIKE_VIEW_CANNOT_PRESENT_DIALOG;
    {class} property EVENT_LIKE_VIEW_DIALOG_DID_SUCCEED: JString read _GetEVENT_LIKE_VIEW_DIALOG_DID_SUCCEED;
    {class} property EVENT_LIKE_VIEW_DID_LIKE: JString read _GetEVENT_LIKE_VIEW_DID_LIKE;
    {class} property EVENT_LIKE_VIEW_DID_PRESENT_DIALOG: JString read _GetEVENT_LIKE_VIEW_DID_PRESENT_DIALOG;
    {class} property EVENT_LIKE_VIEW_DID_PRESENT_FALLBACK: JString read _GetEVENT_LIKE_VIEW_DID_PRESENT_FALLBACK;
    {class} property EVENT_LIKE_VIEW_DID_UNDO_QUICKLY: JString read _GetEVENT_LIKE_VIEW_DID_UNDO_QUICKLY;
    {class} property EVENT_LIKE_VIEW_DID_UNLIKE: JString read _GetEVENT_LIKE_VIEW_DID_UNLIKE;
    {class} property EVENT_LIKE_VIEW_ERROR: JString read _GetEVENT_LIKE_VIEW_ERROR;
    {class} property EVENT_LOGIN_BUTTON_CREATE: JString read _GetEVENT_LOGIN_BUTTON_CREATE;
    {class} property EVENT_LOGIN_BUTTON_DID_TAP: JString read _GetEVENT_LOGIN_BUTTON_DID_TAP;
    {class} property EVENT_LOGIN_VIEW_USAGE: JString read _GetEVENT_LOGIN_VIEW_USAGE;
    {class} property EVENT_NATIVE_DIALOG_COMPLETE: JString read _GetEVENT_NATIVE_DIALOG_COMPLETE;
    {class} property EVENT_NATIVE_DIALOG_START: JString read _GetEVENT_NATIVE_DIALOG_START;
    {class} property EVENT_NATIVE_DIALOG_TYPE_LIKE: JString read _GetEVENT_NATIVE_DIALOG_TYPE_LIKE;
    {class} property EVENT_NATIVE_DIALOG_TYPE_MESSAGE: JString read _GetEVENT_NATIVE_DIALOG_TYPE_MESSAGE;
    {class} property EVENT_NATIVE_DIALOG_TYPE_OG_MESSAGE: JString read _GetEVENT_NATIVE_DIALOG_TYPE_OG_MESSAGE;
    {class} property EVENT_NATIVE_DIALOG_TYPE_OG_SHARE: JString read _GetEVENT_NATIVE_DIALOG_TYPE_OG_SHARE;
    {class} property EVENT_NATIVE_DIALOG_TYPE_PHOTO_MESSAGE: JString read _GetEVENT_NATIVE_DIALOG_TYPE_PHOTO_MESSAGE;
    {class} property EVENT_NATIVE_DIALOG_TYPE_PHOTO_SHARE: JString read _GetEVENT_NATIVE_DIALOG_TYPE_PHOTO_SHARE;
    {class} property EVENT_NATIVE_DIALOG_TYPE_SHARE: JString read _GetEVENT_NATIVE_DIALOG_TYPE_SHARE;
    {class} property EVENT_NATIVE_DIALOG_TYPE_VIDEO_SHARE: JString read _GetEVENT_NATIVE_DIALOG_TYPE_VIDEO_SHARE;
    {class} property EVENT_NATIVE_LOGIN_DIALOG_COMPLETE: JString read _GetEVENT_NATIVE_LOGIN_DIALOG_COMPLETE;
    {class} property EVENT_NATIVE_LOGIN_DIALOG_START: JString read _GetEVENT_NATIVE_LOGIN_DIALOG_START;
    {class} property EVENT_PLACE_PICKER_USAGE: JString read _GetEVENT_PLACE_PICKER_USAGE;
    {class} property EVENT_SEND_BUTTON_CREATE: JString read _GetEVENT_SEND_BUTTON_CREATE;
    {class} property EVENT_SEND_BUTTON_DID_TAP: JString read _GetEVENT_SEND_BUTTON_DID_TAP;
    {class} property EVENT_SHARE_BUTTON_CREATE: JString read _GetEVENT_SHARE_BUTTON_CREATE;
    {class} property EVENT_SHARE_BUTTON_DID_TAP: JString read _GetEVENT_SHARE_BUTTON_DID_TAP;
    {class} property EVENT_SHARE_DIALOG_SHOW: JString read _GetEVENT_SHARE_DIALOG_SHOW;
    {class} property EVENT_SHARE_RESULT: JString read _GetEVENT_SHARE_RESULT;
    {class} property EVENT_USER_SETTINGS_USAGE: JString read _GetEVENT_USER_SETTINGS_USAGE;
    {class} property EVENT_WEB_LOGIN_COMPLETE: JString read _GetEVENT_WEB_LOGIN_COMPLETE;
    {class} property PARAMETER_ACTION_ID: JString read _GetPARAMETER_ACTION_ID;
    {class} property PARAMETER_APP_ID: JString read _GetPARAMETER_APP_ID;
    {class} property PARAMETER_CALL_ID: JString read _GetPARAMETER_CALL_ID;
    {class} property PARAMETER_DIALOG_OUTCOME: JString read _GetPARAMETER_DIALOG_OUTCOME;
    {class} property PARAMETER_DIALOG_OUTCOME_VALUE_CANCELLED: JString read _GetPARAMETER_DIALOG_OUTCOME_VALUE_CANCELLED;
    {class} property PARAMETER_DIALOG_OUTCOME_VALUE_COMPLETED: JString read _GetPARAMETER_DIALOG_OUTCOME_VALUE_COMPLETED;
    {class} property PARAMETER_DIALOG_OUTCOME_VALUE_FAILED: JString read _GetPARAMETER_DIALOG_OUTCOME_VALUE_FAILED;
    {class} property PARAMETER_DIALOG_OUTCOME_VALUE_UNKNOWN: JString read _GetPARAMETER_DIALOG_OUTCOME_VALUE_UNKNOWN;
    {class} property PARAMETER_LIKE_VIEW_AUXILIARY_POSITION: JString read _GetPARAMETER_LIKE_VIEW_AUXILIARY_POSITION;
    {class} property PARAMETER_LIKE_VIEW_CURRENT_ACTION: JString read _GetPARAMETER_LIKE_VIEW_CURRENT_ACTION;
    {class} property PARAMETER_LIKE_VIEW_ERROR_JSON: JString read _GetPARAMETER_LIKE_VIEW_ERROR_JSON;
    {class} property PARAMETER_LIKE_VIEW_HORIZONTAL_ALIGNMENT: JString read _GetPARAMETER_LIKE_VIEW_HORIZONTAL_ALIGNMENT;
    {class} property PARAMETER_LIKE_VIEW_OBJECT_ID: JString read _GetPARAMETER_LIKE_VIEW_OBJECT_ID;
    {class} property PARAMETER_LIKE_VIEW_OBJECT_TYPE: JString read _GetPARAMETER_LIKE_VIEW_OBJECT_TYPE;
    {class} property PARAMETER_LIKE_VIEW_STYLE: JString read _GetPARAMETER_LIKE_VIEW_STYLE;
    {class} property PARAMETER_NATIVE_LOGIN_DIALOG_COMPLETE_TIME: JString read _GetPARAMETER_NATIVE_LOGIN_DIALOG_COMPLETE_TIME;
    {class} property PARAMETER_NATIVE_LOGIN_DIALOG_START_TIME: JString read _GetPARAMETER_NATIVE_LOGIN_DIALOG_START_TIME;
    {class} property PARAMETER_SHARE_DIALOG_CONTENT_OPENGRAPH: JString read _GetPARAMETER_SHARE_DIALOG_CONTENT_OPENGRAPH;
    {class} property PARAMETER_SHARE_DIALOG_CONTENT_PHOTO: JString read _GetPARAMETER_SHARE_DIALOG_CONTENT_PHOTO;
    {class} property PARAMETER_SHARE_DIALOG_CONTENT_STATUS: JString read _GetPARAMETER_SHARE_DIALOG_CONTENT_STATUS;
    {class} property PARAMETER_SHARE_DIALOG_CONTENT_TYPE: JString read _GetPARAMETER_SHARE_DIALOG_CONTENT_TYPE;
    {class} property PARAMETER_SHARE_DIALOG_CONTENT_UNKNOWN: JString read _GetPARAMETER_SHARE_DIALOG_CONTENT_UNKNOWN;
    {class} property PARAMETER_SHARE_DIALOG_CONTENT_VIDEO: JString read _GetPARAMETER_SHARE_DIALOG_CONTENT_VIDEO;
    {class} property PARAMETER_SHARE_DIALOG_SHOW: JString read _GetPARAMETER_SHARE_DIALOG_SHOW;
    {class} property PARAMETER_SHARE_DIALOG_SHOW_AUTOMATIC: JString read _GetPARAMETER_SHARE_DIALOG_SHOW_AUTOMATIC;
    {class} property PARAMETER_SHARE_DIALOG_SHOW_NATIVE: JString read _GetPARAMETER_SHARE_DIALOG_SHOW_NATIVE;
    {class} property PARAMETER_SHARE_DIALOG_SHOW_UNKNOWN: JString read _GetPARAMETER_SHARE_DIALOG_SHOW_UNKNOWN;
    {class} property PARAMETER_SHARE_DIALOG_SHOW_WEB: JString read _GetPARAMETER_SHARE_DIALOG_SHOW_WEB;
    {class} property PARAMETER_SHARE_ERROR_MESSAGE: JString read _GetPARAMETER_SHARE_ERROR_MESSAGE;
    {class} property PARAMETER_SHARE_OUTCOME: JString read _GetPARAMETER_SHARE_OUTCOME;
    {class} property PARAMETER_SHARE_OUTCOME_CANCELLED: JString read _GetPARAMETER_SHARE_OUTCOME_CANCELLED;
    {class} property PARAMETER_SHARE_OUTCOME_ERROR: JString read _GetPARAMETER_SHARE_OUTCOME_ERROR;
    {class} property PARAMETER_SHARE_OUTCOME_SUCCEEDED: JString read _GetPARAMETER_SHARE_OUTCOME_SUCCEEDED;
    {class} property PARAMETER_SHARE_OUTCOME_UNKNOWN: JString read _GetPARAMETER_SHARE_OUTCOME_UNKNOWN;
    {class} property PARAMETER_WEB_LOGIN_E2E: JString read _GetPARAMETER_WEB_LOGIN_E2E;
    {class} property PARAMETER_WEB_LOGIN_SWITCHBACK_TIME: JString read _GetPARAMETER_WEB_LOGIN_SWITCHBACK_TIME;
  end;

  [JavaSignature('com/facebook/internal/AnalyticsEvents')]
  JAnalyticsEvents = interface(JObject)
    ['{8B116BFD-5D1C-4685-B089-990E1EA75913}']
  end;
  TJAnalyticsEvents = class(TJavaGenericImport<JAnalyticsEventsClass, JAnalyticsEvents>) end;

  JAppCallClass = interface(JObjectClass)
    ['{88180EE2-3EA4-4149-AFEA-D73EEA042459}']
    {class} function finishPendingCall(P1: JUUID; P2: Integer): JAppCall; cdecl;//Deprecated
    {class} function getCurrentPendingCall: JAppCall; cdecl;//Deprecated
    {class} function init(P1: Integer): JAppCall; cdecl; overload;//Deprecated
    {class} function init(P1: Integer; P2: JUUID): JAppCall; cdecl; overload;//Deprecated
  end;

  [JavaSignature('com/facebook/internal/AppCall')]
  JAppCall = interface(JObject)
    ['{9DFA1600-C220-48C3-BDE2-9BA4A890BFDF}']
    function getCallId: JUUID; cdecl;//Deprecated
    function getRequestCode: Integer; cdecl;//Deprecated
    function getRequestIntent: JIntent; cdecl;//Deprecated
    function setPending: Boolean; cdecl;//Deprecated
    procedure setRequestCode(P1: Integer); cdecl;//Deprecated
    procedure setRequestIntent(P1: JIntent); cdecl;//Deprecated
  end;
  TJAppCall = class(TJavaGenericImport<JAppCallClass, JAppCall>) end;

  JAppEventsLoggerUtilityClass = interface(JObjectClass)
    ['{2B1861FA-13A9-439B-ADA2-6D16EB6804D8}']
    {class} function getJSONObjectForGraphAPICall(P1: JAppEventsLoggerUtility_GraphAPIActivityType; P2: JAttributionIdentifiers; P3: JString; P4: Boolean; P5: JContext): JJSONObject; cdecl;//Deprecated
    {class} function init: JAppEventsLoggerUtility; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/internal/AppEventsLoggerUtility')]
  JAppEventsLoggerUtility = interface(JObject)
    ['{68E3B4F7-929C-4D0C-A2E9-A1F8BCEBA496}']
  end;
  TJAppEventsLoggerUtility = class(TJavaGenericImport<JAppEventsLoggerUtilityClass, JAppEventsLoggerUtility>) end;

  JAppEventsLoggerUtility_1Class = interface(JHashMapClass)
    ['{0E78A0AF-F6CE-409A-8FE4-94BE081C00CD}']
  end;

  [JavaSignature('com/facebook/internal/AppEventsLoggerUtility$1')]
  JAppEventsLoggerUtility_1 = interface(JHashMap)
    ['{D3ADE7E1-F940-4CB4-A4DD-45956A30420D}']
  end;
  TJAppEventsLoggerUtility_1 = class(TJavaGenericImport<JAppEventsLoggerUtility_1Class, JAppEventsLoggerUtility_1>) end;

  JAppEventsLoggerUtility_GraphAPIActivityTypeClass = interface(JEnumClass)
    ['{9C674E25-077A-4F65-A5B8-8A8B82F44CCF}']
    {class} function _GetCUSTOM_APP_EVENTS: JAppEventsLoggerUtility_GraphAPIActivityType; cdecl;
    {class} function _GetMOBILE_INSTALL_EVENT: JAppEventsLoggerUtility_GraphAPIActivityType; cdecl;
    {class} function valueOf(P1: JString): JAppEventsLoggerUtility_GraphAPIActivityType; cdecl;//Deprecated
    {class} function values: TJavaObjectArray<JAppEventsLoggerUtility_GraphAPIActivityType>; cdecl;//Deprecated
    {class} property CUSTOM_APP_EVENTS: JAppEventsLoggerUtility_GraphAPIActivityType read _GetCUSTOM_APP_EVENTS;
    {class} property MOBILE_INSTALL_EVENT: JAppEventsLoggerUtility_GraphAPIActivityType read _GetMOBILE_INSTALL_EVENT;
  end;

  [JavaSignature('com/facebook/internal/AppEventsLoggerUtility$GraphAPIActivityType')]
  JAppEventsLoggerUtility_GraphAPIActivityType = interface(JEnum)
    ['{45EC1E59-FFAF-4F1F-90E8-ECFD752A6F70}']
  end;
  TJAppEventsLoggerUtility_GraphAPIActivityType = class(TJavaGenericImport<JAppEventsLoggerUtility_GraphAPIActivityTypeClass, JAppEventsLoggerUtility_GraphAPIActivityType>) end;

  JAttributionIdentifiersClass = interface(JObjectClass)
    ['{89BA915B-6D88-415D-9DA9-C2090A555FA7}']
    {class} function getAttributionIdentifiers(P1: JContext): JAttributionIdentifiers; cdecl;//Deprecated
    {class} function init: JAttributionIdentifiers; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/internal/AttributionIdentifiers')]
  JAttributionIdentifiers = interface(JObject)
    ['{B1E765EB-4BC2-491F-947E-A9BCC588A283}']
    function getAndroidAdvertiserId: JString; cdecl;//Deprecated
    function getAndroidInstallerPackage: JString; cdecl;//Deprecated
    function getAttributionId: JString; cdecl;//Deprecated
    function isTrackingLimited: Boolean; cdecl;//Deprecated
  end;
  TJAttributionIdentifiers = class(TJavaGenericImport<JAttributionIdentifiersClass, JAttributionIdentifiers>) end;

  JAttributionIdentifiers_1Class = interface(JObjectClass)
    ['{B1EBED0D-4EFD-4701-94A1-CFF5EC4BA38D}']
  end;

  [JavaSignature('com/facebook/internal/AttributionIdentifiers$1')]
  JAttributionIdentifiers_1 = interface(JObject)
    ['{8DFDC173-C17A-4DE6-9CD9-1EF470DFBB7A}']
  end;
  TJAttributionIdentifiers_1 = class(TJavaGenericImport<JAttributionIdentifiers_1Class, JAttributionIdentifiers_1>) end;

  JAttributionIdentifiers_GoogleAdInfoClass = interface(JIInterfaceClass)
    ['{2D4F7CA1-B296-446C-937D-8890F2374B21}']
  end;

  [JavaSignature('com/facebook/internal/AttributionIdentifiers$GoogleAdInfo')]
  JAttributionIdentifiers_GoogleAdInfo = interface(JIInterface)
    ['{FE4B012A-263C-4E1C-90FF-7B6A6A7A5EC5}']
    function asBinder: JIBinder; cdecl;//Deprecated
    function getAdvertiserId: JString; cdecl;//Deprecated
    function isTrackingLimited: Boolean; cdecl;//Deprecated
  end;
  TJAttributionIdentifiers_GoogleAdInfo = class(TJavaGenericImport<JAttributionIdentifiers_GoogleAdInfoClass, JAttributionIdentifiers_GoogleAdInfo>) end;

  JAttributionIdentifiers_GoogleAdServiceConnectionClass = interface(JServiceConnectionClass)
    ['{AB1059A7-3813-49AB-A202-60FD7B5F4159}']
  end;

  [JavaSignature('com/facebook/internal/AttributionIdentifiers$GoogleAdServiceConnection')]
  JAttributionIdentifiers_GoogleAdServiceConnection = interface(JServiceConnection)
    ['{4FD39D60-6DFF-4507-ADAB-80B42D0712DD}']
    function getBinder: JIBinder; cdecl;//Deprecated
    procedure onServiceConnected(P1: JComponentName; P2: JIBinder); cdecl;//Deprecated
    procedure onServiceDisconnected(P1: JComponentName); cdecl;//Deprecated
  end;
  TJAttributionIdentifiers_GoogleAdServiceConnection = class(TJavaGenericImport<JAttributionIdentifiers_GoogleAdServiceConnectionClass, JAttributionIdentifiers_GoogleAdServiceConnection>) end;

  JBoltsMeasurementEventListenerClass = interface(JBroadcastReceiverClass)
    ['{5816EBFF-BEC4-4A50-BFB2-39D4E484F423}']
    {class} function getInstance(P1: JContext): JBoltsMeasurementEventListener; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/internal/BoltsMeasurementEventListener')]
  JBoltsMeasurementEventListener = interface(JBroadcastReceiver)
    ['{14ACE3E0-23DA-4DD6-AD04-D4F0E3A5F695}']
    procedure onReceive(P1: JContext; P2: JIntent); cdecl;//Deprecated
  end;
  TJBoltsMeasurementEventListener = class(TJavaGenericImport<JBoltsMeasurementEventListenerClass, JBoltsMeasurementEventListener>) end;

  JBundleJSONConverterClass = interface(JObjectClass)
    ['{08722DF6-454B-4E07-8EDB-591DC54AF63F}']
    {class} function convertToBundle(P1: JJSONObject): JBundle; cdecl;//Deprecated
    {class} function convertToJSON(P1: JBundle): JJSONObject; cdecl;//Deprecated
    {class} function init: JBundleJSONConverter; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/internal/BundleJSONConverter')]
  JBundleJSONConverter = interface(JObject)
    ['{DE56862D-9669-4A53-A428-FC57A186EA50}']
  end;
  TJBundleJSONConverter = class(TJavaGenericImport<JBundleJSONConverterClass, JBundleJSONConverter>) end;

  JBundleJSONConverter_SetterClass = interface(IJavaClass)
    ['{39739252-061C-42B1-A22B-15E0511DFCA8}']
  end;

  [JavaSignature('com/facebook/internal/BundleJSONConverter$Setter')]
  JBundleJSONConverter_Setter = interface(IJavaInstance)
    ['{F2B0B078-F2B2-43CD-A1BB-028E4D6ECD21}']
    procedure setOnBundle(P1: JBundle; P2: JString; P3: JObject); cdecl;//Deprecated
    procedure setOnJSON(P1: JJSONObject; P2: JString; P3: JObject); cdecl;//Deprecated
  end;
  TJBundleJSONConverter_Setter = class(TJavaGenericImport<JBundleJSONConverter_SetterClass, JBundleJSONConverter_Setter>) end;

  JBundleJSONConverter_1Class = interface(JBundleJSONConverter_SetterClass)
    ['{717A527E-6A2B-4B85-86F3-F2B92DBCC974}']
  end;

  [JavaSignature('com/facebook/internal/BundleJSONConverter$1')]
  JBundleJSONConverter_1 = interface(JBundleJSONConverter_Setter)
    ['{7785347C-63E9-48A9-BBE4-D8C8EAFF0EEF}']
    procedure setOnBundle(P1: JBundle; P2: JString; P3: JObject); cdecl;//Deprecated
    procedure setOnJSON(P1: JJSONObject; P2: JString; P3: JObject); cdecl;//Deprecated
  end;
  TJBundleJSONConverter_1 = class(TJavaGenericImport<JBundleJSONConverter_1Class, JBundleJSONConverter_1>) end;

  JBundleJSONConverter_2Class = interface(JBundleJSONConverter_SetterClass)
    ['{058DB1E5-6AF2-4377-8B4E-CF2C95B9834F}']
  end;

  [JavaSignature('com/facebook/internal/BundleJSONConverter$2')]
  JBundleJSONConverter_2 = interface(JBundleJSONConverter_Setter)
    ['{9F3270F4-7AE7-4D9D-9E90-1A6F9204A3D2}']
    procedure setOnBundle(P1: JBundle; P2: JString; P3: JObject); cdecl;//Deprecated
    procedure setOnJSON(P1: JJSONObject; P2: JString; P3: JObject); cdecl;//Deprecated
  end;
  TJBundleJSONConverter_2 = class(TJavaGenericImport<JBundleJSONConverter_2Class, JBundleJSONConverter_2>) end;

  JBundleJSONConverter_3Class = interface(JBundleJSONConverter_SetterClass)
    ['{B1DF461F-3E30-49E9-AD3C-F20AE4E4CD30}']
  end;

  [JavaSignature('com/facebook/internal/BundleJSONConverter$3')]
  JBundleJSONConverter_3 = interface(JBundleJSONConverter_Setter)
    ['{2F2CA846-2ADA-4E49-A03E-D8765930969C}']
    procedure setOnBundle(P1: JBundle; P2: JString; P3: JObject); cdecl;//Deprecated
    procedure setOnJSON(P1: JJSONObject; P2: JString; P3: JObject); cdecl;//Deprecated
  end;
  TJBundleJSONConverter_3 = class(TJavaGenericImport<JBundleJSONConverter_3Class, JBundleJSONConverter_3>) end;

  JBundleJSONConverter_4Class = interface(JBundleJSONConverter_SetterClass)
    ['{285A58BF-3AE2-46F5-BC3C-168974895D91}']
  end;

  [JavaSignature('com/facebook/internal/BundleJSONConverter$4')]
  JBundleJSONConverter_4 = interface(JBundleJSONConverter_Setter)
    ['{3EAA00F4-8CBC-4D51-9B0A-8C8EF735CB54}']
    procedure setOnBundle(P1: JBundle; P2: JString; P3: JObject); cdecl;//Deprecated
    procedure setOnJSON(P1: JJSONObject; P2: JString; P3: JObject); cdecl;//Deprecated
  end;
  TJBundleJSONConverter_4 = class(TJavaGenericImport<JBundleJSONConverter_4Class, JBundleJSONConverter_4>) end;

  JBundleJSONConverter_5Class = interface(JBundleJSONConverter_SetterClass)
    ['{9556F7F9-4D7D-42E9-86BF-1BFAA5207361}']
  end;

  [JavaSignature('com/facebook/internal/BundleJSONConverter$5')]
  JBundleJSONConverter_5 = interface(JBundleJSONConverter_Setter)
    ['{B22BF1F1-F41B-4F0D-A349-566E9F9FF505}']
    procedure setOnBundle(P1: JBundle; P2: JString; P3: JObject); cdecl;//Deprecated
    procedure setOnJSON(P1: JJSONObject; P2: JString; P3: JObject); cdecl;//Deprecated
  end;
  TJBundleJSONConverter_5 = class(TJavaGenericImport<JBundleJSONConverter_5Class, JBundleJSONConverter_5>) end;

  JBundleJSONConverter_6Class = interface(JBundleJSONConverter_SetterClass)
    ['{37159005-31C3-4BAE-971E-66C22B0FD8D1}']
  end;

  [JavaSignature('com/facebook/internal/BundleJSONConverter$6')]
  JBundleJSONConverter_6 = interface(JBundleJSONConverter_Setter)
    ['{F700F4D9-860F-4280-82C8-58A4CFDA0C71}']
    procedure setOnBundle(P1: JBundle; P2: JString; P3: JObject); cdecl;//Deprecated
    procedure setOnJSON(P1: JJSONObject; P2: JString; P3: JObject); cdecl;//Deprecated
  end;
  TJBundleJSONConverter_6 = class(TJavaGenericImport<JBundleJSONConverter_6Class, JBundleJSONConverter_6>) end;

  JBundleJSONConverter_7Class = interface(JBundleJSONConverter_SetterClass)
    ['{D5BAD61B-8116-48DB-ABD6-E56579F80B76}']
  end;

  [JavaSignature('com/facebook/internal/BundleJSONConverter$7')]
  JBundleJSONConverter_7 = interface(JBundleJSONConverter_Setter)
    ['{50523081-D970-4D38-A5DC-175D05DF7BA6}']
    procedure setOnBundle(P1: JBundle; P2: JString; P3: JObject); cdecl;//Deprecated
    procedure setOnJSON(P1: JJSONObject; P2: JString; P3: JObject); cdecl;//Deprecated
  end;
  TJBundleJSONConverter_7 = class(TJavaGenericImport<JBundleJSONConverter_7Class, JBundleJSONConverter_7>) end;

  JCallbackManagerImplClass = interface(JCallbackManagerClass)
    ['{FF41D964-A959-4DAD-AD83-4FB2E4877A82}']
    {class} function init: JCallbackManagerImpl; cdecl;//Deprecated
    {class} procedure registerStaticCallback(P1: Integer; P2: JCallbackManagerImpl_Callback); cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/internal/CallbackManagerImpl')]
  JCallbackManagerImpl = interface(JCallbackManager)
    ['{6A7C512B-63CF-4B3B-BB45-B1E95F7A234E}']
    function onActivityResult(P1: Integer; P2: Integer; P3: JIntent): Boolean; cdecl;//Deprecated
    procedure registerCallback(P1: Integer; P2: JCallbackManagerImpl_Callback); cdecl;//Deprecated
  end;
  TJCallbackManagerImpl = class(TJavaGenericImport<JCallbackManagerImplClass, JCallbackManagerImpl>) end;

  JCallbackManagerImpl_CallbackClass = interface(IJavaClass)
    ['{AB78DAF7-5557-4BFA-90A6-D2B3215E1F7F}']
  end;

  [JavaSignature('com/facebook/internal/CallbackManagerImpl$Callback')]
  JCallbackManagerImpl_Callback = interface(IJavaInstance)
    ['{A2C4474B-85CE-4DD0-8721-80AD6B6AFFBA}']
    function onActivityResult(P1: Integer; P2: JIntent): Boolean; cdecl;//Deprecated
  end;
  TJCallbackManagerImpl_Callback = class(TJavaGenericImport<JCallbackManagerImpl_CallbackClass, JCallbackManagerImpl_Callback>) end;

  JCallbackManagerImpl_RequestCodeOffsetClass = interface(JEnumClass)
    ['{5F9172A5-DD19-42E1-B7F8-7AEE04FC15A0}']
    {class} function _GetAppGroupCreate: JCallbackManagerImpl_RequestCodeOffset; cdecl;
    {class} function _GetAppGroupJoin: JCallbackManagerImpl_RequestCodeOffset; cdecl;
    {class} function _GetAppInvite: JCallbackManagerImpl_RequestCodeOffset; cdecl;
    {class} function _GetDeviceShare: JCallbackManagerImpl_RequestCodeOffset; cdecl;
    {class} function _GetGameRequest: JCallbackManagerImpl_RequestCodeOffset; cdecl;
    {class} function _GetLike: JCallbackManagerImpl_RequestCodeOffset; cdecl;
    {class} function _GetLogin: JCallbackManagerImpl_RequestCodeOffset; cdecl;
    {class} function _GetMessage: JCallbackManagerImpl_RequestCodeOffset; cdecl;
    {class} function _GetShare: JCallbackManagerImpl_RequestCodeOffset; cdecl;
    {class} function valueOf(P1: JString): JCallbackManagerImpl_RequestCodeOffset; cdecl;//Deprecated
    {class} function values: TJavaObjectArray<JCallbackManagerImpl_RequestCodeOffset>; cdecl;//Deprecated
    {class} property AppGroupCreate: JCallbackManagerImpl_RequestCodeOffset read _GetAppGroupCreate;
    {class} property AppGroupJoin: JCallbackManagerImpl_RequestCodeOffset read _GetAppGroupJoin;
    {class} property AppInvite: JCallbackManagerImpl_RequestCodeOffset read _GetAppInvite;
    {class} property DeviceShare: JCallbackManagerImpl_RequestCodeOffset read _GetDeviceShare;
    {class} property GameRequest: JCallbackManagerImpl_RequestCodeOffset read _GetGameRequest;
    {class} property Like: JCallbackManagerImpl_RequestCodeOffset read _GetLike;
    {class} property Login: JCallbackManagerImpl_RequestCodeOffset read _GetLogin;
    {class} property Message: JCallbackManagerImpl_RequestCodeOffset read _GetMessage;
    {class} property Share: JCallbackManagerImpl_RequestCodeOffset read _GetShare;
  end;

  [JavaSignature('com/facebook/internal/CallbackManagerImpl$RequestCodeOffset')]
  JCallbackManagerImpl_RequestCodeOffset = interface(JEnum)
    ['{36A9FFBA-F93B-441F-BCE5-2A1FEEDF6CF9}']
    function toRequestCode: Integer; cdecl;//Deprecated
  end;
  TJCallbackManagerImpl_RequestCodeOffset = class(TJavaGenericImport<JCallbackManagerImpl_RequestCodeOffsetClass, JCallbackManagerImpl_RequestCodeOffset>) end;

  JCollectionMapperClass = interface(JObjectClass)
    ['{5B64D660-F21D-44A3-A4C3-CB8E2B0F4289}']
    {class} procedure iterate(P1: JCollectionMapper_Collection; P2: JCollectionMapper_ValueMapper; P3: JCollectionMapper_OnMapperCompleteListener); cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/internal/CollectionMapper')]
  JCollectionMapper = interface(JObject)
    ['{8A276785-13EC-462C-AF4E-FC3AAA474E6B}']
  end;
  TJCollectionMapper = class(TJavaGenericImport<JCollectionMapperClass, JCollectionMapper>) end;

  JCollectionMapper_OnErrorListenerClass = interface(IJavaClass)
    ['{7DA1C937-AB4C-483D-91CC-DECA2401F60A}']
  end;

  [JavaSignature('com/facebook/internal/CollectionMapper$OnErrorListener')]
  JCollectionMapper_OnErrorListener = interface(IJavaInstance)
    ['{F84368B3-B50C-488A-AA64-7FABB68655AE}']
    procedure onError(P1: JFacebookException); cdecl;//Deprecated
  end;
  TJCollectionMapper_OnErrorListener = class(TJavaGenericImport<JCollectionMapper_OnErrorListenerClass, JCollectionMapper_OnErrorListener>) end;

  JCollectionMapper_OnMapperCompleteListenerClass = interface(JCollectionMapper_OnErrorListenerClass)
    ['{32991F3C-0DAA-4D02-A5B1-49E2048D3A44}']
  end;

  [JavaSignature('com/facebook/internal/CollectionMapper$OnMapperCompleteListener')]
  JCollectionMapper_OnMapperCompleteListener = interface(JCollectionMapper_OnErrorListener)
    ['{1CEA960E-FCBA-44F2-8BB5-33A0F83CB136}']
    procedure onComplete; cdecl;//Deprecated
  end;
  TJCollectionMapper_OnMapperCompleteListener = class(TJavaGenericImport<JCollectionMapper_OnMapperCompleteListenerClass, JCollectionMapper_OnMapperCompleteListener>) end;

  JCollectionMapper_1Class = interface(JCollectionMapper_OnMapperCompleteListenerClass)
    ['{6BE606D7-953B-426E-9D4A-C216BE43E25D}']
    {class} function init(P1: JMutable; P2: JMutable; P3: JCollectionMapper_OnMapperCompleteListener): JCollectionMapper_1; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/internal/CollectionMapper$1')]
  JCollectionMapper_1 = interface(JCollectionMapper_OnMapperCompleteListener)
    ['{7078EDC8-7161-446C-9F50-B51A1C23556E}']
//    function _Getval$onMapperCompleteListener: JCollectionMapper_OnMapperCompleteListener; cdecl;
//    function _Getval$pendingJobCount: JMutable; cdecl;
    procedure onComplete; cdecl;//Deprecated
    procedure onError(P1: JFacebookException); cdecl;//Deprecated
//    property val$onMapperCompleteListener: JCollectionMapper_OnMapperCompleteListener read _Getval$onMapperCompleteListener;
//    property val$pendingJobCount: JMutable read _Getval$pendingJobCount;
  end;
  TJCollectionMapper_1 = class(TJavaGenericImport<JCollectionMapper_1Class, JCollectionMapper_1>) end;

  JCollectionMapper_OnMapValueCompleteListenerClass = interface(JCollectionMapper_OnErrorListenerClass)
    ['{A525B48E-5AC4-4AFA-AEE7-ED36BAE280C5}']
  end;

  [JavaSignature('com/facebook/internal/CollectionMapper$OnMapValueCompleteListener')]
  JCollectionMapper_OnMapValueCompleteListener = interface(JCollectionMapper_OnErrorListener)
    ['{B3AE848C-9014-4ADF-8019-20AA527670F3}']
    procedure onComplete(P1: JObject); cdecl;//Deprecated
  end;
  TJCollectionMapper_OnMapValueCompleteListener = class(TJavaGenericImport<JCollectionMapper_OnMapValueCompleteListenerClass, JCollectionMapper_OnMapValueCompleteListener>) end;

  JCollectionMapper_2Class = interface(JCollectionMapper_OnMapValueCompleteListenerClass)
    ['{B2F60A77-D07F-4571-8A21-96CEC4B7E490}']
    {class} function init(P1: JCollectionMapper_Collection; P2: JObject; P3: JCollectionMapper_OnMapperCompleteListener): JCollectionMapper_2; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/internal/CollectionMapper$2')]
  JCollectionMapper_2 = interface(JCollectionMapper_OnMapValueCompleteListener)
    ['{3F03BA54-9A81-42AB-A46F-A46D7493E480}']
//    function _Getval$jobCompleteListener: JCollectionMapper_OnMapperCompleteListener; cdecl;
//    function _Getval$key: JObject; cdecl;
    procedure onComplete(P1: JObject); cdecl;//Deprecated
    procedure onError(P1: JFacebookException); cdecl;//Deprecated
//    property val$jobCompleteListener: JCollectionMapper_OnMapperCompleteListener read _Getval$jobCompleteListener;
//    property val$key: JObject read _Getval$key;
  end;
  TJCollectionMapper_2 = class(TJavaGenericImport<JCollectionMapper_2Class, JCollectionMapper_2>) end;

  JCollectionMapper_CollectionClass = interface(IJavaClass)
    ['{2D6C92E9-D53C-42CC-A135-6FEF0F3D8493}']
  end;

  [JavaSignature('com/facebook/internal/CollectionMapper$Collection')]
  JCollectionMapper_Collection = interface(IJavaInstance)
    ['{32F4A1D8-88C6-48E8-8001-9CF29557EF74}']
    function get(P1: JObject): JObject; cdecl;//Deprecated
    function keyIterator: JIterator; cdecl;//Deprecated
    procedure &set(P1: JObject; P2: JObject; P3: JCollectionMapper_OnErrorListener); cdecl;//Deprecated
  end;
  TJCollectionMapper_Collection = class(TJavaGenericImport<JCollectionMapper_CollectionClass, JCollectionMapper_Collection>) end;

  JCollectionMapper_ValueMapperClass = interface(IJavaClass)
    ['{A7CDA657-1F16-4B66-843C-E374B33410BC}']
  end;

  [JavaSignature('com/facebook/internal/CollectionMapper$ValueMapper')]
  JCollectionMapper_ValueMapper = interface(IJavaInstance)
    ['{EDFB5B0D-93F4-4A56-A264-1B48CC0405B2}']
    procedure mapValue(P1: JObject; P2: JCollectionMapper_OnMapValueCompleteListener); cdecl;//Deprecated
  end;
  TJCollectionMapper_ValueMapper = class(TJavaGenericImport<JCollectionMapper_ValueMapperClass, JCollectionMapper_ValueMapper>) end;

  JCustomTabClass = interface(JObjectClass)
    ['{23FCFD50-5CB1-4198-8356-736784A55413}']
    {class} function init(P1: JString; P2: JBundle): JCustomTab; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/internal/CustomTab')]
  JCustomTab = interface(JObject)
    ['{4A23C481-082E-4C3D-8D29-B9EB37003FC3}']
    procedure openCustomTab(P1: JActivity); cdecl;//Deprecated
  end;
  TJCustomTab = class(TJavaGenericImport<JCustomTabClass, JCustomTab>) end;

  JDialogFeatureClass = interface(IJavaClass)
    ['{1BA3898D-EEFE-44C9-A37C-D371E6CA44EA}']
  end;

  [JavaSignature('com/facebook/internal/DialogFeature')]
  JDialogFeature = interface(IJavaInstance)
    ['{F58EF2EF-CA18-4B0C-9C53-0787B2BB6AA7}']
    function getAction: JString; cdecl;//Deprecated
    function getMinVersion: Integer; cdecl;//Deprecated
    function name: JString; cdecl;//Deprecated
  end;
  TJDialogFeature = class(TJavaGenericImport<JDialogFeatureClass, JDialogFeature>) end;

  JDialogPresenterClass = interface(JObjectClass)
    ['{7F58C0D7-9D86-42FE-AB55-F132C3A68309}']
    {class} function canPresentNativeDialogWithFeature(P1: JDialogFeature): Boolean; cdecl;//Deprecated
    {class} function canPresentWebFallbackDialogWithFeature(P1: JDialogFeature): Boolean; cdecl;//Deprecated
    {class} function getProtocolVersionForNativeDialog(P1: JDialogFeature): Integer; cdecl;//Deprecated
    {class} function init: JDialogPresenter; cdecl;//Deprecated
    {class} procedure logDialogActivity(P1: JContext; P2: JString; P3: JString); cdecl;//Deprecated
    {class} procedure present(P1: JAppCall; P2: JActivity); cdecl; overload;//Deprecated
    {class} procedure present(P1: JAppCall; P2: JFragmentWrapper); cdecl; overload;//Deprecated
    {class} procedure setupAppCallForCannotShowError(P1: JAppCall); cdecl;//Deprecated
    {class} procedure setupAppCallForErrorResult(P1: JAppCall; P2: JFacebookException); cdecl;//Deprecated
    {class} procedure setupAppCallForNativeDialog(P1: JAppCall; P2: JDialogPresenter_ParameterProvider; P3: JDialogFeature); cdecl;//Deprecated
    {class} procedure setupAppCallForValidationError(P1: JAppCall; P2: JFacebookException); cdecl;//Deprecated
    {class} procedure setupAppCallForWebDialog(P1: JAppCall; P2: JString; P3: JBundle); cdecl;//Deprecated
    {class} procedure setupAppCallForWebFallbackDialog(P1: JAppCall; P2: JBundle; P3: JDialogFeature); cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/internal/DialogPresenter')]
  JDialogPresenter = interface(JObject)
    ['{10B7EC46-C36C-4462-AFF3-CB28C7640535}']
  end;
  TJDialogPresenter = class(TJavaGenericImport<JDialogPresenterClass, JDialogPresenter>) end;

  JDialogPresenter_ParameterProviderClass = interface(IJavaClass)
    ['{312FFEF1-5AC5-4823-8266-684134E7C3C9}']
  end;

  [JavaSignature('com/facebook/internal/DialogPresenter$ParameterProvider')]
  JDialogPresenter_ParameterProvider = interface(IJavaInstance)
    ['{EA82E7F6-4EDD-4D79-AA68-A0FDFAAD63B0}']
    function getLegacyParameters: JBundle; cdecl;//Deprecated
    function getParameters: JBundle; cdecl;//Deprecated
  end;
  TJDialogPresenter_ParameterProvider = class(TJavaGenericImport<JDialogPresenter_ParameterProviderClass, JDialogPresenter_ParameterProvider>) end;

  JFacebookDialogBaseClass = interface(JFacebookDialogClass)
    ['{EB10813C-EC3D-428D-95BD-085F34670D1D}']
    {class} function init(P1: JActivity; P2: Integer): JFacebookDialogBase; cdecl; overload;//Deprecated
    {class} function init(P1: JFragmentWrapper; P2: Integer): JFacebookDialogBase; cdecl; overload;//Deprecated
  end;

  [JavaSignature('com/facebook/internal/FacebookDialogBase')]
  JFacebookDialogBase = interface(JFacebookDialog)
    ['{DD148C41-6EAB-4D6A-BAAC-ECE7A5204F0C}']
    //function canShow(P1: J): Boolean; cdecl;//Deprecated
    //function canShowImpl(P1: J; P2: JObject): Boolean; cdecl;//Deprecated
    function createBaseAppCall: JAppCall; cdecl;//Deprecated
    function getActivityContext: JActivity; cdecl;//Deprecated
    function getOrderedModeHandlers: JList; cdecl;//Deprecated
    function getRequestCode: Integer; cdecl;//Deprecated
    procedure registerCallback(P1: JCallbackManager; P2: JFacebookCallback); cdecl; overload;//Deprecated
    procedure registerCallback(P1: JCallbackManager; P2: JFacebookCallback; P3: Integer); cdecl; overload;//Deprecated
    procedure registerCallbackImpl(P1: JCallbackManagerImpl; P2: JFacebookCallback); cdecl;//Deprecated
    procedure setRequestCode(P1: Integer); cdecl;//Deprecated
    //procedure show(P1: J); cdecl;//Deprecated
    //procedure showImpl(P1: J; P2: JObject); cdecl;//Deprecated
    procedure startActivityForResult(P1: JIntent; P2: Integer); cdecl;//Deprecated
  end;
  TJFacebookDialogBase = class(TJavaGenericImport<JFacebookDialogBaseClass, JFacebookDialogBase>) end;

  JFacebookDialogBase_ModeHandlerClass = interface(JObjectClass)
    ['{E0B45B6E-1059-4F9D-BCBF-3AFC700B692E}']
    {class} function init(P1: JFacebookDialogBase): JFacebookDialogBase_ModeHandler; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/internal/FacebookDialogBase$ModeHandler')]
  JFacebookDialogBase_ModeHandler = interface(JObject)
    ['{AF3DD13C-4798-42E0-84B2-0AB5E0D14949}']
    //function canShow(P1: J; P2: Boolean): Boolean; cdecl;//Deprecated
    //function createAppCall(P1: J): JAppCall; cdecl;//Deprecated
    function getMode: JObject; cdecl;//Deprecated
  end;
  TJFacebookDialogBase_ModeHandler = class(TJavaGenericImport<JFacebookDialogBase_ModeHandlerClass, JFacebookDialogBase_ModeHandler>) end;

  // com.facebook.internal.FacebookDialogFragment
  JWebDialog_OnCompleteListenerClass = interface(IJavaClass)
    ['{B3590A8A-DECE-4B38-A5CA-CC90D0FD080D}']
  end;

  [JavaSignature('com/facebook/internal/WebDialog$OnCompleteListener')]
  JWebDialog_OnCompleteListener = interface(IJavaInstance)
    ['{55AE4FB1-AF4F-4625-8B37-2063BA437ED5}']
    procedure onComplete(P1: JBundle; P2: JFacebookException); cdecl;//Deprecated
  end;
  TJWebDialog_OnCompleteListener = class(TJavaGenericImport<JWebDialog_OnCompleteListenerClass, JWebDialog_OnCompleteListener>) end;

  JFacebookDialogFragment_1Class = interface(JWebDialog_OnCompleteListenerClass)
    ['{D74CFD81-6F82-41F9-B918-0954AF3D2946}']
    {class} //function init(P1: JFacebookDialogFragment): JFacebookDialogFragment_1; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/internal/FacebookDialogFragment$1')]
  JFacebookDialogFragment_1 = interface(JWebDialog_OnCompleteListener)
    ['{46526BE2-65FF-4662-A5D6-FD53A4628A91}']
    procedure onComplete(P1: JBundle; P2: JFacebookException); cdecl;//Deprecated
  end;
  TJFacebookDialogFragment_1 = class(TJavaGenericImport<JFacebookDialogFragment_1Class, JFacebookDialogFragment_1>) end;

  JFacebookDialogFragment_2Class = interface(JWebDialog_OnCompleteListenerClass)
    ['{771237AD-761F-4A9E-8F9C-527B0E01E5EB}']
    {class} //function init(P1: JFacebookDialogFragment): JFacebookDialogFragment_2; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/internal/FacebookDialogFragment$2')]
  JFacebookDialogFragment_2 = interface(JWebDialog_OnCompleteListener)
    ['{60121174-FDCC-46EB-8784-59CF9F4CB245}']
    procedure onComplete(P1: JBundle; P2: JFacebookException); cdecl;//Deprecated
  end;
  TJFacebookDialogFragment_2 = class(TJavaGenericImport<JFacebookDialogFragment_2Class, JFacebookDialogFragment_2>) end;

  JFacebookRequestErrorClassificationClass = interface(JObjectClass)
    ['{B894A42A-ABCA-46A3-8494-4AFA4E2C62A2}']
    {class} function _GetEC_APP_TOO_MANY_CALLS: Integer; cdecl;
    {class} function _GetEC_INVALID_SESSION: Integer; cdecl;
    {class} function _GetEC_INVALID_TOKEN: Integer; cdecl;
    {class} function _GetEC_RATE: Integer; cdecl;
    {class} function _GetEC_SERVICE_UNAVAILABLE: Integer; cdecl;
    {class} function _GetEC_TOO_MANY_USER_ACTION_CALLS: Integer; cdecl;
    {class} function _GetEC_USER_TOO_MANY_CALLS: Integer; cdecl;
    {class} function _GetKEY_LOGIN_RECOVERABLE: JString; cdecl;
    {class} function _GetKEY_NAME: JString; cdecl;
    {class} function _GetKEY_OTHER: JString; cdecl;
    {class} function _GetKEY_RECOVERY_MESSAGE: JString; cdecl;
    {class} function _GetKEY_TRANSIENT: JString; cdecl;
    {class} function createFromJSON(P1: JJSONArray): JFacebookRequestErrorClassification; cdecl;//Deprecated
    {class} function getDefaultErrorClassification: JFacebookRequestErrorClassification; cdecl;//Deprecated
    {class} function init(P1: JMap; P2: JMap; P3: JMap; P4: JString; P5: JString; P6: JString): JFacebookRequestErrorClassification; cdecl;//Deprecated
    {class} property EC_APP_TOO_MANY_CALLS: Integer read _GetEC_APP_TOO_MANY_CALLS;
    {class} property EC_INVALID_SESSION: Integer read _GetEC_INVALID_SESSION;
    {class} property EC_INVALID_TOKEN: Integer read _GetEC_INVALID_TOKEN;
    {class} property EC_RATE: Integer read _GetEC_RATE;
    {class} property EC_SERVICE_UNAVAILABLE: Integer read _GetEC_SERVICE_UNAVAILABLE;
    {class} property EC_TOO_MANY_USER_ACTION_CALLS: Integer read _GetEC_TOO_MANY_USER_ACTION_CALLS;
    {class} property EC_USER_TOO_MANY_CALLS: Integer read _GetEC_USER_TOO_MANY_CALLS;
    {class} property KEY_LOGIN_RECOVERABLE: JString read _GetKEY_LOGIN_RECOVERABLE;
    {class} property KEY_NAME: JString read _GetKEY_NAME;
    {class} property KEY_OTHER: JString read _GetKEY_OTHER;
    {class} property KEY_RECOVERY_MESSAGE: JString read _GetKEY_RECOVERY_MESSAGE;
    {class} property KEY_TRANSIENT: JString read _GetKEY_TRANSIENT;
  end;

  [JavaSignature('com/facebook/internal/FacebookRequestErrorClassification')]
  JFacebookRequestErrorClassification = interface(JObject)
    ['{23CA1033-9B34-4526-9EC2-359CC744C26F}']
    function classify(P1: Integer; P2: Integer; P3: Boolean): JFacebookRequestError_Category; cdecl;//Deprecated
    function getLoginRecoverableErrors: JMap; cdecl;//Deprecated
    function getOtherErrors: JMap; cdecl;//Deprecated
    function getRecoveryMessage(P1: JFacebookRequestError_Category): JString; cdecl;//Deprecated
    function getTransientErrors: JMap; cdecl;//Deprecated
  end;
  TJFacebookRequestErrorClassification = class(TJavaGenericImport<JFacebookRequestErrorClassificationClass, JFacebookRequestErrorClassification>) end;

  JFacebookRequestErrorClassification_1Class = interface(JHashMapClass)
    ['{C761DC5B-7019-486B-965C-7C68AAF284CE}']
  end;

  [JavaSignature('com/facebook/internal/FacebookRequestErrorClassification$1')]
  JFacebookRequestErrorClassification_1 = interface(JHashMap)
    ['{EE4DD53F-FCDF-4385-A2EC-1A859692FC5A}']
  end;
  TJFacebookRequestErrorClassification_1 = class(TJavaGenericImport<JFacebookRequestErrorClassification_1Class, JFacebookRequestErrorClassification_1>) end;

  JFacebookRequestErrorClassification_2Class = interface(JHashMapClass)
    ['{2750DCC0-6614-4E16-A29A-DA51D3815C5E}']
  end;

  [JavaSignature('com/facebook/internal/FacebookRequestErrorClassification$2')]
  JFacebookRequestErrorClassification_2 = interface(JHashMap)
    ['{F7D12CB7-986C-41A1-8853-A3CD31455FA1}']
  end;
  TJFacebookRequestErrorClassification_2 = class(TJavaGenericImport<JFacebookRequestErrorClassification_2Class, JFacebookRequestErrorClassification_2>) end;

  JFacebookRequestErrorClassification_3Class = interface(JObjectClass)
    ['{39A56332-5BB2-422A-8E7F-2E24DF2858B4}']
  end;

  [JavaSignature('com/facebook/internal/FacebookRequestErrorClassification$3')]
  JFacebookRequestErrorClassification_3 = interface(JObject)
    ['{31BB12E6-A54A-416E-AFF1-D5FD1C98BD5B}']
  end;
  TJFacebookRequestErrorClassification_3 = class(TJavaGenericImport<JFacebookRequestErrorClassification_3Class, JFacebookRequestErrorClassification_3>) end;

  JWebDialogClass = interface(JDialogClass)
    ['{AC854072-2E32-41B6-AD66-19BE0BF4360E}']
    {class} function _GetCANCEL_URI: JString; cdecl;
    {class} function _GetDEFAULT_THEME: Integer; cdecl;
    {class} function _GetDISABLE_SSL_CHECK_FOR_TESTING: Boolean; cdecl;
    {class} function init(P1: JContext; P2: JString): JWebDialog; cdecl; overload;//Deprecated
    {class} function init(P1: JContext; P2: JString; P3: Integer): JWebDialog; cdecl; overload;//Deprecated
    {class} function init(P1: JContext; P2: JString; P3: JBundle; P4: Integer; P5: JWebDialog_OnCompleteListener): JWebDialog; cdecl; overload;//Deprecated
    {class} property CANCEL_URI: JString read _GetCANCEL_URI;
    {class} property DEFAULT_THEME: Integer read _GetDEFAULT_THEME;
    {class} property DISABLE_SSL_CHECK_FOR_TESTING: Boolean read _GetDISABLE_SSL_CHECK_FOR_TESTING;
  end;

  [JavaSignature('com/facebook/internal/WebDialog')]
  JWebDialog = interface(JDialog)
    ['{F87303C9-F755-4E6E-954E-ADE1EA477CF7}']
    procedure cancel; cdecl;//Deprecated
    procedure dismiss; cdecl;//Deprecated
    function getOnCompleteListener: JWebDialog_OnCompleteListener; cdecl;//Deprecated
    function getWebView: JWebView; cdecl;//Deprecated
    function isListenerCalled: Boolean; cdecl;//Deprecated
    function isPageFinished: Boolean; cdecl;//Deprecated
    procedure onAttachedToWindow; cdecl;//Deprecated
    procedure onCreate(P1: JBundle); cdecl;//Deprecated
    procedure onDetachedFromWindow; cdecl;//Deprecated
    function onKeyDown(P1: Integer; P2: JKeyEvent): Boolean; cdecl;//Deprecated
    procedure onStart; cdecl;//Deprecated
    function parseResponseUri(P1: JString): JBundle; cdecl;//Deprecated
    procedure resize; cdecl;//Deprecated
    procedure sendErrorToListener(P1: JThrowable); cdecl;//Deprecated
    procedure sendSuccessToListener(P1: JBundle); cdecl;//Deprecated
    procedure setExpectedRedirectUrl(P1: JString); cdecl;//Deprecated
    procedure setOnCompleteListener(P1: JWebDialog_OnCompleteListener); cdecl;//Deprecated
  end;
  TJWebDialog = class(TJavaGenericImport<JWebDialogClass, JWebDialog>) end;

  JFacebookWebFallbackDialogClass = interface(JWebDialogClass)
    ['{9D15B401-3DC9-4813-9D02-81EB1A4D07AC}']
    {class} function init(P1: JContext; P2: JString; P3: JString): JFacebookWebFallbackDialog; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/internal/FacebookWebFallbackDialog')]
  JFacebookWebFallbackDialog = interface(JWebDialog)
    ['{5EFA0003-752D-4C2B-819C-BBB9478AEB40}']
    procedure cancel; cdecl;//Deprecated
  end;
  TJFacebookWebFallbackDialog = class(TJavaGenericImport<JFacebookWebFallbackDialogClass, JFacebookWebFallbackDialog>) end;

  JFacebookWebFallbackDialog_1Class = interface(JRunnableClass)
    ['{2E8EC461-99B8-466A-BB9E-8B07AE719B60}']
    {class} function init(P1: JFacebookWebFallbackDialog): JFacebookWebFallbackDialog_1; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/internal/FacebookWebFallbackDialog$1')]
  JFacebookWebFallbackDialog_1 = interface(JRunnable)
    ['{D9C53C8C-72E8-45D3-B400-80D03D9A19F3}']
    procedure run; cdecl;//Deprecated
  end;
  TJFacebookWebFallbackDialog_1 = class(TJavaGenericImport<JFacebookWebFallbackDialog_1Class, JFacebookWebFallbackDialog_1>) end;

  JFileLruCacheClass = interface(JObjectClass)
    ['{94DF38FC-3B08-49FF-963C-82FD24A771D9}']
    {class} function init(P1: JString; P2: JFileLruCache_Limits): JFileLruCache; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/internal/FileLruCache')]
  JFileLruCache = interface(JObject)
    ['{E4FD39B8-7934-401E-8CBD-464E7E941088}']
    procedure clearCache; cdecl;//Deprecated
    function get(P1: JString): JInputStream; cdecl; overload;//Deprecated
    function get(P1: JString; P2: JString): JInputStream; cdecl; overload;//Deprecated
    function getLocation: JString; cdecl;//Deprecated
    function interceptAndPut(P1: JString; P2: JInputStream): JInputStream; cdecl;//Deprecated
    function openPutStream(P1: JString): JOutputStream; cdecl; overload;//Deprecated
    function openPutStream(P1: JString; P2: JString): JOutputStream; cdecl; overload;//Deprecated
    function sizeInBytesForTest: Int64; cdecl;//Deprecated
    function toString: JString; cdecl;//Deprecated
  end;
  TJFileLruCache = class(TJavaGenericImport<JFileLruCacheClass, JFileLruCache>) end;

  JFileLruCache_StreamCloseCallbackClass = interface(IJavaClass)
    ['{208EFD93-98FD-4BE6-9EC8-ED5F413F956C}']
  end;

  [JavaSignature('com/facebook/internal/FileLruCache$StreamCloseCallback')]
  JFileLruCache_StreamCloseCallback = interface(IJavaInstance)
    ['{BE894E2A-500F-462B-9320-9E6B4FD7C795}']
    procedure onClose; cdecl;//Deprecated
  end;
  TJFileLruCache_StreamCloseCallback = class(TJavaGenericImport<JFileLruCache_StreamCloseCallbackClass, JFileLruCache_StreamCloseCallback>) end;

  JFileLruCache_1Class = interface(JFileLruCache_StreamCloseCallbackClass)
    ['{40D282D2-FA3C-4527-B449-1C1A0ABA6E52}']
    {class} function init(P1: JFileLruCache; P2: Int64; P3: JFile; P4: JString): JFileLruCache_1; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/internal/FileLruCache$1')]
  JFileLruCache_1 = interface(JFileLruCache_StreamCloseCallback)
    ['{58E99B28-E78E-4E47-BE15-947DFC3800F8}']
//    function _Getthis$0: JFileLruCache; cdecl;
//    function _Getval$buffer: JFile; cdecl;
//    function _Getval$key: JString; cdecl;
    procedure onClose; cdecl;//Deprecated
//    property this$0: JFileLruCache read _Getthis$0;
//    property val$buffer: JFile read _Getval$buffer;
//    property val$key: JString read _Getval$key;
  end;
  TJFileLruCache_1 = class(TJavaGenericImport<JFileLruCache_1Class, JFileLruCache_1>) end;

  JFileLruCache_2Class = interface(JRunnableClass)
    ['{758FF11A-62FD-4723-8422-46AA57367A0C}']
    {class} function init(P1: JFileLruCache; P2: TJavaObjectArray<JFile>): JFileLruCache_2; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/internal/FileLruCache$2')]
  JFileLruCache_2 = interface(JRunnable)
    ['{80E3F333-5046-4995-A1DB-9FC1ECA194A5}']
//    function _Getthis$0: JFileLruCache; cdecl;
    procedure run; cdecl;//Deprecated
//    property this$0: JFileLruCache read _Getthis$0;
  end;
  TJFileLruCache_2 = class(TJavaGenericImport<JFileLruCache_2Class, JFileLruCache_2>) end;

  JFileLruCache_3Class = interface(JRunnableClass)
    ['{2F5AC1C8-CBA3-4016-9FC5-E030DE79C91E}']
    {class} function init(P1: JFileLruCache): JFileLruCache_3; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/internal/FileLruCache$3')]
  JFileLruCache_3 = interface(JRunnable)
    ['{89D46982-A14D-4D0C-BFC2-11D09CE1091C}']
    procedure run; cdecl;//Deprecated
  end;
  TJFileLruCache_3 = class(TJavaGenericImport<JFileLruCache_3Class, JFileLruCache_3>) end;

  JFileLruCache_BufferFileClass = interface(JObjectClass)
    ['{A435269F-1F8A-4C19-B683-783827957147}']
  end;

  [JavaSignature('com/facebook/internal/FileLruCache$BufferFile')]
  JFileLruCache_BufferFile = interface(JObject)
    ['{374DBA6D-3570-4DCC-A152-009A19324508}']
  end;
  TJFileLruCache_BufferFile = class(TJavaGenericImport<JFileLruCache_BufferFileClass, JFileLruCache_BufferFile>) end;

  JBufferFile_1Class = interface(JFilenameFilterClass)
    ['{D527E752-14DF-40DC-AD2E-B5325CF1132A}']
  end;

  [JavaSignature('com/facebook/internal/FileLruCache$BufferFile$1')]
  JBufferFile_1 = interface(JFilenameFilter)
    ['{915F6499-DC43-4212-9BF4-1C04D96AD343}']
    function accept(P1: JFile; P2: JString): Boolean; cdecl;//Deprecated
  end;
  TJBufferFile_1 = class(TJavaGenericImport<JBufferFile_1Class, JBufferFile_1>) end;

  JBufferFile_2Class = interface(JFilenameFilterClass)
    ['{23247113-9BFF-44B1-8F63-2821CE00385B}']
  end;

  [JavaSignature('com/facebook/internal/FileLruCache$BufferFile$2')]
  JBufferFile_2 = interface(JFilenameFilter)
    ['{A422A07D-E873-48B1-90B9-C38A9A21A024}']
    function accept(P1: JFile; P2: JString): Boolean; cdecl;//Deprecated
  end;
  TJBufferFile_2 = class(TJavaGenericImport<JBufferFile_2Class, JBufferFile_2>) end;

  JFileLruCache_CloseCallbackOutputStreamClass = interface(JOutputStreamClass)
    ['{F4516FC1-77EB-4A35-B5B2-203120F4F8F9}']
    {class} function init(P1: JOutputStream; P2: JFileLruCache_StreamCloseCallback): JFileLruCache_CloseCallbackOutputStream; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/internal/FileLruCache$CloseCallbackOutputStream')]
  JFileLruCache_CloseCallbackOutputStream = interface(JOutputStream)
    ['{2DBD1DEE-5D69-4E68-8A2B-A243A00B3FED}']
    function _Getcallback: JFileLruCache_StreamCloseCallback; cdecl;
    procedure close; cdecl;//Deprecated
    procedure flush; cdecl;//Deprecated
    procedure write(P1: TJavaArray<Byte>); cdecl; overload;//Deprecated
    procedure write(P1: Integer); cdecl; overload;//Deprecated
    procedure write(P1: TJavaArray<Byte>; P2: Integer; P3: Integer); cdecl; overload;//Deprecated
    property callback: JFileLruCache_StreamCloseCallback read _Getcallback;
  end;
  TJFileLruCache_CloseCallbackOutputStream = class(TJavaGenericImport<JFileLruCache_CloseCallbackOutputStreamClass, JFileLruCache_CloseCallbackOutputStream>) end;

  JFileLruCache_CopyingInputStreamClass = interface(JInputStreamClass)
    ['{5063A06F-E445-4DDA-8C54-E4F40B605ADC}']
    {class} function init(P1: JInputStream; P2: JOutputStream): JFileLruCache_CopyingInputStream; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/internal/FileLruCache$CopyingInputStream')]
  JFileLruCache_CopyingInputStream = interface(JInputStream)
    ['{7CADFBBA-EEBB-44A9-944D-4FD86BFAE7F8}']
    function _Getoutput: JOutputStream; cdecl;
    function available: Integer; cdecl;//Deprecated
    procedure close; cdecl;//Deprecated
    procedure mark(P1: Integer); cdecl;//Deprecated
    function markSupported: Boolean; cdecl;//Deprecated
    function read: Integer; cdecl; overload;//Deprecated
    function read(P1: TJavaArray<Byte>): Integer; cdecl; overload;//Deprecated
    function read(P1: TJavaArray<Byte>; P2: Integer; P3: Integer): Integer; cdecl; overload;//Deprecated
    procedure reset; cdecl;//Deprecated
    function skip(P1: Int64): Int64; cdecl;//Deprecated
    property output: JOutputStream read _Getoutput;
  end;
  TJFileLruCache_CopyingInputStream = class(TJavaGenericImport<JFileLruCache_CopyingInputStreamClass, JFileLruCache_CopyingInputStream>) end;

  JFileLruCache_LimitsClass = interface(JObjectClass)
    ['{699BE09A-549A-4049-9BA8-5B06EB50FB56}']
    {class} function init: JFileLruCache_Limits; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/internal/FileLruCache$Limits')]
  JFileLruCache_Limits = interface(JObject)
    ['{ED680B5A-5C23-401B-92A7-884B6422243C}']
  end;
  TJFileLruCache_Limits = class(TJavaGenericImport<JFileLruCache_LimitsClass, JFileLruCache_Limits>) end;

  JFileLruCache_ModifiedFileClass = interface(JComparableClass)
    ['{F9808955-178D-41B7-8356-42CB44A980E1}']
  end;

  [JavaSignature('com/facebook/internal/FileLruCache$ModifiedFile')]
  JFileLruCache_ModifiedFile = interface(JComparable)
    ['{2BFF5188-3B8B-4858-A228-EB04640570BB}']
    function compareTo(P1: JFileLruCache_ModifiedFile): Integer; cdecl; overload;//Deprecated
    function compareTo(P1: JObject): Integer; cdecl; overload;//Deprecated
    function equals(P1: JObject): Boolean; cdecl;//Deprecated
    function hashCode: Integer; cdecl;//Deprecated
  end;
  TJFileLruCache_ModifiedFile = class(TJavaGenericImport<JFileLruCache_ModifiedFileClass, JFileLruCache_ModifiedFile>) end;

  JFileLruCache_StreamHeaderClass = interface(JObjectClass)
    ['{3EF69EC8-06A5-4DCB-B5D8-24E3FC292DD9}']
  end;

  [JavaSignature('com/facebook/internal/FileLruCache$StreamHeader')]
  JFileLruCache_StreamHeader = interface(JObject)
    ['{80FF3B6A-E6FC-41F4-89D7-D8BDDE75ADEC}']
  end;
  TJFileLruCache_StreamHeader = class(TJavaGenericImport<JFileLruCache_StreamHeaderClass, JFileLruCache_StreamHeader>) end;

  JFragmentWrapperClass = interface(JObjectClass)
    ['{0D4FAB6A-727E-4463-8349-89468BB6929E}']
    {class} //function init(P1: Japp_Fragment): JFragmentWrapper; cdecl; overload;//Deprecated
    {class} function init(P1: JFragment): JFragmentWrapper; cdecl; overload;//Deprecated
  end;

  [JavaSignature('com/facebook/internal/FragmentWrapper')]
  JFragmentWrapper = interface(JObject)
    ['{DB39C430-797B-4A2B-8FA1-222E4565B5FB}']
    function getActivity: JActivity; cdecl;//Deprecated
    function getNativeFragment: JFragment; cdecl;//Deprecated
    //function getSupportFragment: Japp_Fragment; cdecl;//Deprecated
    procedure startActivityForResult(P1: JIntent; P2: Integer); cdecl;//Deprecated
  end;
  TJFragmentWrapper = class(TJavaGenericImport<JFragmentWrapperClass, JFragmentWrapper>) end;

  JGraphUtilClass = interface(JObjectClass)
    ['{1E67B228-CBA2-4619-833D-2847CA80D2C7}']
    {class} function createOpenGraphActionForPost(P1: JString): JJSONObject; cdecl;//Deprecated
    {class} function createOpenGraphObjectForPost(P1: JString): JJSONObject; cdecl; overload;//Deprecated
    {class} function createOpenGraphObjectForPost(P1: JString; P2: JString; P3: JString; P4: JString; P5: JString; P6: JJSONObject; P7: JString): JJSONObject; cdecl; overload;//Deprecated
    {class} function init: JGraphUtil; cdecl;//Deprecated
    {class} function isOpenGraphObjectForPost(P1: JJSONObject): Boolean; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/internal/GraphUtil')]
  JGraphUtil = interface(JObject)
    ['{937F9AAE-BC26-4F44-8C23-0DB3C29CE511}']
  end;
  TJGraphUtil = class(TJavaGenericImport<JGraphUtilClass, JGraphUtil>) end;

  JImageDownloaderClass = interface(JObjectClass)
    ['{B8E8B540-3999-4427-B639-8B7A3038AF22}']
    {class} function cancelRequest(P1: JImageRequest): Boolean; cdecl;//Deprecated
    {class} procedure clearCache(P1: JContext); cdecl;//Deprecated
    {class} procedure downloadAsync(P1: JImageRequest); cdecl;//Deprecated
    {class} function init: JImageDownloader; cdecl;//Deprecated
    {class} procedure prioritizeRequest(P1: JImageRequest); cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/internal/ImageDownloader')]
  JImageDownloader = interface(JObject)
    ['{8B5727F9-0E47-44EA-96A5-4CDEB456666A}']
  end;
  TJImageDownloader = class(TJavaGenericImport<JImageDownloaderClass, JImageDownloader>) end;

  JImageDownloader_1Class = interface(JRunnableClass)
    ['{99341EA6-03AC-4658-8934-E1A10EDFF8BE}']
    {class} function init(P1: JImageRequest; P2: JException; P3: Boolean; P4: JBitmap; P5: JImageRequest_Callback): JImageDownloader_1; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/internal/ImageDownloader$1')]
  JImageDownloader_1 = interface(JRunnable)
    ['{E895A826-E0FE-447D-B39F-27FDA2A64AA0}']
//    function _Getval$bitmap: JBitmap; cdecl;
//    function _Getval$callback: JImageRequest_Callback; cdecl;
//    function _Getval$error: JException; cdecl;
//    function _Getval$isCachedRedirect: Boolean; cdecl;
    procedure run; cdecl;//Deprecated
//    property val$bitmap: JBitmap read _Getval$bitmap;
//    property val$callback: JImageRequest_Callback read _Getval$callback;
//    property val$error: JException read _Getval$error;
//    property val$isCachedRedirect: Boolean read _Getval$isCachedRedirect;
  end;
  TJImageDownloader_1 = class(TJavaGenericImport<JImageDownloader_1Class, JImageDownloader_1>) end;

  JImageDownloader_CacheReadWorkItemClass = interface(JRunnableClass)
    ['{B887411D-8474-43E2-A373-0C0517377089}']
  end;

  [JavaSignature('com/facebook/internal/ImageDownloader$CacheReadWorkItem')]
  JImageDownloader_CacheReadWorkItem = interface(JRunnable)
    ['{8CC468FA-D8F2-44E5-93B0-A104CB90DB25}']
    procedure run; cdecl;//Deprecated
  end;
  TJImageDownloader_CacheReadWorkItem = class(TJavaGenericImport<JImageDownloader_CacheReadWorkItemClass, JImageDownloader_CacheReadWorkItem>) end;

  JImageDownloader_DownloadImageWorkItemClass = interface(JRunnableClass)
    ['{AA2C0411-7192-43F1-80DF-E9DBE7FA6E38}']
  end;

  [JavaSignature('com/facebook/internal/ImageDownloader$DownloadImageWorkItem')]
  JImageDownloader_DownloadImageWorkItem = interface(JRunnable)
    ['{393AAA1B-9201-478C-AB83-24735AC5BCB1}']
    procedure run; cdecl;//Deprecated
  end;
  TJImageDownloader_DownloadImageWorkItem = class(TJavaGenericImport<JImageDownloader_DownloadImageWorkItemClass, JImageDownloader_DownloadImageWorkItem>) end;

  JImageDownloader_DownloaderContextClass = interface(JObjectClass)
    ['{E0930442-9FE7-456B-B348-F691A76166EC}']
    {class} function init(P1: JImageDownloader_1): JImageDownloader_DownloaderContext; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/internal/ImageDownloader$DownloaderContext')]
  JImageDownloader_DownloaderContext = interface(JObject)
    ['{B25E88DB-B4CE-4091-A78C-F5CF32FF0CD4}']
    function _GetisCancelled: Boolean; cdecl;
    procedure _SetisCancelled(Value: Boolean); cdecl;
    function _Getrequest: JImageRequest; cdecl;
    procedure _Setrequest(Value: JImageRequest); cdecl;
    property isCancelled: Boolean read _GetisCancelled write _SetisCancelled;
    property request: JImageRequest read _Getrequest write _Setrequest;
  end;
  TJImageDownloader_DownloaderContext = class(TJavaGenericImport<JImageDownloader_DownloaderContextClass, JImageDownloader_DownloaderContext>) end;

  JImageDownloader_RequestKeyClass = interface(JObjectClass)
    ['{954EC0CD-42B2-4F89-A9D7-42565A7F4D77}']
    {class} function init(P1: Jnet_Uri; P2: JObject): JImageDownloader_RequestKey; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/internal/ImageDownloader$RequestKey')]
  JImageDownloader_RequestKey = interface(JObject)
    ['{E6921721-2B7C-4DC0-99ED-A4B54FCD1E78}']
    function _Gettag: JObject; cdecl;
    procedure _Settag(Value: JObject); cdecl;
    function equals(P1: JObject): Boolean; cdecl;//Deprecated
    function hashCode: Integer; cdecl;//Deprecated
    property tag: JObject read _Gettag write _Settag;
  end;
  TJImageDownloader_RequestKey = class(TJavaGenericImport<JImageDownloader_RequestKeyClass, JImageDownloader_RequestKey>) end;

  JImageRequestClass = interface(JObjectClass)
    ['{6E72E448-54D9-4761-BE3F-11C5A7BB99BD}']
    {class} function _GetUNSPECIFIED_DIMENSION: Integer; cdecl;
    {class} function getProfilePictureUri(P1: JString; P2: Integer; P3: Integer): Jnet_Uri; cdecl;//Deprecated
    {class} function init(P1: JImageRequest_Builder; P2: JImageRequest_1): JImageRequest; cdecl;//Deprecated
    {class} property UNSPECIFIED_DIMENSION: Integer read _GetUNSPECIFIED_DIMENSION;
  end;

  [JavaSignature('com/facebook/internal/ImageRequest')]
  JImageRequest = interface(JObject)
    ['{06491B4A-A708-4480-A5AB-75AB7914DB69}']
    function getCallback: JImageRequest_Callback; cdecl;//Deprecated
    function getCallerTag: JObject; cdecl;//Deprecated
    function getContext: JContext; cdecl;//Deprecated
    function getImageUri: Jnet_Uri; cdecl;//Deprecated
    function isCachedRedirectAllowed: Boolean; cdecl;//Deprecated
  end;
  TJImageRequest = class(TJavaGenericImport<JImageRequestClass, JImageRequest>) end;

  JImageRequest_1Class = interface(JObjectClass)
    ['{9296B0C3-051C-44EB-AEEB-A644A6240E48}']
  end;

  [JavaSignature('com/facebook/internal/ImageRequest$1')]
  JImageRequest_1 = interface(JObject)
    ['{508C63CE-84B7-4942-AE44-8F83FFD01A87}']
  end;
  TJImageRequest_1 = class(TJavaGenericImport<JImageRequest_1Class, JImageRequest_1>) end;

  JImageRequest_BuilderClass = interface(JObjectClass)
    ['{B65FE6F7-CFFE-4101-AF0B-7CA837B4BED2}']
    {class} function init(P1: JContext; P2: Jnet_Uri): JImageRequest_Builder; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/internal/ImageRequest$Builder')]
  JImageRequest_Builder = interface(JObject)
    ['{0E8FF624-78F8-4ED2-A4E7-9E6D5DE9B47B}']
    function build: JImageRequest; cdecl;//Deprecated
    function setAllowCachedRedirects(P1: Boolean): JImageRequest_Builder; cdecl;//Deprecated
    function setCallback(P1: JImageRequest_Callback): JImageRequest_Builder; cdecl;//Deprecated
    function setCallerTag(P1: JObject): JImageRequest_Builder; cdecl;//Deprecated
  end;
  TJImageRequest_Builder = class(TJavaGenericImport<JImageRequest_BuilderClass, JImageRequest_Builder>) end;

  JImageRequest_CallbackClass = interface(IJavaClass)
    ['{67ED52C0-8AFA-4103-A86C-EA25167B8E93}']
  end;

  [JavaSignature('com/facebook/internal/ImageRequest$Callback')]
  JImageRequest_Callback = interface(IJavaInstance)
    ['{838CE2BC-4F89-4C15-915A-FE2A1682AB33}']
    procedure onCompleted(P1: JImageResponse); cdecl;//Deprecated
  end;
  TJImageRequest_Callback = class(TJavaGenericImport<JImageRequest_CallbackClass, JImageRequest_Callback>) end;

  JImageResponseClass = interface(JObjectClass)
    ['{2F84B65B-49C7-41F6-8EA5-BD553C0B5EAF}']
  end;

  [JavaSignature('com/facebook/internal/ImageResponse')]
  JImageResponse = interface(JObject)
    ['{9ECD141A-786F-4E11-8CDB-2B8C3B6A67A1}']
    function getBitmap: JBitmap; cdecl;//Deprecated
    function getError: JException; cdecl;//Deprecated
    function getRequest: JImageRequest; cdecl;//Deprecated
    function isCachedRedirect: Boolean; cdecl;//Deprecated
  end;
  TJImageResponse = class(TJavaGenericImport<JImageResponseClass, JImageResponse>) end;

  JImageResponseCacheClass = interface(JObjectClass)
    ['{BCA8618E-B17C-478A-9DDD-09D893F81924}']
    {class} procedure clearCache(P1: JContext); cdecl;//Deprecated
    {class} function getCache(P1: JContext): JFileLruCache; cdecl;//Deprecated
    {class} function getCachedImageStream(P1: Jnet_Uri; P2: JContext): JInputStream; cdecl;//Deprecated
    {class} function init: JImageResponseCache; cdecl;//Deprecated
    {class} function interceptAndCacheImageStream(P1: JContext; P2: JHttpURLConnection): JInputStream; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/internal/ImageResponseCache')]
  JImageResponseCache = interface(JObject)
    ['{AD02C5B8-8784-491E-9A49-3D23DD4A2B85}']
  end;
  TJImageResponseCache = class(TJavaGenericImport<JImageResponseCacheClass, JImageResponseCache>) end;

  JFilterInputStreamClass = interface(JInputStreamClass)
    ['{F86EBD21-681A-43DA-BDF9-A28ACD4A7EE5}']
    {class} function available: Integer; cdecl;//Deprecated
    {class} function read: Integer; cdecl; overload;//Deprecated
    {class} function read(buffer: TJavaArray<Byte>; byteOffset: Integer; byteCount: Integer): Integer; cdecl; overload;//Deprecated
    {class} procedure reset; cdecl;//Deprecated
  end;

  [JavaSignature('java/io/FilterInputStream')]
  JFilterInputStream = interface(JInputStream)
    ['{9F9FA98A-C38C-4DDE-9600-073E9DA3BA85}']
    procedure close; cdecl;//Deprecated
    procedure mark(readlimit: Integer); cdecl;//Deprecated
    function markSupported: Boolean; cdecl;//Deprecated
    function skip(byteCount: Int64): Int64; cdecl;//Deprecated
  end;
  TJFilterInputStream = class(TJavaGenericImport<JFilterInputStreamClass, JFilterInputStream>) end;

  JBufferedInputStreamClass = interface(JFilterInputStreamClass)
    ['{46CAE4C7-AEEB-4593-9ADA-27D353C50B4B}']
    {class} function init(&in:  JInputStream): JBufferedInputStream; cdecl; overload;//Deprecated
    {class} function init(&in:  JInputStream; size: Integer): JBufferedInputStream; cdecl; overload;//Deprecated
    {class} function available: Integer; cdecl;//Deprecated
    {class} function read: Integer; cdecl; overload;//Deprecated
    {class} function read(buffer: TJavaArray<Byte>; byteOffset: Integer; byteCount: Integer): Integer; cdecl; overload;//Deprecated
    {class} procedure reset; cdecl;//Deprecated
  end;

  [JavaSignature('java/io/BufferedInputStream')]
  JBufferedInputStream = interface(JFilterInputStream)
    ['{CF872199-D2D0-4691-AD94-ABE0EACFDC46}']
    procedure close; cdecl;//Deprecated
    procedure mark(readlimit: Integer); cdecl;//Deprecated
    function markSupported: Boolean; cdecl;//Deprecated
    function skip(byteCount: Int64): Int64; cdecl;
  end;
  TJBufferedInputStream = class(TJavaGenericImport<JBufferedInputStreamClass, JBufferedInputStream>) end;

  JImageResponseCache_BufferedHttpInputStreamClass = interface(JBufferedInputStreamClass)
    ['{48CFF701-EA67-47E6-8DF2-542978F68331}']
    {class} function init(P1: JInputStream; P2: JHttpURLConnection): JImageResponseCache_BufferedHttpInputStream; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/internal/ImageResponseCache$BufferedHttpInputStream')]
  JImageResponseCache_BufferedHttpInputStream = interface(JBufferedInputStream)
    ['{913160D5-95AC-4984-9F2B-652412B8C470}']
    procedure close; cdecl;//Deprecated
  end;
  TJImageResponseCache_BufferedHttpInputStream = class(TJavaGenericImport<JImageResponseCache_BufferedHttpInputStreamClass, JImageResponseCache_BufferedHttpInputStream>) end;

  JInternalSettingsClass = interface(JObjectClass)
    ['{AE41628E-02AC-47F7-86C3-4DDFFBF6288D}']
    {class} function getCustomUserAgent: JString; cdecl;//Deprecated
    {class} function init: JInternalSettings; cdecl;//Deprecated
    {class} procedure setCustomUserAgent(P1: JString); cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/internal/InternalSettings')]
  JInternalSettings = interface(JObject)
    ['{6B4A566E-5D80-4A77-8071-D09F82762E81}']
  end;
  TJInternalSettings = class(TJavaGenericImport<JInternalSettingsClass, JInternalSettings>) end;

  JJsonUtilClass = interface(JObjectClass)
    ['{981B0D0D-17D6-46E3-9EC3-2B18B6DBC071}']
  end;

  [JavaSignature('com/facebook/internal/JsonUtil')]
  JJsonUtil = interface(JObject)
    ['{E8CAD602-ECD1-4AC0-95F4-0DE7286B2121}']
  end;
  TJJsonUtil = class(TJavaGenericImport<JJsonUtilClass, JJsonUtil>) end;

  JMap_EntryClass = interface(IJavaClass)
    ['{CC37442E-BEA1-4D74-827E-0C89FA654831}']
    {class} function equals(&object: JObject): Boolean; cdecl;//Deprecated
    {class} function setValue(&object: JObject): JObject; cdecl;//Deprecated
  end;

  [JavaSignature('java/util/Map$Entry')]
  JMap_Entry = interface(IJavaInstance)
    ['{9D6A0684-A3FC-4629-A08A-36EDDA31753D}']
    function getKey: JObject; cdecl;//Deprecated
    function getValue: JObject; cdecl;//Deprecated
    function hashCode: Integer; cdecl;//Deprecated
  end;
  TJMap_Entry = class(TJavaGenericImport<JMap_EntryClass, JMap_Entry>) end;

  JJsonUtil_JSONObjectEntryClass = interface(JMap_EntryClass)
    ['{ABD93666-5C42-4F73-B548-E83DD4098D7C}']
  end;

  [JavaSignature('com/facebook/internal/JsonUtil$JSONObjectEntry')]
  JJsonUtil_JSONObjectEntry = interface(JMap_Entry)
    ['{00E96C49-AA9F-40A3-8D92-CAA7C40738AD}']
    function getKey: JString; cdecl;//Deprecated
    function getValue: JObject; cdecl;//Deprecated
    function setValue(P1: JObject): JObject; cdecl;//Deprecated
  end;
  TJJsonUtil_JSONObjectEntry = class(TJavaGenericImport<JJsonUtil_JSONObjectEntryClass, JJsonUtil_JSONObjectEntry>) end;

  JLockOnGetVariableClass = interface(JObjectClass)
    ['{E092ED54-6A5C-4D65-9A23-BED2CB02F369}']
    {class} function init(P1: JCallable): JLockOnGetVariable; cdecl; overload;//Deprecated
    {class} function init(P1: JObject): JLockOnGetVariable; cdecl; overload;//Deprecated
  end;

  [JavaSignature('com/facebook/internal/LockOnGetVariable')]
  JLockOnGetVariable = interface(JObject)
    ['{DEE4DF31-9182-46F6-9FD2-B461B4EFC62E}']
    function getValue: JObject; cdecl;//Deprecated
  end;
  TJLockOnGetVariable = class(TJavaGenericImport<JLockOnGetVariableClass, JLockOnGetVariable>) end;

  JLockOnGetVariable_1Class = interface(JCallableClass)
    ['{27AB346A-F3DD-46B8-BBC3-1DC30E1AD4CD}']
    {class} function init(P1: JLockOnGetVariable; P2: JCallable): JLockOnGetVariable_1; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/internal/LockOnGetVariable$1')]
  JLockOnGetVariable_1 = interface(JCallable)
    ['{ED0F72F6-0A2D-491C-9762-3EEEF2F3EF2B}']
//    function _Getthis$0: JLockOnGetVariable; cdecl;
    function call: JVoid; cdecl;//Deprecated
//    property this$0: JLockOnGetVariable read _Getthis$0;
  end;
  TJLockOnGetVariable_1 = class(TJavaGenericImport<JLockOnGetVariable_1Class, JLockOnGetVariable_1>) end;

  Jinternal_LoggerClass = interface(JObjectClass)
    ['{6CCCE323-8890-4018-A3AF-E958BB0601EB}']
    {class} function _GetLOG_TAG_BASE: JString; cdecl;
    {class} function init(P1: JLoggingBehavior; P2: JString): Jinternal_Logger; cdecl;//Deprecated
    {class} procedure log(P1: JLoggingBehavior; P2: JString; P3: JString); cdecl; overload;//Deprecated
    {class} procedure log(P1: JLoggingBehavior; P2: Integer; P3: JString; P4: JString); cdecl; overload;//Deprecated
    {class} procedure registerAccessToken(P1: JString); cdecl;//Deprecated
    {class} procedure registerStringToReplace(P1: JString; P2: JString); cdecl;//Deprecated
    {class} property LOG_TAG_BASE: JString read _GetLOG_TAG_BASE;
  end;

  [JavaSignature('com/facebook/internal/Logger')]
  Jinternal_Logger = interface(JObject)
    ['{F7A47CC4-9ED0-4EBE-A080-1DF5D3EEFB3D}']
    procedure append(P1: JString); cdecl; overload;//Deprecated
    //procedure append(P1: JStringBuilder); cdecl; overload;//Deprecated
    procedure appendKeyValue(P1: JString; P2: JObject); cdecl;//Deprecated
    function getContents: JString; cdecl;//Deprecated
    function getPriority: Integer; cdecl;//Deprecated
    procedure log; cdecl; overload;//Deprecated
    procedure logString(P1: JString); cdecl;//Deprecated
    procedure setPriority(P1: Integer); cdecl;//Deprecated
  end;
  TJinternal_Logger = class(TJavaGenericImport<Jinternal_LoggerClass, Jinternal_Logger>) end;

  JLoginAuthorizationTypeClass = interface(JEnumClass)
    ['{F444B366-9DE0-4B27-B5A9-80640711FA59}']
    {class} function _GetPUBLISH: JLoginAuthorizationType; cdecl;
    {class} function _GetREAD: JLoginAuthorizationType; cdecl;
    {class} function valueOf(P1: JString): JLoginAuthorizationType; cdecl;//Deprecated
    {class} function values: TJavaObjectArray<JLoginAuthorizationType>; cdecl;//Deprecated
    {class} property PUBLISH: JLoginAuthorizationType read _GetPUBLISH;
    {class} property READ: JLoginAuthorizationType read _GetREAD;
  end;

  [JavaSignature('com/facebook/internal/LoginAuthorizationType')]
  JLoginAuthorizationType = interface(JEnum)
    ['{3D0F575C-43A5-468B-A5A7-949A797DC568}']
  end;
  TJLoginAuthorizationType = class(TJavaGenericImport<JLoginAuthorizationTypeClass, JLoginAuthorizationType>) end;

  JMutableClass = interface(JObjectClass)
    ['{3B2D4CD8-DF2E-4E7C-BBE0-B53EEA719D77}']
    {class} function init(P1: JObject): JMutable; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/internal/Mutable')]
  JMutable = interface(JObject)
    ['{562B367B-D1AA-41B8-9791-187D6AB917F3}']
    function _Getvalue: JObject; cdecl;
    procedure _Setvalue(Value: JObject); cdecl;
    property value: JObject read _Getvalue write _Setvalue;
  end;
  TJMutable = class(TJavaGenericImport<JMutableClass, JMutable>) end;

  JNativeAppCallAttachmentStoreClass = interface(JObjectClass)
    ['{A96354A1-0CBB-47E5-881B-9BD51053A715}']
    {class} procedure addAttachments(P1: JCollection); cdecl;//Deprecated
    {class} procedure cleanupAllAttachments; cdecl;//Deprecated
    {class} procedure cleanupAttachmentsForCall(P1: JUUID); cdecl;//Deprecated
    {class} function createAttachment(P1: JUUID; P2: JBitmap): JNativeAppCallAttachmentStore_Attachment; cdecl; overload;//Deprecated
    {class} function createAttachment(P1: JUUID; P2: Jnet_Uri): JNativeAppCallAttachmentStore_Attachment; cdecl; overload;//Deprecated
    {class} function ensureAttachmentsDirectoryExists: JFile; cdecl;//Deprecated
    {class} function getAttachmentFile(P1: JUUID; P2: JString; P3: Boolean): JFile; cdecl;//Deprecated
    {class} function getAttachmentsDirectory: JFile; cdecl;//Deprecated
    {class} function getAttachmentsDirectoryForCall(P1: JUUID; P2: Boolean): JFile; cdecl;//Deprecated
    {class} function openAttachment(P1: JUUID; P2: JString): JFile; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/internal/NativeAppCallAttachmentStore')]
  JNativeAppCallAttachmentStore = interface(JObject)
    ['{13D0F5A7-E1DD-470B-A7B4-5C8FE9A3C642}']
  end;
  TJNativeAppCallAttachmentStore = class(TJavaGenericImport<JNativeAppCallAttachmentStoreClass, JNativeAppCallAttachmentStore>) end;

  JNativeAppCallAttachmentStore_1Class = interface(JObjectClass)
    ['{D0EACD33-22DF-407C-8D9D-3C69453F29CE}']
  end;

  [JavaSignature('com/facebook/internal/NativeAppCallAttachmentStore$1')]
  JNativeAppCallAttachmentStore_1 = interface(JObject)
    ['{24ADEE46-6B36-4F87-992B-E51461D41C20}']
  end;
  TJNativeAppCallAttachmentStore_1 = class(TJavaGenericImport<JNativeAppCallAttachmentStore_1Class, JNativeAppCallAttachmentStore_1>) end;

  JNativeAppCallAttachmentStore_AttachmentClass = interface(JObjectClass)
    ['{E2528863-6A23-44F8-8704-96E0F11A7673}']
  end;

  [JavaSignature('com/facebook/internal/NativeAppCallAttachmentStore$Attachment')]
  JNativeAppCallAttachmentStore_Attachment = interface(JObject)
    ['{34059068-95DC-4497-829C-0D4B1A87E9D6}']
    function getAttachmentUrl: JString; cdecl;//Deprecated
  end;
  TJNativeAppCallAttachmentStore_Attachment = class(TJavaGenericImport<JNativeAppCallAttachmentStore_AttachmentClass, JNativeAppCallAttachmentStore_Attachment>) end;

  JNativeProtocolClass = interface(JObjectClass)
    ['{4546F8B2-4707-49CB-87EE-A53D3798C967}']
    {class} function _GetACTION_APPINVITE_DIALOG: JString; cdecl;
    {class} function _GetACTION_FEED_DIALOG: JString; cdecl;
    {class} function _GetACTION_LIKE_DIALOG: JString; cdecl;
    {class} function _GetACTION_MESSAGE_DIALOG: JString; cdecl;
    {class} function _GetACTION_OGACTIONPUBLISH_DIALOG: JString; cdecl;
    {class} function _GetACTION_OGMESSAGEPUBLISH_DIALOG: JString; cdecl;
    {class} function _GetAUDIENCE_EVERYONE: JString; cdecl;
    {class} function _GetAUDIENCE_FRIENDS: JString; cdecl;
    {class} function _GetAUDIENCE_ME: JString; cdecl;
    {class} function _GetBRIDGE_ARG_ACTION_ID_STRING: JString; cdecl;
    {class} function _GetBRIDGE_ARG_APP_NAME_STRING: JString; cdecl;
    {class} function _GetBRIDGE_ARG_ERROR_BUNDLE: JString; cdecl;
    {class} function _GetBRIDGE_ARG_ERROR_CODE: JString; cdecl;
    {class} function _GetBRIDGE_ARG_ERROR_DESCRIPTION: JString; cdecl;
    {class} function _GetBRIDGE_ARG_ERROR_JSON: JString; cdecl;
    {class} function _GetBRIDGE_ARG_ERROR_SUBCODE: JString; cdecl;
    {class} function _GetBRIDGE_ARG_ERROR_TYPE: JString; cdecl;
    {class} function _GetERROR_APPLICATION_ERROR: JString; cdecl;
    {class} function _GetERROR_NETWORK_ERROR: JString; cdecl;
    {class} function _GetERROR_PERMISSION_DENIED: JString; cdecl;
    {class} function _GetERROR_PROTOCOL_ERROR: JString; cdecl;
    {class} function _GetERROR_SERVICE_DISABLED: JString; cdecl;
    {class} function _GetERROR_UNKNOWN_ERROR: JString; cdecl;
    {class} function _GetERROR_USER_CANCELED: JString; cdecl;
    {class} function _GetEXTRA_ACCESS_TOKEN: JString; cdecl;
    {class} function _GetEXTRA_APPLICATION_ID: JString; cdecl;
    {class} function _GetEXTRA_APPLICATION_NAME: JString; cdecl;
    {class} function _GetEXTRA_DIALOG_COMPLETE_KEY: JString; cdecl;
    {class} function _GetEXTRA_DIALOG_COMPLETION_GESTURE_KEY: JString; cdecl;
    {class} function _GetEXTRA_EXPIRES_SECONDS_SINCE_EPOCH: JString; cdecl;
    {class} function _GetEXTRA_GET_INSTALL_DATA_PACKAGE: JString; cdecl;
    {class} function _GetEXTRA_PERMISSIONS: JString; cdecl;
    {class} function _GetEXTRA_PROTOCOL_ACTION: JString; cdecl;
    {class} function _GetEXTRA_PROTOCOL_BRIDGE_ARGS: JString; cdecl;
    {class} function _GetEXTRA_PROTOCOL_CALL_ID: JString; cdecl;
    {class} function _GetEXTRA_PROTOCOL_METHOD_ARGS: JString; cdecl;
    {class} function _GetEXTRA_PROTOCOL_METHOD_RESULTS: JString; cdecl;
    {class} function _GetEXTRA_PROTOCOL_VERSION: JString; cdecl;
    {class} function _GetEXTRA_PROTOCOL_VERSIONS: JString; cdecl;
    {class} function _GetEXTRA_USER_ID: JString; cdecl;
    {class} function _GetFACEBOOK_PROXY_AUTH_APP_ID_KEY: JString; cdecl;
    {class} function _GetFACEBOOK_PROXY_AUTH_E2E_KEY: JString; cdecl;
    {class} function _GetFACEBOOK_PROXY_AUTH_PERMISSIONS_KEY: JString; cdecl;
    {class} function _GetIMAGE_URL_KEY: JString; cdecl;
    {class} function _GetIMAGE_USER_GENERATED_KEY: JString; cdecl;
    {class} function _GetINTENT_ACTION_PLATFORM_ACTIVITY: JString; cdecl;
    {class} function _GetINTENT_ACTION_PLATFORM_SERVICE: JString; cdecl;
    {class} function _GetMESSAGE_GET_ACCESS_TOKEN_REPLY: Integer; cdecl;
    {class} function _GetMESSAGE_GET_ACCESS_TOKEN_REQUEST: Integer; cdecl;
    {class} function _GetMESSAGE_GET_INSTALL_DATA_REPLY: Integer; cdecl;
    {class} function _GetMESSAGE_GET_INSTALL_DATA_REQUEST: Integer; cdecl;
    {class} function _GetMESSAGE_GET_LIKE_STATUS_REPLY: Integer; cdecl;
    {class} function _GetMESSAGE_GET_LIKE_STATUS_REQUEST: Integer; cdecl;
    {class} function _GetMESSAGE_GET_PROTOCOL_VERSIONS_REPLY: Integer; cdecl;
    {class} function _GetMESSAGE_GET_PROTOCOL_VERSIONS_REQUEST: Integer; cdecl;
    {class} function _GetNO_PROTOCOL_AVAILABLE: Integer; cdecl;
    {class} function _GetOPEN_GRAPH_CREATE_OBJECT_KEY: JString; cdecl;
    {class} function _GetPROTOCOL_VERSION_20121101: Integer; cdecl;
    {class} function _GetPROTOCOL_VERSION_20130502: Integer; cdecl;
    {class} function _GetPROTOCOL_VERSION_20130618: Integer; cdecl;
    {class} function _GetPROTOCOL_VERSION_20131107: Integer; cdecl;
    {class} function _GetPROTOCOL_VERSION_20140204: Integer; cdecl;
    {class} function _GetPROTOCOL_VERSION_20140324: Integer; cdecl;
    {class} function _GetPROTOCOL_VERSION_20140701: Integer; cdecl;
    {class} function _GetPROTOCOL_VERSION_20141001: Integer; cdecl;
    {class} function _GetPROTOCOL_VERSION_20141028: Integer; cdecl;
    {class} function _GetPROTOCOL_VERSION_20141107: Integer; cdecl;
    {class} function _GetPROTOCOL_VERSION_20141218: Integer; cdecl;
    {class} function _GetPROTOCOL_VERSION_20160327: Integer; cdecl;
    {class} function _GetRESULT_ARGS_ACCESS_TOKEN: JString; cdecl;
    {class} function _GetRESULT_ARGS_DIALOG_COMPLETE_KEY: JString; cdecl;
    {class} function _GetRESULT_ARGS_DIALOG_COMPLETION_GESTURE_KEY: JString; cdecl;
    {class} function _GetRESULT_ARGS_EXPIRES_SECONDS_SINCE_EPOCH: JString; cdecl;
    {class} function _GetRESULT_ARGS_PERMISSIONS: JString; cdecl;
    {class} function _GetSTATUS_ERROR_CODE: JString; cdecl;
    {class} function _GetSTATUS_ERROR_DESCRIPTION: JString; cdecl;
    {class} function _GetSTATUS_ERROR_JSON: JString; cdecl;
    {class} function _GetSTATUS_ERROR_SUBCODE: JString; cdecl;
    {class} function _GetSTATUS_ERROR_TYPE: JString; cdecl;
    {class} function _GetWEB_DIALOG_ACTION: JString; cdecl;
    {class} function _GetWEB_DIALOG_IS_FALLBACK: JString; cdecl;
    {class} function _GetWEB_DIALOG_PARAMS: JString; cdecl;
    {class} function _GetWEB_DIALOG_URL: JString; cdecl;
    {class} function computeLatestAvailableVersionFromVersionSpec(P1: JTreeSet; P2: Integer; P3: TJavaArray<Integer>): Integer; cdecl;//Deprecated
    {class} function createBundleForException(P1: JFacebookException): JBundle; cdecl;//Deprecated
    {class} function createPlatformActivityIntent(P1: JContext; P2: JString; P3: JString; P4: Integer; P5: JBundle): JIntent; cdecl;//Deprecated
    {class} function createPlatformServiceIntent(P1: JContext): JIntent; cdecl;//Deprecated
    {class} function createProtocolResultIntent(P1: JIntent; P2: JBundle; P3: JFacebookException): JIntent; cdecl;//Deprecated
    {class} function createProxyAuthIntent(P1: JContext; P2: JString; P3: JCollection; P4: JString; P5: Boolean; P6: Boolean; P7: JDefaultAudience; P8: JString): JIntent; cdecl;//Deprecated
    {class} function createTokenRefreshIntent(P1: JContext): JIntent; cdecl;//Deprecated
    {class} function getBridgeArgumentsFromIntent(P1: JIntent): JBundle; cdecl;//Deprecated
    {class} function getCallIdFromIntent(P1: JIntent): JUUID; cdecl;//Deprecated
    {class} function getErrorDataFromResultIntent(P1: JIntent): JBundle; cdecl;//Deprecated
    {class} function getExceptionFromErrorData(P1: JBundle): JFacebookException; cdecl;//Deprecated
    {class} function getLatestAvailableProtocolVersionForAction(P1: JString; P2: TJavaArray<Integer>): Integer; cdecl;//Deprecated
    {class} function getLatestAvailableProtocolVersionForService(P1: Integer): Integer; cdecl;//Deprecated
    {class} function getLatestKnownVersion: Integer; cdecl;//Deprecated
    {class} function getMethodArgumentsFromIntent(P1: JIntent): JBundle; cdecl;//Deprecated
    {class} function getProtocolVersionFromIntent(P1: JIntent): Integer; cdecl;//Deprecated
    {class} function getSuccessResultsFromIntent(P1: JIntent): JBundle; cdecl;//Deprecated
    {class} function init: JNativeProtocol; cdecl;//Deprecated
    {class} function isErrorResult(P1: JIntent): Boolean; cdecl;//Deprecated
    {class} function isVersionCompatibleWithBucketedIntent(P1: Integer): Boolean; cdecl;//Deprecated
    {class} procedure setupProtocolRequestIntent(P1: JIntent; P2: JString; P3: JString; P4: Integer; P5: JBundle); cdecl;//Deprecated
    {class} procedure updateAllAvailableProtocolVersionsAsync; cdecl;//Deprecated
    {class} function validateActivityIntent(P1: JContext; P2: JIntent; P3: JNativeProtocol_NativeAppInfo): JIntent; cdecl;//Deprecated
    {class} function validateServiceIntent(P1: JContext; P2: JIntent; P3: JNativeProtocol_NativeAppInfo): JIntent; cdecl;//Deprecated
    {class} property ACTION_APPINVITE_DIALOG: JString read _GetACTION_APPINVITE_DIALOG;
    {class} property ACTION_FEED_DIALOG: JString read _GetACTION_FEED_DIALOG;
    {class} property ACTION_LIKE_DIALOG: JString read _GetACTION_LIKE_DIALOG;
    {class} property ACTION_MESSAGE_DIALOG: JString read _GetACTION_MESSAGE_DIALOG;
    {class} property ACTION_OGACTIONPUBLISH_DIALOG: JString read _GetACTION_OGACTIONPUBLISH_DIALOG;
    {class} property ACTION_OGMESSAGEPUBLISH_DIALOG: JString read _GetACTION_OGMESSAGEPUBLISH_DIALOG;
    {class} property AUDIENCE_EVERYONE: JString read _GetAUDIENCE_EVERYONE;
    {class} property AUDIENCE_FRIENDS: JString read _GetAUDIENCE_FRIENDS;
    {class} property AUDIENCE_ME: JString read _GetAUDIENCE_ME;
    {class} property BRIDGE_ARG_ACTION_ID_STRING: JString read _GetBRIDGE_ARG_ACTION_ID_STRING;
    {class} property BRIDGE_ARG_APP_NAME_STRING: JString read _GetBRIDGE_ARG_APP_NAME_STRING;
    {class} property BRIDGE_ARG_ERROR_BUNDLE: JString read _GetBRIDGE_ARG_ERROR_BUNDLE;
    {class} property BRIDGE_ARG_ERROR_CODE: JString read _GetBRIDGE_ARG_ERROR_CODE;
    {class} property BRIDGE_ARG_ERROR_DESCRIPTION: JString read _GetBRIDGE_ARG_ERROR_DESCRIPTION;
    {class} property BRIDGE_ARG_ERROR_JSON: JString read _GetBRIDGE_ARG_ERROR_JSON;
    {class} property BRIDGE_ARG_ERROR_SUBCODE: JString read _GetBRIDGE_ARG_ERROR_SUBCODE;
    {class} property BRIDGE_ARG_ERROR_TYPE: JString read _GetBRIDGE_ARG_ERROR_TYPE;
    {class} property ERROR_APPLICATION_ERROR: JString read _GetERROR_APPLICATION_ERROR;
    {class} property ERROR_NETWORK_ERROR: JString read _GetERROR_NETWORK_ERROR;
    {class} property ERROR_PERMISSION_DENIED: JString read _GetERROR_PERMISSION_DENIED;
    {class} property ERROR_PROTOCOL_ERROR: JString read _GetERROR_PROTOCOL_ERROR;
    {class} property ERROR_SERVICE_DISABLED: JString read _GetERROR_SERVICE_DISABLED;
    {class} property ERROR_UNKNOWN_ERROR: JString read _GetERROR_UNKNOWN_ERROR;
    {class} property ERROR_USER_CANCELED: JString read _GetERROR_USER_CANCELED;
    {class} property EXTRA_ACCESS_TOKEN: JString read _GetEXTRA_ACCESS_TOKEN;
    {class} property EXTRA_APPLICATION_ID: JString read _GetEXTRA_APPLICATION_ID;
    {class} property EXTRA_APPLICATION_NAME: JString read _GetEXTRA_APPLICATION_NAME;
    {class} property EXTRA_DIALOG_COMPLETE_KEY: JString read _GetEXTRA_DIALOG_COMPLETE_KEY;
    {class} property EXTRA_DIALOG_COMPLETION_GESTURE_KEY: JString read _GetEXTRA_DIALOG_COMPLETION_GESTURE_KEY;
    {class} property EXTRA_EXPIRES_SECONDS_SINCE_EPOCH: JString read _GetEXTRA_EXPIRES_SECONDS_SINCE_EPOCH;
    {class} property EXTRA_GET_INSTALL_DATA_PACKAGE: JString read _GetEXTRA_GET_INSTALL_DATA_PACKAGE;
    {class} property EXTRA_PERMISSIONS: JString read _GetEXTRA_PERMISSIONS;
    {class} property EXTRA_PROTOCOL_ACTION: JString read _GetEXTRA_PROTOCOL_ACTION;
    {class} property EXTRA_PROTOCOL_BRIDGE_ARGS: JString read _GetEXTRA_PROTOCOL_BRIDGE_ARGS;
    {class} property EXTRA_PROTOCOL_CALL_ID: JString read _GetEXTRA_PROTOCOL_CALL_ID;
    {class} property EXTRA_PROTOCOL_METHOD_ARGS: JString read _GetEXTRA_PROTOCOL_METHOD_ARGS;
    {class} property EXTRA_PROTOCOL_METHOD_RESULTS: JString read _GetEXTRA_PROTOCOL_METHOD_RESULTS;
    {class} property EXTRA_PROTOCOL_VERSION: JString read _GetEXTRA_PROTOCOL_VERSION;
    {class} property EXTRA_PROTOCOL_VERSIONS: JString read _GetEXTRA_PROTOCOL_VERSIONS;
    {class} property EXTRA_USER_ID: JString read _GetEXTRA_USER_ID;
    {class} property FACEBOOK_PROXY_AUTH_APP_ID_KEY: JString read _GetFACEBOOK_PROXY_AUTH_APP_ID_KEY;
    {class} property FACEBOOK_PROXY_AUTH_E2E_KEY: JString read _GetFACEBOOK_PROXY_AUTH_E2E_KEY;
    {class} property FACEBOOK_PROXY_AUTH_PERMISSIONS_KEY: JString read _GetFACEBOOK_PROXY_AUTH_PERMISSIONS_KEY;
    {class} property IMAGE_URL_KEY: JString read _GetIMAGE_URL_KEY;
    {class} property IMAGE_USER_GENERATED_KEY: JString read _GetIMAGE_USER_GENERATED_KEY;
    {class} property INTENT_ACTION_PLATFORM_ACTIVITY: JString read _GetINTENT_ACTION_PLATFORM_ACTIVITY;
    {class} property INTENT_ACTION_PLATFORM_SERVICE: JString read _GetINTENT_ACTION_PLATFORM_SERVICE;
    {class} property MESSAGE_GET_ACCESS_TOKEN_REPLY: Integer read _GetMESSAGE_GET_ACCESS_TOKEN_REPLY;
    {class} property MESSAGE_GET_ACCESS_TOKEN_REQUEST: Integer read _GetMESSAGE_GET_ACCESS_TOKEN_REQUEST;
    {class} property MESSAGE_GET_INSTALL_DATA_REPLY: Integer read _GetMESSAGE_GET_INSTALL_DATA_REPLY;
    {class} property MESSAGE_GET_INSTALL_DATA_REQUEST: Integer read _GetMESSAGE_GET_INSTALL_DATA_REQUEST;
    {class} property MESSAGE_GET_LIKE_STATUS_REPLY: Integer read _GetMESSAGE_GET_LIKE_STATUS_REPLY;
    {class} property MESSAGE_GET_LIKE_STATUS_REQUEST: Integer read _GetMESSAGE_GET_LIKE_STATUS_REQUEST;
    {class} property MESSAGE_GET_PROTOCOL_VERSIONS_REPLY: Integer read _GetMESSAGE_GET_PROTOCOL_VERSIONS_REPLY;
    {class} property MESSAGE_GET_PROTOCOL_VERSIONS_REQUEST: Integer read _GetMESSAGE_GET_PROTOCOL_VERSIONS_REQUEST;
    {class} property NO_PROTOCOL_AVAILABLE: Integer read _GetNO_PROTOCOL_AVAILABLE;
    {class} property OPEN_GRAPH_CREATE_OBJECT_KEY: JString read _GetOPEN_GRAPH_CREATE_OBJECT_KEY;
    {class} property PROTOCOL_VERSION_20121101: Integer read _GetPROTOCOL_VERSION_20121101;
    {class} property PROTOCOL_VERSION_20130502: Integer read _GetPROTOCOL_VERSION_20130502;
    {class} property PROTOCOL_VERSION_20130618: Integer read _GetPROTOCOL_VERSION_20130618;
    {class} property PROTOCOL_VERSION_20131107: Integer read _GetPROTOCOL_VERSION_20131107;
    {class} property PROTOCOL_VERSION_20140204: Integer read _GetPROTOCOL_VERSION_20140204;
    {class} property PROTOCOL_VERSION_20140324: Integer read _GetPROTOCOL_VERSION_20140324;
    {class} property PROTOCOL_VERSION_20140701: Integer read _GetPROTOCOL_VERSION_20140701;
    {class} property PROTOCOL_VERSION_20141001: Integer read _GetPROTOCOL_VERSION_20141001;
    {class} property PROTOCOL_VERSION_20141028: Integer read _GetPROTOCOL_VERSION_20141028;
    {class} property PROTOCOL_VERSION_20141107: Integer read _GetPROTOCOL_VERSION_20141107;
    {class} property PROTOCOL_VERSION_20141218: Integer read _GetPROTOCOL_VERSION_20141218;
    {class} property PROTOCOL_VERSION_20160327: Integer read _GetPROTOCOL_VERSION_20160327;
    {class} property RESULT_ARGS_ACCESS_TOKEN: JString read _GetRESULT_ARGS_ACCESS_TOKEN;
    {class} property RESULT_ARGS_DIALOG_COMPLETE_KEY: JString read _GetRESULT_ARGS_DIALOG_COMPLETE_KEY;
    {class} property RESULT_ARGS_DIALOG_COMPLETION_GESTURE_KEY: JString read _GetRESULT_ARGS_DIALOG_COMPLETION_GESTURE_KEY;
    {class} property RESULT_ARGS_EXPIRES_SECONDS_SINCE_EPOCH: JString read _GetRESULT_ARGS_EXPIRES_SECONDS_SINCE_EPOCH;
    {class} property RESULT_ARGS_PERMISSIONS: JString read _GetRESULT_ARGS_PERMISSIONS;
    {class} property STATUS_ERROR_CODE: JString read _GetSTATUS_ERROR_CODE;
    {class} property STATUS_ERROR_DESCRIPTION: JString read _GetSTATUS_ERROR_DESCRIPTION;
    {class} property STATUS_ERROR_JSON: JString read _GetSTATUS_ERROR_JSON;
    {class} property STATUS_ERROR_SUBCODE: JString read _GetSTATUS_ERROR_SUBCODE;
    {class} property STATUS_ERROR_TYPE: JString read _GetSTATUS_ERROR_TYPE;
    {class} property WEB_DIALOG_ACTION: JString read _GetWEB_DIALOG_ACTION;
    {class} property WEB_DIALOG_IS_FALLBACK: JString read _GetWEB_DIALOG_IS_FALLBACK;
    {class} property WEB_DIALOG_PARAMS: JString read _GetWEB_DIALOG_PARAMS;
    {class} property WEB_DIALOG_URL: JString read _GetWEB_DIALOG_URL;
  end;

  [JavaSignature('com/facebook/internal/NativeProtocol')]
  JNativeProtocol = interface(JObject)
    ['{A5BD16B6-44EA-47C1-B93D-9D689406C6B9}']
  end;
  TJNativeProtocol = class(TJavaGenericImport<JNativeProtocolClass, JNativeProtocol>) end;

  JNativeProtocol_1Class = interface(JRunnableClass)
    ['{9997C424-72AF-4A1C-8F6A-28270C67BAB3}']
  end;

  [JavaSignature('com/facebook/internal/NativeProtocol$1')]
  JNativeProtocol_1 = interface(JRunnable)
    ['{78EDF070-D87E-4A1C-AFCB-985EC83720C4}']
    procedure run; cdecl;//Deprecated
  end;
  TJNativeProtocol_1 = class(TJavaGenericImport<JNativeProtocol_1Class, JNativeProtocol_1>) end;

  JNativeProtocol_NativeAppInfoClass = interface(JObjectClass)
    ['{FD4CC01F-DA09-400B-97D5-DEC98A088960}']
  end;

  [JavaSignature('com/facebook/internal/NativeProtocol$NativeAppInfo')]
  JNativeProtocol_NativeAppInfo = interface(JObject)
    ['{03CAD8C8-72BC-44CE-8B06-F8E554CDE651}']
    function getAvailableVersions: JTreeSet; cdecl;//Deprecated
    function validateSignature(P1: JContext; P2: JString): Boolean; cdecl;//Deprecated
  end;
  TJNativeProtocol_NativeAppInfo = class(TJavaGenericImport<JNativeProtocol_NativeAppInfoClass, JNativeProtocol_NativeAppInfo>) end;

  JNativeProtocol_KatanaAppInfoClass = interface(JNativeProtocol_NativeAppInfoClass)
    ['{D1312A6F-01C7-49FF-8F59-7B818F7779E5}']
    {class} function init(P1: JNativeProtocol_1): JNativeProtocol_KatanaAppInfo; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/internal/NativeProtocol$KatanaAppInfo')]
  JNativeProtocol_KatanaAppInfo = interface(JNativeProtocol_NativeAppInfo)
    ['{1909B4F8-4B33-4608-A99B-B0D2F8512CA3}']
    function getPackage: JString; cdecl;//Deprecated
  end;
  TJNativeProtocol_KatanaAppInfo = class(TJavaGenericImport<JNativeProtocol_KatanaAppInfoClass, JNativeProtocol_KatanaAppInfo>) end;

  JNativeProtocol_MessengerAppInfoClass = interface(JNativeProtocol_NativeAppInfoClass)
    ['{8EAB49F9-2424-4FEB-9ACF-E17FC0DAF2D2}']
    {class} function init(P1: JNativeProtocol_1): JNativeProtocol_MessengerAppInfo; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/internal/NativeProtocol$MessengerAppInfo')]
  JNativeProtocol_MessengerAppInfo = interface(JNativeProtocol_NativeAppInfo)
    ['{A3291838-31EA-47FB-BFA2-8C3E1D3EAF86}']
    function getPackage: JString; cdecl;//Deprecated
  end;
  TJNativeProtocol_MessengerAppInfo = class(TJavaGenericImport<JNativeProtocol_MessengerAppInfoClass, JNativeProtocol_MessengerAppInfo>) end;

  JNativeProtocol_WakizashiAppInfoClass = interface(JNativeProtocol_NativeAppInfoClass)
    ['{4A6285E4-39A8-426A-ABBB-8538E5507FD2}']
    {class} function init(P1: JNativeProtocol_1): JNativeProtocol_WakizashiAppInfo; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/internal/NativeProtocol$WakizashiAppInfo')]
  JNativeProtocol_WakizashiAppInfo = interface(JNativeProtocol_NativeAppInfo)
    ['{A61C3197-E11D-41BF-8CDE-89FA613E1F14}']
    function getPackage: JString; cdecl;//Deprecated
  end;
  TJNativeProtocol_WakizashiAppInfo = class(TJavaGenericImport<JNativeProtocol_WakizashiAppInfoClass, JNativeProtocol_WakizashiAppInfo>) end;

  JPermissionTypeClass = interface(JEnumClass)
    ['{6956CAC6-FC8B-4880-B90B-A2B84FF0CF7A}']
    {class} function _GetPUBLISH: JPermissionType; cdecl;
    {class} function _GetREAD: JPermissionType; cdecl;
    {class} function valueOf(P1: JString): JPermissionType; cdecl;//Deprecated
    {class} function values: TJavaObjectArray<JPermissionType>; cdecl;//Deprecated
    {class} property PUBLISH: JPermissionType read _GetPUBLISH;
    {class} property READ: JPermissionType read _GetREAD;
  end;

  [JavaSignature('com/facebook/internal/PermissionType')]
  JPermissionType = interface(JEnum)
    ['{E3C8E91F-548E-46DA-A118-23C58D1319D4}']
  end;
  TJPermissionType = class(TJavaGenericImport<JPermissionTypeClass, JPermissionType>) end;

  JPlatformServiceClientClass = interface(JServiceConnectionClass)
    ['{8690D291-022B-41A1-9EC6-E49D061C54B4}']
    {class} function init(P1: JContext; P2: Integer; P3: Integer; P4: Integer; P5: JString): JPlatformServiceClient; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/internal/PlatformServiceClient')]
  JPlatformServiceClient = interface(JServiceConnection)
    ['{14DE86DC-4052-414C-8C73-B44506C19AAB}']
    procedure cancel; cdecl;//Deprecated
    procedure onServiceConnected(P1: JComponentName; P2: JIBinder); cdecl;//Deprecated
    procedure onServiceDisconnected(P1: JComponentName); cdecl;//Deprecated
    procedure setCompletedListener(P1: JPlatformServiceClient_CompletedListener); cdecl;//Deprecated
    function start: Boolean; cdecl;//Deprecated
  end;
  TJPlatformServiceClient = class(TJavaGenericImport<JPlatformServiceClientClass, JPlatformServiceClient>) end;

  JPlatformServiceClient_1Class = interface(JHandlerClass)
    ['{FB28227A-C645-4B5C-B182-91A79D51FC4B}']
    {class} function init(P1: JPlatformServiceClient): JPlatformServiceClient_1; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/internal/PlatformServiceClient$1')]
  JPlatformServiceClient_1 = interface(JHandler)
    ['{2F7A621D-A5CF-415A-8381-9719E3E573FD}']
    procedure handleMessage(P1: JMessage); cdecl;//Deprecated
  end;
  TJPlatformServiceClient_1 = class(TJavaGenericImport<JPlatformServiceClient_1Class, JPlatformServiceClient_1>) end;

  JPlatformServiceClient_CompletedListenerClass = interface(IJavaClass)
    ['{34A10216-9A5E-46AF-89F4-F7AD10AB1F5C}']
  end;

  [JavaSignature('com/facebook/internal/PlatformServiceClient$CompletedListener')]
  JPlatformServiceClient_CompletedListener = interface(IJavaInstance)
    ['{0A0E09E0-1A3A-4BEE-8950-4F796BFC2E38}']
    procedure completed(P1: JBundle); cdecl;//Deprecated
  end;
  TJPlatformServiceClient_CompletedListener = class(TJavaGenericImport<JPlatformServiceClient_CompletedListenerClass, JPlatformServiceClient_CompletedListener>) end;

  JProfileInformationCacheClass = interface(JObjectClass)
    ['{FC5C901B-4833-47A5-B31E-65D1F534B56D}']
    {class} function getProfileInformation(P1: JString): JJSONObject; cdecl;//Deprecated
    {class} procedure putProfileInformation(P1: JString; P2: JJSONObject); cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/internal/ProfileInformationCache')]
  JProfileInformationCache = interface(JObject)
    ['{EA001817-1273-4939-83D0-1752EC91AB34}']
  end;
  TJProfileInformationCache = class(TJavaGenericImport<JProfileInformationCacheClass, JProfileInformationCache>) end;

  JServerProtocolClass = interface(JObjectClass)
    ['{F706BEF8-13AC-478B-BC47-DC389C836BDB}']
    {class} function _GetDIALOG_CANCEL_URI: JString; cdecl;
    {class} function _GetDIALOG_PARAM_ACCESS_TOKEN: JString; cdecl;
    {class} function _GetDIALOG_PARAM_APP_ID: JString; cdecl;
    {class} function _GetDIALOG_PARAM_AUTH_TYPE: JString; cdecl;
    {class} function _GetDIALOG_PARAM_CLIENT_ID: JString; cdecl;
    {class} function _GetDIALOG_PARAM_DEFAULT_AUDIENCE: JString; cdecl;
    {class} function _GetDIALOG_PARAM_DISPLAY: JString; cdecl;
    {class} function _GetDIALOG_PARAM_DISPLAY_TOUCH: JString; cdecl;
    {class} function _GetDIALOG_PARAM_E2E: JString; cdecl;
    {class} function _GetDIALOG_PARAM_LEGACY_OVERRIDE: JString; cdecl;
    {class} function _GetDIALOG_PARAM_REDIRECT_URI: JString; cdecl;
    {class} function _GetDIALOG_PARAM_RESPONSE_TYPE: JString; cdecl;
    {class} function _GetDIALOG_PARAM_RETURN_SCOPES: JString; cdecl;
    {class} function _GetDIALOG_PARAM_SCOPE: JString; cdecl;
    {class} function _GetDIALOG_PARAM_SDK_VERSION: JString; cdecl;
    {class} function _GetDIALOG_PARAM_STATE: JString; cdecl;
    {class} function _GetDIALOG_PATH: JString; cdecl;
    {class} function _GetDIALOG_REDIRECT_URI: JString; cdecl;
    {class} function _GetDIALOG_REREQUEST_AUTH_TYPE: JString; cdecl;
    {class} function _GetDIALOG_RESPONSE_TYPE_TOKEN_AND_SIGNED_REQUEST: JString; cdecl;
    {class} function _GetDIALOG_RETURN_SCOPES_TRUE: JString; cdecl;
    {class} function _GetFALLBACK_DIALOG_DISPLAY_VALUE_TOUCH: JString; cdecl;
    {class} function _GetFALLBACK_DIALOG_PARAM_APP_ID: JString; cdecl;
    {class} function _GetFALLBACK_DIALOG_PARAM_BRIDGE_ARGS: JString; cdecl;
    {class} function _GetFALLBACK_DIALOG_PARAM_KEY_HASH: JString; cdecl;
    {class} function _GetFALLBACK_DIALOG_PARAM_METHOD_ARGS: JString; cdecl;
    {class} function _GetFALLBACK_DIALOG_PARAM_METHOD_RESULTS: JString; cdecl;
    {class} function _GetFALLBACK_DIALOG_PARAM_VERSION: JString; cdecl;
    {class} function _GetGRAPH_API_VERSION: JString; cdecl;
    {class} function _GeterrorConnectionFailure: JString; cdecl;
    {class} function _GeterrorsProxyAuthDisabled: JCollection; cdecl;
    {class} function _GeterrorsUserCanceled: JCollection; cdecl;
    {class} function getAPIVersion: JString; cdecl;//Deprecated
    {class} function getDialogAuthority: JString; cdecl;//Deprecated
    {class} function getGraphUrlBase: JString; cdecl;//Deprecated
    {class} function getGraphVideoUrlBase: JString; cdecl;//Deprecated
    {class} function getQueryParamsForPlatformActivityIntentWebFallback(P1: JString; P2: Integer; P3: JBundle): JBundle; cdecl;//Deprecated
    {class} function init: JServerProtocol; cdecl;//Deprecated
    {class} property DIALOG_CANCEL_URI: JString read _GetDIALOG_CANCEL_URI;
    {class} property DIALOG_PARAM_ACCESS_TOKEN: JString read _GetDIALOG_PARAM_ACCESS_TOKEN;
    {class} property DIALOG_PARAM_APP_ID: JString read _GetDIALOG_PARAM_APP_ID;
    {class} property DIALOG_PARAM_AUTH_TYPE: JString read _GetDIALOG_PARAM_AUTH_TYPE;
    {class} property DIALOG_PARAM_CLIENT_ID: JString read _GetDIALOG_PARAM_CLIENT_ID;
    {class} property DIALOG_PARAM_DEFAULT_AUDIENCE: JString read _GetDIALOG_PARAM_DEFAULT_AUDIENCE;
    {class} property DIALOG_PARAM_DISPLAY: JString read _GetDIALOG_PARAM_DISPLAY;
    {class} property DIALOG_PARAM_DISPLAY_TOUCH: JString read _GetDIALOG_PARAM_DISPLAY_TOUCH;
    {class} property DIALOG_PARAM_E2E: JString read _GetDIALOG_PARAM_E2E;
    {class} property DIALOG_PARAM_LEGACY_OVERRIDE: JString read _GetDIALOG_PARAM_LEGACY_OVERRIDE;
    {class} property DIALOG_PARAM_REDIRECT_URI: JString read _GetDIALOG_PARAM_REDIRECT_URI;
    {class} property DIALOG_PARAM_RESPONSE_TYPE: JString read _GetDIALOG_PARAM_RESPONSE_TYPE;
    {class} property DIALOG_PARAM_RETURN_SCOPES: JString read _GetDIALOG_PARAM_RETURN_SCOPES;
    {class} property DIALOG_PARAM_SCOPE: JString read _GetDIALOG_PARAM_SCOPE;
    {class} property DIALOG_PARAM_SDK_VERSION: JString read _GetDIALOG_PARAM_SDK_VERSION;
    {class} property DIALOG_PARAM_STATE: JString read _GetDIALOG_PARAM_STATE;
    {class} property DIALOG_PATH: JString read _GetDIALOG_PATH;
    {class} property DIALOG_REDIRECT_URI: JString read _GetDIALOG_REDIRECT_URI;
    {class} property DIALOG_REREQUEST_AUTH_TYPE: JString read _GetDIALOG_REREQUEST_AUTH_TYPE;
    {class} property DIALOG_RESPONSE_TYPE_TOKEN_AND_SIGNED_REQUEST: JString read _GetDIALOG_RESPONSE_TYPE_TOKEN_AND_SIGNED_REQUEST;
    {class} property DIALOG_RETURN_SCOPES_TRUE: JString read _GetDIALOG_RETURN_SCOPES_TRUE;
    {class} property FALLBACK_DIALOG_DISPLAY_VALUE_TOUCH: JString read _GetFALLBACK_DIALOG_DISPLAY_VALUE_TOUCH;
    {class} property FALLBACK_DIALOG_PARAM_APP_ID: JString read _GetFALLBACK_DIALOG_PARAM_APP_ID;
    {class} property FALLBACK_DIALOG_PARAM_BRIDGE_ARGS: JString read _GetFALLBACK_DIALOG_PARAM_BRIDGE_ARGS;
    {class} property FALLBACK_DIALOG_PARAM_KEY_HASH: JString read _GetFALLBACK_DIALOG_PARAM_KEY_HASH;
    {class} property FALLBACK_DIALOG_PARAM_METHOD_ARGS: JString read _GetFALLBACK_DIALOG_PARAM_METHOD_ARGS;
    {class} property FALLBACK_DIALOG_PARAM_METHOD_RESULTS: JString read _GetFALLBACK_DIALOG_PARAM_METHOD_RESULTS;
    {class} property FALLBACK_DIALOG_PARAM_VERSION: JString read _GetFALLBACK_DIALOG_PARAM_VERSION;
    {class} property GRAPH_API_VERSION: JString read _GetGRAPH_API_VERSION;
    {class} property errorConnectionFailure: JString read _GeterrorConnectionFailure;
    {class} property errorsProxyAuthDisabled: JCollection read _GeterrorsProxyAuthDisabled;
    {class} property errorsUserCanceled: JCollection read _GeterrorsUserCanceled;
  end;

  [JavaSignature('com/facebook/internal/ServerProtocol')]
  JServerProtocol = interface(JObject)
    ['{A380C6B9-F1DF-4109-BF2B-B877697DDB08}']
  end;
  TJServerProtocol = class(TJavaGenericImport<JServerProtocolClass, JServerProtocol>) end;

  JUrlRedirectCacheClass = interface(JObjectClass)
    ['{74072B11-3895-47B2-9DD4-9A958BA33EA7}']
    {class} procedure cacheUriRedirect(P1: Jnet_Uri; P2: Jnet_Uri); cdecl;//Deprecated
    {class} procedure clearCache; cdecl;//Deprecated
    {class} function getCache: JFileLruCache; cdecl;//Deprecated
    {class} function getRedirectedUri(P1: Jnet_Uri): Jnet_Uri; cdecl;//Deprecated
    {class} function init: JUrlRedirectCache; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/internal/UrlRedirectCache')]
  JUrlRedirectCache = interface(JObject)
    ['{D5642736-CB4F-440E-BC1B-203716737290}']
  end;
  TJUrlRedirectCache = class(TJavaGenericImport<JUrlRedirectCacheClass, JUrlRedirectCache>) end;

  JUtilityClass = interface(JObjectClass)
    ['{F267D43F-2637-4D1B-B699-56C2DE697302}']
    {class} function _GetDEFAULT_STREAM_BUFFER_SIZE: Integer; cdecl;
    {class} function areObjectsEqual(P1: JObject; P2: JObject): Boolean; cdecl;//Deprecated
    {class} function awaitGetGraphMeRequestWithCache(P1: JString): JJSONObject; cdecl;//Deprecated
    {class} function buildUri(P1: JString; P2: JString; P3: JBundle): Jnet_Uri; cdecl;//Deprecated
    {class} procedure clearCaches(P1: JContext); cdecl;//Deprecated
    {class} procedure clearFacebookCookies(P1: JContext); cdecl;//Deprecated
    {class} procedure closeQuietly(P1: JCloseable); cdecl;//Deprecated
    {class} function coerceValueIfNullOrEmpty(P1: JString; P2: JString): JString; cdecl;//Deprecated
    {class} function convertJSONObjectToHashMap(P1: JJSONObject): JMap; cdecl;//Deprecated
    {class} function copyAndCloseInputStream(P1: JInputStream; P2: JOutputStream): Integer; cdecl;//Deprecated
    {class} procedure deleteDirectory(P1: JFile); cdecl;//Deprecated
    {class} procedure disconnectQuietly(P1: JURLConnection); cdecl;//Deprecated
    {class} function filter(P1: JList; P2: JUtility_Predicate): JList; cdecl;//Deprecated
    {class} function generateRandomString(P1: Integer): JString; cdecl;//Deprecated
    {class} function getActivityName(P1: JContext): JString; cdecl;//Deprecated
    {class} function getAppSettingsWithoutQuery(P1: JString): JUtility_FetchedAppSettings; cdecl;//Deprecated
    {class} function getBundleLongAsDate(P1: JBundle; P2: JString; P3: JDate): JDate; cdecl;//Deprecated
    {class} function getContentSize(P1: Jnet_Uri): Int64; cdecl;//Deprecated
    {class} function getDialogFeatureConfig(P1: JString; P2: JString; P3: JString): JUtility_DialogFeatureConfig; cdecl;//Deprecated
    {class} procedure getGraphMeRequestWithCacheAsync(P1: JString; P2: JUtility_GraphMeRequestWithCacheCallback); cdecl;//Deprecated
    {class} function getMetadataApplicationId(P1: JContext): JString; cdecl;//Deprecated
    {class} function getStringPropertyAsJSON(P1: JJSONObject; P2: JString; P3: JString): JObject; cdecl;//Deprecated
    {class} function getUriString(P1: Jnet_Uri): JString; cdecl;//Deprecated
    {class} function handlePermissionResponse(P1: JJSONObject): JUtility_PermissionsPair; cdecl;//Deprecated
    {class} function hasSameId(P1: JJSONObject; P2: JJSONObject): Boolean; cdecl;//Deprecated
    {class} function init: JUtility; cdecl;//Deprecated
    {class} function intersectRanges(P1: TJavaArray<Integer>; P2: TJavaArray<Integer>): TJavaArray<Integer>; cdecl;//Deprecated
    {class} function isContentUri(P1: Jnet_Uri): Boolean; cdecl;//Deprecated
    {class} function isCurrentAccessToken(P1: JAccessToken): Boolean; cdecl;//Deprecated
    {class} function isFileUri(P1: Jnet_Uri): Boolean; cdecl;//Deprecated
    {class} function isNullOrEmpty(P1: JCollection): Boolean; cdecl; overload;//Deprecated
    {class} function isNullOrEmpty(P1: JString): Boolean; cdecl; overload;//Deprecated
    {class} function isSubset(P1: JCollection; P2: JCollection): Boolean; cdecl;//Deprecated
    {class} function isWebUri(P1: Jnet_Uri): Boolean; cdecl;//Deprecated
    {class} function jsonArrayToSet(P1: JJSONArray): JSet; cdecl;//Deprecated
    {class} function jsonArrayToStringList(P1: JJSONArray): JList; cdecl;//Deprecated
    {class} procedure loadAppSettingsAsync(P1: JContext; P2: JString); cdecl;//Deprecated
    {class} procedure logd(P1: JString; P2: JString); cdecl; overload;//Deprecated
    {class} procedure logd(P1: JString; P2: JException); cdecl; overload;//Deprecated
    {class} procedure logd(P1: JString; P2: JString; P3: JThrowable); cdecl; overload;//Deprecated
    {class} function map(P1: JList; P2: JUtility_Mapper): JList; cdecl;//Deprecated
    {class} function md5hash(P1: JString): JString; cdecl;//Deprecated
    {class} function parseUrlQueryString(P1: JString): JBundle; cdecl;//Deprecated
    {class} procedure putCommaSeparatedStringList(P1: JBundle; P2: JString; P3: JList); cdecl;//Deprecated
    {class} function putJSONValueInBundle(P1: JBundle; P2: JString; P3: JObject): Boolean; cdecl;//Deprecated
    {class} procedure putNonEmptyString(P1: JBundle; P2: JString; P3: JString); cdecl;//Deprecated
    {class} procedure putUri(P1: JBundle; P2: JString; P3: Jnet_Uri); cdecl;//Deprecated
    {class} function queryAppSettings(P1: JString; P2: Boolean): JUtility_FetchedAppSettings; cdecl;//Deprecated
    {class} function readStreamToString(P1: JInputStream): JString; cdecl;//Deprecated
    {class} function readStringMapFromParcel(P1: JParcel): JMap; cdecl;//Deprecated
    {class} function safeGetStringFromResponse(P1: JJSONObject; P2: JString): JString; cdecl;//Deprecated
    {class} procedure setAppEventAttributionParameters(P1: JJSONObject; P2: JAttributionIdentifiers; P3: JString; P4: Boolean); cdecl;//Deprecated
    {class} procedure setAppEventExtendedDeviceInfoParameters(P1: JJSONObject; P2: JContext); cdecl;//Deprecated
    {class} function sha1hash(P1: JString): JString; cdecl; overload;//Deprecated
    {class} function sha1hash(P1: TJavaArray<Byte>): JString; cdecl; overload;//Deprecated
    {class} function stringsEqualOrEmpty(P1: JString; P2: JString): Boolean; cdecl;//Deprecated
    {class} function tryGetJSONArrayFromResponse(P1: JJSONObject; P2: JString): JJSONArray; cdecl;//Deprecated
    {class} function tryGetJSONObjectFromResponse(P1: JJSONObject; P2: JString): JJSONObject; cdecl;//Deprecated
    {class} procedure writeStringMapToParcel(P1: JParcel; P2: JMap); cdecl;//Deprecated
    {class} property DEFAULT_STREAM_BUFFER_SIZE: Integer read _GetDEFAULT_STREAM_BUFFER_SIZE;
  end;

  [JavaSignature('com/facebook/internal/Utility')]
  JUtility = interface(JObject)
    ['{15608535-D334-4D29-8127-6AC408086B16}']
  end;
  TJUtility = class(TJavaGenericImport<JUtilityClass, JUtility>) end;

  JUtility_1Class = interface(JRunnableClass)
    ['{DE8FBF99-EADB-4F04-8B02-7487DBA1F75B}']
    {class} function init(P1: JContext; P2: JString; P3: JString): JUtility_1; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/internal/Utility$1')]
  JUtility_1 = interface(JRunnable)
    ['{E24BF86E-42B6-4B1D-96A0-C8B0AD203481}']
//    function _Getval$applicationId: JString; cdecl;
//    function _Getval$settingsKey: JString; cdecl;
    procedure run; cdecl;//Deprecated
//    property val$applicationId: JString read _Getval$applicationId;
//    property val$settingsKey: JString read _Getval$settingsKey;
  end;
  TJUtility_1 = class(TJavaGenericImport<JUtility_1Class, JUtility_1>) end;

  JUtility_2Class = interface(JGraphRequest_CallbackClass)
    ['{EB7AED07-2868-436C-9BC0-84F4C0E55235}']
    {class} function init(P1: JUtility_GraphMeRequestWithCacheCallback; P2: JString): JUtility_2; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/internal/Utility$2')]
  JUtility_2 = interface(JGraphRequest_Callback)
    ['{8F483DB0-2382-47A7-9829-AEB45FE8F7E9}']
//    function _Getval$accessToken: JString; cdecl;
    procedure onCompleted(P1: JGraphResponse); cdecl;//Deprecated
//    property val$accessToken: JString read _Getval$accessToken;
  end;
  TJUtility_2 = class(TJavaGenericImport<JUtility_2Class, JUtility_2>) end;

  JUtility_3Class = interface(JFilenameFilterClass)
    ['{EA418B7C-90A0-4A8F-AB90-AE332C01B17C}']
  end;

  [JavaSignature('com/facebook/internal/Utility$3')]
  JUtility_3 = interface(JFilenameFilter)
    ['{C663F186-8B0A-495C-8154-333AE0049DA6}']
    function accept(P1: JFile; P2: JString): Boolean; cdecl;//Deprecated
  end;
  TJUtility_3 = class(TJavaGenericImport<JUtility_3Class, JUtility_3>) end;

  JUtility_DialogFeatureConfigClass = interface(JObjectClass)
    ['{0A94F8EE-0C76-407D-B7EF-2699ABF19A4B}']
  end;

  [JavaSignature('com/facebook/internal/Utility$DialogFeatureConfig')]
  JUtility_DialogFeatureConfig = interface(JObject)
    ['{33B9752F-726A-43FA-AE57-3B8655AB7FC5}']
    function getDialogName: JString; cdecl;//Deprecated
    function getFallbackUrl: Jnet_Uri; cdecl;//Deprecated
    function getFeatureName: JString; cdecl;//Deprecated
    function getVersionSpec: TJavaArray<Integer>; cdecl;//Deprecated
  end;
  TJUtility_DialogFeatureConfig = class(TJavaGenericImport<JUtility_DialogFeatureConfigClass, JUtility_DialogFeatureConfig>) end;

  JUtility_FetchedAppSettingsClass = interface(JObjectClass)
    ['{7CB8B75B-E589-4F2F-8B7C-A7913D45D7C1}']
  end;

  [JavaSignature('com/facebook/internal/Utility$FetchedAppSettings')]
  JUtility_FetchedAppSettings = interface(JObject)
    ['{D5A9406C-33FA-472A-930A-41F4F5F4E9AC}']
    function getCustomTabsEnabled: Boolean; cdecl;//Deprecated
    function getDialogConfigurations: JMap; cdecl;//Deprecated
    function getErrorClassification: JFacebookRequestErrorClassification; cdecl;//Deprecated
    function getNuxContent: JString; cdecl;//Deprecated
    function getNuxEnabled: Boolean; cdecl;//Deprecated
    function getSessionTimeoutInSeconds: Integer; cdecl;//Deprecated
    function supportsImplicitLogging: Boolean; cdecl;//Deprecated
  end;
  TJUtility_FetchedAppSettings = class(TJavaGenericImport<JUtility_FetchedAppSettingsClass, JUtility_FetchedAppSettings>) end;

  JUtility_MapperClass = interface(IJavaClass)
    ['{986F74EA-CC55-45F0-BEFA-3D50CC61E654}']
  end;

  [JavaSignature('com/facebook/internal/Utility$Mapper')]
  JUtility_Mapper = interface(IJavaInstance)
    ['{14B7028A-9205-49F5-9D55-59D668786377}']
    function apply(P1: JObject): JObject; cdecl;//Deprecated
  end;
  TJUtility_Mapper = class(TJavaGenericImport<JUtility_MapperClass, JUtility_Mapper>) end;

  JUtility_PermissionsPairClass = interface(JObjectClass)
    ['{788A0CBF-997C-481E-B860-B3B697837B1F}']
    {class} function init(P1: JList; P2: JList): JUtility_PermissionsPair; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/internal/Utility$PermissionsPair')]
  JUtility_PermissionsPair = interface(JObject)
    ['{A17C6B67-F214-494D-96C6-560E7EA970E1}']
    function _GetdeclinedPermissions: JList; cdecl;
    procedure _SetdeclinedPermissions(Value: JList); cdecl;
    function getDeclinedPermissions: JList; cdecl;//Deprecated
    function getGrantedPermissions: JList; cdecl;//Deprecated
    property declinedPermissions: JList read _GetdeclinedPermissions write _SetdeclinedPermissions;
  end;
  TJUtility_PermissionsPair = class(TJavaGenericImport<JUtility_PermissionsPairClass, JUtility_PermissionsPair>) end;

  JUtility_PredicateClass = interface(IJavaClass)
    ['{3A176C9C-74D2-4419-9195-3ECD5749BFC4}']
  end;

  [JavaSignature('com/facebook/internal/Utility$Predicate')]
  JUtility_Predicate = interface(IJavaInstance)
    ['{A9FD80DF-C3E0-47BE-BDD1-1439AD654A68}']
    function apply(P1: JObject): Boolean; cdecl;//Deprecated
  end;
  TJUtility_Predicate = class(TJavaGenericImport<JUtility_PredicateClass, JUtility_Predicate>) end;

  JValidateClass = interface(JObjectClass)
    ['{916D21DF-9F41-453D-8986-BE5C1F38D83B}']
    {class} procedure checkCustomTabRedirectActivity(P1: JContext); cdecl; overload;//Deprecated
    {class} procedure checkCustomTabRedirectActivity(P1: JContext; P2: Boolean); cdecl; overload;//Deprecated
    {class} procedure containsNoNullOrEmpty(P1: JCollection; P2: JString); cdecl;//Deprecated
    {class} procedure containsNoNulls(P1: JCollection; P2: JString); cdecl;//Deprecated
    {class} function hasAppID: JString; cdecl;//Deprecated
    {class} function hasClientToken: JString; cdecl;//Deprecated
    {class} procedure hasContentProvider(P1: JContext); cdecl;//Deprecated
    {class} function hasCustomTabRedirectActivity(P1: JContext): Boolean; cdecl;//Deprecated
    {class} procedure hasFacebookActivity(P1: JContext); cdecl; overload;//Deprecated
    {class} procedure hasFacebookActivity(P1: JContext; P2: Boolean); cdecl; overload;//Deprecated
    {class} procedure hasInternetPermissions(P1: JContext); cdecl; overload;//Deprecated
    {class} procedure hasInternetPermissions(P1: JContext; P2: Boolean); cdecl; overload;//Deprecated
    {class} function init: JValidate; cdecl;//Deprecated
    {class} procedure notEmpty(P1: JCollection; P2: JString); cdecl;//Deprecated
    {class} procedure notEmptyAndContainsNoNulls(P1: JCollection; P2: JString); cdecl;//Deprecated
    {class} procedure notNull(P1: JObject; P2: JString); cdecl;//Deprecated
    {class} procedure notNullOrEmpty(P1: JString; P2: JString); cdecl;//Deprecated
    {class} procedure runningOnUiThread; cdecl;//Deprecated
    {class} procedure sdkInitialized; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/internal/Validate')]
  JValidate = interface(JObject)
    ['{75DB8CE4-260D-4010-9B7D-5C459AE2C0E4}']
  end;
  TJValidate = class(TJavaGenericImport<JValidateClass, JValidate>) end;

  JWebDialog_1Class = interface(JDialogInterface_OnCancelListenerClass)
    ['{8E16C97B-AFB2-4A4E-AAF8-D8BDD96F11C3}']
    {class} function init(P1: JWebDialog): JWebDialog_1; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/internal/WebDialog$1')]
  JWebDialog_1 = interface(JDialogInterface_OnCancelListener)
    ['{06F5782B-F6DF-4059-B7D4-29ED0EABF312}']
    procedure onCancel(P1: JDialogInterface); cdecl;//Deprecated
  end;
  TJWebDialog_1 = class(TJavaGenericImport<JWebDialog_1Class, JWebDialog_1>) end;

  JWebDialog_2Class = interface(JView_OnClickListenerClass)
    ['{B4F99420-F205-46DF-BED5-717C351B5B4B}']
    {class} function init(P1: JWebDialog): JWebDialog_2; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/internal/WebDialog$2')]
  JWebDialog_2 = interface(JView_OnClickListener)
    ['{2EF78181-F2BD-4903-BE9F-1E323A0EC498}']
    procedure onClick(P1: JView); cdecl;//Deprecated
  end;
  TJWebDialog_2 = class(TJavaGenericImport<JWebDialog_2Class, JWebDialog_2>) end;

  JWebDialog_3Class = interface(JWebViewClass)
    ['{07662FB3-9ACF-472C-8FF3-5F5BF7610D73}']
    {class} function init(P1: JWebDialog; P2: JContext): JWebDialog_3; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/internal/WebDialog$3')]
  JWebDialog_3 = interface(JWebView)
    ['{40CEBFAC-E633-46D3-9D58-FC00746D8EC4}']
    procedure onWindowFocusChanged(P1: Boolean); cdecl;//Deprecated
  end;
  TJWebDialog_3 = class(TJavaGenericImport<JWebDialog_3Class, JWebDialog_3>) end;

  JWebDialog_4Class = interface(JView_OnTouchListenerClass)
    ['{31B022AF-D14F-4D52-844A-8571D89554DC}']
    {class} function init(P1: JWebDialog): JWebDialog_4; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/internal/WebDialog$4')]
  JWebDialog_4 = interface(JView_OnTouchListener)
    ['{A4A1FCC6-81F7-4603-AC08-5B9A800D00BC}']
    function onTouch(P1: JView; P2: JMotionEvent): Boolean; cdecl;//Deprecated
  end;
  TJWebDialog_4 = class(TJavaGenericImport<JWebDialog_4Class, JWebDialog_4>) end;

  JWebDialog_BuilderClass = interface(JObjectClass)
    ['{BCE8C71F-A937-4C5E-9634-ED4071F7D0BD}']
    {class} function init(P1: JContext; P2: JString; P3: JBundle): JWebDialog_Builder; cdecl; overload;//Deprecated
    {class} function init(P1: JContext; P2: JString; P3: JString; P4: JBundle): JWebDialog_Builder; cdecl; overload;//Deprecated
  end;

  [JavaSignature('com/facebook/internal/WebDialog$Builder')]
  JWebDialog_Builder = interface(JObject)
    ['{A8C2CEB5-8034-4325-A350-5DC3E1AA1D69}']
    function build: JWebDialog; cdecl;//Deprecated
    function getApplicationId: JString; cdecl;//Deprecated
    function getContext: JContext; cdecl;//Deprecated
    function getListener: JWebDialog_OnCompleteListener; cdecl;//Deprecated
    function getParameters: JBundle; cdecl;//Deprecated
    function getTheme: Integer; cdecl;//Deprecated
    function setOnCompleteListener(P1: JWebDialog_OnCompleteListener): JWebDialog_Builder; cdecl;//Deprecated
    function setTheme(P1: Integer): JWebDialog_Builder; cdecl;//Deprecated
  end;
  TJWebDialog_Builder = class(TJavaGenericImport<JWebDialog_BuilderClass, JWebDialog_Builder>) end;

  JWebDialog_DialogWebViewClientClass = interface(JWebViewClientClass)
    ['{66327483-F105-4F16-BCB3-05C8EE75DC28}']
    {class} function init(P1: JWebDialog; P2: JWebDialog_1): JWebDialog_DialogWebViewClient; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/internal/WebDialog$DialogWebViewClient')]
  JWebDialog_DialogWebViewClient = interface(JWebViewClient)
    ['{0E999CB7-DBAA-4F30-A632-DD7AE6CA3E51}']
    procedure onPageFinished(P1: JWebView; P2: JString); cdecl;//Deprecated
    procedure onPageStarted(P1: JWebView; P2: JString; P3: JBitmap); cdecl;//Deprecated
    procedure onReceivedError(P1: JWebView; P2: Integer; P3: JString; P4: JString); cdecl;//Deprecated
    procedure onReceivedSslError(P1: JWebView; P2: JSslErrorHandler; P3: JSslError); cdecl;//Deprecated
    function shouldOverrideUrlLoading(P1: JWebView; P2: JString): Boolean; cdecl;//Deprecated
  end;
  TJWebDialog_DialogWebViewClient = class(TJavaGenericImport<JWebDialog_DialogWebViewClientClass, JWebDialog_DialogWebViewClient>) end;

  JWorkQueueClass = interface(JObjectClass)
    ['{AEC6A113-9786-4F6E-A116-68E073369849}']
//    {class} function _Get$assertionsDisabled: Boolean; cdecl;
    {class} function _GetDEFAULT_MAX_CONCURRENT: Integer; cdecl;
    {class} function init: JWorkQueue; cdecl; overload;//Deprecated
    {class} function init(P1: Integer): JWorkQueue; cdecl; overload;//Deprecated
    {class} function init(P1: Integer; P2: JExecutor): JWorkQueue; cdecl; overload;//Deprecated
//    {class} property $assertionsDisabled: Boolean read _Get$assertionsDisabled;
    {class} property DEFAULT_MAX_CONCURRENT: Integer read _GetDEFAULT_MAX_CONCURRENT;
  end;

  [JavaSignature('com/facebook/internal/WorkQueue')]
  JWorkQueue = interface(JObject)
    ['{F7787B92-5740-49C1-BA2A-EAD5A4F762D8}']
    function addActiveWorkItem(P1: JRunnable): JWorkQueue_WorkItem; cdecl; overload;//Deprecated
    function addActiveWorkItem(P1: JRunnable; P2: Boolean): JWorkQueue_WorkItem; cdecl; overload;//Deprecated
    procedure validate; cdecl;//Deprecated
  end;
  TJWorkQueue = class(TJavaGenericImport<JWorkQueueClass, JWorkQueue>) end;

  JWorkQueue_1Class = interface(JRunnableClass)
    ['{9BF02F9A-7EDD-4DC7-BF30-712537441964}']
    {class} function init(P1: JWorkQueue; P2: JWorkQueue_WorkNode): JWorkQueue_1; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/internal/WorkQueue$1')]
  JWorkQueue_1 = interface(JRunnable)
    ['{73F0656F-195F-47E4-94ED-10BC34024917}']
//    function _Getthis$0: JWorkQueue; cdecl;
    procedure run; cdecl;//Deprecated
//    property this$0: JWorkQueue read _Getthis$0;
  end;
  TJWorkQueue_1 = class(TJavaGenericImport<JWorkQueue_1Class, JWorkQueue_1>) end;

  JWorkQueue_WorkItemClass = interface(IJavaClass)
    ['{22CE7C3E-8A5B-4C80-A72C-C420B218ED0F}']
  end;

  [JavaSignature('com/facebook/internal/WorkQueue$WorkItem')]
  JWorkQueue_WorkItem = interface(IJavaInstance)
    ['{A46D7CB8-EB34-4146-ADD3-921653442B8A}']
    function cancel: Boolean; cdecl;//Deprecated
    function isRunning: Boolean; cdecl;//Deprecated
    procedure moveToFront; cdecl;//Deprecated
  end;
  TJWorkQueue_WorkItem = class(TJavaGenericImport<JWorkQueue_WorkItemClass, JWorkQueue_WorkItem>) end;

  JWorkQueue_WorkNodeClass = interface(JWorkQueue_WorkItemClass)
    ['{E7A37318-59A3-4B31-A405-CAF5E5D9A708}']
    {class} function init(P1: JWorkQueue; P2: JRunnable): JWorkQueue_WorkNode; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/internal/WorkQueue$WorkNode')]
  JWorkQueue_WorkNode = interface(JWorkQueue_WorkItem)
    ['{268CF7BE-0812-4EFD-BC27-6447FD8558A4}']
//    function _Getthis$0: JWorkQueue; cdecl;
    function addToList(P1: JWorkQueue_WorkNode; P2: Boolean): JWorkQueue_WorkNode; cdecl;//Deprecated
    function cancel: Boolean; cdecl;//Deprecated
    function getCallback: JRunnable; cdecl;//Deprecated
    function getNext: JWorkQueue_WorkNode; cdecl;//Deprecated
    function isRunning: Boolean; cdecl;//Deprecated
    procedure moveToFront; cdecl;//Deprecated
    function removeFromList(P1: JWorkQueue_WorkNode): JWorkQueue_WorkNode; cdecl;//Deprecated
    procedure setIsRunning(P1: Boolean); cdecl;//Deprecated
    procedure verify(P1: Boolean); cdecl;//Deprecated
//    property this$0: JWorkQueue read _Getthis$0;
  end;
  TJWorkQueue_WorkNode = class(TJavaGenericImport<JWorkQueue_WorkNodeClass, JWorkQueue_WorkNode>) end;

  JLoginMethodHandlerClass = interface(JParcelableClass)
    ['{3F18C47C-7F8C-435B-995D-34412BC14797}']
    {class} function createAccessTokenFromNativeLogin(P1: JBundle; P2: JAccessTokenSource; P3: JString): JAccessToken; cdecl;//Deprecated
    {class} function createAccessTokenFromWebBundle(P1: JCollection; P2: JBundle; P3: JAccessTokenSource; P4: JString): JAccessToken; cdecl;//Deprecated
    {class} function init(P1: JParcel): JLoginMethodHandler; cdecl; overload;//Deprecated
    {class} function init(P1: JLoginClient): JLoginMethodHandler; cdecl; overload;//Deprecated
  end;

  [JavaSignature('com/facebook/login/LoginMethodHandler')]
  JLoginMethodHandler = interface(JParcelable)
    ['{75B4974A-1B45-4444-9063-D41089FC71C3}']
    function _GetloginClient: JLoginClient; cdecl;
    procedure _SetloginClient(Value: JLoginClient); cdecl;
    procedure addLoggingExtra(P1: JString; P2: JObject); cdecl;//Deprecated
    procedure cancel; cdecl;//Deprecated
    function getClientState(P1: JString): JString; cdecl;//Deprecated
    function getNameForLogging: JString; cdecl;//Deprecated
    procedure logWebLoginCompleted(P1: JString); cdecl;//Deprecated
    function needsInternetPermission: Boolean; cdecl;//Deprecated
    function onActivityResult(P1: Integer; P2: Integer; P3: JIntent): Boolean; cdecl;//Deprecated
    procedure putChallengeParam(P1: JJSONObject); cdecl;//Deprecated
    procedure setLoginClient(P1: JLoginClient); cdecl;//Deprecated
    function tryAuthorize(P1: JLoginClient_Request): Boolean; cdecl;//Deprecated
    procedure writeToParcel(P1: JParcel; P2: Integer); cdecl;//Deprecated
    property loginClient: JLoginClient read _GetloginClient write _SetloginClient;
  end;
  TJLoginMethodHandler = class(TJavaGenericImport<JLoginMethodHandlerClass, JLoginMethodHandler>) end;

  JWebLoginMethodHandlerClass = interface(JLoginMethodHandlerClass)
    ['{F37B01F9-7D71-4836-945B-F546593B1AF2}']
  end;

  [JavaSignature('com/facebook/login/WebLoginMethodHandler')]
  JWebLoginMethodHandler = interface(JLoginMethodHandler)
    ['{8630E387-E34D-47F6-BA15-4117D6E954A8}']
  end;
  TJWebLoginMethodHandler = class(TJavaGenericImport<JWebLoginMethodHandlerClass, JWebLoginMethodHandler>) end;

  JCustomTabLoginMethodHandlerClass = interface(JWebLoginMethodHandlerClass)
    ['{F6369534-92C8-4942-84C8-DDC2E6859E37}']
    {class} function _GetCREATOR: JParcelable_Creator; cdecl;
    {class} function init(P1: JLoginClient): JCustomTabLoginMethodHandler; cdecl; overload;//Deprecated
    {class} function init(P1: JParcel): JCustomTabLoginMethodHandler; cdecl; overload;//Deprecated
    {class} property CREATOR: JParcelable_Creator read _GetCREATOR;
  end;

  [JavaSignature('com/facebook/login/CustomTabLoginMethodHandler')]
  JCustomTabLoginMethodHandler = interface(JWebLoginMethodHandler)
    ['{B03FC3D2-9072-4DE6-A294-8CD6A7234675}']
    function describeContents: Integer; cdecl;//Deprecated
    function getNameForLogging: JString; cdecl;//Deprecated
    function getTokenSource: JAccessTokenSource; cdecl;//Deprecated
    procedure putChallengeParam(P1: JJSONObject); cdecl;//Deprecated
    function tryAuthorize(P1: JLoginClient_Request): Boolean; cdecl;//Deprecated
    procedure writeToParcel(P1: JParcel; P2: Integer); cdecl;//Deprecated
  end;
  TJCustomTabLoginMethodHandler = class(TJavaGenericImport<JCustomTabLoginMethodHandlerClass, JCustomTabLoginMethodHandler>) end;

  JCustomTabLoginMethodHandler_1Class = interface(JParcelable_CreatorClass)
    ['{CC5C0559-7052-46A2-95B0-C8D2FF94F9AA}']
  end;

  [JavaSignature('com/facebook/login/CustomTabLoginMethodHandler$1')]
  JCustomTabLoginMethodHandler_1 = interface(JParcelable_Creator)
    ['{00897CB0-EA3A-46D9-8CF2-77BF11924D10}']
    function createFromParcel(P1: JParcel): JCustomTabLoginMethodHandler; cdecl;//Deprecated
    function newArray(P1: Integer): TJavaObjectArray<JCustomTabLoginMethodHandler>; cdecl;//Deprecated
  end;
  TJCustomTabLoginMethodHandler_1 = class(TJavaGenericImport<JCustomTabLoginMethodHandler_1Class, JCustomTabLoginMethodHandler_1>) end;

  JDefaultAudienceClass = interface(JEnumClass)
    ['{74D22854-2EF5-4681-AFD7-FBB05519F7E4}']
    {class} function _GetEVERYONE: JDefaultAudience; cdecl;
    {class} function _GetFRIENDS: JDefaultAudience; cdecl;
    {class} function _GetNONE: JDefaultAudience; cdecl;
    {class} function _GetONLY_ME: JDefaultAudience; cdecl;
    {class} function valueOf(P1: JString): JDefaultAudience; cdecl;//Deprecated
    {class} function values: TJavaObjectArray<JDefaultAudience>; cdecl;//Deprecated
    {class} property EVERYONE: JDefaultAudience read _GetEVERYONE;
    {class} property FRIENDS: JDefaultAudience read _GetFRIENDS;
    {class} property NONE: JDefaultAudience read _GetNONE;
    {class} property ONLY_ME: JDefaultAudience read _GetONLY_ME;
  end;

  [JavaSignature('com/facebook/login/DefaultAudience')]
  JDefaultAudience = interface(JEnum)
    ['{89CC2C58-4C17-4E24-A862-91B20D985DE9}']
    function getNativeProtocolAudience: JString; cdecl;//Deprecated
  end;
  TJDefaultAudience = class(TJavaGenericImport<JDefaultAudienceClass, JDefaultAudience>) end;

  // com.facebook.login.DeviceAuthDialog
  JDeviceAuthDialog_1Class = interface(JView_OnClickListenerClass)
    ['{9C383656-0E9C-49DF-85A9-DF259FEA6D1E}']
    {class} //function init(P1: JDeviceAuthDialog): JDeviceAuthDialog_1; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/login/DeviceAuthDialog$1')]
  JDeviceAuthDialog_1 = interface(JView_OnClickListener)
    ['{B2FD3A57-2D64-45EC-BC69-E6B5FB531FDA}']
    procedure onClick(P1: JView); cdecl;//Deprecated
  end;
  TJDeviceAuthDialog_1 = class(TJavaGenericImport<JDeviceAuthDialog_1Class, JDeviceAuthDialog_1>) end;

  JDeviceAuthDialog_2Class = interface(JGraphRequest_CallbackClass)
    ['{5C21B2C9-6C9B-41AF-BBC2-D5CB32F6097B}']
    {class} //function init(P1: JDeviceAuthDialog): JDeviceAuthDialog_2; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/login/DeviceAuthDialog$2')]
  JDeviceAuthDialog_2 = interface(JGraphRequest_Callback)
    ['{BB153671-19DE-49C8-ABC8-170F78C97294}']
    procedure onCompleted(P1: JGraphResponse); cdecl;//Deprecated
  end;
  TJDeviceAuthDialog_2 = class(TJavaGenericImport<JDeviceAuthDialog_2Class, JDeviceAuthDialog_2>) end;

  JDeviceAuthDialog_3Class = interface(JRunnableClass)
    ['{7D592158-18EF-4E9B-92EE-B734538615A4}']
    {class} //function init(P1: JDeviceAuthDialog): JDeviceAuthDialog_3; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/login/DeviceAuthDialog$3')]
  JDeviceAuthDialog_3 = interface(JRunnable)
    ['{77E27530-3FAC-4257-8497-DC4B3399E211}']
    procedure run; cdecl;//Deprecated
  end;
  TJDeviceAuthDialog_3 = class(TJavaGenericImport<JDeviceAuthDialog_3Class, JDeviceAuthDialog_3>) end;

  JDeviceAuthDialog_4Class = interface(JGraphRequest_CallbackClass)
    ['{BA16898E-1FD4-4B20-AC9A-1EBB492941C3}']
    {class} //function init(P1: JDeviceAuthDialog): JDeviceAuthDialog_4; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/login/DeviceAuthDialog$4')]
  JDeviceAuthDialog_4 = interface(JGraphRequest_Callback)
    ['{C64F215E-B426-4ECB-B0A5-73B95DEAE829}']
    procedure onCompleted(P1: JGraphResponse); cdecl;//Deprecated
  end;
  TJDeviceAuthDialog_4 = class(TJavaGenericImport<JDeviceAuthDialog_4Class, JDeviceAuthDialog_4>) end;

  JDeviceAuthDialog_5Class = interface(JGraphRequest_CallbackClass)
    ['{7114F922-6AD2-499E-B745-291D81C648E9}']
    {class} //function init(P1: JDeviceAuthDialog; P2: JString): JDeviceAuthDialog_5; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/login/DeviceAuthDialog$5')]
  JDeviceAuthDialog_5 = interface(JGraphRequest_Callback)
    ['{39C6BA72-77EC-4B50-9319-2244F0EF4A6F}']
    //function _Getthis$0: JDeviceAuthDialog; cdecl;
    procedure onCompleted(P1: JGraphResponse); cdecl;//Deprecated
    //property this$0: JDeviceAuthDialog read _Getthis$0;
  end;
  TJDeviceAuthDialog_5 = class(TJavaGenericImport<JDeviceAuthDialog_5Class, JDeviceAuthDialog_5>) end;

  JDeviceAuthDialog_RequestStateClass = interface(JParcelableClass)
    ['{AC98082B-B053-41C2-B550-CC911B640B6E}']
    {class} function _GetCREATOR: JParcelable_Creator; cdecl;
    {class} function init: JDeviceAuthDialog_RequestState; cdecl; overload;//Deprecated
    {class} function init(P1: JParcel): JDeviceAuthDialog_RequestState; cdecl; overload;//Deprecated
    {class} property CREATOR: JParcelable_Creator read _GetCREATOR;
  end;

  [JavaSignature('com/facebook/login/DeviceAuthDialog$RequestState')]
  JDeviceAuthDialog_RequestState = interface(JParcelable)
    ['{626A42C1-E5E0-472B-8553-8295B5FC0F1A}']
    function describeContents: Integer; cdecl;//Deprecated
    function getInterval: Int64; cdecl;//Deprecated
    function getRequestCode: JString; cdecl;//Deprecated
    function getUserCode: JString; cdecl;//Deprecated
    procedure setInterval(P1: Int64); cdecl;//Deprecated
    procedure setLastPoll(P1: Int64); cdecl;//Deprecated
    procedure setRequestCode(P1: JString); cdecl;//Deprecated
    procedure setUserCode(P1: JString); cdecl;//Deprecated
    function withinLastRefreshWindow: Boolean; cdecl;//Deprecated
    procedure writeToParcel(P1: JParcel; P2: Integer); cdecl;//Deprecated
  end;
  TJDeviceAuthDialog_RequestState = class(TJavaGenericImport<JDeviceAuthDialog_RequestStateClass, JDeviceAuthDialog_RequestState>) end;

  JRequestState_1Class = interface(JParcelable_CreatorClass)
    ['{4BC6E2FA-4E5A-44E4-916D-128D449ABAEC}']
  end;

  [JavaSignature('com/facebook/login/DeviceAuthDialog$RequestState$1')]
  JRequestState_1 = interface(JParcelable_Creator)
    ['{3F5AAB94-C3DE-43B7-8AF2-9B9F436E095E}']
    function createFromParcel(P1: JParcel): JDeviceAuthDialog_RequestState; cdecl;//Deprecated
    function newArray(P1: Integer): TJavaObjectArray<JDeviceAuthDialog_RequestState>; cdecl;//Deprecated
  end;
  TJRequestState_1 = class(TJavaGenericImport<JRequestState_1Class, JRequestState_1>) end;

  JDeviceAuthMethodHandlerClass = interface(JLoginMethodHandlerClass)
    ['{714A74FF-2A5E-409D-9C0C-31F8F8103D56}']
    {class} function _GetCREATOR: JParcelable_Creator; cdecl;
//    {class} function getBackgroundExecutor: JScheduledThreadPoolExecutor; cdecl;//Deprecated
    {class} function init(P1: JParcel): JDeviceAuthMethodHandler; cdecl; overload;//Deprecated
    {class} function init(P1: JLoginClient): JDeviceAuthMethodHandler; cdecl; overload;//Deprecated
    {class} property CREATOR: JParcelable_Creator read _GetCREATOR;
  end;

  [JavaSignature('com/facebook/login/DeviceAuthMethodHandler')]
  JDeviceAuthMethodHandler = interface(JLoginMethodHandler)
    ['{1A4A183C-930E-4B91-B60E-91E44D97156B}']
    function describeContents: Integer; cdecl;//Deprecated
    function getNameForLogging: JString; cdecl;//Deprecated
    procedure onCancel; cdecl;//Deprecated
    procedure onError(P1: JException); cdecl;//Deprecated
    procedure onSuccess(P1: JString; P2: JString; P3: JString; P4: JCollection; P5: JCollection; P6: JAccessTokenSource; P7: JDate; P8: JDate); cdecl;//Deprecated
    function tryAuthorize(P1: JLoginClient_Request): Boolean; cdecl;//Deprecated
    procedure writeToParcel(P1: JParcel; P2: Integer); cdecl;//Deprecated
  end;
  TJDeviceAuthMethodHandler = class(TJavaGenericImport<JDeviceAuthMethodHandlerClass, JDeviceAuthMethodHandler>) end;

  JDeviceAuthMethodHandler_1Class = interface(JParcelable_CreatorClass)
    ['{C7059C47-1EA5-4DE3-93E9-8E071ADEEDB9}']
  end;

  [JavaSignature('com/facebook/login/DeviceAuthMethodHandler$1')]
  JDeviceAuthMethodHandler_1 = interface(JParcelable_Creator)
    ['{9FDE28AC-40BB-48EA-B183-5F46B9E91BA9}']
    function createFromParcel(P1: JParcel): JDeviceAuthMethodHandler; cdecl;//Deprecated
    function newArray(P1: Integer): TJavaObjectArray<JDeviceAuthMethodHandler>; cdecl;//Deprecated
  end;
  TJDeviceAuthMethodHandler_1 = class(TJavaGenericImport<JDeviceAuthMethodHandler_1Class, JDeviceAuthMethodHandler_1>) end;

  JLoginManagerClass = interface(JObjectClass)
    ['{CBED209B-784A-4600-9E35-DAC16DDD484A}']
    {class} function getInstance: JLoginManager; cdecl;//Deprecated
    {class} procedure setSuccessResult(P1: JIntent; P2: JBundle); cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/login/LoginManager')]
  JLoginManager = interface(JObject)
    ['{6020EB01-67B1-4B3F-BE1D-4CDCE27E319E}']
    function getDefaultAudience: JDefaultAudience; cdecl;//Deprecated
    function getLoginBehavior: JLoginBehavior; cdecl;//Deprecated
    procedure logInWithPublishPermissions(P1: JActivity; P2: JCollection); cdecl; overload;//Deprecated
    //procedure logInWithPublishPermissions(P1: Japp_Fragment; P2: JCollection); cdecl; overload;//Deprecated
    procedure logInWithPublishPermissions(P1: JFragment; P2: JCollection); cdecl; overload;//Deprecated
    //procedure logInWithReadPermissions(P1: Japp_Fragment; P2: JCollection); cdecl; overload;//Deprecated
    procedure logInWithReadPermissions(P1: JFragment; P2: JCollection); cdecl; overload;//Deprecated
    procedure logInWithReadPermissions(P1: JActivity; P2: JCollection); cdecl; overload;//Deprecated
    procedure logOut; cdecl;//Deprecated
    procedure registerCallback(P1: JCallbackManager; P2: JFacebookCallback); cdecl;//Deprecated
    procedure resolveError(P1: JFragment; P2: JGraphResponse); cdecl; overload;//Deprecated
    procedure resolveError(P1: JActivity; P2: JGraphResponse); cdecl; overload;//Deprecated
    //procedure resolveError(P1: Japp_Fragment; P2: JGraphResponse); cdecl; overload;//Deprecated
    function setDefaultAudience(P1: JDefaultAudience): JLoginManager; cdecl;//Deprecated
    function setLoginBehavior(P1: JLoginBehavior): JLoginManager; cdecl;//Deprecated
  end;
  TJLoginManager = class(TJavaGenericImport<JLoginManagerClass, JLoginManager>) end;

  JDeviceLoginManagerClass = interface(JLoginManagerClass)
    ['{99FCCA1F-55B1-46C8-A960-19D7587E8F9D}']
    {class} function getInstance: JDeviceLoginManager; cdecl;//Deprecated
    {class} function init: JDeviceLoginManager; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/login/DeviceLoginManager')]
  JDeviceLoginManager = interface(JLoginManager)
    ['{4494D28A-053F-4B44-9E09-933314D6E5D2}']
    function getDeviceRedirectUri: Jnet_Uri; cdecl;//Deprecated
    procedure setDeviceRedirectUri(P1: Jnet_Uri); cdecl;//Deprecated
  end;
  TJDeviceLoginManager = class(TJavaGenericImport<JDeviceLoginManagerClass, JDeviceLoginManager>) end;

  JGetTokenClientClass = interface(JPlatformServiceClientClass)
    ['{F136C35D-95D3-43B4-85C1-37F38AD4CA90}']
  end;

  [JavaSignature('com/facebook/login/GetTokenClient')]
  JGetTokenClient = interface(JPlatformServiceClient)
    ['{32452F8A-D087-400B-87F8-9CCB45A6712C}']
  end;
  TJGetTokenClient = class(TJavaGenericImport<JGetTokenClientClass, JGetTokenClient>) end;

  JGetTokenLoginMethodHandlerClass = interface(JLoginMethodHandlerClass)
    ['{394B3566-3C10-46BB-8BD7-886A2D7221C4}']
    {class} function _GetCREATOR: JParcelable_Creator; cdecl;
    {class} function init(P1: JParcel): JGetTokenLoginMethodHandler; cdecl; overload;//Deprecated
    {class} function init(P1: JLoginClient): JGetTokenLoginMethodHandler; cdecl; overload;//Deprecated
    {class} property CREATOR: JParcelable_Creator read _GetCREATOR;
  end;

  [JavaSignature('com/facebook/login/GetTokenLoginMethodHandler')]
  JGetTokenLoginMethodHandler = interface(JLoginMethodHandler)
    ['{4F3328CD-6706-4F2B-A006-4A05FC90A3D5}']
    procedure cancel; cdecl;//Deprecated
    procedure complete(P1: JLoginClient_Request; P2: JBundle); cdecl;//Deprecated
    function describeContents: Integer; cdecl;//Deprecated
    function getNameForLogging: JString; cdecl;//Deprecated
    procedure getTokenCompleted(P1: JLoginClient_Request; P2: JBundle); cdecl;//Deprecated
    procedure onComplete(P1: JLoginClient_Request; P2: JBundle); cdecl;//Deprecated
    function tryAuthorize(P1: JLoginClient_Request): Boolean; cdecl;//Deprecated
    procedure writeToParcel(P1: JParcel; P2: Integer); cdecl;//Deprecated
  end;
  TJGetTokenLoginMethodHandler = class(TJavaGenericImport<JGetTokenLoginMethodHandlerClass, JGetTokenLoginMethodHandler>) end;

  JGetTokenLoginMethodHandler_1Class = interface(JPlatformServiceClient_CompletedListenerClass)
    ['{6F95355D-5D56-4708-9D51-7A4D7E8D329D}']
    {class} function init(P1: JGetTokenLoginMethodHandler; P2: JLoginClient_Request): JGetTokenLoginMethodHandler_1; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/login/GetTokenLoginMethodHandler$1')]
  JGetTokenLoginMethodHandler_1 = interface(JPlatformServiceClient_CompletedListener)
    ['{753EB4EF-9CDF-4394-87F4-3778D463D4F9}']
//    function _Getthis$0: JGetTokenLoginMethodHandler; cdecl;
    procedure completed(P1: JBundle); cdecl;//Deprecated
//    property this$0: JGetTokenLoginMethodHandler read _Getthis$0;
  end;
  TJGetTokenLoginMethodHandler_1 = class(TJavaGenericImport<JGetTokenLoginMethodHandler_1Class, JGetTokenLoginMethodHandler_1>) end;

  JGetTokenLoginMethodHandler_2Class = interface(JUtility_GraphMeRequestWithCacheCallbackClass)
    ['{80C6D7B8-4889-4844-BC8D-5877E4E468D9}']
    {class} function init(P1: JGetTokenLoginMethodHandler; P2: JBundle; P3: JLoginClient_Request): JGetTokenLoginMethodHandler_2; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/login/GetTokenLoginMethodHandler$2')]
  JGetTokenLoginMethodHandler_2 = interface(JUtility_GraphMeRequestWithCacheCallback)
    ['{37F51EEE-EBE8-4A9A-A258-96E4796C7C5D}']
//    function _Getthis$0: JGetTokenLoginMethodHandler; cdecl;
//    function _Getval$request: JLoginClient_Request; cdecl;
    procedure onFailure(P1: JFacebookException); cdecl;//Deprecated
    procedure onSuccess(P1: JJSONObject); cdecl;//Deprecated
//    property this$0: JGetTokenLoginMethodHandler read _Getthis$0;
//    property val$request: JLoginClient_Request read _Getval$request;
  end;
  TJGetTokenLoginMethodHandler_2 = class(TJavaGenericImport<JGetTokenLoginMethodHandler_2Class, JGetTokenLoginMethodHandler_2>) end;

  JGetTokenLoginMethodHandler_3Class = interface(JParcelable_CreatorClass)
    ['{D5FC70EC-9475-4314-A9CE-F42CCE2CED20}']
  end;

  [JavaSignature('com/facebook/login/GetTokenLoginMethodHandler$3')]
  JGetTokenLoginMethodHandler_3 = interface(JParcelable_Creator)
    ['{BF0DAC77-C82A-4333-8A57-D1B9180F9CFE}']
    function createFromParcel(P1: JParcel): JGetTokenLoginMethodHandler; cdecl;//Deprecated
    function newArray(P1: Integer): TJavaObjectArray<JGetTokenLoginMethodHandler>; cdecl;//Deprecated
  end;
  TJGetTokenLoginMethodHandler_3 = class(TJavaGenericImport<JGetTokenLoginMethodHandler_3Class, JGetTokenLoginMethodHandler_3>) end;

  JKatanaProxyLoginMethodHandlerClass = interface(JLoginMethodHandlerClass)
    ['{44D0F59E-20B0-45D8-851B-B2727AA34E95}']
    {class} function _GetCREATOR: JParcelable_Creator; cdecl;
    {class} function init(P1: JParcel): JKatanaProxyLoginMethodHandler; cdecl; overload;//Deprecated
    {class} function init(P1: JLoginClient): JKatanaProxyLoginMethodHandler; cdecl; overload;//Deprecated
    {class} property CREATOR: JParcelable_Creator read _GetCREATOR;
  end;

  [JavaSignature('com/facebook/login/KatanaProxyLoginMethodHandler')]
  JKatanaProxyLoginMethodHandler = interface(JLoginMethodHandler)
    ['{9A52CEE8-F5A0-4DE2-B71E-916EE37E3D04}']
    function describeContents: Integer; cdecl;//Deprecated
    function getNameForLogging: JString; cdecl;//Deprecated
    function onActivityResult(P1: Integer; P2: Integer; P3: JIntent): Boolean; cdecl;//Deprecated
    function tryAuthorize(P1: JLoginClient_Request): Boolean; cdecl;//Deprecated
    function tryIntent(P1: JIntent; P2: Integer): Boolean; cdecl;//Deprecated
    procedure writeToParcel(P1: JParcel; P2: Integer); cdecl;//Deprecated
  end;
  TJKatanaProxyLoginMethodHandler = class(TJavaGenericImport<JKatanaProxyLoginMethodHandlerClass, JKatanaProxyLoginMethodHandler>) end;

  JKatanaProxyLoginMethodHandler_1Class = interface(JParcelable_CreatorClass)
    ['{950ECC63-AABA-4ED4-8EE8-9138513ADCF3}']
  end;

  [JavaSignature('com/facebook/login/KatanaProxyLoginMethodHandler$1')]
  JKatanaProxyLoginMethodHandler_1 = interface(JParcelable_Creator)
    ['{76DC9D6C-C04B-4D20-8C05-B769405E4A2A}']
    function createFromParcel(P1: JParcel): JKatanaProxyLoginMethodHandler; cdecl;//Deprecated
    function newArray(P1: Integer): TJavaObjectArray<JKatanaProxyLoginMethodHandler>; cdecl;//Deprecated
  end;
  TJKatanaProxyLoginMethodHandler_1 = class(TJavaGenericImport<JKatanaProxyLoginMethodHandler_1Class, JKatanaProxyLoginMethodHandler_1>) end;

  JLoginBehaviorClass = interface(JEnumClass)
    ['{C49706F2-B7D9-46CC-AB2E-A6F762F95491}']
    {class} function _GetDEVICE_AUTH: JLoginBehavior; cdecl;
    {class} function _GetNATIVE_ONLY: JLoginBehavior; cdecl;
    {class} function _GetNATIVE_WITH_FALLBACK: JLoginBehavior; cdecl;
    {class} function _GetWEB_ONLY: JLoginBehavior; cdecl;
    {class} function valueOf(P1: JString): JLoginBehavior; cdecl;//Deprecated
    {class} function values: TJavaObjectArray<JLoginBehavior>; cdecl;//Deprecated
    {class} property DEVICE_AUTH: JLoginBehavior read _GetDEVICE_AUTH;
    {class} property NATIVE_ONLY: JLoginBehavior read _GetNATIVE_ONLY;
    {class} property NATIVE_WITH_FALLBACK: JLoginBehavior read _GetNATIVE_WITH_FALLBACK;
    {class} property WEB_ONLY: JLoginBehavior read _GetWEB_ONLY;
  end;

  [JavaSignature('com/facebook/login/LoginBehavior')]
  JLoginBehavior = interface(JEnum)
    ['{7285CC7E-C431-46EE-8746-FB43FBF8420B}']
    function allowsDeviceAuth: Boolean; cdecl;//Deprecated
    function allowsKatanaAuth: Boolean; cdecl;//Deprecated
    function allowsWebViewAuth: Boolean; cdecl;//Deprecated
  end;
  TJLoginBehavior = class(TJavaGenericImport<JLoginBehaviorClass, JLoginBehavior>) end;

  JLoginClientClass = interface(JParcelableClass)
    ['{A0D75CC0-F527-4FDF-A2EC-D3EA2BB48540}']
    {class} function _GetCREATOR: JParcelable_Creator; cdecl;
    {class} function getE2E: JString; cdecl;//Deprecated
    {class} function getLoginRequestCode: Integer; cdecl;//Deprecated
    {class} //function init(P1: Japp_Fragment): JLoginClient; cdecl; overload;//Deprecated
    {class} function init(P1: JParcel): JLoginClient; cdecl; overload;//Deprecated
    {class} property CREATOR: JParcelable_Creator read _GetCREATOR;
  end;

  [JavaSignature('com/facebook/login/LoginClient')]
  JLoginClient = interface(JParcelable)
    ['{9C00EEE3-0BD2-46F0-B718-61C3F2A0622B}']
    function _GetbackgroundProcessingListener: JLoginClient_BackgroundProcessingListener; cdecl;
    procedure _SetbackgroundProcessingListener(Value: JLoginClient_BackgroundProcessingListener); cdecl;
    function _GetcheckedInternetPermission: Boolean; cdecl;
    procedure _SetcheckedInternetPermission(Value: Boolean); cdecl;
    function _GetcurrentHandler: Integer; cdecl;
    procedure _SetcurrentHandler(Value: Integer); cdecl;
    //function _Getfragment: Japp_Fragment; cdecl;
    //procedure _Setfragment(Value: Japp_Fragment); cdecl;
    function _GetloggingExtras: JMap; cdecl;
    procedure _SetloggingExtras(Value: JMap); cdecl;
    function _GetonCompletedListener: JLoginClient_OnCompletedListener; cdecl;
    procedure _SetonCompletedListener(Value: JLoginClient_OnCompletedListener); cdecl;
    function _GetpendingRequest: JLoginClient_Request; cdecl;
    procedure _SetpendingRequest(Value: JLoginClient_Request); cdecl;
    procedure authorize(P1: JLoginClient_Request); cdecl;//Deprecated
    procedure cancelCurrentHandler; cdecl;//Deprecated
    function checkInternetPermission: Boolean; cdecl;//Deprecated
    function checkPermission(P1: JString): Integer; cdecl;//Deprecated
    procedure complete(P1: JLoginClient_Result); cdecl;//Deprecated
    procedure completeAndValidate(P1: JLoginClient_Result); cdecl;//Deprecated
    function describeContents: Integer; cdecl;//Deprecated
    //function getActivity: JFragmentActivity; cdecl;//Deprecated
    function getBackgroundProcessingListener: JLoginClient_BackgroundProcessingListener; cdecl;//Deprecated
    function getCurrentHandler: JLoginMethodHandler; cdecl;//Deprecated
    //function getFragment: Japp_Fragment; cdecl;//Deprecated
    function getInProgress: Boolean; cdecl;//Deprecated
    function getOnCompletedListener: JLoginClient_OnCompletedListener; cdecl;//Deprecated
    function getPendingRequest: JLoginClient_Request; cdecl;//Deprecated
    procedure notifyBackgroundProcessingStart; cdecl;//Deprecated
    procedure notifyBackgroundProcessingStop; cdecl;//Deprecated
    function onActivityResult(P1: Integer; P2: Integer; P3: JIntent): Boolean; cdecl;//Deprecated
    procedure setBackgroundProcessingListener(P1: JLoginClient_BackgroundProcessingListener); cdecl;//Deprecated
    //procedure setFragment(P1: Japp_Fragment); cdecl;//Deprecated
    procedure setOnCompletedListener(P1: JLoginClient_OnCompletedListener); cdecl;//Deprecated
    procedure startOrContinueAuth(P1: JLoginClient_Request); cdecl;//Deprecated
    function tryCurrentHandler: Boolean; cdecl;//Deprecated
    procedure tryNextHandler; cdecl;//Deprecated
    procedure validateSameFbidAndFinish(P1: JLoginClient_Result); cdecl;//Deprecated
    procedure writeToParcel(P1: JParcel; P2: Integer); cdecl;//Deprecated
    property backgroundProcessingListener: JLoginClient_BackgroundProcessingListener read _GetbackgroundProcessingListener write _SetbackgroundProcessingListener;
    property checkedInternetPermission: Boolean read _GetcheckedInternetPermission write _SetcheckedInternetPermission;
    property currentHandler: Integer read _GetcurrentHandler write _SetcurrentHandler;
    //property fragment: Japp_Fragment read _Getfragment write _Setfragment;
    property loggingExtras: JMap read _GetloggingExtras write _SetloggingExtras;
    property onCompletedListener: JLoginClient_OnCompletedListener read _GetonCompletedListener write _SetonCompletedListener;
    property pendingRequest: JLoginClient_Request read _GetpendingRequest write _SetpendingRequest;
  end;
  TJLoginClient = class(TJavaGenericImport<JLoginClientClass, JLoginClient>) end;

  JLoginClient_1Class = interface(JParcelable_CreatorClass)
    ['{377BF40A-E64F-421F-ACCB-1C6F24BCDD26}']
  end;

  [JavaSignature('com/facebook/login/LoginClient$1')]
  JLoginClient_1 = interface(JParcelable_Creator)
    ['{CF7C443F-7283-4D68-B788-6B82BA943AC8}']
    function createFromParcel(P1: JParcel): JLoginClient; cdecl;//Deprecated
    function newArray(P1: Integer): TJavaObjectArray<JLoginClient>; cdecl;//Deprecated
  end;
  TJLoginClient_1 = class(TJavaGenericImport<JLoginClient_1Class, JLoginClient_1>) end;

  JLoginClient_BackgroundProcessingListenerClass = interface(IJavaClass)
    ['{89283675-6A9A-4F09-BDEE-3AA042E2A793}']
  end;

  [JavaSignature('com/facebook/login/LoginClient$BackgroundProcessingListener')]
  JLoginClient_BackgroundProcessingListener = interface(IJavaInstance)
    ['{D7FAD90D-B7CC-4B8F-8128-D9364B76AAA2}']
    procedure onBackgroundProcessingStarted; cdecl;//Deprecated
    procedure onBackgroundProcessingStopped; cdecl;//Deprecated
  end;
  TJLoginClient_BackgroundProcessingListener = class(TJavaGenericImport<JLoginClient_BackgroundProcessingListenerClass, JLoginClient_BackgroundProcessingListener>) end;

  JLoginClient_OnCompletedListenerClass = interface(IJavaClass)
    ['{690B8F4D-7223-4E89-80D7-BFFFF7FB5E55}']
  end;

  [JavaSignature('com/facebook/login/LoginClient$OnCompletedListener')]
  JLoginClient_OnCompletedListener = interface(IJavaInstance)
    ['{AAA64F88-9BE4-4595-A623-F0F852902CC8}']
    procedure onCompleted(P1: JLoginClient_Result); cdecl;//Deprecated
  end;
  TJLoginClient_OnCompletedListener = class(TJavaGenericImport<JLoginClient_OnCompletedListenerClass, JLoginClient_OnCompletedListener>) end;

  JLoginClient_RequestClass = interface(JParcelableClass)
    ['{9C7932E5-E154-49CE-8F87-411A0EAA88C3}']
    {class} function _GetCREATOR: JParcelable_Creator; cdecl;
    {class} function init(P1: JParcel; P2: JLoginClient_1): JLoginClient_Request; cdecl; overload;//Deprecated
    {class} function init(P1: JLoginBehavior; P2: JSet; P3: JDefaultAudience; P4: JString; P5: JString): JLoginClient_Request; cdecl; overload;//Deprecated
    {class} property CREATOR: JParcelable_Creator read _GetCREATOR;
  end;

  [JavaSignature('com/facebook/login/LoginClient$Request')]
  JLoginClient_Request = interface(JParcelable)
    ['{18B7CFE1-2A09-4787-8CCC-92B86EFB491B}']
    function describeContents: Integer; cdecl;//Deprecated
    function getApplicationId: JString; cdecl;//Deprecated
    function getAuthId: JString; cdecl;//Deprecated
    function getDefaultAudience: JDefaultAudience; cdecl;//Deprecated
    function getDeviceRedirectUriString: JString; cdecl;//Deprecated
    function getLoginBehavior: JLoginBehavior; cdecl;//Deprecated
    function getPermissions: JSet; cdecl;//Deprecated
    function hasPublishPermission: Boolean; cdecl;//Deprecated
    function isRerequest: Boolean; cdecl;//Deprecated
    procedure setDeviceRedirectUriString(P1: JString); cdecl;//Deprecated
    procedure setPermissions(P1: JSet); cdecl;//Deprecated
    procedure setRerequest(P1: Boolean); cdecl;//Deprecated
    procedure writeToParcel(P1: JParcel; P2: Integer); cdecl;//Deprecated
  end;
  TJLoginClient_Request = class(TJavaGenericImport<JLoginClient_RequestClass, JLoginClient_Request>) end;

  JRequest_1Class = interface(JParcelable_CreatorClass)
    ['{5842BB01-9CFD-44D2-BF4C-0C4396CA2902}']
  end;

  [JavaSignature('com/facebook/login/LoginClient$Request$1')]
  JRequest_1 = interface(JParcelable_Creator)
    ['{EA0BEFBC-6543-4A5C-B64A-4F57A65A1B51}']
    function createFromParcel(P1: JParcel): JLoginClient_Request; cdecl;//Deprecated
    function newArray(P1: Integer): TJavaObjectArray<JLoginClient_Request>; cdecl;//Deprecated
  end;
  TJRequest_1 = class(TJavaGenericImport<JRequest_1Class, JRequest_1>) end;

  JLoginClient_ResultClass = interface(JParcelableClass)
    ['{EBA3E202-D97D-4B2B-A005-4EAC27319B73}']
    {class} function _GetCREATOR: JParcelable_Creator; cdecl;
    {class} function createCancelResult(P1: JLoginClient_Request; P2: JString): JLoginClient_Result; cdecl;//Deprecated
    {class} function createErrorResult(P1: JLoginClient_Request; P2: JString; P3: JString): JLoginClient_Result; cdecl; overload;//Deprecated
    {class} function createErrorResult(P1: JLoginClient_Request; P2: JString; P3: JString; P4: JString): JLoginClient_Result; cdecl; overload;//Deprecated
    {class} function createTokenResult(P1: JLoginClient_Request; P2: JAccessToken): JLoginClient_Result; cdecl;//Deprecated
    {class} function init(P1: JParcel; P2: JLoginClient_1): JLoginClient_Result; cdecl; overload;//Deprecated
    {class} function init(P1: JLoginClient_Request; P2: JResult_Code; P3: JAccessToken; P4: JString; P5: JString): JLoginClient_Result; cdecl; overload;//Deprecated
    {class} property CREATOR: JParcelable_Creator read _GetCREATOR;
  end;

  [JavaSignature('com/facebook/login/LoginClient$Result')]
  JLoginClient_Result = interface(JParcelable)
    ['{9DD6ED72-692C-48CF-B4A2-F075F84EF801}']
    function _GeterrorCode: JString; cdecl;
    function _GeterrorMessage: JString; cdecl;
    function _GetloggingExtras: JMap; cdecl;
    procedure _SetloggingExtras(Value: JMap); cdecl;
    function _Getrequest: JLoginClient_Request; cdecl;
    function _Gettoken: JAccessToken; cdecl;
    function describeContents: Integer; cdecl;//Deprecated
    procedure writeToParcel(P1: JParcel; P2: Integer); cdecl;//Deprecated
    property errorCode: JString read _GeterrorCode;
    property errorMessage: JString read _GeterrorMessage;
    property loggingExtras: JMap read _GetloggingExtras write _SetloggingExtras;
    property request: JLoginClient_Request read _Getrequest;
    property token: JAccessToken read _Gettoken;
  end;
  TJLoginClient_Result = class(TJavaGenericImport<JLoginClient_ResultClass, JLoginClient_Result>) end;

  JResult_1Class = interface(JParcelable_CreatorClass)
    ['{61FC4704-2FB5-4B3D-9BFC-7622659DE765}']
  end;

  [JavaSignature('com/facebook/login/LoginClient$Result$1')]
  JResult_1 = interface(JParcelable_Creator)
    ['{643B7094-0579-43DF-A808-9D8C0DD7D01F}']
    function createFromParcel(P1: JParcel): JLoginClient_Result; cdecl;//Deprecated
    function newArray(P1: Integer): TJavaObjectArray<JLoginClient_Result>; cdecl;//Deprecated
  end;
  TJResult_1 = class(TJavaGenericImport<JResult_1Class, JResult_1>) end;

  JResult_CodeClass = interface(JEnumClass)
    ['{6EFF709A-1A63-4A8A-8651-508D63AE8B99}']
    {class} function _GetCANCEL: JResult_Code; cdecl;
    {class} function _GetERROR: JResult_Code; cdecl;
    {class} function _GetSUCCESS: JResult_Code; cdecl;
    {class} function valueOf(P1: JString): JResult_Code; cdecl;//Deprecated
    {class} function values: TJavaObjectArray<JResult_Code>; cdecl;//Deprecated
    {class} property CANCEL: JResult_Code read _GetCANCEL;
    {class} property ERROR: JResult_Code read _GetERROR;
    {class} property SUCCESS: JResult_Code read _GetSUCCESS;
  end;

  [JavaSignature('com/facebook/login/LoginClient$Result$Code')]
  JResult_Code = interface(JEnum)
    ['{82215C71-1F38-4860-883E-7013A246F069}']
    function getLoggingValue: JString; cdecl;//Deprecated
  end;
  TJResult_Code = class(TJavaGenericImport<JResult_CodeClass, JResult_Code>) end;

  // com.facebook.login.LoginFragment
  JLoginFragment_1Class = interface(JLoginClient_OnCompletedListenerClass)
    ['{3E28AAF8-BD79-4DC0-82FF-D9F12FDAE7DB}']
    {class} //function init(P1: JLoginFragment): JLoginFragment_1; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/login/LoginFragment$1')]
  JLoginFragment_1 = interface(JLoginClient_OnCompletedListener)
    ['{0E05668C-CCEC-43DF-A7CD-F9169DCD9216}']
    procedure onCompleted(P1: JLoginClient_Result); cdecl;//Deprecated
  end;
  TJLoginFragment_1 = class(TJavaGenericImport<JLoginFragment_1Class, JLoginFragment_1>) end;

  JLoginFragment_2Class = interface(JLoginClient_BackgroundProcessingListenerClass)
    ['{F9E63362-7129-40F0-A94D-260B0BD7C098}']
    {class} //function init(P1: JLoginFragment; P2: JView): JLoginFragment_2; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/login/LoginFragment$2')]
  JLoginFragment_2 = interface(JLoginClient_BackgroundProcessingListener)
    ['{6BBBCFFA-93C9-4A32-AB1D-2D6BE899E74C}']
    //function _Getthis$0: JLoginFragment; cdecl;
    procedure onBackgroundProcessingStarted; cdecl;//Deprecated
    procedure onBackgroundProcessingStopped; cdecl;//Deprecated
    //property this$0: JLoginFragment read _Getthis$0;
  end;
  TJLoginFragment_2 = class(TJavaGenericImport<JLoginFragment_2Class, JLoginFragment_2>) end;

  JLoginLoggerClass = interface(JObjectClass)
    ['{6B07A88F-5E43-4A7E-9CBC-5B2EEEA5289C}']
    {class} function _GetEVENT_EXTRAS_DEFAULT_AUDIENCE: JString; cdecl;
    {class} function _GetEVENT_EXTRAS_FACEBOOK_VERSION: JString; cdecl;
    {class} function _GetEVENT_EXTRAS_IS_REAUTHORIZE: JString; cdecl;
    {class} function _GetEVENT_EXTRAS_LOGIN_BEHAVIOR: JString; cdecl;
    {class} function _GetEVENT_EXTRAS_MISSING_INTERNET_PERMISSION: JString; cdecl;
    {class} function _GetEVENT_EXTRAS_NEW_PERMISSIONS: JString; cdecl;
    {class} function _GetEVENT_EXTRAS_NOT_TRIED: JString; cdecl;
    {class} function _GetEVENT_EXTRAS_PERMISSIONS: JString; cdecl;
    {class} function _GetEVENT_EXTRAS_REQUEST_CODE: JString; cdecl;
    {class} function _GetEVENT_EXTRAS_TRY_LOGIN_ACTIVITY: JString; cdecl;
    {class} function _GetEVENT_NAME_LOGIN_COMPLETE: JString; cdecl;
    {class} function _GetEVENT_NAME_LOGIN_METHOD_COMPLETE: JString; cdecl;
    {class} function _GetEVENT_NAME_LOGIN_START: JString; cdecl;
    {class} function _GetEVENT_PARAM_AUTH_LOGGER_ID: JString; cdecl;
    {class} function _GetEVENT_PARAM_CHALLENGE: JString; cdecl;
    {class} function _GetEVENT_PARAM_ERROR_CODE: JString; cdecl;
    {class} function _GetEVENT_PARAM_ERROR_MESSAGE: JString; cdecl;
    {class} function _GetEVENT_PARAM_EXTRAS: JString; cdecl;
    {class} function _GetEVENT_PARAM_LOGIN_RESULT: JString; cdecl;
    {class} function _GetEVENT_PARAM_METHOD: JString; cdecl;
    {class} function _GetEVENT_PARAM_METHOD_RESULT_SKIPPED: JString; cdecl;
    {class} function _GetEVENT_PARAM_TIMESTAMP: JString; cdecl;
    {class} function _GetFACEBOOK_PACKAGE_NAME: JString; cdecl;
    {class} function init(P1: JContext; P2: JString): JLoginLogger; cdecl;//Deprecated
    {class} function newAuthorizationLoggingBundle(P1: JString): JBundle; cdecl;//Deprecated
    {class} property EVENT_EXTRAS_DEFAULT_AUDIENCE: JString read _GetEVENT_EXTRAS_DEFAULT_AUDIENCE;
    {class} property EVENT_EXTRAS_FACEBOOK_VERSION: JString read _GetEVENT_EXTRAS_FACEBOOK_VERSION;
    {class} property EVENT_EXTRAS_IS_REAUTHORIZE: JString read _GetEVENT_EXTRAS_IS_REAUTHORIZE;
    {class} property EVENT_EXTRAS_LOGIN_BEHAVIOR: JString read _GetEVENT_EXTRAS_LOGIN_BEHAVIOR;
    {class} property EVENT_EXTRAS_MISSING_INTERNET_PERMISSION: JString read _GetEVENT_EXTRAS_MISSING_INTERNET_PERMISSION;
    {class} property EVENT_EXTRAS_NEW_PERMISSIONS: JString read _GetEVENT_EXTRAS_NEW_PERMISSIONS;
    {class} property EVENT_EXTRAS_NOT_TRIED: JString read _GetEVENT_EXTRAS_NOT_TRIED;
    {class} property EVENT_EXTRAS_PERMISSIONS: JString read _GetEVENT_EXTRAS_PERMISSIONS;
    {class} property EVENT_EXTRAS_REQUEST_CODE: JString read _GetEVENT_EXTRAS_REQUEST_CODE;
    {class} property EVENT_EXTRAS_TRY_LOGIN_ACTIVITY: JString read _GetEVENT_EXTRAS_TRY_LOGIN_ACTIVITY;
    {class} property EVENT_NAME_LOGIN_COMPLETE: JString read _GetEVENT_NAME_LOGIN_COMPLETE;
    {class} property EVENT_NAME_LOGIN_METHOD_COMPLETE: JString read _GetEVENT_NAME_LOGIN_METHOD_COMPLETE;
    {class} property EVENT_NAME_LOGIN_START: JString read _GetEVENT_NAME_LOGIN_START;
    {class} property EVENT_PARAM_AUTH_LOGGER_ID: JString read _GetEVENT_PARAM_AUTH_LOGGER_ID;
    {class} property EVENT_PARAM_CHALLENGE: JString read _GetEVENT_PARAM_CHALLENGE;
    {class} property EVENT_PARAM_ERROR_CODE: JString read _GetEVENT_PARAM_ERROR_CODE;
    {class} property EVENT_PARAM_ERROR_MESSAGE: JString read _GetEVENT_PARAM_ERROR_MESSAGE;
    {class} property EVENT_PARAM_EXTRAS: JString read _GetEVENT_PARAM_EXTRAS;
    {class} property EVENT_PARAM_LOGIN_RESULT: JString read _GetEVENT_PARAM_LOGIN_RESULT;
    {class} property EVENT_PARAM_METHOD: JString read _GetEVENT_PARAM_METHOD;
    {class} property EVENT_PARAM_METHOD_RESULT_SKIPPED: JString read _GetEVENT_PARAM_METHOD_RESULT_SKIPPED;
    {class} property EVENT_PARAM_TIMESTAMP: JString read _GetEVENT_PARAM_TIMESTAMP;
    {class} property FACEBOOK_PACKAGE_NAME: JString read _GetFACEBOOK_PACKAGE_NAME;
  end;

  [JavaSignature('com/facebook/login/LoginLogger')]
  JLoginLogger = interface(JObject)
    ['{B2AEDF06-D1B6-4F4C-8247-DC8298195AF6}']
    function getApplicationId: JString; cdecl;//Deprecated
    procedure logAuthorizationMethodComplete(P1: JString; P2: JString; P3: JString; P4: JString; P5: JString; P6: JMap); cdecl;//Deprecated
    procedure logAuthorizationMethodStart(P1: JString; P2: JString); cdecl;//Deprecated
    procedure logCompleteLogin(P1: JString; P2: JMap; P3: JResult_Code; P4: JMap; P5: JException); cdecl;//Deprecated
    procedure logStartLogin(P1: JLoginClient_Request); cdecl;//Deprecated
    procedure logUnexpectedError(P1: JString; P2: JString); cdecl; overload;//Deprecated
    procedure logUnexpectedError(P1: JString; P2: JString; P3: JString); cdecl; overload;//Deprecated
  end;
  TJLoginLogger = class(TJavaGenericImport<JLoginLoggerClass, JLoginLogger>) end;

  JLoginManager_1Class = interface(JCallbackManagerImpl_CallbackClass)
    ['{7CD3B546-D085-4B6E-ADD8-E498347CE702}']
    {class} function init(P1: JLoginManager; P2: JFacebookCallback): JLoginManager_1; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/login/LoginManager$1')]
  JLoginManager_1 = interface(JCallbackManagerImpl_Callback)
    ['{325D359D-CDAF-4181-A0D1-8B1C826A91C8}']
//    function _Getthis$0: JLoginManager; cdecl;
    function onActivityResult(P1: Integer; P2: JIntent): Boolean; cdecl;//Deprecated
//    property this$0: JLoginManager read _Getthis$0;
  end;
  TJLoginManager_1 = class(TJavaGenericImport<JLoginManager_1Class, JLoginManager_1>) end;

  JLoginManager_2Class = interface(JHashSetClass)
    ['{60832D08-4CC0-4F5A-8B97-23F6917CB59C}']
  end;

  [JavaSignature('com/facebook/login/LoginManager$2')]
  JLoginManager_2 = interface(JHashSet)
    ['{17B33578-6F2F-4C76-B834-57E4F8C3F186}']
  end;
  TJLoginManager_2 = class(TJavaGenericImport<JLoginManager_2Class, JLoginManager_2>) end;

  JLoginManager_3Class = interface(JCallbackManagerImpl_CallbackClass)
    ['{F77C9A5D-87F6-4BF5-B498-5DF39207EB5B}']
    {class} function init(P1: JLoginManager): JLoginManager_3; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/login/LoginManager$3')]
  JLoginManager_3 = interface(JCallbackManagerImpl_Callback)
    ['{EEA0AE01-75B8-4A8F-8865-246A410F361C}']
    function onActivityResult(P1: Integer; P2: JIntent): Boolean; cdecl;//Deprecated
  end;
  TJLoginManager_3 = class(TJavaGenericImport<JLoginManager_3Class, JLoginManager_3>) end;

  JStartActivityDelegateClass = interface(IJavaClass)
    ['{5A73DC82-B14E-4AEB-BE76-D3B97F47B041}']
  end;

  [JavaSignature('com/facebook/login/StartActivityDelegate')]
  JStartActivityDelegate = interface(IJavaInstance)
    ['{F0C3B719-DCEC-4958-BD7E-2D670649D956}']
    function getActivityContext: JActivity; cdecl;//Deprecated
    procedure startActivityForResult(P1: JIntent; P2: Integer); cdecl;//Deprecated
  end;
  TJStartActivityDelegate = class(TJavaGenericImport<JStartActivityDelegateClass, JStartActivityDelegate>) end;

  JLoginManager_ActivityStartActivityDelegateClass = interface(JStartActivityDelegateClass)
    ['{0455A302-6566-4359-9897-B3FC75DA873F}']
  end;

  [JavaSignature('com/facebook/login/LoginManager$ActivityStartActivityDelegate')]
  JLoginManager_ActivityStartActivityDelegate = interface(JStartActivityDelegate)
    ['{F37AEB8D-0F0B-49E6-9E24-D484A2BDB6A8}']
    function getActivityContext: JActivity; cdecl;//Deprecated
    procedure startActivityForResult(P1: JIntent; P2: Integer); cdecl;//Deprecated
  end;
  TJLoginManager_ActivityStartActivityDelegate = class(TJavaGenericImport<JLoginManager_ActivityStartActivityDelegateClass, JLoginManager_ActivityStartActivityDelegate>) end;

  JLoginManager_FragmentStartActivityDelegateClass = interface(JStartActivityDelegateClass)
    ['{5F6C706E-0211-4492-96E3-34A7E9519914}']
  end;

  [JavaSignature('com/facebook/login/LoginManager$FragmentStartActivityDelegate')]
  JLoginManager_FragmentStartActivityDelegate = interface(JStartActivityDelegate)
    ['{1FDF433C-51A2-4884-85C1-885AD50E713F}']
    function getActivityContext: JActivity; cdecl;//Deprecated
    procedure startActivityForResult(P1: JIntent; P2: Integer); cdecl;//Deprecated
  end;
  TJLoginManager_FragmentStartActivityDelegate = class(TJavaGenericImport<JLoginManager_FragmentStartActivityDelegateClass, JLoginManager_FragmentStartActivityDelegate>) end;

  JLoginManager_LoginLoggerHolderClass = interface(JObjectClass)
    ['{5839030F-B7F1-4628-A472-9D3B856A3727}']
  end;

  [JavaSignature('com/facebook/login/LoginManager$LoginLoggerHolder')]
  JLoginManager_LoginLoggerHolder = interface(JObject)
    ['{815A64D5-3EEE-49E7-AA6B-09CCC9BA92B4}']
  end;
  TJLoginManager_LoginLoggerHolder = class(TJavaGenericImport<JLoginManager_LoginLoggerHolderClass, JLoginManager_LoginLoggerHolder>) end;

  JLoginResultClass = interface(JObjectClass)
    ['{E4C38CBD-038E-4F49-B37A-4DB43A696F42}']
    {class} function init(P1: JAccessToken; P2: JSet; P3: JSet): JLoginResult; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/login/LoginResult')]
  JLoginResult = interface(JObject)
    ['{ED153E4F-0B11-4BF9-9557-A01E54B00AE5}']
    function getAccessToken: JAccessToken; cdecl;//Deprecated
    function getRecentlyDeniedPermissions: JSet; cdecl;//Deprecated
    function getRecentlyGrantedPermissions: JSet; cdecl;//Deprecated
  end;
  TJLoginResult = class(TJavaGenericImport<JLoginResultClass, JLoginResult>) end;

  JWebViewLoginMethodHandlerClass = interface(JWebLoginMethodHandlerClass)
    ['{EE06E362-4DF8-4DC1-A9A2-C28C31F5604C}']
    {class} function _GetCREATOR: JParcelable_Creator; cdecl;
    {class} function init(P1: JParcel): JWebViewLoginMethodHandler; cdecl; overload;//Deprecated
    {class} function init(P1: JLoginClient): JWebViewLoginMethodHandler; cdecl; overload;//Deprecated
    {class} property CREATOR: JParcelable_Creator read _GetCREATOR;
  end;

  [JavaSignature('com/facebook/login/WebViewLoginMethodHandler')]
  JWebViewLoginMethodHandler = interface(JWebLoginMethodHandler)
    ['{29203543-93C8-4E19-87CD-79E90B836FD1}']
    procedure cancel; cdecl;//Deprecated
    function describeContents: Integer; cdecl;//Deprecated
    function getNameForLogging: JString; cdecl;//Deprecated
    function getTokenSource: JAccessTokenSource; cdecl;//Deprecated
    function needsInternetPermission: Boolean; cdecl;//Deprecated
    procedure onWebDialogComplete(P1: JLoginClient_Request; P2: JBundle; P3: JFacebookException); cdecl;//Deprecated
    function tryAuthorize(P1: JLoginClient_Request): Boolean; cdecl;//Deprecated
    procedure writeToParcel(P1: JParcel; P2: Integer); cdecl;//Deprecated
  end;
  TJWebViewLoginMethodHandler = class(TJavaGenericImport<JWebViewLoginMethodHandlerClass, JWebViewLoginMethodHandler>) end;

  JWebViewLoginMethodHandler_1Class = interface(JWebDialog_OnCompleteListenerClass)
    ['{AB543CEE-270F-4CFA-8B05-48C5C3F06E0C}']
    {class} function init(P1: JWebViewLoginMethodHandler; P2: JLoginClient_Request): JWebViewLoginMethodHandler_1; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/login/WebViewLoginMethodHandler$1')]
  JWebViewLoginMethodHandler_1 = interface(JWebDialog_OnCompleteListener)
    ['{B94A1B0C-B5B5-4330-AD74-6EC68D02A4E4}']
//    function _Getthis$0: JWebViewLoginMethodHandler; cdecl;
    procedure onComplete(P1: JBundle; P2: JFacebookException); cdecl;//Deprecated
//    property this$0: JWebViewLoginMethodHandler read _Getthis$0;
  end;
  TJWebViewLoginMethodHandler_1 = class(TJavaGenericImport<JWebViewLoginMethodHandler_1Class, JWebViewLoginMethodHandler_1>) end;

  JWebViewLoginMethodHandler_2Class = interface(JParcelable_CreatorClass)
    ['{8BC00D4F-C33C-4A53-894F-31EFAEE0F786}']
  end;

  [JavaSignature('com/facebook/login/WebViewLoginMethodHandler$2')]
  JWebViewLoginMethodHandler_2 = interface(JParcelable_Creator)
    ['{0A382FDD-4701-4C00-B31B-136480AAC5AB}']
    function createFromParcel(P1: JParcel): JWebViewLoginMethodHandler; cdecl;//Deprecated
    function newArray(P1: Integer): TJavaObjectArray<JWebViewLoginMethodHandler>; cdecl;//Deprecated
  end;
  TJWebViewLoginMethodHandler_2 = class(TJavaGenericImport<JWebViewLoginMethodHandler_2Class, JWebViewLoginMethodHandler_2>) end;

  JWebViewLoginMethodHandler_AuthDialogBuilderClass = interface(JWebDialog_BuilderClass)
    ['{256FA02B-085A-42F8-BB05-FB7937C2E139}']
    {class} function init(P1: JContext; P2: JString; P3: JBundle): JWebViewLoginMethodHandler_AuthDialogBuilder; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/login/WebViewLoginMethodHandler$AuthDialogBuilder')]
  JWebViewLoginMethodHandler_AuthDialogBuilder = interface(JWebDialog_Builder)
    ['{71CA5D98-2ACC-4B4E-8AE5-FE08DC2F47B5}']
    function build: JWebDialog; cdecl;//Deprecated
    function setE2E(P1: JString): JWebViewLoginMethodHandler_AuthDialogBuilder; cdecl;//Deprecated
    function setIsRerequest(P1: Boolean): JWebViewLoginMethodHandler_AuthDialogBuilder; cdecl;//Deprecated
  end;
  TJWebViewLoginMethodHandler_AuthDialogBuilder = class(TJavaGenericImport<JWebViewLoginMethodHandler_AuthDialogBuilderClass, JWebViewLoginMethodHandler_AuthDialogBuilder>) end;

  JLoginButtonClass = interface(JFacebookButtonBaseClass)
    ['{E657693E-1AFF-4E6C-AA02-AD4C25C4A10E}']
    {class} function init(P1: JContext): JLoginButton; cdecl; overload;//Deprecated
    {class} function init(P1: JContext; P2: JAttributeSet): JLoginButton; cdecl; overload;//Deprecated
    {class} function init(P1: JContext; P2: JAttributeSet; P3: Integer): JLoginButton; cdecl; overload;//Deprecated
  end;

  [JavaSignature('com/facebook/login/widget/LoginButton')]
  JLoginButton = interface(JFacebookButtonBase)
    ['{091D745C-4FF6-43C8-A5A1-520E8AEFA410}']
    procedure clearPermissions; cdecl;//Deprecated
    procedure dismissToolTip; cdecl;//Deprecated
    function getDefaultAudience: JDefaultAudience; cdecl;//Deprecated
    function getLoginBehavior: JLoginBehavior; cdecl;//Deprecated
    function getToolTipDisplayTime: Int64; cdecl;//Deprecated
    function getToolTipMode: JLoginButton_ToolTipMode; cdecl;//Deprecated
    procedure registerCallback(P1: JCallbackManager; P2: JFacebookCallback); cdecl;//Deprecated
    procedure setDefaultAudience(P1: JDefaultAudience); cdecl;//Deprecated
    procedure setLoginBehavior(P1: JLoginBehavior); cdecl;//Deprecated
    procedure setPublishPermissions(P1: JList); cdecl; overload;//Deprecated
    procedure setReadPermissions(P1: JList); cdecl; overload;//Deprecated
    procedure setToolTipDisplayTime(P1: Int64); cdecl;//Deprecated
    procedure setToolTipMode(P1: JLoginButton_ToolTipMode); cdecl;//Deprecated
    procedure setToolTipStyle(P1: JToolTipPopup_Style); cdecl;//Deprecated
  end;
  TJLoginButton = class(TJavaGenericImport<JLoginButtonClass, JLoginButton>) end;

  JDeviceLoginButtonClass = interface(JLoginButtonClass)
    ['{DCD1D0F5-BC52-4785-BF1D-84AD72727F89}']
    {class} function init(P1: JContext): JDeviceLoginButton; cdecl; overload;//Deprecated
    {class} function init(P1: JContext; P2: JAttributeSet): JDeviceLoginButton; cdecl; overload;//Deprecated
    {class} function init(P1: JContext; P2: JAttributeSet; P3: Integer): JDeviceLoginButton; cdecl; overload;//Deprecated
  end;

  [JavaSignature('com/facebook/login/widget/DeviceLoginButton')]
  JDeviceLoginButton = interface(JLoginButton)
    ['{5AE0AF58-5200-495B-BDC9-5A4E0A43B07F}']
    function getDeviceRedirectUri: Jnet_Uri; cdecl;//Deprecated
    procedure setDeviceRedirectUri(P1: Jnet_Uri); cdecl;//Deprecated
  end;
  TJDeviceLoginButton = class(TJavaGenericImport<JDeviceLoginButtonClass, JDeviceLoginButton>) end;

  JDeviceLoginButton_1Class = interface(JObjectClass)
    ['{82ECE52B-7C1B-4423-9B24-78C0999B033A}']
  end;

  [JavaSignature('com/facebook/login/widget/DeviceLoginButton$1')]
  JDeviceLoginButton_1 = interface(JObject)
    ['{0FF33A64-1B99-4623-B5F6-74E4F8547CA3}']
  end;
  TJDeviceLoginButton_1 = class(TJavaGenericImport<JDeviceLoginButton_1Class, JDeviceLoginButton_1>) end;

  JLoginButton_LoginClickListenerClass = interface(JView_OnClickListenerClass)
    ['{65213D58-1164-4122-A7F3-CA8310729D99}']
    {class} function init(P1: JLoginButton): JLoginButton_LoginClickListener; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/login/widget/LoginButton$LoginClickListener')]
  JLoginButton_LoginClickListener = interface(JView_OnClickListener)
    ['{B812043D-3D1B-4841-87B9-D65B63157A57}']
    function getLoginManager: JLoginManager; cdecl;//Deprecated
    procedure onClick(P1: JView); cdecl;//Deprecated
    procedure performLogin; cdecl;//Deprecated
    procedure performLogout(P1: JContext); cdecl;//Deprecated
  end;
  TJLoginButton_LoginClickListener = class(TJavaGenericImport<JLoginButton_LoginClickListenerClass, JLoginButton_LoginClickListener>) end;

  JDeviceLoginButton_DeviceLoginClickListenerClass = interface(JLoginButton_LoginClickListenerClass)
    ['{E8EBD3BE-DDF9-46F4-9E77-32F2AFB2C0BA}']
    {class} function init(P1: JDeviceLoginButton; P2: JDeviceLoginButton_1): JDeviceLoginButton_DeviceLoginClickListener; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/login/widget/DeviceLoginButton$DeviceLoginClickListener')]
  JDeviceLoginButton_DeviceLoginClickListener = interface(JLoginButton_LoginClickListener)
    ['{9EF1F8EC-2029-4DB2-B581-F0F6D5658820}']
    function getLoginManager: JLoginManager; cdecl;//Deprecated
  end;
  TJDeviceLoginButton_DeviceLoginClickListener = class(TJavaGenericImport<JDeviceLoginButton_DeviceLoginClickListenerClass, JDeviceLoginButton_DeviceLoginClickListener>) end;

  JLoginButton_1Class = interface(JRunnableClass)
    ['{952C1A2C-8E78-41E3-82FE-CEE5479F7B05}']
    {class} function init(P1: JLoginButton; P2: JString): JLoginButton_1; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/login/widget/LoginButton$1')]
  JLoginButton_1 = interface(JRunnable)
    ['{43902984-5330-4C49-A03C-04CDE24F866F}']
//    function _Getthis$0: JLoginButton; cdecl;
    procedure run; cdecl;//Deprecated
//    property this$0: JLoginButton read _Getthis$0;
  end;
  TJLoginButton_1 = class(TJavaGenericImport<JLoginButton_1Class, JLoginButton_1>) end;

  J1_1Class = interface(JRunnableClass)
    ['{D877E44A-EFE4-4C3C-B16B-0255DC88C21E}']
    {class} function init(P1: JLoginButton_1; P2: JUtility_FetchedAppSettings): J1_1; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/login/widget/LoginButton$1$1')]
  J1_1 = interface(JRunnable)
    ['{8D0CCAA6-2964-4524-AF82-3FDC1D0768A3}']
//    function _Getthis$1: JLoginButton_1; cdecl;
    procedure run; cdecl;//Deprecated
//    property this$1: JLoginButton_1 read _Getthis$1;
  end;
  TJ1_1 = class(TJavaGenericImport<J1_1Class, J1_1>) end;

  JLoginButton_2Class = interface(JAccessTokenTrackerClass)
    ['{1704EB0E-438A-403A-A8FF-79DE9328F509}']
    {class} function init(P1: JLoginButton): JLoginButton_2; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/login/widget/LoginButton$2')]
  JLoginButton_2 = interface(JAccessTokenTracker)
    ['{35FE968C-9F06-472F-9F43-93E26E4BEE4E}']
    procedure onCurrentAccessTokenChanged(P1: JAccessToken; P2: JAccessToken); cdecl;//Deprecated
  end;
  TJLoginButton_2 = class(TJavaGenericImport<JLoginButton_2Class, JLoginButton_2>) end;

  JLoginButton_3Class = interface(JObjectClass)
    ['{A781B485-CB24-4F36-80B6-AA62870CD8BF}']
  end;

  [JavaSignature('com/facebook/login/widget/LoginButton$3')]
  JLoginButton_3 = interface(JObject)
    ['{28F2FFEC-F9F0-413F-9ABE-FABB9BD13DE0}']
  end;
  TJLoginButton_3 = class(TJavaGenericImport<JLoginButton_3Class, JLoginButton_3>) end;

  JLoginButton_LoginButtonPropertiesClass = interface(JObjectClass)
    ['{28556099-856D-4A79-A8AD-31339AD17E01}']
  end;

  [JavaSignature('com/facebook/login/widget/LoginButton$LoginButtonProperties')]
  JLoginButton_LoginButtonProperties = interface(JObject)
    ['{EE88BB96-382A-4522-98A8-356D7A03B2DB}']
    procedure clearPermissions; cdecl;//Deprecated
    function getDefaultAudience: JDefaultAudience; cdecl;//Deprecated
    function getLoginBehavior: JLoginBehavior; cdecl;//Deprecated
    procedure setDefaultAudience(P1: JDefaultAudience); cdecl;//Deprecated
    procedure setLoginBehavior(P1: JLoginBehavior); cdecl;//Deprecated
    procedure setPublishPermissions(P1: JList); cdecl;//Deprecated
    procedure setReadPermissions(P1: JList); cdecl;//Deprecated
  end;
  TJLoginButton_LoginButtonProperties = class(TJavaGenericImport<JLoginButton_LoginButtonPropertiesClass, JLoginButton_LoginButtonProperties>) end;

  JLoginClickListener_1Class = interface(JDialogInterface_OnClickListenerClass)
    ['{88A24ED8-C1AB-4A75-8E41-8393CAB43AB6}']
    {class} function init(P1: JLoginButton_LoginClickListener; P2: JLoginManager): JLoginClickListener_1; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/login/widget/LoginButton$LoginClickListener$1')]
  JLoginClickListener_1 = interface(JDialogInterface_OnClickListener)
    ['{46424709-6D81-418A-8255-42BF69C8256F}']
//    function _Getthis$1: JLoginButton_LoginClickListener; cdecl;
    procedure onClick(P1: JDialogInterface; P2: Integer); cdecl;//Deprecated
//    property this$1: JLoginButton_LoginClickListener read _Getthis$1;
  end;
  TJLoginClickListener_1 = class(TJavaGenericImport<JLoginClickListener_1Class, JLoginClickListener_1>) end;

  JLoginButton_ToolTipModeClass = interface(JEnumClass)
    ['{42111E41-1317-4B6D-8AF9-7B0CA571DD87}']
    {class} function _GetAUTOMATIC: JLoginButton_ToolTipMode; cdecl;
    {class} function _GetDEFAULT: JLoginButton_ToolTipMode; cdecl;
    {class} procedure _SetDEFAULT(Value: JLoginButton_ToolTipMode); cdecl;
    {class} function _GetDISPLAY_ALWAYS: JLoginButton_ToolTipMode; cdecl;
    {class} function _GetNEVER_DISPLAY: JLoginButton_ToolTipMode; cdecl;
    {class} function fromInt(P1: Integer): JLoginButton_ToolTipMode; cdecl;//Deprecated
    {class} function valueOf(P1: JString): JLoginButton_ToolTipMode; cdecl;//Deprecated
    {class} function values: TJavaObjectArray<JLoginButton_ToolTipMode>; cdecl;//Deprecated
    {class} property AUTOMATIC: JLoginButton_ToolTipMode read _GetAUTOMATIC;
    {class} property DEFAULT: JLoginButton_ToolTipMode read _GetDEFAULT write _SetDEFAULT;
    {class} property DISPLAY_ALWAYS: JLoginButton_ToolTipMode read _GetDISPLAY_ALWAYS;
    {class} property NEVER_DISPLAY: JLoginButton_ToolTipMode read _GetNEVER_DISPLAY;
  end;

  [JavaSignature('com/facebook/login/widget/LoginButton$ToolTipMode')]
  JLoginButton_ToolTipMode = interface(JEnum)
    ['{F10B4B65-5F0F-40EB-8207-0B9CABCE81C9}']
    function getValue: Integer; cdecl;//Deprecated
    function toString: JString; cdecl;//Deprecated
  end;
  TJLoginButton_ToolTipMode = class(TJavaGenericImport<JLoginButton_ToolTipModeClass, JLoginButton_ToolTipMode>) end;

  JProfilePictureViewClass = interface(JFrameLayoutClass)
    ['{6A27E5F2-B60C-438B-AEF2-0142D2EC19B9}']
    {class} function _GetCUSTOM: Integer; cdecl;
    {class} function _GetLARGE: Integer; cdecl;
    {class} function _GetNORMAL: Integer; cdecl;
    {class} function _GetSMALL: Integer; cdecl;
    {class} function _GetTAG: JString; cdecl;
    {class} function init(P1: JContext): JProfilePictureView; cdecl; overload;//Deprecated
    {class} function init(P1: JContext; P2: JAttributeSet): JProfilePictureView; cdecl; overload;//Deprecated
    {class} function init(P1: JContext; P2: JAttributeSet; P3: Integer): JProfilePictureView; cdecl; overload;//Deprecated
    {class} property CUSTOM: Integer read _GetCUSTOM;
    {class} property LARGE: Integer read _GetLARGE;
    {class} property NORMAL: Integer read _GetNORMAL;
    {class} property SMALL: Integer read _GetSMALL;
    {class} property TAG: JString read _GetTAG;
  end;

  [JavaSignature('com/facebook/login/widget/ProfilePictureView')]
  JProfilePictureView = interface(JFrameLayout)
    ['{00928F7B-4D20-4BCA-B934-7B5B019358BF}']
    function getOnErrorListener: JProfilePictureView_OnErrorListener; cdecl;//Deprecated
    function getPresetSize: Integer; cdecl;//Deprecated
    function getProfileId: JString; cdecl;//Deprecated
    function isCropped: Boolean; cdecl;//Deprecated
    procedure onDetachedFromWindow; cdecl;//Deprecated
    procedure onLayout(P1: Boolean; P2: Integer; P3: Integer; P4: Integer; P5: Integer); cdecl;//Deprecated
    procedure onMeasure(P1: Integer; P2: Integer); cdecl;//Deprecated
    procedure onRestoreInstanceState(P1: JParcelable); cdecl;//Deprecated
    function onSaveInstanceState: JParcelable; cdecl;//Deprecated
    procedure setCropped(P1: Boolean); cdecl;//Deprecated
    procedure setDefaultProfilePicture(P1: JBitmap); cdecl;//Deprecated
    procedure setOnErrorListener(P1: JProfilePictureView_OnErrorListener); cdecl;//Deprecated
    procedure setPresetSize(P1: Integer); cdecl;//Deprecated
    procedure setProfileId(P1: JString); cdecl;//Deprecated
  end;
  TJProfilePictureView = class(TJavaGenericImport<JProfilePictureViewClass, JProfilePictureView>) end;

  JProfilePictureView_1Class = interface(JImageRequest_CallbackClass)
    ['{FC1CE00D-6F3E-49C6-A6D7-38A6A690A66F}']
    {class} function init(P1: JProfilePictureView): JProfilePictureView_1; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/login/widget/ProfilePictureView$1')]
  JProfilePictureView_1 = interface(JImageRequest_Callback)
    ['{08094AFF-7DA0-420B-9145-29BBC0B0D2AE}']
    procedure onCompleted(P1: JImageResponse); cdecl;//Deprecated
  end;
  TJProfilePictureView_1 = class(TJavaGenericImport<JProfilePictureView_1Class, JProfilePictureView_1>) end;

  JProfilePictureView_OnErrorListenerClass = interface(IJavaClass)
    ['{D47AEB7B-3F45-4245-BC59-F334D42C1EF8}']
  end;

  [JavaSignature('com/facebook/login/widget/ProfilePictureView$OnErrorListener')]
  JProfilePictureView_OnErrorListener = interface(IJavaInstance)
    ['{8ACA5CA0-2401-42B7-BCCD-0A70A4EC53D9}']
    procedure onError(P1: JFacebookException); cdecl;//Deprecated
  end;
  TJProfilePictureView_OnErrorListener = class(TJavaGenericImport<JProfilePictureView_OnErrorListenerClass, JProfilePictureView_OnErrorListener>) end;

  JToolTipPopupClass = interface(JObjectClass)
    ['{F33CBA7A-F34D-417D-B92A-FB1C358D8492}']
    {class} function _GetDEFAULT_POPUP_DISPLAY_TIME: Int64; cdecl;
    {class} function init(P1: JString; P2: JView): JToolTipPopup; cdecl;//Deprecated
    {class} property DEFAULT_POPUP_DISPLAY_TIME: Int64 read _GetDEFAULT_POPUP_DISPLAY_TIME;
  end;

  [JavaSignature('com/facebook/login/widget/ToolTipPopup')]
  JToolTipPopup = interface(JObject)
    ['{E3F5811C-0241-4BA6-BA5F-F7F997D65A61}']
    procedure dismiss; cdecl;//Deprecated
    procedure setNuxDisplayTime(P1: Int64); cdecl;//Deprecated
    procedure setStyle(P1: JToolTipPopup_Style); cdecl;//Deprecated
    procedure show; cdecl;//Deprecated
  end;
  TJToolTipPopup = class(TJavaGenericImport<JToolTipPopupClass, JToolTipPopup>) end;

  JToolTipPopup_1Class = interface(JViewTreeObserver_OnScrollChangedListenerClass)
    ['{4A69A072-8BBD-44CD-895A-B730551CE9B9}']
    {class} function init(P1: JToolTipPopup): JToolTipPopup_1; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/login/widget/ToolTipPopup$1')]
  JToolTipPopup_1 = interface(JViewTreeObserver_OnScrollChangedListener)
    ['{9F78D06D-9B43-44B1-A5E6-4E22B82FF940}']
    procedure onScrollChanged; cdecl;//Deprecated
  end;
  TJToolTipPopup_1 = class(TJavaGenericImport<JToolTipPopup_1Class, JToolTipPopup_1>) end;

  JToolTipPopup_2Class = interface(JRunnableClass)
    ['{B0C2E66B-B810-4A04-BB03-E772DFEAFCCA}']
    {class} function init(P1: JToolTipPopup): JToolTipPopup_2; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/login/widget/ToolTipPopup$2')]
  JToolTipPopup_2 = interface(JRunnable)
    ['{B8B3429A-4052-45DC-9981-170720FBBA32}']
    procedure run; cdecl;//Deprecated
  end;
  TJToolTipPopup_2 = class(TJavaGenericImport<JToolTipPopup_2Class, JToolTipPopup_2>) end;

  JToolTipPopup_3Class = interface(JView_OnClickListenerClass)
    ['{E06E3C11-EAFE-46DA-A55A-51D616993FF6}']
    {class} function init(P1: JToolTipPopup): JToolTipPopup_3; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/login/widget/ToolTipPopup$3')]
  JToolTipPopup_3 = interface(JView_OnClickListener)
    ['{A4746FAA-E1D5-4AC5-96CE-96315D0D1B1E}']
    procedure onClick(P1: JView); cdecl;//Deprecated
  end;
  TJToolTipPopup_3 = class(TJavaGenericImport<JToolTipPopup_3Class, JToolTipPopup_3>) end;

  JToolTipPopup_PopupContentViewClass = interface(JFrameLayoutClass)
    ['{F67F504A-9BC3-4793-925A-A31F234F2637}']
    {class} function init(P1: JToolTipPopup; P2: JContext): JToolTipPopup_PopupContentView; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/login/widget/ToolTipPopup$PopupContentView')]
  JToolTipPopup_PopupContentView = interface(JFrameLayout)
    ['{C3CAECCA-A94A-43FC-9558-AE69B439E628}']
    procedure showBottomArrow; cdecl;//Deprecated
    procedure showTopArrow; cdecl;//Deprecated
  end;
  TJToolTipPopup_PopupContentView = class(TJavaGenericImport<JToolTipPopup_PopupContentViewClass, JToolTipPopup_PopupContentView>) end;

  JToolTipPopup_StyleClass = interface(JEnumClass)
    ['{FCC58F62-5F4B-48BC-B9F7-6A59AED69883}']
    {class} function _GetBLACK: JToolTipPopup_Style; cdecl;
    {class} function _GetBLUE: JToolTipPopup_Style; cdecl;
    {class} function valueOf(P1: JString): JToolTipPopup_Style; cdecl;//Deprecated
    {class} function values: TJavaObjectArray<JToolTipPopup_Style>; cdecl;//Deprecated
    {class} property BLACK: JToolTipPopup_Style read _GetBLACK;
    {class} property BLUE: JToolTipPopup_Style read _GetBLUE;
  end;

  [JavaSignature('com/facebook/login/widget/ToolTipPopup$Style')]
  JToolTipPopup_Style = interface(JEnum)
    ['{FD067B8B-9C3A-4B48-9720-D2E8C9B78406}']
  end;
  TJToolTipPopup_Style = class(TJavaGenericImport<JToolTipPopup_StyleClass, JToolTipPopup_Style>) end;

  JMessengerThreadParamsClass = interface(JObjectClass)
    ['{E443A323-514C-4CD6-93EF-DC972B6DF39D}']
    {class} function init(P1: JMessengerThreadParams_Origin; P2: JString; P3: JString; P4: JList): JMessengerThreadParams; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/messenger/MessengerThreadParams')]
  JMessengerThreadParams = interface(JObject)
    ['{CE818FF4-FF9E-495E-BD6E-1DE36DA5CAB0}']
    function _Getmetadata: JString; cdecl;
    function _Getorigin: JMessengerThreadParams_Origin; cdecl;
    function _Getparticipants: JList; cdecl;
    function _GetthreadToken: JString; cdecl;
    property metadata: JString read _Getmetadata;
    property origin: JMessengerThreadParams_Origin read _Getorigin;
    property participants: JList read _Getparticipants;
    property threadToken: JString read _GetthreadToken;
  end;
  TJMessengerThreadParams = class(TJavaGenericImport<JMessengerThreadParamsClass, JMessengerThreadParams>) end;

  JMessengerThreadParams_OriginClass = interface(JEnumClass)
    ['{3AC2D470-CB93-41BC-976A-CD981E257E76}']
    {class} function _GetCOMPOSE_FLOW: JMessengerThreadParams_Origin; cdecl;
    {class} function _GetREPLY_FLOW: JMessengerThreadParams_Origin; cdecl;
    {class} function _GetUNKNOWN: JMessengerThreadParams_Origin; cdecl;
    {class} function valueOf(P1: JString): JMessengerThreadParams_Origin; cdecl;//Deprecated
    {class} function values: TJavaObjectArray<JMessengerThreadParams_Origin>; cdecl;//Deprecated
    {class} property COMPOSE_FLOW: JMessengerThreadParams_Origin read _GetCOMPOSE_FLOW;
    {class} property REPLY_FLOW: JMessengerThreadParams_Origin read _GetREPLY_FLOW;
    {class} property UNKNOWN: JMessengerThreadParams_Origin read _GetUNKNOWN;
  end;

  [JavaSignature('com/facebook/messenger/MessengerThreadParams$Origin')]
  JMessengerThreadParams_Origin = interface(JEnum)
    ['{BD520D33-1E30-4510-9E64-AFB3953795C6}']
  end;
  TJMessengerThreadParams_Origin = class(TJavaGenericImport<JMessengerThreadParams_OriginClass, JMessengerThreadParams_Origin>) end;

  JMessengerUtilsClass = interface(JObjectClass)
    ['{158BFABC-7445-439A-8E2F-F4CE9B02E655}']
    {class} function _GetEXTRA_APP_ID: JString; cdecl;
    {class} function _GetEXTRA_EXTERNAL_URI: JString; cdecl;
    {class} function _GetEXTRA_IS_COMPOSE: JString; cdecl;
    {class} function _GetEXTRA_IS_REPLY: JString; cdecl;
    {class} function _GetEXTRA_METADATA: JString; cdecl;
    {class} function _GetEXTRA_PARTICIPANTS: JString; cdecl;
    {class} function _GetEXTRA_PROTOCOL_VERSION: JString; cdecl;
    {class} function _GetEXTRA_REPLY_TOKEN_KEY: JString; cdecl;
    {class} function _GetEXTRA_THREAD_TOKEN_KEY: JString; cdecl;
    {class} function _GetORCA_THREAD_CATEGORY_20150314: JString; cdecl;
    {class} function _GetPACKAGE_NAME: JString; cdecl;
    {class} function _GetPROTOCOL_VERSION_20150314: Integer; cdecl;
    {class} procedure finishShareToMessenger(P1: JActivity; P2: JShareToMessengerParams); cdecl;//Deprecated
    {class} function getMessengerThreadParamsForIntent(P1: JIntent): JMessengerThreadParams; cdecl;//Deprecated
    {class} function hasMessengerInstalled(P1: JContext): Boolean; cdecl;//Deprecated
    {class} function init: JMessengerUtils; cdecl;//Deprecated
    {class} procedure openMessengerInPlayStore(P1: JContext); cdecl;//Deprecated
    {class} procedure shareToMessenger(P1: JActivity; P2: Integer; P3: JShareToMessengerParams); cdecl;//Deprecated
    {class} property EXTRA_APP_ID: JString read _GetEXTRA_APP_ID;
    {class} property EXTRA_EXTERNAL_URI: JString read _GetEXTRA_EXTERNAL_URI;
    {class} property EXTRA_IS_COMPOSE: JString read _GetEXTRA_IS_COMPOSE;
    {class} property EXTRA_IS_REPLY: JString read _GetEXTRA_IS_REPLY;
    {class} property EXTRA_METADATA: JString read _GetEXTRA_METADATA;
    {class} property EXTRA_PARTICIPANTS: JString read _GetEXTRA_PARTICIPANTS;
    {class} property EXTRA_PROTOCOL_VERSION: JString read _GetEXTRA_PROTOCOL_VERSION;
    {class} property EXTRA_REPLY_TOKEN_KEY: JString read _GetEXTRA_REPLY_TOKEN_KEY;
    {class} property EXTRA_THREAD_TOKEN_KEY: JString read _GetEXTRA_THREAD_TOKEN_KEY;
    {class} property ORCA_THREAD_CATEGORY_20150314: JString read _GetORCA_THREAD_CATEGORY_20150314;
    {class} property PACKAGE_NAME: JString read _GetPACKAGE_NAME;
    {class} property PROTOCOL_VERSION_20150314: Integer read _GetPROTOCOL_VERSION_20150314;
  end;

  [JavaSignature('com/facebook/messenger/MessengerUtils')]
  JMessengerUtils = interface(JObject)
    ['{D558C03D-492E-4124-8708-BB4E65882AB1}']
  end;
  TJMessengerUtils = class(TJavaGenericImport<JMessengerUtilsClass, JMessengerUtils>) end;

  JShareToMessengerParamsClass = interface(JObjectClass)
    ['{4B7EB231-2653-4877-994B-A5723D343581}']
    {class} function _GetVALID_EXTERNAL_URI_SCHEMES: JSet; cdecl;
    {class} function _GetVALID_MIME_TYPES: JSet; cdecl;
    {class} function _GetVALID_URI_SCHEMES: JSet; cdecl;
    {class} function init(P1: JShareToMessengerParamsBuilder): JShareToMessengerParams; cdecl;//Deprecated
    {class} function newBuilder(P1: Jnet_Uri; P2: JString): JShareToMessengerParamsBuilder; cdecl;//Deprecated
    {class} property VALID_EXTERNAL_URI_SCHEMES: JSet read _GetVALID_EXTERNAL_URI_SCHEMES;
    {class} property VALID_MIME_TYPES: JSet read _GetVALID_MIME_TYPES;
    {class} property VALID_URI_SCHEMES: JSet read _GetVALID_URI_SCHEMES;
  end;

  [JavaSignature('com/facebook/messenger/ShareToMessengerParams')]
  JShareToMessengerParams = interface(JObject)
    ['{BF82B25C-5A41-402D-B011-640C97247FCB}']
    function _GetexternalUri: Jnet_Uri; cdecl;
    function _GetmetaData: JString; cdecl;
    function _GetmimeType: JString; cdecl;
    function _Geturi: Jnet_Uri; cdecl;
    property externalUri: Jnet_Uri read _GetexternalUri;
    property metaData: JString read _GetmetaData;
    property mimeType: JString read _GetmimeType;
    property uri: Jnet_Uri read _Geturi;
  end;
  TJShareToMessengerParams = class(TJavaGenericImport<JShareToMessengerParamsClass, JShareToMessengerParams>) end;

  JShareToMessengerParamsBuilderClass = interface(JObjectClass)
    ['{2B025B95-D802-4578-B692-58E6825AE0B0}']
  end;

  [JavaSignature('com/facebook/messenger/ShareToMessengerParamsBuilder')]
  JShareToMessengerParamsBuilder = interface(JObject)
    ['{4F4FA8D0-CADB-4F3D-A454-ACA5BEB9A4B4}']
    function build: JShareToMessengerParams; cdecl;//Deprecated
    function getExternalUri: Jnet_Uri; cdecl;//Deprecated
    function getMetaData: JString; cdecl;//Deprecated
    function getMimeType: JString; cdecl;//Deprecated
    function getUri: Jnet_Uri; cdecl;//Deprecated
    function setExternalUri(P1: Jnet_Uri): JShareToMessengerParamsBuilder; cdecl;//Deprecated
    function setMetaData(P1: JString): JShareToMessengerParamsBuilder; cdecl;//Deprecated
  end;
  TJShareToMessengerParamsBuilder = class(TJavaGenericImport<JShareToMessengerParamsBuilderClass, JShareToMessengerParamsBuilder>) end;

  JDeviceShareDialogClass = interface(JFacebookDialogBaseClass)
    ['{AEF2C68F-D95E-442F-94BA-B0EA454E559F}']
    {class} function init(P1: JActivity): JDeviceShareDialog; cdecl; overload;//Deprecated
    {class} //function init(P1: Japp_Fragment): JDeviceShareDialog; cdecl; overload;//Deprecated
    {class} function init(P1: JFragment): JDeviceShareDialog; cdecl; overload;//Deprecated
  end;

  [JavaSignature('com/facebook/share/DeviceShareDialog')]
  JDeviceShareDialog = interface(JFacebookDialogBase)
    ['{981F90DF-370D-42D9-9556-ADD69CB50D3E}']
  end;
  TJDeviceShareDialog = class(TJavaGenericImport<JDeviceShareDialogClass, JDeviceShareDialog>) end;

  JDeviceShareDialog_1Class = interface(JCallbackManagerImpl_CallbackClass)
    ['{60D5EB60-E1DA-4893-8AB4-640BBC10E209}']
    {class} function init(P1: JDeviceShareDialog; P2: JFacebookCallback): JDeviceShareDialog_1; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/share/DeviceShareDialog$1')]
  JDeviceShareDialog_1 = interface(JCallbackManagerImpl_Callback)
    ['{3940DE5A-C8FC-4F0A-BA0C-5A7312ED9863}']
//    function _Getthis$0: JDeviceShareDialog; cdecl;
    function onActivityResult(P1: Integer; P2: JIntent): Boolean; cdecl;//Deprecated
//    property this$0: JDeviceShareDialog read _Getthis$0;
  end;
  TJDeviceShareDialog_1 = class(TJavaGenericImport<JDeviceShareDialog_1Class, JDeviceShareDialog_1>) end;

  JDeviceShareDialog_ResultClass = interface(JObjectClass)
    ['{FE5AE17D-EB52-4687-974D-B7404F292E1F}']
    {class} function init: JDeviceShareDialog_Result; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/share/DeviceShareDialog$Result')]
  JDeviceShareDialog_Result = interface(JObject)
    ['{4B37BC52-030F-43E7-A486-C756ED442EE4}']
  end;
  TJDeviceShareDialog_Result = class(TJavaGenericImport<JDeviceShareDialog_ResultClass, JDeviceShareDialog_Result>) end;

  JShareApiClass = interface(JObjectClass)
    ['{043912CC-1107-47EA-AB4D-D7A2CA6BD769}']
    {class} function init(P1: JShareContent): JShareApi; cdecl;//Deprecated
    {class} procedure share(P1: JShareContent; P2: JFacebookCallback); cdecl; overload;//Deprecated
  end;

  [JavaSignature('com/facebook/share/ShareApi')]
  JShareApi = interface(JObject)
    ['{AAA20322-1E87-4577-BB72-83FA5551EF40}']
    function canShare: Boolean; cdecl;//Deprecated
    function getGraphNode: JString; cdecl;//Deprecated
    function getMessage: JString; cdecl;//Deprecated
    function getShareContent: JShareContent; cdecl;//Deprecated
    procedure setGraphNode(P1: JString); cdecl;//Deprecated
    procedure setMessage(P1: JString); cdecl;//Deprecated
    procedure share(P1: JFacebookCallback); cdecl; overload;//Deprecated
  end;
  TJShareApi = class(TJavaGenericImport<JShareApiClass, JShareApi>) end;

  JShareApi_1Class = interface(JGraphRequest_CallbackClass)
    ['{F773C9D0-D699-427D-8837-6DBAA3E37853}']
    {class} function init(P1: JShareApi; P2: JFacebookCallback): JShareApi_1; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/share/ShareApi$1')]
  JShareApi_1 = interface(JGraphRequest_Callback)
    ['{DF8E4362-B618-490D-A69D-CE3821053D04}']
//    function _Getthis$0: JShareApi; cdecl;
    procedure onCompleted(P1: JGraphResponse); cdecl;//Deprecated
//    property this$0: JShareApi read _Getthis$0;
  end;
  TJShareApi_1 = class(TJavaGenericImport<JShareApi_1Class, JShareApi_1>) end;

  JShareApi_10Class = interface(JGraphRequest_CallbackClass)
    ['{E1139D70-61CB-451C-80F3-6053A3A40872}']
    {class} function init(P1: JShareApi; P2: JCollectionMapper_OnMapValueCompleteListener): JShareApi_10; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/share/ShareApi$10')]
  JShareApi_10 = interface(JGraphRequest_Callback)
    ['{8B38A74E-AE9F-4E64-B74D-767E0EEDC10B}']
//    function _Getthis$0: JShareApi; cdecl;
    procedure onCompleted(P1: JGraphResponse); cdecl;//Deprecated
//    property this$0: JShareApi read _Getthis$0;
  end;
  TJShareApi_10 = class(TJavaGenericImport<JShareApi_10Class, JShareApi_10>) end;

  JShareApi_11Class = interface(JCollectionMapper_OnMapperCompleteListenerClass)
    ['{59B90BEF-4F6B-4526-A035-F871E4B63F89}']
    {class} function init(P1: JShareApi; P2: JJSONObject; P3: JString; P4: JGraphRequest_Callback; P5: JCollectionMapper_OnMapValueCompleteListener): JShareApi_11; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/share/ShareApi$11')]
  JShareApi_11 = interface(JCollectionMapper_OnMapperCompleteListener)
    ['{759BCD36-C69F-40BB-A5EF-5EB5DF7759EF}']
//    function _Getthis$0: JShareApi; cdecl;
//    function _Getval$ogType: JString; cdecl;
//    function _Getval$onOpenGraphObjectStagedListener: JCollectionMapper_OnMapValueCompleteListener; cdecl;
//    function _Getval$requestCallback: JGraphRequest_Callback; cdecl;
    procedure onComplete; cdecl;//Deprecated
    procedure onError(P1: JFacebookException); cdecl;//Deprecated
//    property this$0: JShareApi read _Getthis$0;
//    property val$ogType: JString read _Getval$ogType;
//    property val$onOpenGraphObjectStagedListener: JCollectionMapper_OnMapValueCompleteListener read _Getval$onOpenGraphObjectStagedListener;
//    property val$requestCallback: JGraphRequest_Callback read _Getval$requestCallback;
  end;
  TJShareApi_11 = class(TJavaGenericImport<JShareApi_11Class, JShareApi_11>) end;

  JShareApi_12Class = interface(JGraphRequest_CallbackClass)
    ['{D3AF2CDC-62F7-4755-8699-3FFB53D18FFB}']
    {class} function init(P1: JShareApi; P2: JCollectionMapper_OnMapValueCompleteListener; P3: JSharePhoto): JShareApi_12; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/share/ShareApi$12')]
  JShareApi_12 = interface(JGraphRequest_Callback)
    ['{D629D3DD-2B6D-4780-B0F6-7D1860AD364E}']
//    function _Getthis$0: JShareApi; cdecl;
//    function _Getval$photo: JSharePhoto; cdecl;
    procedure onCompleted(P1: JGraphResponse); cdecl;//Deprecated
//    property this$0: JShareApi read _Getthis$0;
//    property val$photo: JSharePhoto read _Getval$photo;
  end;
  TJShareApi_12 = class(TJavaGenericImport<JShareApi_12Class, JShareApi_12>) end;

  JShareApi_2Class = interface(JCollectionMapper_OnMapperCompleteListenerClass)
    ['{31B0AFEF-7B7D-43A6-A219-43E895FDCADA}']
    {class} function init(P1: JShareApi; P2: JBundle; P3: JShareOpenGraphAction; P4: JGraphRequest_Callback; P5: JFacebookCallback): JShareApi_2; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/share/ShareApi$2')]
  JShareApi_2 = interface(JCollectionMapper_OnMapperCompleteListener)
    ['{050D5AC1-13B7-4678-AB99-AB1E7FDA86EB}']
//    function _Getthis$0: JShareApi; cdecl;
//    function _Getval$action: JShareOpenGraphAction; cdecl;
//    function _Getval$callback: JFacebookCallback; cdecl;
//    function _Getval$requestCallback: JGraphRequest_Callback; cdecl;
    procedure onComplete; cdecl;//Deprecated
    procedure onError(P1: JFacebookException); cdecl;//Deprecated
//    property this$0: JShareApi read _Getthis$0;
//    property val$action: JShareOpenGraphAction read _Getval$action;
//    property val$callback: JFacebookCallback read _Getval$callback;
//    property val$requestCallback: JGraphRequest_Callback read _Getval$requestCallback;
  end;
  TJShareApi_2 = class(TJavaGenericImport<JShareApi_2Class, JShareApi_2>) end;

  JShareApi_3Class = interface(JGraphRequest_CallbackClass)
    ['{242721FE-F899-4DA7-B773-2B9586034B32}']
    {class} function init(P1: JShareApi; P2: JArrayList; P3: JArrayList; P4: JMutable; P5: JFacebookCallback): JShareApi_3; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/share/ShareApi$3')]
  JShareApi_3 = interface(JGraphRequest_Callback)
    ['{A2D0D973-7887-474A-8524-7F78EB55D1ED}']
//    function _Getthis$0: JShareApi; cdecl;
//    function _Getval$callback: JFacebookCallback; cdecl;
//    function _Getval$errorResponses: JArrayList; cdecl;
//    function _Getval$requestCount: JMutable; cdecl;
    procedure onCompleted(P1: JGraphResponse); cdecl;//Deprecated
//    property this$0: JShareApi read _Getthis$0;
//    property val$callback: JFacebookCallback read _Getval$callback;
//    property val$errorResponses: JArrayList read _Getval$errorResponses;
//    property val$requestCount: JMutable read _Getval$requestCount;
  end;
  TJShareApi_3 = class(TJavaGenericImport<JShareApi_3Class, JShareApi_3>) end;

  JShareApi_4Class = interface(JGraphRequest_CallbackClass)
    ['{179C05B0-DB33-40EE-90DA-FC7959B58905}']
    {class} function init(P1: JShareApi; P2: JFacebookCallback): JShareApi_4; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/share/ShareApi$4')]
  JShareApi_4 = interface(JGraphRequest_Callback)
    ['{29AB0BAC-3910-4D27-99E2-44595B425C0C}']
//    function _Getthis$0: JShareApi; cdecl;
    procedure onCompleted(P1: JGraphResponse); cdecl;//Deprecated
//    property this$0: JShareApi read _Getthis$0;
  end;
  TJShareApi_4 = class(TJavaGenericImport<JShareApi_4Class, JShareApi_4>) end;

  JShareApi_5Class = interface(JCollectionMapper_CollectionClass)
    ['{0447B930-9621-48A2-896D-EADCF0AE37DD}']
    {class} function init(P1: JShareApi; P2: JArrayList; P3: JJSONArray): JShareApi_5; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/share/ShareApi$5')]
  JShareApi_5 = interface(JCollectionMapper_Collection)
    ['{1CBE5661-B6C8-4778-AF62-117A87C4F52F}']
//    function _Getthis$0: JShareApi; cdecl;
//    function _Getval$stagedObject: JJSONArray; cdecl;
    function get(P1: JInteger): JObject; cdecl; overload;//Deprecated
    function get(P1: JObject): JObject; cdecl; overload;//Deprecated
    function keyIterator: JIterator; cdecl;//Deprecated
    procedure &set(P1: JObject; P2: JObject; P3: JCollectionMapper_OnErrorListener); cdecl; overload;//Deprecated
    procedure &set(P1: JInteger; P2: JObject; P3: JCollectionMapper_OnErrorListener); cdecl; overload;//Deprecated
//    property this$0: JShareApi read _Getthis$0;
//    property val$stagedObject: JJSONArray read _Getval$stagedObject;
  end;
  TJShareApi_5 = class(TJavaGenericImport<JShareApi_5Class, JShareApi_5>) end;

  J5_1Class = interface(JIteratorClass)
    ['{3B1EF111-CE2D-416F-A00E-774BFC7C0342}']
    {class} function init(P1: JShareApi_5; P2: JMutable; P3: Integer): J5_1; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/share/ShareApi$5$1')]
  J5_1 = interface(JIterator)
    ['{9E4F66FD-FDE0-4571-88F8-564F23B6C7EC}']
//    function _Getthis$1: JShareApi_5; cdecl;
//    function _Getval$size: Integer; cdecl;
    function hasNext: Boolean; cdecl;//Deprecated
    function next: JInteger; cdecl;//Deprecated
    procedure remove; cdecl;//Deprecated
//    property this$1: JShareApi_5 read _Getthis$1;
//    property val$size: Integer read _Getval$size;
  end;
  TJ5_1 = class(TJavaGenericImport<J5_1Class, J5_1>) end;

  JShareApi_6Class = interface(JCollectionMapper_OnMapperCompleteListenerClass)
    ['{B7285F90-2308-40B7-B22F-5825237EAD70}']
    {class} function init(P1: JShareApi; P2: JCollectionMapper_OnMapValueCompleteListener; P3: JJSONArray): JShareApi_6; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/share/ShareApi$6')]
  JShareApi_6 = interface(JCollectionMapper_OnMapperCompleteListener)
    ['{D533740A-697A-4732-95FB-3E83E75998AD}']
//    function _Getthis$0: JShareApi; cdecl;
//    function _Getval$stagedObject: JJSONArray; cdecl;
    procedure onComplete; cdecl;//Deprecated
    procedure onError(P1: JFacebookException); cdecl;//Deprecated
//    property this$0: JShareApi read _Getthis$0;
//    property val$stagedObject: JJSONArray read _Getval$stagedObject;
  end;
  TJShareApi_6 = class(TJavaGenericImport<JShareApi_6Class, JShareApi_6>) end;

  JShareApi_7Class = interface(JCollectionMapper_ValueMapperClass)
    ['{FAE5944C-EEF7-4631-86CC-9AE58D796026}']
    {class} function init(P1: JShareApi): JShareApi_7; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/share/ShareApi$7')]
  JShareApi_7 = interface(JCollectionMapper_ValueMapper)
    ['{89A65262-5BD9-409D-9632-D1014665A2EA}']
    procedure mapValue(P1: JObject; P2: JCollectionMapper_OnMapValueCompleteListener); cdecl;//Deprecated
  end;
  TJShareApi_7 = class(TJavaGenericImport<JShareApi_7Class, JShareApi_7>) end;

  JShareApi_8Class = interface(JCollectionMapper_CollectionClass)
    ['{03D9C6AA-2450-4957-8421-D4C770209B3C}']
    {class} function init(P1: JShareApi; P2: JBundle): JShareApi_8; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/share/ShareApi$8')]
  JShareApi_8 = interface(JCollectionMapper_Collection)
    ['{C9E230A4-973D-4C44-B197-DF575165D752}']
//    function _Getthis$0: JShareApi; cdecl;
    function get(P1: JString): JObject; cdecl; overload;//Deprecated
    function get(P1: JObject): JObject; cdecl; overload;//Deprecated
    function keyIterator: JIterator; cdecl;//Deprecated
    procedure &set(P1: JObject; P2: JObject; P3: JCollectionMapper_OnErrorListener); cdecl; overload;//Deprecated
    procedure &set(P1: JString; P2: JObject; P3: JCollectionMapper_OnErrorListener); cdecl; overload;//Deprecated
//    property this$0: JShareApi read _Getthis$0;
  end;
  TJShareApi_8 = class(TJavaGenericImport<JShareApi_8Class, JShareApi_8>) end;

  JShareApi_9Class = interface(JCollectionMapper_CollectionClass)
    ['{7B16AC1C-E12F-4146-BD62-CFBA536CBE7F}']
    {class} function init(P1: JShareApi; P2: JShareOpenGraphObject; P3: JJSONObject): JShareApi_9; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/share/ShareApi$9')]
  JShareApi_9 = interface(JCollectionMapper_Collection)
    ['{18DF7A91-9397-479C-AE21-593216187996}']
//    function _Getthis$0: JShareApi; cdecl;
//    function _Getval$stagedObject: JJSONObject; cdecl;
    function get(P1: JString): JObject; cdecl; overload;//Deprecated
    function get(P1: JObject): JObject; cdecl; overload;//Deprecated
    function keyIterator: JIterator; cdecl;//Deprecated
    procedure &set(P1: JObject; P2: JObject; P3: JCollectionMapper_OnErrorListener); cdecl; overload;//Deprecated
    procedure &set(P1: JString; P2: JObject; P3: JCollectionMapper_OnErrorListener); cdecl; overload;//Deprecated
//    property this$0: JShareApi read _Getthis$0;
//    property val$stagedObject: JJSONObject read _Getval$stagedObject;
  end;
  TJShareApi_9 = class(TJavaGenericImport<JShareApi_9Class, JShareApi_9>) end;

  JShareBuilderClass = interface(IJavaClass)
    ['{44B12D7D-9B55-480C-8CC6-6CEB79FA39D1}']
  end;

  [JavaSignature('com/facebook/share/ShareBuilder')]
  JShareBuilder = interface(IJavaInstance)
    ['{F0AC2634-3A5B-41D0-B491-B114741001B7}']
    function build: JObject; cdecl;//Deprecated
  end;
  TJShareBuilder = class(TJavaGenericImport<JShareBuilderClass, JShareBuilder>) end;

  JSharerClass = interface(IJavaClass)
    ['{BFE37F6F-20C4-4249-A2C8-A7BA89696075}']
  end;

  [JavaSignature('com/facebook/share/Sharer')]
  JSharer = interface(IJavaInstance)
    ['{2DEA62E7-0B56-4828-93C7-0025B1D8DB6D}']
    function getShouldFailOnDataError: Boolean; cdecl;//Deprecated
    procedure setShouldFailOnDataError(P1: Boolean); cdecl;//Deprecated
  end;
  TJSharer = class(TJavaGenericImport<JSharerClass, JSharer>) end;

  JSharer_ResultClass = interface(JObjectClass)
    ['{396031E7-155D-4B4D-824A-9EEEBB7B7A77}']
    {class} function init(P1: JString): JSharer_Result; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/share/Sharer$Result')]
  JSharer_Result = interface(JObject)
    ['{CFFC670C-DCFA-4E04-9D91-349037BF1CDB}']
    function getPostId: JString; cdecl;//Deprecated
  end;
  TJSharer_Result = class(TJavaGenericImport<JSharer_ResultClass, JSharer_Result>) end;

  JAppInviteDialogFeatureClass = interface(JEnumClass)
    ['{F6BE4A1B-E0CC-4C84-BBDB-BF671717AA76}']
    {class} function _GetAPP_INVITES_DIALOG: JAppInviteDialogFeature; cdecl;
    {class} function valueOf(P1: JString): JAppInviteDialogFeature; cdecl;//Deprecated
    {class} function values: TJavaObjectArray<JAppInviteDialogFeature>; cdecl;//Deprecated
    {class} property APP_INVITES_DIALOG: JAppInviteDialogFeature read _GetAPP_INVITES_DIALOG;
  end;

  [JavaSignature('com/facebook/share/internal/AppInviteDialogFeature')]
  JAppInviteDialogFeature = interface(JEnum)
    ['{8A3F4B50-59E9-4B76-BF69-E09151420EE0}']
    function getAction: JString; cdecl;//Deprecated
    function getMinVersion: Integer; cdecl;//Deprecated
  end;
  TJAppInviteDialogFeature = class(TJavaGenericImport<JAppInviteDialogFeatureClass, JAppInviteDialogFeature>) end;

  // com.facebook.share.internal.DeviceShareDialogFragment
  JDeviceShareDialogFragment_1Class = interface(JView_OnClickListenerClass)
    ['{C35AA16B-5993-47E1-938C-2B23121A2D79}']
    {class} //function init(P1: JDeviceShareDialogFragment): JDeviceShareDialogFragment_1; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/share/internal/DeviceShareDialogFragment$1')]
  JDeviceShareDialogFragment_1 = interface(JView_OnClickListener)
    ['{34B2BD19-6C09-4E05-A31B-CAA96DB3524C}']
    procedure onClick(P1: JView); cdecl;//Deprecated
  end;
  TJDeviceShareDialogFragment_1 = class(TJavaGenericImport<JDeviceShareDialogFragment_1Class, JDeviceShareDialogFragment_1>) end;

  JDeviceShareDialogFragment_2Class = interface(JGraphRequest_CallbackClass)
    ['{7B2CA1E3-8ACB-4350-8E77-50A4D875564B}']
    {class} //function init(P1: JDeviceShareDialogFragment): JDeviceShareDialogFragment_2; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/share/internal/DeviceShareDialogFragment$2')]
  JDeviceShareDialogFragment_2 = interface(JGraphRequest_Callback)
    ['{FFA70D51-4A07-4C6C-805B-4886AD9B5DA1}']
    procedure onCompleted(P1: JGraphResponse); cdecl;//Deprecated
  end;
  TJDeviceShareDialogFragment_2 = class(TJavaGenericImport<JDeviceShareDialogFragment_2Class, JDeviceShareDialogFragment_2>) end;

  JDeviceShareDialogFragment_3Class = interface(JRunnableClass)
    ['{337CC7C0-C2CD-4904-9C0D-10FDDEFE63FD}']
    {class} //function init(P1: JDeviceShareDialogFragment): JDeviceShareDialogFragment_3; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/share/internal/DeviceShareDialogFragment$3')]
  JDeviceShareDialogFragment_3 = interface(JRunnable)
    ['{5E5CA9F3-C133-4B96-A68C-865B5E92FD96}']
    procedure run; cdecl;//Deprecated
  end;
  TJDeviceShareDialogFragment_3 = class(TJavaGenericImport<JDeviceShareDialogFragment_3Class, JDeviceShareDialogFragment_3>) end;

  JDeviceShareDialogFragment_RequestStateClass = interface(JParcelableClass)
    ['{7BFF703D-4AB5-490F-9800-9ED8A37E9A99}']
    {class} function _GetCREATOR: JParcelable_Creator; cdecl;
    {class} function init: JDeviceShareDialogFragment_RequestState; cdecl; overload;//Deprecated
    {class} function init(P1: JParcel): JDeviceShareDialogFragment_RequestState; cdecl; overload;//Deprecated
    {class} property CREATOR: JParcelable_Creator read _GetCREATOR;
  end;

  [JavaSignature('com/facebook/share/internal/DeviceShareDialogFragment$RequestState')]
  JDeviceShareDialogFragment_RequestState = interface(JParcelable)
    ['{E915B6D4-E01B-4D63-88A0-E5423911BFAB}']
    function describeContents: Integer; cdecl;//Deprecated
    function getExpiresIn: Int64; cdecl;//Deprecated
    function getUserCode: JString; cdecl;//Deprecated
    procedure setExpiresIn(P1: Int64); cdecl;//Deprecated
    procedure setUserCode(P1: JString); cdecl;//Deprecated
    procedure writeToParcel(P1: JParcel; P2: Integer); cdecl;//Deprecated
  end;
  TJDeviceShareDialogFragment_RequestState = class(TJavaGenericImport<JDeviceShareDialogFragment_RequestStateClass, JDeviceShareDialogFragment_RequestState>) end;

  JDeviceShareDialogFragment_RequestState_1Class = interface(JParcelable_CreatorClass)
    ['{090EBE0E-1E0F-4C17-9A77-A6EBA638FB69}']
  end;

  [JavaSignature('com/facebook/share/internal/DeviceShareDialogFragment$RequestState$1')]
  JDeviceShareDialogFragment_RequestState_1 = interface(JParcelable_Creator)
    ['{B79F2EC4-FCA9-445F-9123-F49416357945}']
    function createFromParcel(P1: JParcel): JDeviceShareDialogFragment_RequestState; cdecl;//Deprecated
    function newArray(P1: Integer): TJavaObjectArray<JDeviceShareDialogFragment_RequestState>; cdecl;//Deprecated
  end;
  TJDeviceShareDialogFragment_RequestState_1 = class(TJavaGenericImport<JDeviceShareDialogFragment_RequestState_1Class, JDeviceShareDialogFragment_RequestState_1>) end;

  JGameRequestValidationClass = interface(JObjectClass)
    ['{D2BB1D39-8AFE-4CDC-BEB4-B76847FCACE4}']
    {class} function init: JGameRequestValidation; cdecl;//Deprecated
    {class} procedure validate(P1: JGameRequestContent); cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/share/internal/GameRequestValidation')]
  JGameRequestValidation = interface(JObject)
    ['{78D95BAF-A9AB-45C6-83D9-832B1A3C0CD3}']
  end;
  TJGameRequestValidation = class(TJavaGenericImport<JGameRequestValidationClass, JGameRequestValidation>) end;

  JLegacyNativeDialogParametersClass = interface(JObjectClass)
    ['{1B29A538-3CCA-4E7B-9F5D-F463A68178DB}']
    {class} function create(P1: JUUID; P2: JShareContent; P3: Boolean): JBundle; cdecl;//Deprecated
    {class} function init: JLegacyNativeDialogParameters; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/share/internal/LegacyNativeDialogParameters')]
  JLegacyNativeDialogParameters = interface(JObject)
    ['{0E0F59E4-26AD-47BB-92B1-FC729736F06D}']
  end;
  TJLegacyNativeDialogParameters = class(TJavaGenericImport<JLegacyNativeDialogParametersClass, JLegacyNativeDialogParameters>) end;

  JLikeActionControllerClass = interface(JObjectClass)
    ['{F6755B51-FF11-44D2-8028-A50EB482E768}']
    {class} function _GetACTION_LIKE_ACTION_CONTROLLER_DID_ERROR: JString; cdecl;
    {class} function _GetACTION_LIKE_ACTION_CONTROLLER_DID_RESET: JString; cdecl;
    {class} function _GetACTION_LIKE_ACTION_CONTROLLER_UPDATED: JString; cdecl;
    {class} function _GetACTION_OBJECT_ID_KEY: JString; cdecl;
    {class} function _GetERROR_INVALID_OBJECT_ID: JString; cdecl;
    {class} function _GetERROR_PUBLISH_ERROR: JString; cdecl;
    {class} procedure getControllerForObjectId(P1: JString; P2: JLikeView_ObjectType; P3: JLikeActionController_CreationCallback); cdecl;//Deprecated
    {class} function handleOnActivityResult(P1: Integer; P2: Integer; P3: JIntent): Boolean; cdecl;//Deprecated
    {class} property ACTION_LIKE_ACTION_CONTROLLER_DID_ERROR: JString read _GetACTION_LIKE_ACTION_CONTROLLER_DID_ERROR;
    {class} property ACTION_LIKE_ACTION_CONTROLLER_DID_RESET: JString read _GetACTION_LIKE_ACTION_CONTROLLER_DID_RESET;
    {class} property ACTION_LIKE_ACTION_CONTROLLER_UPDATED: JString read _GetACTION_LIKE_ACTION_CONTROLLER_UPDATED;
    {class} property ACTION_OBJECT_ID_KEY: JString read _GetACTION_OBJECT_ID_KEY;
    {class} property ERROR_INVALID_OBJECT_ID: JString read _GetERROR_INVALID_OBJECT_ID;
    {class} property ERROR_PUBLISH_ERROR: JString read _GetERROR_PUBLISH_ERROR;
  end;

  [JavaSignature('com/facebook/share/internal/LikeActionController')]
  JLikeActionController = interface(JObject)
    ['{A18C9F3A-AFA7-4AED-9C28-4E46721DDD6A}']
    function getLikeCountString: JString; cdecl;//Deprecated
    function getObjectId: JString; cdecl;//Deprecated
    function getSocialSentence: JString; cdecl;//Deprecated
    function isObjectLiked: Boolean; cdecl;//Deprecated
    function shouldEnableView: Boolean; cdecl;//Deprecated
    procedure toggleLike(P1: JActivity; P2: JFragmentWrapper; P3: JBundle); cdecl;//Deprecated
  end;
  TJLikeActionController = class(TJavaGenericImport<JLikeActionControllerClass, JLikeActionController>) end;

  JLikeActionController_CreationCallbackClass = interface(IJavaClass)
    ['{77560B16-17F0-47BB-AA62-7487C1176529}']
  end;

  [JavaSignature('com/facebook/share/internal/LikeActionController$CreationCallback')]
  JLikeActionController_CreationCallback = interface(IJavaInstance)
    ['{EBF3AC61-3594-4BD4-BCB5-58E549BD04E5}']
    procedure onComplete(P1: JLikeActionController; P2: JFacebookException); cdecl;//Deprecated
  end;
  TJLikeActionController_CreationCallback = class(TJavaGenericImport<JLikeActionController_CreationCallbackClass, JLikeActionController_CreationCallback>) end;

  JLikeActionController_1Class = interface(JLikeActionController_CreationCallbackClass)
    ['{EC79A22D-05E9-4BAC-8030-7B3BFDFF32AC}']
    {class} function init(P1: Integer; P2: Integer; P3: JIntent): JLikeActionController_1; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/share/internal/LikeActionController$1')]
  JLikeActionController_1 = interface(JLikeActionController_CreationCallback)
    ['{60A5EC7D-5869-40EA-AE69-7A332655EF86}']
//    function _Getval$data: JIntent; cdecl;
//    function _Getval$resultCode: Integer; cdecl;
    procedure onComplete(P1: JLikeActionController; P2: JFacebookException); cdecl;//Deprecated
//    property val$data: JIntent read _Getval$data;
//    property val$resultCode: Integer read _Getval$resultCode;
  end;
  TJLikeActionController_1 = class(TJavaGenericImport<JLikeActionController_1Class, JLikeActionController_1>) end;

  JLikeActionController_10Class = interface(JPlatformServiceClient_CompletedListenerClass)
    ['{121ECD7F-7030-43C0-AFCB-DC7217478ACC}']
    {class} function init(P1: JLikeActionController): JLikeActionController_10; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/share/internal/LikeActionController$10')]
  JLikeActionController_10 = interface(JPlatformServiceClient_CompletedListener)
    ['{43E1E22F-A68B-48FC-80E2-C4C1A333EB1F}']
    procedure completed(P1: JBundle); cdecl;//Deprecated
  end;
  TJLikeActionController_10 = class(TJavaGenericImport<JLikeActionController_10Class, JLikeActionController_10>) end;

  JLikeActionController_11Class = interface(JGraphRequestBatch_CallbackClass)
    ['{6491C3A0-6A19-4595-8D43-6ABDB74DFFF2}']
    {class} function init(P1: JLikeActionController; P2: JLikeActionController_GetOGObjectIdRequestWrapper; P3: JLikeActionController_GetPageIdRequestWrapper; P4: JLikeActionController_RequestCompletionCallback): JLikeActionController_11; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/share/internal/LikeActionController$11')]
  JLikeActionController_11 = interface(JGraphRequestBatch_Callback)
    ['{EF5F4416-5C3A-44EC-9A74-27CE95E89CCE}']
//    function _Getthis$0: JLikeActionController; cdecl;
//    function _Getval$completionHandler: JLikeActionController_RequestCompletionCallback; cdecl;
//    function _Getval$pageIdRequest: JLikeActionController_GetPageIdRequestWrapper; cdecl;
    procedure onBatchCompleted(P1: JGraphRequestBatch); cdecl;//Deprecated
//    property this$0: JLikeActionController read _Getthis$0;
//    property val$completionHandler: JLikeActionController_RequestCompletionCallback read _Getval$completionHandler;
//    property val$pageIdRequest: JLikeActionController_GetPageIdRequestWrapper read _Getval$pageIdRequest;
  end;
  TJLikeActionController_11 = class(TJavaGenericImport<JLikeActionController_11Class, JLikeActionController_11>) end;

  JLikeActionController_12Class = interface(JObjectClass)
    ['{BE08B075-B7DC-4445-ADA3-EFA7BC7FD088}']
  end;

  [JavaSignature('com/facebook/share/internal/LikeActionController$12')]
  JLikeActionController_12 = interface(JObject)
    ['{67CF5900-0B1F-455D-9218-06FBF49A9ECE}']
  end;
  TJLikeActionController_12 = class(TJavaGenericImport<JLikeActionController_12Class, JLikeActionController_12>) end;

  JLikeActionController_2Class = interface(JRunnableClass)
    ['{94640467-69EF-4446-9218-D9B5CF9761CA}']
    {class} function init(P1: JLikeActionController): JLikeActionController_2; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/share/internal/LikeActionController$2')]
  JLikeActionController_2 = interface(JRunnable)
    ['{ECA747A5-A32A-463E-A15A-3FD868779C6F}']
    procedure run; cdecl;//Deprecated
  end;
  TJLikeActionController_2 = class(TJavaGenericImport<JLikeActionController_2Class, JLikeActionController_2>) end;

  JLikeActionController_3Class = interface(JCallbackManagerImpl_CallbackClass)
    ['{4AAE0CC4-9965-49F2-9134-74D332CCD383}']
  end;

  [JavaSignature('com/facebook/share/internal/LikeActionController$3')]
  JLikeActionController_3 = interface(JCallbackManagerImpl_Callback)
    ['{766E82AB-DCB2-4715-BAF7-6CA19602B7C1}']
    function onActivityResult(P1: Integer; P2: JIntent): Boolean; cdecl;//Deprecated
  end;
  TJLikeActionController_3 = class(TJavaGenericImport<JLikeActionController_3Class, JLikeActionController_3>) end;

  JLikeActionController_4Class = interface(JRunnableClass)
    ['{9698BD11-B367-4900-8A60-9F2043D62C80}']
    {class} function init(P1: JLikeActionController_CreationCallback; P2: JLikeActionController; P3: JFacebookException): JLikeActionController_4; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/share/internal/LikeActionController$4')]
  JLikeActionController_4 = interface(JRunnable)
    ['{45A5E690-6C74-4A59-BF5D-9C4B012F28B3}']
//    function _Getval$controller: JLikeActionController; cdecl;
//    function _Getval$error: JFacebookException; cdecl;
    procedure run; cdecl;//Deprecated
//    property val$controller: JLikeActionController read _Getval$controller;
//    property val$error: JFacebookException read _Getval$error;
  end;
  TJLikeActionController_4 = class(TJavaGenericImport<JLikeActionController_4Class, JLikeActionController_4>) end;

  JLikeActionController_5Class = interface(JAccessTokenTrackerClass)
    ['{D9D687C4-960B-48A2-9CE4-EB12389AED42}']
  end;

  [JavaSignature('com/facebook/share/internal/LikeActionController$5')]
  JLikeActionController_5 = interface(JAccessTokenTracker)
    ['{97B25490-578A-4139-9221-33157691B373}']
  end;
  TJLikeActionController_5 = class(TJavaGenericImport<JLikeActionController_5Class, JLikeActionController_5>) end;

  JResultProcessorClass = interface(JObjectClass)
    ['{CEBA8CA5-C44F-41DF-A5F0-C135C28A7C2E}']
    {class} function init(P1: JFacebookCallback): JResultProcessor; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/share/internal/ResultProcessor')]
  JResultProcessor = interface(JObject)
    ['{7B7BE741-E020-4CB2-9E13-096AB0631345}']
    procedure onCancel(P1: JAppCall); cdecl;//Deprecated
    procedure onError(P1: JAppCall; P2: JFacebookException); cdecl;//Deprecated
    procedure onSuccess(P1: JAppCall; P2: JBundle); cdecl;//Deprecated
  end;
  TJResultProcessor = class(TJavaGenericImport<JResultProcessorClass, JResultProcessor>) end;

  JLikeActionController_6Class = interface(JResultProcessorClass)
    ['{15790C7A-47D8-45E6-A6C6-8EBD8FE27F58}']
    {class} function init(P1: JLikeActionController; P2: JFacebookCallback; P3: JBundle): JLikeActionController_6; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/share/internal/LikeActionController$6')]
  JLikeActionController_6 = interface(JResultProcessor)
    ['{EB5425F2-CE93-45D6-96E9-9E5BD89C2498}']
//    function _Getthis$0: JLikeActionController; cdecl;
    procedure onCancel(P1: JAppCall); cdecl;//Deprecated
    procedure onError(P1: JAppCall; P2: JFacebookException); cdecl;//Deprecated
    procedure onSuccess(P1: JAppCall; P2: JBundle); cdecl;//Deprecated
//    property this$0: JLikeActionController read _Getthis$0;
  end;
  TJLikeActionController_6 = class(TJavaGenericImport<JLikeActionController_6Class, JLikeActionController_6>) end;

  JLikeActionController_RequestCompletionCallbackClass = interface(IJavaClass)
    ['{1A94EA1C-741C-4404-A741-A117A2257FDA}']
  end;

  [JavaSignature('com/facebook/share/internal/LikeActionController$RequestCompletionCallback')]
  JLikeActionController_RequestCompletionCallback = interface(IJavaInstance)
    ['{4237EADC-578B-4F8A-902B-36D909572502}']
    procedure onComplete; cdecl;//Deprecated
  end;
  TJLikeActionController_RequestCompletionCallback = class(TJavaGenericImport<JLikeActionController_RequestCompletionCallbackClass, JLikeActionController_RequestCompletionCallback>) end;

  JLikeActionController_7Class = interface(JLikeActionController_RequestCompletionCallbackClass)
    ['{E6A7EC57-BDDD-4302-B943-CDFB5F9B5C58}']
    {class} function init(P1: JLikeActionController; P2: JBundle): JLikeActionController_7; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/share/internal/LikeActionController$7')]
  JLikeActionController_7 = interface(JLikeActionController_RequestCompletionCallback)
    ['{B0EE3EEC-2420-4385-9741-541C09700356}']
//    function _Getthis$0: JLikeActionController; cdecl;
    procedure onComplete; cdecl;//Deprecated
//    property this$0: JLikeActionController read _Getthis$0;
  end;
  TJLikeActionController_7 = class(TJavaGenericImport<JLikeActionController_7Class, JLikeActionController_7>) end;

  J7_1Class = interface(JGraphRequestBatch_CallbackClass)
    ['{A63ED120-E27C-4766-8A5B-3DF55E945337}']
    {class} function init(P1: JLikeActionController_7; P2: JLikeActionController_PublishLikeRequestWrapper): J7_1; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/share/internal/LikeActionController$7$1')]
  J7_1 = interface(JGraphRequestBatch_Callback)
    ['{89976DF3-100D-4919-8366-E76536578060}']
//    function _Getthis$1: JLikeActionController_7; cdecl;
    procedure onBatchCompleted(P1: JGraphRequestBatch); cdecl;//Deprecated
//    property this$1: JLikeActionController_7 read _Getthis$1;
  end;
  TJ7_1 = class(TJavaGenericImport<J7_1Class, J7_1>) end;

  JLikeActionController_8Class = interface(JGraphRequestBatch_CallbackClass)
    ['{8612B60C-F187-493C-9390-876622323C9F}']
    {class} function init(P1: JLikeActionController; P2: JLikeActionController_PublishUnlikeRequestWrapper; P3: JBundle): JLikeActionController_8; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/share/internal/LikeActionController$8')]
  JLikeActionController_8 = interface(JGraphRequestBatch_Callback)
    ['{870748E8-4C6C-405B-953D-516E5BAFFAD7}']
//    function _Getthis$0: JLikeActionController; cdecl;
//    function _Getval$analyticsParameters: JBundle; cdecl;
    procedure onBatchCompleted(P1: JGraphRequestBatch); cdecl;//Deprecated
//    property this$0: JLikeActionController read _Getthis$0;
//    property val$analyticsParameters: JBundle read _Getval$analyticsParameters;
  end;
  TJLikeActionController_8 = class(TJavaGenericImport<JLikeActionController_8Class, JLikeActionController_8>) end;

  JLikeActionController_9Class = interface(JLikeActionController_RequestCompletionCallbackClass)
    ['{C16C4C06-AECE-405B-BF37-31FE175EE6E0}']
    {class} function init(P1: JLikeActionController): JLikeActionController_9; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/share/internal/LikeActionController$9')]
  JLikeActionController_9 = interface(JLikeActionController_RequestCompletionCallback)
    ['{3216B6DF-9FA4-43EB-A050-A713BD8C77FA}']
    procedure onComplete; cdecl;//Deprecated
  end;
  TJLikeActionController_9 = class(TJavaGenericImport<JLikeActionController_9Class, JLikeActionController_9>) end;

  J9_1Class = interface(JGraphRequestBatch_CallbackClass)
    ['{8D6D971E-E6AC-4ECC-8A76-3D55A8B2B118}']
    {class} function init(P1: JLikeActionController_9; P2: JLikeActionController_LikeRequestWrapper; P3: JLikeActionController_GetEngagementRequestWrapper): J9_1; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/share/internal/LikeActionController$9$1')]
  J9_1 = interface(JGraphRequestBatch_Callback)
    ['{EF7B0529-86DD-4B2D-9123-AD3B17B52C27}']
//    function _Getthis$1: JLikeActionController_9; cdecl;
//    function _Getval$engagementRequest: JLikeActionController_GetEngagementRequestWrapper; cdecl;
    procedure onBatchCompleted(P1: JGraphRequestBatch); cdecl;//Deprecated
//    property this$1: JLikeActionController_9 read _Getthis$1;
//    property val$engagementRequest: JLikeActionController_GetEngagementRequestWrapper read _Getval$engagementRequest;
  end;
  TJ9_1 = class(TJavaGenericImport<J9_1Class, J9_1>) end;

  JLikeActionController_RequestWrapperClass = interface(IJavaClass)
    ['{1C19618A-CDBC-44BF-907F-2456FDF92308}']
  end;

  [JavaSignature('com/facebook/share/internal/LikeActionController$RequestWrapper')]
  JLikeActionController_RequestWrapper = interface(IJavaInstance)
    ['{93D7070F-A679-4D4C-AA06-13353C686ED8}']
    procedure addToBatch(P1: JGraphRequestBatch); cdecl;//Deprecated
    function getError: JFacebookRequestError; cdecl;//Deprecated
  end;
  TJLikeActionController_RequestWrapper = class(TJavaGenericImport<JLikeActionController_RequestWrapperClass, JLikeActionController_RequestWrapper>) end;

  JLikeActionController_AbstractRequestWrapperClass = interface(JLikeActionController_RequestWrapperClass)
    ['{2FC610BD-2EA1-45A0-90B3-D7BDD02EAD96}']
    {class} function init(P1: JLikeActionController; P2: JString; P3: JLikeView_ObjectType): JLikeActionController_AbstractRequestWrapper; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/share/internal/LikeActionController$AbstractRequestWrapper')]
  JLikeActionController_AbstractRequestWrapper = interface(JLikeActionController_RequestWrapper)
    ['{57B84391-4E1B-4D18-A812-DD0ADAE43D19}']
    function _Geterror: JFacebookRequestError; cdecl;
    procedure _Seterror(Value: JFacebookRequestError); cdecl;
    function _GetobjectType: JLikeView_ObjectType; cdecl;
    procedure _SetobjectType(Value: JLikeView_ObjectType); cdecl;
//    function _Getthis$0: JLikeActionController; cdecl;
    procedure addToBatch(P1: JGraphRequestBatch); cdecl;//Deprecated
    function getError: JFacebookRequestError; cdecl;//Deprecated
    procedure processError(P1: JFacebookRequestError); cdecl;//Deprecated
    procedure processSuccess(P1: JGraphResponse); cdecl;//Deprecated
    procedure setRequest(P1: JGraphRequest); cdecl;//Deprecated
    property error: JFacebookRequestError read _Geterror write _Seterror;
    property objectType: JLikeView_ObjectType read _GetobjectType write _SetobjectType;
//    property this$0: JLikeActionController read _Getthis$0;
  end;
  TJLikeActionController_AbstractRequestWrapper = class(TJavaGenericImport<JLikeActionController_AbstractRequestWrapperClass, JLikeActionController_AbstractRequestWrapper>) end;

  JAbstractRequestWrapper_1Class = interface(JGraphRequest_CallbackClass)
    ['{92ED273E-2026-462F-9BFB-325BE51244DF}']
    {class} function init(P1: JLikeActionController_AbstractRequestWrapper): JAbstractRequestWrapper_1; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/share/internal/LikeActionController$AbstractRequestWrapper$1')]
  JAbstractRequestWrapper_1 = interface(JGraphRequest_Callback)
    ['{11AD8DC8-285D-45F5-A638-27BF39E20357}']
    procedure onCompleted(P1: JGraphResponse); cdecl;//Deprecated
  end;
  TJAbstractRequestWrapper_1 = class(TJavaGenericImport<JAbstractRequestWrapper_1Class, JAbstractRequestWrapper_1>) end;

  JLikeActionController_CreateLikeActionControllerWorkItemClass = interface(JRunnableClass)
    ['{0DB0AD3E-B579-442C-AD2E-7B47BE0227CC}']
  end;

  [JavaSignature('com/facebook/share/internal/LikeActionController$CreateLikeActionControllerWorkItem')]
  JLikeActionController_CreateLikeActionControllerWorkItem = interface(JRunnable)
    ['{EC9794BB-0949-4DFC-8264-A4B7873C5D20}']
    procedure run; cdecl;//Deprecated
  end;
  TJLikeActionController_CreateLikeActionControllerWorkItem = class(TJavaGenericImport<JLikeActionController_CreateLikeActionControllerWorkItemClass, JLikeActionController_CreateLikeActionControllerWorkItem>) end;

  JLikeActionController_GetEngagementRequestWrapperClass = interface(JLikeActionController_AbstractRequestWrapperClass)
    ['{E1506F0E-D742-470F-89CC-F60AB18E2E96}']
    {class} function init(P1: JLikeActionController; P2: JString; P3: JLikeView_ObjectType): JLikeActionController_GetEngagementRequestWrapper; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/share/internal/LikeActionController$GetEngagementRequestWrapper')]
  JLikeActionController_GetEngagementRequestWrapper = interface(JLikeActionController_AbstractRequestWrapper)
    ['{9B39A370-2EF2-4F95-92C8-E336B6EA24F3}']
    function _GetlikeCountStringWithoutLike: JString; cdecl;
    procedure _SetlikeCountStringWithoutLike(Value: JString); cdecl;
    function _GetsocialSentenceStringWithLike: JString; cdecl;
    procedure _SetsocialSentenceStringWithLike(Value: JString); cdecl;
    function _GetsocialSentenceStringWithoutLike: JString; cdecl;
    procedure _SetsocialSentenceStringWithoutLike(Value: JString); cdecl;
//    function _Getthis$0: JLikeActionController; cdecl;
    procedure processError(P1: JFacebookRequestError); cdecl;//Deprecated
    procedure processSuccess(P1: JGraphResponse); cdecl;//Deprecated
    property likeCountStringWithoutLike: JString read _GetlikeCountStringWithoutLike write _SetlikeCountStringWithoutLike;
    property socialSentenceStringWithLike: JString read _GetsocialSentenceStringWithLike write _SetsocialSentenceStringWithLike;
    property socialSentenceStringWithoutLike: JString read _GetsocialSentenceStringWithoutLike write _SetsocialSentenceStringWithoutLike;
    //this$0 is defined in parent interface
  end;
  TJLikeActionController_GetEngagementRequestWrapper = class(TJavaGenericImport<JLikeActionController_GetEngagementRequestWrapperClass, JLikeActionController_GetEngagementRequestWrapper>) end;

  JLikeActionController_GetOGObjectIdRequestWrapperClass = interface(JLikeActionController_AbstractRequestWrapperClass)
    ['{87289E71-97BC-4320-A42D-D8BDAC3146B0}']
    {class} function init(P1: JLikeActionController; P2: JString; P3: JLikeView_ObjectType): JLikeActionController_GetOGObjectIdRequestWrapper; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/share/internal/LikeActionController$GetOGObjectIdRequestWrapper')]
  JLikeActionController_GetOGObjectIdRequestWrapper = interface(JLikeActionController_AbstractRequestWrapper)
    ['{8E332D23-E0AE-4B8B-842B-FB15BD5F1850}']
//    function _Getthis$0: JLikeActionController; cdecl;
    procedure processError(P1: JFacebookRequestError); cdecl;//Deprecated
    procedure processSuccess(P1: JGraphResponse); cdecl;//Deprecated
    //this$0 is defined in parent interface
  end;
  TJLikeActionController_GetOGObjectIdRequestWrapper = class(TJavaGenericImport<JLikeActionController_GetOGObjectIdRequestWrapperClass, JLikeActionController_GetOGObjectIdRequestWrapper>) end;

  JLikeActionController_GetOGObjectLikesRequestWrapperClass = interface(JLikeActionController_AbstractRequestWrapperClass)
    ['{DD249304-2480-44F2-BC61-710F4DC2CBA5}']
    {class} function init(P1: JLikeActionController; P2: JString; P3: JLikeView_ObjectType): JLikeActionController_GetOGObjectLikesRequestWrapper; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/share/internal/LikeActionController$GetOGObjectLikesRequestWrapper')]
  JLikeActionController_GetOGObjectLikesRequestWrapper = interface(JLikeActionController_AbstractRequestWrapper)
    ['{7F5F0875-F9DE-448E-8487-A8A27219055C}']
    function getUnlikeToken: JString; cdecl;//Deprecated
    function isObjectLiked: Boolean; cdecl;//Deprecated
    procedure processError(P1: JFacebookRequestError); cdecl;//Deprecated
    procedure processSuccess(P1: JGraphResponse); cdecl;//Deprecated
  end;
  TJLikeActionController_GetOGObjectLikesRequestWrapper = class(TJavaGenericImport<JLikeActionController_GetOGObjectLikesRequestWrapperClass, JLikeActionController_GetOGObjectLikesRequestWrapper>) end;

  JLikeActionController_GetPageIdRequestWrapperClass = interface(JLikeActionController_AbstractRequestWrapperClass)
    ['{112913C4-9750-4732-976B-6AA9651AB550}']
    {class} function init(P1: JLikeActionController; P2: JString; P3: JLikeView_ObjectType): JLikeActionController_GetPageIdRequestWrapper; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/share/internal/LikeActionController$GetPageIdRequestWrapper')]
  JLikeActionController_GetPageIdRequestWrapper = interface(JLikeActionController_AbstractRequestWrapper)
    ['{2BE140C5-170A-4004-A1FE-6CD6CCC2A6E8}']
    function _GetobjectIsPage: Boolean; cdecl;
    procedure _SetobjectIsPage(Value: Boolean); cdecl;
//    function _Getthis$0: JLikeActionController; cdecl;
    procedure processError(P1: JFacebookRequestError); cdecl;//Deprecated
    procedure processSuccess(P1: JGraphResponse); cdecl;//Deprecated
    property objectIsPage: Boolean read _GetobjectIsPage write _SetobjectIsPage;
    //this$0 is defined in parent interface
  end;
  TJLikeActionController_GetPageIdRequestWrapper = class(TJavaGenericImport<JLikeActionController_GetPageIdRequestWrapperClass, JLikeActionController_GetPageIdRequestWrapper>) end;

  JLikeActionController_GetPageLikesRequestWrapperClass = interface(JLikeActionController_AbstractRequestWrapperClass)
    ['{FD09AE63-A50E-4CE5-B61D-ADF009037C58}']
    {class} function init(P1: JLikeActionController; P2: JString): JLikeActionController_GetPageLikesRequestWrapper; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/share/internal/LikeActionController$GetPageLikesRequestWrapper')]
  JLikeActionController_GetPageLikesRequestWrapper = interface(JLikeActionController_AbstractRequestWrapper)
    ['{9301E2F3-B15D-4089-BDC8-AB07DE8FCBA9}']
    function getUnlikeToken: JString; cdecl;//Deprecated
    function isObjectLiked: Boolean; cdecl;//Deprecated
    procedure processError(P1: JFacebookRequestError); cdecl;//Deprecated
    procedure processSuccess(P1: JGraphResponse); cdecl;//Deprecated
  end;
  TJLikeActionController_GetPageLikesRequestWrapper = class(TJavaGenericImport<JLikeActionController_GetPageLikesRequestWrapperClass, JLikeActionController_GetPageLikesRequestWrapper>) end;

  JLikeActionController_LikeRequestWrapperClass = interface(JLikeActionController_RequestWrapperClass)
    ['{4055A040-C096-419E-9F5C-8F5318532A46}']
  end;

  [JavaSignature('com/facebook/share/internal/LikeActionController$LikeRequestWrapper')]
  JLikeActionController_LikeRequestWrapper = interface(JLikeActionController_RequestWrapper)
    ['{1E09DB57-7623-4D3A-8784-3D27D69324A0}']
    function getUnlikeToken: JString; cdecl;//Deprecated
    function isObjectLiked: Boolean; cdecl;//Deprecated
  end;
  TJLikeActionController_LikeRequestWrapper = class(TJavaGenericImport<JLikeActionController_LikeRequestWrapperClass, JLikeActionController_LikeRequestWrapper>) end;

  JLikeActionController_MRUCacheWorkItemClass = interface(JRunnableClass)
    ['{A34ADF7C-469C-4CD1-9248-FBE69A92FB6F}']
  end;

  [JavaSignature('com/facebook/share/internal/LikeActionController$MRUCacheWorkItem')]
  JLikeActionController_MRUCacheWorkItem = interface(JRunnable)
    ['{FF8AF19F-8857-4316-87BC-90D625474622}']
    procedure run; cdecl;//Deprecated
  end;
  TJLikeActionController_MRUCacheWorkItem = class(TJavaGenericImport<JLikeActionController_MRUCacheWorkItemClass, JLikeActionController_MRUCacheWorkItem>) end;

  JLikeActionController_PublishLikeRequestWrapperClass = interface(JLikeActionController_AbstractRequestWrapperClass)
    ['{15274E59-93F6-4E2E-B640-B4333C4D3AB6}']
    {class} function init(P1: JLikeActionController; P2: JString; P3: JLikeView_ObjectType): JLikeActionController_PublishLikeRequestWrapper; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/share/internal/LikeActionController$PublishLikeRequestWrapper')]
  JLikeActionController_PublishLikeRequestWrapper = interface(JLikeActionController_AbstractRequestWrapper)
    ['{8EA5F772-0A73-424A-8F38-B89E444403CF}']
//    function _Getthis$0: JLikeActionController; cdecl;
    procedure processError(P1: JFacebookRequestError); cdecl;//Deprecated
    procedure processSuccess(P1: JGraphResponse); cdecl;//Deprecated
    //this$0 is defined in parent interface
  end;
  TJLikeActionController_PublishLikeRequestWrapper = class(TJavaGenericImport<JLikeActionController_PublishLikeRequestWrapperClass, JLikeActionController_PublishLikeRequestWrapper>) end;

  JLikeActionController_PublishUnlikeRequestWrapperClass = interface(JLikeActionController_AbstractRequestWrapperClass)
    ['{86E92142-5962-4B0D-A198-CC0D4DD276C1}']
    {class} function init(P1: JLikeActionController; P2: JString): JLikeActionController_PublishUnlikeRequestWrapper; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/share/internal/LikeActionController$PublishUnlikeRequestWrapper')]
  JLikeActionController_PublishUnlikeRequestWrapper = interface(JLikeActionController_AbstractRequestWrapper)
    ['{5D0B5E61-85B1-466F-9785-B306CF3B901F}']
    procedure processError(P1: JFacebookRequestError); cdecl;//Deprecated
    procedure processSuccess(P1: JGraphResponse); cdecl;//Deprecated
  end;
  TJLikeActionController_PublishUnlikeRequestWrapper = class(TJavaGenericImport<JLikeActionController_PublishUnlikeRequestWrapperClass, JLikeActionController_PublishUnlikeRequestWrapper>) end;

  JLikeActionController_SerializeToDiskWorkItemClass = interface(JRunnableClass)
    ['{41317793-94D0-475A-8D96-2F7A6D3F2EDA}']
  end;

  [JavaSignature('com/facebook/share/internal/LikeActionController$SerializeToDiskWorkItem')]
  JLikeActionController_SerializeToDiskWorkItem = interface(JRunnable)
    ['{7269328B-568C-4CF7-BE31-135D4C70864E}']
    procedure run; cdecl;//Deprecated
  end;
  TJLikeActionController_SerializeToDiskWorkItem = class(TJavaGenericImport<JLikeActionController_SerializeToDiskWorkItemClass, JLikeActionController_SerializeToDiskWorkItem>) end;

  JLikeBoxCountViewClass = interface(JFrameLayoutClass)
    ['{B625F77D-B2BF-45C8-8747-C793CE8C2662}']
    {class} function init(P1: JContext): JLikeBoxCountView; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/share/internal/LikeBoxCountView')]
  JLikeBoxCountView = interface(JFrameLayout)
    ['{FB32E509-8645-425E-A987-6748F9B6F5FF}']
    procedure setCaretPosition(P1: JLikeBoxCountView_LikeBoxCountViewCaretPosition); cdecl;//Deprecated
    procedure setText(P1: JString); cdecl;//Deprecated
  end;
  TJLikeBoxCountView = class(TJavaGenericImport<JLikeBoxCountViewClass, JLikeBoxCountView>) end;

  JLikeBoxCountView_1Class = interface(JObjectClass)
    ['{7E346D43-B982-489B-98EC-AE8C7DE0C313}']
  end;

  [JavaSignature('com/facebook/share/internal/LikeBoxCountView$1')]
  JLikeBoxCountView_1 = interface(JObject)
    ['{4952CB52-36D1-49CB-AA1F-0CA6E358F484}']
  end;
  TJLikeBoxCountView_1 = class(TJavaGenericImport<JLikeBoxCountView_1Class, JLikeBoxCountView_1>) end;

  JLikeBoxCountView_LikeBoxCountViewCaretPositionClass = interface(JEnumClass)
    ['{2D0F782B-05A7-4E1A-848D-61C4E2605686}']
    {class} function _GetBOTTOM: JLikeBoxCountView_LikeBoxCountViewCaretPosition; cdecl;
    {class} function _GetLEFT: JLikeBoxCountView_LikeBoxCountViewCaretPosition; cdecl;
    {class} function _GetRIGHT: JLikeBoxCountView_LikeBoxCountViewCaretPosition; cdecl;
    {class} function _GetTOP: JLikeBoxCountView_LikeBoxCountViewCaretPosition; cdecl;
    {class} function valueOf(P1: JString): JLikeBoxCountView_LikeBoxCountViewCaretPosition; cdecl;//Deprecated
    {class} function values: TJavaObjectArray<JLikeBoxCountView_LikeBoxCountViewCaretPosition>; cdecl;//Deprecated
    {class} property BOTTOM: JLikeBoxCountView_LikeBoxCountViewCaretPosition read _GetBOTTOM;
    {class} property LEFT: JLikeBoxCountView_LikeBoxCountViewCaretPosition read _GetLEFT;
    {class} property RIGHT: JLikeBoxCountView_LikeBoxCountViewCaretPosition read _GetRIGHT;
    {class} property TOP: JLikeBoxCountView_LikeBoxCountViewCaretPosition read _GetTOP;
  end;

  [JavaSignature('com/facebook/share/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition')]
  JLikeBoxCountView_LikeBoxCountViewCaretPosition = interface(JEnum)
    ['{04D8ABB4-EF0D-414D-87A5-F2800545464E}']
  end;
  TJLikeBoxCountView_LikeBoxCountViewCaretPosition = class(TJavaGenericImport<JLikeBoxCountView_LikeBoxCountViewCaretPositionClass, JLikeBoxCountView_LikeBoxCountViewCaretPosition>) end;

  JLikeButtonClass = interface(JFacebookButtonBaseClass)
    ['{529BA1E1-4B6F-447D-89CA-EAB672542432}']
    {class} function init(P1: JContext; P2: Boolean): JLikeButton; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/share/internal/LikeButton')]
  JLikeButton = interface(JFacebookButtonBase)
    ['{A080B192-DBDF-48BA-B428-3FBE9A0D3D71}']
    procedure setSelected(P1: Boolean); cdecl;//Deprecated
  end;
  TJLikeButton = class(TJavaGenericImport<JLikeButtonClass, JLikeButton>) end;

  JShareModelClass = interface(JParcelableClass)
    ['{6E9387C4-100E-4B54-A061-07E884DBEA2A}']
  end;

  [JavaSignature('com/facebook/share/model/ShareModel')]
  JShareModel = interface(JParcelable)
    ['{2D51F795-F35F-4FAF-B84A-F147A79CB629}']
  end;
  TJShareModel = class(TJavaGenericImport<JShareModelClass, JShareModel>) end;

  JLikeContentClass = interface(JShareModelClass)
    ['{F63D401E-92AD-4457-913A-9FE5F043BD4F}']
    {class} function _GetCREATOR: JParcelable_Creator; cdecl;
    {class} function init(P1: JParcel): JLikeContent; cdecl; overload;//Deprecated
    {class} function init(P1: JLikeContent_Builder; P2: JLikeContent_1): JLikeContent; cdecl; overload;//Deprecated
    {class} property CREATOR: JParcelable_Creator read _GetCREATOR;
  end;

  [JavaSignature('com/facebook/share/internal/LikeContent')]
  JLikeContent = interface(JShareModel)
    ['{6F8E3293-F36A-4252-B81B-398A47F185B9}']
    function describeContents: Integer; cdecl;//Deprecated
    function getObjectId: JString; cdecl;//Deprecated
    function getObjectType: JString; cdecl;//Deprecated
    procedure writeToParcel(P1: JParcel; P2: Integer); cdecl;//Deprecated
  end;
  TJLikeContent = class(TJavaGenericImport<JLikeContentClass, JLikeContent>) end;

  JLikeContent_1Class = interface(JParcelable_CreatorClass)
    ['{649BBD24-EF50-4951-A54F-60566F7630A7}']
  end;

  [JavaSignature('com/facebook/share/internal/LikeContent$1')]
  JLikeContent_1 = interface(JParcelable_Creator)
    ['{B76B0EE6-F740-4295-BF93-155078D26749}']
    function createFromParcel(P1: JParcel): JLikeContent; cdecl;//Deprecated
    function newArray(P1: Integer): TJavaObjectArray<JLikeContent>; cdecl;//Deprecated
  end;
  TJLikeContent_1 = class(TJavaGenericImport<JLikeContent_1Class, JLikeContent_1>) end;

  JShareModelBuilderClass = interface(JShareBuilderClass)
    ['{124A45C1-2875-45C6-8C97-6E71643C9C2E}']
  end;

  [JavaSignature('com/facebook/share/model/ShareModelBuilder')]
  JShareModelBuilder = interface(JShareBuilder)
    ['{F41F9199-5E6E-45DE-9905-6BE2FAADC030}']
    function readFrom(P1: JShareModel): JShareModelBuilder; cdecl;//Deprecated
  end;
  TJShareModelBuilder = class(TJavaGenericImport<JShareModelBuilderClass, JShareModelBuilder>) end;

  JLikeContent_BuilderClass = interface(JShareModelBuilderClass)
    ['{1C651B52-46FB-4E60-A615-4850A71FD020}']
    {class} function init: JLikeContent_Builder; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/share/internal/LikeContent$Builder')]
  JLikeContent_Builder = interface(JShareModelBuilder)
    ['{F32058EF-04A6-4781-B97A-C22C98B4A2C1}']
    function build: JLikeContent; cdecl;//Deprecated
    function readFrom(P1: JLikeContent): JLikeContent_Builder; cdecl; overload;//Deprecated
    function readFrom(P1: JShareModel): JShareModelBuilder; cdecl; overload;//Deprecated
    function setObjectId(P1: JString): JLikeContent_Builder; cdecl;//Deprecated
    function setObjectType(P1: JString): JLikeContent_Builder; cdecl;//Deprecated
  end;
  TJLikeContent_Builder = class(TJavaGenericImport<JLikeContent_BuilderClass, JLikeContent_Builder>) end;

  JLikeDialogClass = interface(JFacebookDialogBaseClass)
    ['{F0176DD3-9B22-4341-8E7A-7AF8A3DBAB81}']
    {class} function canShowNativeDialog: Boolean; cdecl;//Deprecated
    {class} function canShowWebFallback: Boolean; cdecl;//Deprecated
    {class} function init(P1: JFragmentWrapper): JLikeDialog; cdecl; overload;//Deprecated
    {class} function init(P1: JActivity): JLikeDialog; cdecl; overload;//Deprecated
    {class} //function init(P1: Japp_Fragment): JLikeDialog; cdecl; overload;//Deprecated
    {class} function init(P1: JFragment): JLikeDialog; cdecl; overload;//Deprecated
  end;

  [JavaSignature('com/facebook/share/internal/LikeDialog')]
  JLikeDialog = interface(JFacebookDialogBase)
    ['{C51E4447-D620-4BE1-9885-CDD2B0447470}']
  end;
  TJLikeDialog = class(TJavaGenericImport<JLikeDialogClass, JLikeDialog>) end;

  JLikeDialog_1Class = interface(JResultProcessorClass)
    ['{B7750E6F-8D88-4E92-9543-F50D7E04556D}']
    {class} function init(P1: JLikeDialog; P2: JFacebookCallback; P3: JFacebookCallback): JLikeDialog_1; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/share/internal/LikeDialog$1')]
  JLikeDialog_1 = interface(JResultProcessor)
    ['{83796EFF-3E74-48E0-A50E-197DF70C18F2}']
//    function _Getthis$0: JLikeDialog; cdecl;
    procedure onSuccess(P1: JAppCall; P2: JBundle); cdecl;//Deprecated
//    property this$0: JLikeDialog read _Getthis$0;
  end;
  TJLikeDialog_1 = class(TJavaGenericImport<JLikeDialog_1Class, JLikeDialog_1>) end;

  JLikeDialog_2Class = interface(JCallbackManagerImpl_CallbackClass)
    ['{C5B48E51-98E2-4702-9909-FEA8032FD6A1}']
    {class} function init(P1: JLikeDialog; P2: JResultProcessor): JLikeDialog_2; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/share/internal/LikeDialog$2')]
  JLikeDialog_2 = interface(JCallbackManagerImpl_Callback)
    ['{9D416A37-EBC8-4518-AE78-EFEF03390CDA}']
//    function _Getthis$0: JLikeDialog; cdecl;
    function onActivityResult(P1: Integer; P2: JIntent): Boolean; cdecl;//Deprecated
//    property this$0: JLikeDialog read _Getthis$0;
  end;
  TJLikeDialog_2 = class(TJavaGenericImport<JLikeDialog_2Class, JLikeDialog_2>) end;

  JLikeDialog_NativeHandlerClass = interface(JFacebookDialogBaseClass)
    ['{47E13066-8A13-4B6C-BFC0-C094562E19B2}']
    {class} function init(P1: JLikeDialog; P2: JLikeDialog_1): JLikeDialog_NativeHandler; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/share/internal/LikeDialog$NativeHandler')]
  JLikeDialog_NativeHandler = interface(JFacebookDialogBase)
    ['{34139704-7F46-49E3-9662-2B7E2AB113E9}']
    function canShow(P1: JObject; P2: Boolean): Boolean; cdecl; overload;//Deprecated
    function canShow(P1: JLikeContent; P2: Boolean): Boolean; cdecl; overload;//Deprecated
    function createAppCall(P1: JObject): JAppCall; cdecl; overload;//Deprecated
    function createAppCall(P1: JLikeContent): JAppCall; cdecl; overload;//Deprecated
  end;
  TJLikeDialog_NativeHandler = class(TJavaGenericImport<JLikeDialog_NativeHandlerClass, JLikeDialog_NativeHandler>) end;

  JNativeHandler_1Class = interface(JDialogPresenter_ParameterProviderClass)
    ['{E21CD386-C1A5-4B07-A158-014177AE7A49}']
    {class} function init(P1: JLikeDialog_NativeHandler; P2: JLikeContent): JNativeHandler_1; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/share/internal/LikeDialog$NativeHandler$1')]
  JNativeHandler_1 = interface(JDialogPresenter_ParameterProvider)
    ['{4F7EE87C-EFC9-4A64-A272-EBF905AABC1B}']
//    function _Getthis$1: JLikeDialog_NativeHandler; cdecl;
    function getLegacyParameters: JBundle; cdecl;//Deprecated
    function getParameters: JBundle; cdecl;//Deprecated
//    property this$1: JLikeDialog_NativeHandler read _Getthis$1;
  end;
  TJNativeHandler_1 = class(TJavaGenericImport<JNativeHandler_1Class, JNativeHandler_1>) end;

  JLikeDialog_ResultClass = interface(JObjectClass)
    ['{18AF267B-1E24-4FC0-BA87-3A159F633CBE}']
    {class} function init(P1: JBundle): JLikeDialog_Result; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/share/internal/LikeDialog$Result')]
  JLikeDialog_Result = interface(JObject)
    ['{8EE9AA6F-A0B0-4E95-858A-1E23332D9F20}']
    function getData: JBundle; cdecl;//Deprecated
  end;
  TJLikeDialog_Result = class(TJavaGenericImport<JLikeDialog_ResultClass, JLikeDialog_Result>) end;

  JLikeDialog_WebFallbackHandlerClass = interface(JFacebookDialogBaseClass)
    ['{1D8341BC-445B-4194-A7F6-D5EFA1EA8D69}']
    {class} function init(P1: JLikeDialog; P2: JLikeDialog_1): JLikeDialog_WebFallbackHandler; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/share/internal/LikeDialog$WebFallbackHandler')]
  JLikeDialog_WebFallbackHandler = interface(JFacebookDialogBase)
    ['{278BC119-69AD-46C4-AF35-A639491E017D}']
    function canShow(P1: JObject; P2: Boolean): Boolean; cdecl; overload;//Deprecated
    function canShow(P1: JLikeContent; P2: Boolean): Boolean; cdecl; overload;//Deprecated
    function createAppCall(P1: JObject): JAppCall; cdecl; overload;//Deprecated
    function createAppCall(P1: JLikeContent): JAppCall; cdecl; overload;//Deprecated
  end;
  TJLikeDialog_WebFallbackHandler = class(TJavaGenericImport<JLikeDialog_WebFallbackHandlerClass, JLikeDialog_WebFallbackHandler>) end;

  JLikeDialogFeatureClass = interface(JEnumClass)
    ['{4D90DAD1-BE92-4DF3-B500-1345FC7FCC7E}']
    {class} function _GetLIKE_DIALOG: JLikeDialogFeature; cdecl;
    {class} function valueOf(P1: JString): JLikeDialogFeature; cdecl;//Deprecated
    {class} function values: TJavaObjectArray<JLikeDialogFeature>; cdecl;//Deprecated
    {class} property LIKE_DIALOG: JLikeDialogFeature read _GetLIKE_DIALOG;
  end;

  [JavaSignature('com/facebook/share/internal/LikeDialogFeature')]
  JLikeDialogFeature = interface(JEnum)
    ['{45983B06-8759-44B8-98CB-B02067514D77}']
    function getAction: JString; cdecl;//Deprecated
    function getMinVersion: Integer; cdecl;//Deprecated
  end;
  TJLikeDialogFeature = class(TJavaGenericImport<JLikeDialogFeatureClass, JLikeDialogFeature>) end;

  JLikeStatusClientClass = interface(JPlatformServiceClientClass)
    ['{984FF64D-5640-45A0-B3E3-F27DD028E8BD}']
  end;

  [JavaSignature('com/facebook/share/internal/LikeStatusClient')]
  JLikeStatusClient = interface(JPlatformServiceClient)
    ['{00874247-0B83-498F-B168-1C0DD67C5E55}']
  end;
  TJLikeStatusClient = class(TJavaGenericImport<JLikeStatusClientClass, JLikeStatusClient>) end;

  JMessageDialogFeatureClass = interface(JEnumClass)
    ['{E8D02717-CDC1-4E0D-B999-C5C1CEE4E619}']
    {class} function _GetMESSAGE_DIALOG: JMessageDialogFeature; cdecl;
    {class} function _GetPHOTOS: JMessageDialogFeature; cdecl;
    {class} function _GetVIDEO: JMessageDialogFeature; cdecl;
    {class} function valueOf(P1: JString): JMessageDialogFeature; cdecl;//Deprecated
    {class} function values: TJavaObjectArray<JMessageDialogFeature>; cdecl;//Deprecated
    {class} property MESSAGE_DIALOG: JMessageDialogFeature read _GetMESSAGE_DIALOG;
    {class} property PHOTOS: JMessageDialogFeature read _GetPHOTOS;
    {class} property VIDEO: JMessageDialogFeature read _GetVIDEO;
  end;

  [JavaSignature('com/facebook/share/internal/MessageDialogFeature')]
  JMessageDialogFeature = interface(JEnum)
    ['{D6B0B2E4-3F91-49A2-B051-C71A8426A7D7}']
    function getAction: JString; cdecl;//Deprecated
    function getMinVersion: Integer; cdecl;//Deprecated
  end;
  TJMessageDialogFeature = class(TJavaGenericImport<JMessageDialogFeatureClass, JMessageDialogFeature>) end;

  JNativeDialogParametersClass = interface(JObjectClass)
    ['{3A5BC586-DBA6-4EE5-A306-B9B75264030E}']
    {class} function create(P1: JUUID; P2: JShareContent; P3: Boolean): JBundle; cdecl;//Deprecated
    {class} function init: JNativeDialogParameters; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/share/internal/NativeDialogParameters')]
  JNativeDialogParameters = interface(JObject)
    ['{F3CA30AC-FD3A-4B8F-BC77-AA27587923A3}']
  end;
  TJNativeDialogParameters = class(TJavaGenericImport<JNativeDialogParametersClass, JNativeDialogParameters>) end;

  JOpenGraphActionDialogFeatureClass = interface(JEnumClass)
    ['{B2F2C93B-24C4-420B-BE31-359FFA7AC66C}']
    {class} function _GetOG_ACTION_DIALOG: JOpenGraphActionDialogFeature; cdecl;
    {class} function valueOf(P1: JString): JOpenGraphActionDialogFeature; cdecl;//Deprecated
    {class} function values: TJavaObjectArray<JOpenGraphActionDialogFeature>; cdecl;//Deprecated
    {class} property OG_ACTION_DIALOG: JOpenGraphActionDialogFeature read _GetOG_ACTION_DIALOG;
  end;

  [JavaSignature('com/facebook/share/internal/OpenGraphActionDialogFeature')]
  JOpenGraphActionDialogFeature = interface(JEnum)
    ['{401A9FAF-FF11-40E4-810F-AC05BEC02669}']
    function getAction: JString; cdecl;//Deprecated
    function getMinVersion: Integer; cdecl;//Deprecated
  end;
  TJOpenGraphActionDialogFeature = class(TJavaGenericImport<JOpenGraphActionDialogFeatureClass, JOpenGraphActionDialogFeature>) end;

  JOpenGraphJSONUtilityClass = interface(JObjectClass)
    ['{739EA20C-00F3-4D02-A84A-B2EAA7107455}']
    {class} function toJSONObject(P1: JShareOpenGraphAction; P2: JOpenGraphJSONUtility_PhotoJSONProcessor): JJSONObject; cdecl;//Deprecated
    {class} function toJSONValue(P1: JObject; P2: JOpenGraphJSONUtility_PhotoJSONProcessor): JObject; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/share/internal/OpenGraphJSONUtility')]
  JOpenGraphJSONUtility = interface(JObject)
    ['{DFAF38E8-265F-4F07-98F0-863C9ACCE91C}']
  end;
  TJOpenGraphJSONUtility = class(TJavaGenericImport<JOpenGraphJSONUtilityClass, JOpenGraphJSONUtility>) end;

  JOpenGraphMessageDialogFeatureClass = interface(JEnumClass)
    ['{25D9FD7D-D4FF-4C4C-B753-E7026C429FEB}']
    {class} function _GetOG_MESSAGE_DIALOG: JOpenGraphMessageDialogFeature; cdecl;
    {class} function valueOf(P1: JString): JOpenGraphMessageDialogFeature; cdecl;//Deprecated
    {class} function values: TJavaObjectArray<JOpenGraphMessageDialogFeature>; cdecl;//Deprecated
    {class} property OG_MESSAGE_DIALOG: JOpenGraphMessageDialogFeature read _GetOG_MESSAGE_DIALOG;
  end;

  [JavaSignature('com/facebook/share/internal/OpenGraphMessageDialogFeature')]
  JOpenGraphMessageDialogFeature = interface(JEnum)
    ['{66EF0CC9-B114-4632-93EE-EDFD0BC31134}']
    function getAction: JString; cdecl;//Deprecated
    function getMinVersion: Integer; cdecl;//Deprecated
  end;
  TJOpenGraphMessageDialogFeature = class(TJavaGenericImport<JOpenGraphMessageDialogFeatureClass, JOpenGraphMessageDialogFeature>) end;

  JShareConstantsClass = interface(JObjectClass)
    ['{1CA4425C-910F-4BBC-A942-27D407FCBBBF}']
    {class} function _GetACTION: JString; cdecl;
    {class} function _GetACTION_TYPE: JString; cdecl;
    {class} function _GetAPPLINK_URL: JString; cdecl;
    {class} function _GetCONTENT_URL: JString; cdecl;
    {class} function _GetDATA_FAILURES_FATAL: JString; cdecl;
    {class} function _GetDEEPLINK_CONTEXT: JString; cdecl;
    {class} function _GetDESCRIPTION: JString; cdecl;
    {class} function _GetEXTRA_LIKE_COUNT_STRING_WITHOUT_LIKE: JString; cdecl;
    {class} function _GetEXTRA_LIKE_COUNT_STRING_WITH_LIKE: JString; cdecl;
    {class} function _GetEXTRA_OBJECT_ID: JString; cdecl;
    {class} function _GetEXTRA_OBJECT_IS_LIKED: JString; cdecl;
    {class} function _GetEXTRA_RESULT_POST_ID: JString; cdecl;
    {class} function _GetEXTRA_SOCIAL_SENTENCE_WITHOUT_LIKE: JString; cdecl;
    {class} function _GetEXTRA_SOCIAL_SENTENCE_WITH_LIKE: JString; cdecl;
    {class} function _GetEXTRA_UNLIKE_TOKEN: JString; cdecl;
    {class} function _GetFEED_CAPTION_PARAM: JString; cdecl;
    {class} function _GetFEED_DESCRIPTION_PARAM: JString; cdecl;
    {class} function _GetFEED_LINK_PARAM: JString; cdecl;
    {class} function _GetFEED_NAME_PARAM: JString; cdecl;
    {class} function _GetFEED_PICTURE_PARAM: JString; cdecl;
    {class} function _GetFEED_SOURCE_PARAM: JString; cdecl;
    {class} function _GetFEED_TO_PARAM: JString; cdecl;
    {class} function _GetHASHTAG: JString; cdecl;
    {class} function _GetIMAGE_URL: JString; cdecl;
    {class} function _GetLEGACY_ACTION: JString; cdecl;
    {class} function _GetLEGACY_ACTION_TYPE: JString; cdecl;
    {class} function _GetLEGACY_DATA_FAILURES_FATAL: JString; cdecl;
    {class} function _GetLEGACY_DESCRIPTION: JString; cdecl;
    {class} function _GetLEGACY_FRIEND_TAGS: JString; cdecl;
    {class} function _GetLEGACY_IMAGE: JString; cdecl;
    {class} function _GetLEGACY_LINK: JString; cdecl;
    {class} function _GetLEGACY_PHOTOS: JString; cdecl;
    {class} function _GetLEGACY_PLACE_TAG: JString; cdecl;
    {class} function _GetLEGACY_PREVIEW_PROPERTY_NAME: JString; cdecl;
    {class} function _GetLEGACY_REF: JString; cdecl;
    {class} function _GetLEGACY_TITLE: JString; cdecl;
    {class} function _GetMAXIMUM_MEDIA_COUNT: Integer; cdecl;
    {class} function _GetMAXIMUM_PHOTO_COUNT: Integer; cdecl;
    {class} function _GetMEDIA: JString; cdecl;
    {class} function _GetMEDIA_TYPE: JString; cdecl;
    {class} function _GetMEDIA_URI: JString; cdecl;
    {class} function _GetMY_VIDEOS: JString; cdecl;
    {class} function _GetOBJECT_ID: JString; cdecl;
    {class} function _GetOBJECT_TYPE: JString; cdecl;
    {class} function _GetPEOPLE_IDS: JString; cdecl;
    {class} function _GetPHOTOS: JString; cdecl;
    {class} function _GetPLACE_ID: JString; cdecl;
    {class} function _GetPREVIEW_IMAGE_URL: JString; cdecl;
    {class} function _GetPREVIEW_PROPERTY_NAME: JString; cdecl;
    {class} function _GetPROMO_CODE: JString; cdecl;
    {class} function _GetPROMO_TEXT: JString; cdecl;
    {class} function _GetQUOTE: JString; cdecl;
    {class} function _GetREF: JString; cdecl;
    {class} function _GetRESULT_POST_ID: JString; cdecl;
    {class} function _GetTITLE: JString; cdecl;
    {class} function _GetVIDEO_URL: JString; cdecl;
    {class} function _GetWEB_DIALOG_PARAM_ACTION_PROPERTIES: JString; cdecl;
    {class} function _GetWEB_DIALOG_PARAM_ACTION_TYPE: JString; cdecl;
    {class} function _GetWEB_DIALOG_PARAM_DATA: JString; cdecl;
    {class} function _GetWEB_DIALOG_PARAM_DESCRIPTION: JString; cdecl;
    {class} function _GetWEB_DIALOG_PARAM_FILTERS: JString; cdecl;
    {class} function _GetWEB_DIALOG_PARAM_HASHTAG: JString; cdecl;
    {class} function _GetWEB_DIALOG_PARAM_HREF: JString; cdecl;
    {class} function _GetWEB_DIALOG_PARAM_ID: JString; cdecl;
    {class} function _GetWEB_DIALOG_PARAM_LINK: JString; cdecl;
    {class} function _GetWEB_DIALOG_PARAM_MESSAGE: JString; cdecl;
    {class} function _GetWEB_DIALOG_PARAM_NAME: JString; cdecl;
    {class} function _GetWEB_DIALOG_PARAM_OBJECT_ID: JString; cdecl;
    {class} function _GetWEB_DIALOG_PARAM_PICTURE: JString; cdecl;
    {class} function _GetWEB_DIALOG_PARAM_PRIVACY: JString; cdecl;
    {class} function _GetWEB_DIALOG_PARAM_QUOTE: JString; cdecl;
    {class} function _GetWEB_DIALOG_PARAM_SUGGESTIONS: JString; cdecl;
    {class} function _GetWEB_DIALOG_PARAM_TITLE: JString; cdecl;
    {class} function _GetWEB_DIALOG_PARAM_TO: JString; cdecl;
    {class} function _GetWEB_DIALOG_RESULT_PARAM_POST_ID: JString; cdecl;
    {class} function _GetWEB_DIALOG_RESULT_PARAM_REQUEST_ID: JString; cdecl;
    {class} function _GetWEB_DIALOG_RESULT_PARAM_TO_ARRAY_MEMBER: JString; cdecl;
    {class} function init: JShareConstants; cdecl;//Deprecated
    {class} property ACTION: JString read _GetACTION;
    {class} property ACTION_TYPE: JString read _GetACTION_TYPE;
    {class} property APPLINK_URL: JString read _GetAPPLINK_URL;
    {class} property CONTENT_URL: JString read _GetCONTENT_URL;
    {class} property DATA_FAILURES_FATAL: JString read _GetDATA_FAILURES_FATAL;
    {class} property DEEPLINK_CONTEXT: JString read _GetDEEPLINK_CONTEXT;
    {class} property DESCRIPTION: JString read _GetDESCRIPTION;
    {class} property EXTRA_LIKE_COUNT_STRING_WITHOUT_LIKE: JString read _GetEXTRA_LIKE_COUNT_STRING_WITHOUT_LIKE;
    {class} property EXTRA_LIKE_COUNT_STRING_WITH_LIKE: JString read _GetEXTRA_LIKE_COUNT_STRING_WITH_LIKE;
    {class} property EXTRA_OBJECT_ID: JString read _GetEXTRA_OBJECT_ID;
    {class} property EXTRA_OBJECT_IS_LIKED: JString read _GetEXTRA_OBJECT_IS_LIKED;
    {class} property EXTRA_RESULT_POST_ID: JString read _GetEXTRA_RESULT_POST_ID;
    {class} property EXTRA_SOCIAL_SENTENCE_WITHOUT_LIKE: JString read _GetEXTRA_SOCIAL_SENTENCE_WITHOUT_LIKE;
    {class} property EXTRA_SOCIAL_SENTENCE_WITH_LIKE: JString read _GetEXTRA_SOCIAL_SENTENCE_WITH_LIKE;
    {class} property EXTRA_UNLIKE_TOKEN: JString read _GetEXTRA_UNLIKE_TOKEN;
    {class} property FEED_CAPTION_PARAM: JString read _GetFEED_CAPTION_PARAM;
    {class} property FEED_DESCRIPTION_PARAM: JString read _GetFEED_DESCRIPTION_PARAM;
    {class} property FEED_LINK_PARAM: JString read _GetFEED_LINK_PARAM;
    {class} property FEED_NAME_PARAM: JString read _GetFEED_NAME_PARAM;
    {class} property FEED_PICTURE_PARAM: JString read _GetFEED_PICTURE_PARAM;
    {class} property FEED_SOURCE_PARAM: JString read _GetFEED_SOURCE_PARAM;
    {class} property FEED_TO_PARAM: JString read _GetFEED_TO_PARAM;
    {class} property HASHTAG: JString read _GetHASHTAG;
    {class} property IMAGE_URL: JString read _GetIMAGE_URL;
    {class} property LEGACY_ACTION: JString read _GetLEGACY_ACTION;
    {class} property LEGACY_ACTION_TYPE: JString read _GetLEGACY_ACTION_TYPE;
    {class} property LEGACY_DATA_FAILURES_FATAL: JString read _GetLEGACY_DATA_FAILURES_FATAL;
    {class} property LEGACY_DESCRIPTION: JString read _GetLEGACY_DESCRIPTION;
    {class} property LEGACY_FRIEND_TAGS: JString read _GetLEGACY_FRIEND_TAGS;
    {class} property LEGACY_IMAGE: JString read _GetLEGACY_IMAGE;
    {class} property LEGACY_LINK: JString read _GetLEGACY_LINK;
    {class} property LEGACY_PHOTOS: JString read _GetLEGACY_PHOTOS;
    {class} property LEGACY_PLACE_TAG: JString read _GetLEGACY_PLACE_TAG;
    {class} property LEGACY_PREVIEW_PROPERTY_NAME: JString read _GetLEGACY_PREVIEW_PROPERTY_NAME;
    {class} property LEGACY_REF: JString read _GetLEGACY_REF;
    {class} property LEGACY_TITLE: JString read _GetLEGACY_TITLE;
    {class} property MAXIMUM_MEDIA_COUNT: Integer read _GetMAXIMUM_MEDIA_COUNT;
    {class} property MAXIMUM_PHOTO_COUNT: Integer read _GetMAXIMUM_PHOTO_COUNT;
    {class} property MEDIA: JString read _GetMEDIA;
    {class} property MEDIA_TYPE: JString read _GetMEDIA_TYPE;
    {class} property MEDIA_URI: JString read _GetMEDIA_URI;
    {class} property MY_VIDEOS: JString read _GetMY_VIDEOS;
    {class} property OBJECT_ID: JString read _GetOBJECT_ID;
    {class} property OBJECT_TYPE: JString read _GetOBJECT_TYPE;
    {class} property PEOPLE_IDS: JString read _GetPEOPLE_IDS;
    {class} property PHOTOS: JString read _GetPHOTOS;
    {class} property PLACE_ID: JString read _GetPLACE_ID;
    {class} property PREVIEW_IMAGE_URL: JString read _GetPREVIEW_IMAGE_URL;
    {class} property PREVIEW_PROPERTY_NAME: JString read _GetPREVIEW_PROPERTY_NAME;
    {class} property PROMO_CODE: JString read _GetPROMO_CODE;
    {class} property PROMO_TEXT: JString read _GetPROMO_TEXT;
    {class} property QUOTE: JString read _GetQUOTE;
    {class} property REF: JString read _GetREF;
    {class} property RESULT_POST_ID: JString read _GetRESULT_POST_ID;
    {class} property TITLE: JString read _GetTITLE;
    {class} property VIDEO_URL: JString read _GetVIDEO_URL;
    {class} property WEB_DIALOG_PARAM_ACTION_PROPERTIES: JString read _GetWEB_DIALOG_PARAM_ACTION_PROPERTIES;
    {class} property WEB_DIALOG_PARAM_ACTION_TYPE: JString read _GetWEB_DIALOG_PARAM_ACTION_TYPE;
    {class} property WEB_DIALOG_PARAM_DATA: JString read _GetWEB_DIALOG_PARAM_DATA;
    {class} property WEB_DIALOG_PARAM_DESCRIPTION: JString read _GetWEB_DIALOG_PARAM_DESCRIPTION;
    {class} property WEB_DIALOG_PARAM_FILTERS: JString read _GetWEB_DIALOG_PARAM_FILTERS;
    {class} property WEB_DIALOG_PARAM_HASHTAG: JString read _GetWEB_DIALOG_PARAM_HASHTAG;
    {class} property WEB_DIALOG_PARAM_HREF: JString read _GetWEB_DIALOG_PARAM_HREF;
    {class} property WEB_DIALOG_PARAM_ID: JString read _GetWEB_DIALOG_PARAM_ID;
    {class} property WEB_DIALOG_PARAM_LINK: JString read _GetWEB_DIALOG_PARAM_LINK;
    {class} property WEB_DIALOG_PARAM_MESSAGE: JString read _GetWEB_DIALOG_PARAM_MESSAGE;
    {class} property WEB_DIALOG_PARAM_NAME: JString read _GetWEB_DIALOG_PARAM_NAME;
    {class} property WEB_DIALOG_PARAM_OBJECT_ID: JString read _GetWEB_DIALOG_PARAM_OBJECT_ID;
    {class} property WEB_DIALOG_PARAM_PICTURE: JString read _GetWEB_DIALOG_PARAM_PICTURE;
    {class} property WEB_DIALOG_PARAM_PRIVACY: JString read _GetWEB_DIALOG_PARAM_PRIVACY;
    {class} property WEB_DIALOG_PARAM_QUOTE: JString read _GetWEB_DIALOG_PARAM_QUOTE;
    {class} property WEB_DIALOG_PARAM_SUGGESTIONS: JString read _GetWEB_DIALOG_PARAM_SUGGESTIONS;
    {class} property WEB_DIALOG_PARAM_TITLE: JString read _GetWEB_DIALOG_PARAM_TITLE;
    {class} property WEB_DIALOG_PARAM_TO: JString read _GetWEB_DIALOG_PARAM_TO;
    {class} property WEB_DIALOG_RESULT_PARAM_POST_ID: JString read _GetWEB_DIALOG_RESULT_PARAM_POST_ID;
    {class} property WEB_DIALOG_RESULT_PARAM_REQUEST_ID: JString read _GetWEB_DIALOG_RESULT_PARAM_REQUEST_ID;
    {class} property WEB_DIALOG_RESULT_PARAM_TO_ARRAY_MEMBER: JString read _GetWEB_DIALOG_RESULT_PARAM_TO_ARRAY_MEMBER;
  end;

  [JavaSignature('com/facebook/share/internal/ShareConstants')]
  JShareConstants = interface(JObject)
    ['{608BA6D3-AE64-4CFE-BC59-411C1BDC0314}']
  end;
  TJShareConstants = class(TJavaGenericImport<JShareConstantsClass, JShareConstants>) end;

  JShareContentValidationClass = interface(JObjectClass)
    ['{08A09350-B2DA-40E5-A0A1-7E3E960A35CD}']
    {class} function init: JShareContentValidation; cdecl;//Deprecated
    {class} procedure validateForApiShare(P1: JShareContent); cdecl;//Deprecated
    {class} procedure validateForMessage(P1: JShareContent); cdecl;//Deprecated
    {class} procedure validateForNativeShare(P1: JShareContent); cdecl;//Deprecated
    {class} procedure validateForWebShare(P1: JShareContent); cdecl;//Deprecated
    {class} procedure validateMedium(P1: JShareMedia; P2: JShareContentValidation_Validator); cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/share/internal/ShareContentValidation')]
  JShareContentValidation = interface(JObject)
    ['{D434A75D-8B9B-4A57-9C84-AF884366F2B5}']
  end;
  TJShareContentValidation = class(TJavaGenericImport<JShareContentValidationClass, JShareContentValidation>) end;

  JShareContentValidation_1Class = interface(JObjectClass)
    ['{D963F809-0873-41E1-AAAD-CAFB52BCAE75}']
  end;

  [JavaSignature('com/facebook/share/internal/ShareContentValidation$1')]
  JShareContentValidation_1 = interface(JObject)
    ['{CA229D58-748E-4E6F-A50A-91FC4CE8660D}']
  end;
  TJShareContentValidation_1 = class(TJavaGenericImport<JShareContentValidation_1Class, JShareContentValidation_1>) end;

  JShareContentValidation_ValidatorClass = interface(JObjectClass)
    ['{8BE2120F-EE80-4F7A-B53B-9FF385A51DC4}']
  end;

  [JavaSignature('com/facebook/share/internal/ShareContentValidation$Validator')]
  JShareContentValidation_Validator = interface(JObject)
    ['{77928202-B8D1-4FFD-A9A5-FC26163826A4}']
    function isOpenGraphContent: Boolean; cdecl;//Deprecated
    procedure validate(P1: JSharePhoto); cdecl; overload;//Deprecated
    procedure validate(P1: JShareOpenGraphObject); cdecl; overload;//Deprecated
    procedure validate(P1: JShareMedia); cdecl; overload;//Deprecated
    procedure validate(P1: JShareVideo); cdecl; overload;//Deprecated
    procedure validate(P1: JShareVideoContent); cdecl; overload;//Deprecated
    procedure validate(P1: JSharePhotoContent); cdecl; overload;//Deprecated
    procedure validate(P1: JShareLinkContent); cdecl; overload;//Deprecated
    procedure validate(P1: JShareMediaContent); cdecl; overload;//Deprecated
    procedure validate(P1: JShareOpenGraphAction); cdecl; overload;//Deprecated
    procedure validate(P1: JShareOpenGraphContent); cdecl; overload;//Deprecated
    procedure validate(P1: JShareOpenGraphValueContainer; P2: Boolean); cdecl; overload;//Deprecated
  end;
  TJShareContentValidation_Validator = class(TJavaGenericImport<JShareContentValidation_ValidatorClass, JShareContentValidation_Validator>) end;

  JShareContentValidation_ApiValidatorClass = interface(JShareContentValidation_ValidatorClass)
    ['{1F1F17CB-CE6F-40B6-A729-7005CCD6E17F}']
  end;

  [JavaSignature('com/facebook/share/internal/ShareContentValidation$ApiValidator')]
  JShareContentValidation_ApiValidator = interface(JShareContentValidation_Validator)
    ['{F11A6460-CAF3-41A3-B21B-FA673A770B6B}']
    procedure validate(P1: JShareLinkContent); cdecl; overload;//Deprecated
    procedure validate(P1: JShareMediaContent); cdecl; overload;//Deprecated
    procedure validate(P1: JSharePhoto); cdecl; overload;//Deprecated
    procedure validate(P1: JShareVideoContent); cdecl; overload;//Deprecated
  end;
  TJShareContentValidation_ApiValidator = class(TJavaGenericImport<JShareContentValidation_ApiValidatorClass, JShareContentValidation_ApiValidator>) end;

  JShareContentValidation_WebShareValidatorClass = interface(JShareContentValidation_ValidatorClass)
    ['{70B96D57-F057-41F0-A727-8018C0497A89}']
  end;

  [JavaSignature('com/facebook/share/internal/ShareContentValidation$WebShareValidator')]
  JShareContentValidation_WebShareValidator = interface(JShareContentValidation_Validator)
    ['{B901D7D1-B3E9-4B45-830D-DE66A9235F74}']
    procedure validate(P1: JSharePhoto); cdecl; overload;//Deprecated
    procedure validate(P1: JShareMediaContent); cdecl; overload;//Deprecated
    procedure validate(P1: JSharePhotoContent); cdecl; overload;//Deprecated
    procedure validate(P1: JShareVideoContent); cdecl; overload;//Deprecated
  end;
  TJShareContentValidation_WebShareValidator = class(TJavaGenericImport<JShareContentValidation_WebShareValidatorClass, JShareContentValidation_WebShareValidator>) end;

  JShareDialogFeatureClass = interface(JEnumClass)
    ['{F734923F-6883-4471-AEB8-A37CE80F727D}']
    {class} function _GetHASHTAG: JShareDialogFeature; cdecl;
    {class} function _GetLINK_SHARE_QUOTES: JShareDialogFeature; cdecl;
    {class} function _GetMULTIMEDIA: JShareDialogFeature; cdecl;
    {class} function _GetPHOTOS: JShareDialogFeature; cdecl;
    {class} function _GetSHARE_DIALOG: JShareDialogFeature; cdecl;
    {class} function _GetVIDEO: JShareDialogFeature; cdecl;
    {class} function valueOf(P1: JString): JShareDialogFeature; cdecl;//Deprecated
    {class} function values: TJavaObjectArray<JShareDialogFeature>; cdecl;//Deprecated
    {class} property HASHTAG: JShareDialogFeature read _GetHASHTAG;
    {class} property LINK_SHARE_QUOTES: JShareDialogFeature read _GetLINK_SHARE_QUOTES;
    {class} property MULTIMEDIA: JShareDialogFeature read _GetMULTIMEDIA;
    {class} property PHOTOS: JShareDialogFeature read _GetPHOTOS;
    {class} property SHARE_DIALOG: JShareDialogFeature read _GetSHARE_DIALOG;
    {class} property VIDEO: JShareDialogFeature read _GetVIDEO;
  end;

  [JavaSignature('com/facebook/share/internal/ShareDialogFeature')]
  JShareDialogFeature = interface(JEnum)
    ['{75018A3C-E5A7-45D1-AC97-1C97EA57165A}']
    function getAction: JString; cdecl;//Deprecated
    function getMinVersion: Integer; cdecl;//Deprecated
  end;
  TJShareDialogFeature = class(TJavaGenericImport<JShareDialogFeatureClass, JShareDialogFeature>) end;

  JShareContentClass = interface(JShareModelClass)
    ['{EAB6C029-85CE-4073-8697-C22D0F1963BC}']
  end;

  [JavaSignature('com/facebook/share/model/ShareContent')]
  JShareContent = interface(JShareModel)
    ['{70F50F26-88C1-4CD2-899A-48FB71622553}']
    function describeContents: Integer; cdecl;//Deprecated
    function getContentUrl: Jnet_Uri; cdecl;//Deprecated
    function getPeopleIds: JList; cdecl;//Deprecated
    function getPlaceId: JString; cdecl;//Deprecated
    function getRef: JString; cdecl;//Deprecated
    function getShareHashtag: JShareHashtag; cdecl;//Deprecated
    procedure writeToParcel(P1: JParcel; P2: Integer); cdecl;//Deprecated
  end;
  TJShareContent = class(TJavaGenericImport<JShareContentClass, JShareContent>) end;

  JShareFeedContentClass = interface(JShareContentClass)
    ['{39BE013C-E4BD-41CD-917F-573AA9244615}']
    {class} function _GetCREATOR: JParcelable_Creator; cdecl;
    {class} function init(P1: JParcel): JShareFeedContent; cdecl; overload;//Deprecated
    {class} function init(P1: JShareFeedContent_Builder; P2: JShareFeedContent_1): JShareFeedContent; cdecl; overload;//Deprecated
    {class} property CREATOR: JParcelable_Creator read _GetCREATOR;
  end;

  [JavaSignature('com/facebook/share/internal/ShareFeedContent')]
  JShareFeedContent = interface(JShareContent)
    ['{DF00CC05-2130-4445-AE08-593953BAFE4B}']
    function describeContents: Integer; cdecl;//Deprecated
    function getLink: JString; cdecl;//Deprecated
    function getLinkCaption: JString; cdecl;//Deprecated
    function getLinkDescription: JString; cdecl;//Deprecated
    function getLinkName: JString; cdecl;//Deprecated
    function getMediaSource: JString; cdecl;//Deprecated
    function getPicture: JString; cdecl;//Deprecated
    function getToId: JString; cdecl;//Deprecated
    procedure writeToParcel(P1: JParcel; P2: Integer); cdecl;//Deprecated
  end;
  TJShareFeedContent = class(TJavaGenericImport<JShareFeedContentClass, JShareFeedContent>) end;

  JShareFeedContent_1Class = interface(JParcelable_CreatorClass)
    ['{312A6F1F-75E0-41DA-999C-958F56F57BAB}']
  end;

  [JavaSignature('com/facebook/share/internal/ShareFeedContent$1')]
  JShareFeedContent_1 = interface(JParcelable_Creator)
    ['{9400B773-EA16-4609-88B7-BC70B4F6FBD2}']
    function createFromParcel(P1: JParcel): JShareFeedContent; cdecl;//Deprecated
    function newArray(P1: Integer): TJavaObjectArray<JShareFeedContent>; cdecl;//Deprecated
  end;
  TJShareFeedContent_1 = class(TJavaGenericImport<JShareFeedContent_1Class, JShareFeedContent_1>) end;

  JShareContent_BuilderClass = interface(JShareModelBuilderClass)
    ['{FCA12B15-4FEF-4BFD-8FBA-5B1519B5DC68}']
    {class} function init: JShareContent_Builder; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/share/model/ShareContent$Builder')]
  JShareContent_Builder = interface(JShareModelBuilder)
    ['{E01F4EF7-6748-4E55-BDED-C130DEBDA7DB}']
    function readFrom(P1: JShareContent): JShareContent_Builder; cdecl; overload;//Deprecated
    function readFrom(P1: JShareModel): JShareModelBuilder; cdecl; overload;//Deprecated
    function setContentUrl(P1: Jnet_Uri): JShareContent_Builder; cdecl;//Deprecated
    function setPeopleIds(P1: JList): JShareContent_Builder; cdecl;//Deprecated
    function setPlaceId(P1: JString): JShareContent_Builder; cdecl;//Deprecated
    function setRef(P1: JString): JShareContent_Builder; cdecl;//Deprecated
    function setShareHashtag(P1: JShareHashtag): JShareContent_Builder; cdecl;//Deprecated
  end;
  TJShareContent_Builder = class(TJavaGenericImport<JShareContent_BuilderClass, JShareContent_Builder>) end;

  JShareFeedContent_BuilderClass = interface(JShareContent_BuilderClass)
    ['{46A703A3-12A2-49A5-BADB-6CA6EB56947A}']
    {class} function init: JShareFeedContent_Builder; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/share/internal/ShareFeedContent$Builder')]
  JShareFeedContent_Builder = interface(JShareContent_Builder)
    ['{48E39E9A-D3CD-45E8-9290-932CBCE626A4}']
    function build: JShareFeedContent; cdecl;//Deprecated
    function readFrom(P1: JShareFeedContent): JShareFeedContent_Builder; cdecl; overload;//Deprecated
    function readFrom(P1: JShareContent): JShareContent_Builder; cdecl; overload;//Deprecated
    function readFrom(P1: JShareModel): JShareModelBuilder; cdecl; overload;//Deprecated
    function setLink(P1: JString): JShareFeedContent_Builder; cdecl;//Deprecated
    function setLinkCaption(P1: JString): JShareFeedContent_Builder; cdecl;//Deprecated
    function setLinkDescription(P1: JString): JShareFeedContent_Builder; cdecl;//Deprecated
    function setLinkName(P1: JString): JShareFeedContent_Builder; cdecl;//Deprecated
    function setMediaSource(P1: JString): JShareFeedContent_Builder; cdecl;//Deprecated
    function setPicture(P1: JString): JShareFeedContent_Builder; cdecl;//Deprecated
    function setToId(P1: JString): JShareFeedContent_Builder; cdecl;//Deprecated
  end;
  TJShareFeedContent_Builder = class(TJavaGenericImport<JShareFeedContent_BuilderClass, JShareFeedContent_Builder>) end;

  JShareInternalUtilityClass = interface(JObjectClass)
    ['{657E4D21-9830-4C4B-9217-1615F78C4538}']
    {class} function _GetMY_PHOTOS: JString; cdecl;
    {class} function getFieldNameAndNamespaceFromFullName(P1: JString): JPair; cdecl;//Deprecated
    {class} function getMediaInfos(P1: JShareMediaContent; P2: JUUID): JList; cdecl;//Deprecated
    {class} function getMostSpecificObjectType(P1: JLikeView_ObjectType; P2: JLikeView_ObjectType): JLikeView_ObjectType; cdecl;//Deprecated
    {class} function getNativeDialogCompletionGesture(P1: JBundle): JString; cdecl;//Deprecated
    {class} function getPhotoUrls(P1: JSharePhotoContent; P2: JUUID): JList; cdecl;//Deprecated
    {class} function getShareDialogPostId(P1: JBundle): JString; cdecl;//Deprecated
    {class} function getShareResultProcessor(P1: JFacebookCallback): JResultProcessor; cdecl;//Deprecated
    {class} function getVideoUrl(P1: JShareVideoContent; P2: JUUID): JString; cdecl;//Deprecated
    {class} function handleActivityResult(P1: Integer; P2: Integer; P3: JIntent; P4: JResultProcessor): Boolean; cdecl;//Deprecated
    {class} function init: JShareInternalUtility; cdecl;//Deprecated
    {class} procedure invokeCallbackWithError(P1: JFacebookCallback; P2: JString); cdecl;//Deprecated
    {class} procedure invokeCallbackWithException(P1: JFacebookCallback; P2: JException); cdecl;//Deprecated
    {class} procedure invokeCallbackWithResults(P1: JFacebookCallback; P2: JString; P3: JGraphResponse); cdecl;//Deprecated
    {class} procedure invokeOnCancelCallback(P1: JFacebookCallback); cdecl;//Deprecated
    {class} procedure invokeOnErrorCallback(P1: JFacebookCallback; P2: JString); cdecl; overload;//Deprecated
    {class} procedure invokeOnErrorCallback(P1: JFacebookCallback; P2: JFacebookException); cdecl; overload;//Deprecated
    {class} procedure invokeOnErrorCallback(P1: JFacebookCallback; P2: JGraphResponse; P3: JString); cdecl; overload;//Deprecated
    {class} procedure invokeOnSuccessCallback(P1: JFacebookCallback; P2: JString); cdecl;//Deprecated
    {class} function newUploadStagingResourceWithImageRequest(P1: JAccessToken; P2: JBitmap; P3: JGraphRequest_Callback): JGraphRequest; cdecl; overload;//Deprecated
    {class} function newUploadStagingResourceWithImageRequest(P1: JAccessToken; P2: Jnet_Uri; P3: JGraphRequest_Callback): JGraphRequest; cdecl; overload;//Deprecated
    {class} function newUploadStagingResourceWithImageRequest(P1: JAccessToken; P2: JFile; P3: JGraphRequest_Callback): JGraphRequest; cdecl; overload;//Deprecated
    {class} procedure registerSharerCallback(P1: Integer; P2: JCallbackManager; P3: JFacebookCallback); cdecl;//Deprecated
    {class} procedure registerStaticShareCallback(P1: Integer); cdecl;//Deprecated
    {class} function removeNamespacesFromOGJsonArray(P1: JJSONArray; P2: Boolean): JJSONArray; cdecl;//Deprecated
    {class} function removeNamespacesFromOGJsonObject(P1: JJSONObject; P2: Boolean): JJSONObject; cdecl;//Deprecated
    {class} function toJSONObjectForCall(P1: JUUID; P2: JShareOpenGraphContent): JJSONObject; cdecl;//Deprecated
    {class} function toJSONObjectForWeb(P1: JShareOpenGraphContent): JJSONObject; cdecl;//Deprecated
    {class} property MY_PHOTOS: JString read _GetMY_PHOTOS;
  end;

  [JavaSignature('com/facebook/share/internal/ShareInternalUtility')]
  JShareInternalUtility = interface(JObject)
    ['{AB6FA884-436A-473D-BD44-A08AD2878DA7}']
  end;
  TJShareInternalUtility = class(TJavaGenericImport<JShareInternalUtilityClass, JShareInternalUtility>) end;

  JShareInternalUtility_1Class = interface(JResultProcessorClass)
    ['{F520CC8C-7F73-4666-92CF-43A222E6BC58}']
    {class} function init(P1: JFacebookCallback; P2: JFacebookCallback): JShareInternalUtility_1; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/share/internal/ShareInternalUtility$1')]
  JShareInternalUtility_1 = interface(JResultProcessor)
    ['{24250FEB-E3D2-4F49-8B88-1079DFFE89A8}']
    procedure onCancel(P1: JAppCall); cdecl;//Deprecated
    procedure onError(P1: JAppCall; P2: JFacebookException); cdecl;//Deprecated
    procedure onSuccess(P1: JAppCall; P2: JBundle); cdecl;//Deprecated
  end;
  TJShareInternalUtility_1 = class(TJavaGenericImport<JShareInternalUtility_1Class, JShareInternalUtility_1>) end;

  JShareInternalUtility_2Class = interface(JCallbackManagerImpl_CallbackClass)
    ['{96BCB021-6224-4355-890E-19F80A5662DD}']
    {class} function init(P1: Integer): JShareInternalUtility_2; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/share/internal/ShareInternalUtility$2')]
  JShareInternalUtility_2 = interface(JCallbackManagerImpl_Callback)
    ['{29D351E2-8367-4A62-B590-CB04C3313FFE}']
    function onActivityResult(P1: Integer; P2: JIntent): Boolean; cdecl;//Deprecated
  end;
  TJShareInternalUtility_2 = class(TJavaGenericImport<JShareInternalUtility_2Class, JShareInternalUtility_2>) end;

  JShareInternalUtility_3Class = interface(JCallbackManagerImpl_CallbackClass)
    ['{E6B6D4D8-9D48-46C7-B8C4-FABCFBC3A4B1}']
    {class} function init(P1: Integer; P2: JFacebookCallback): JShareInternalUtility_3; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/share/internal/ShareInternalUtility$3')]
  JShareInternalUtility_3 = interface(JCallbackManagerImpl_Callback)
    ['{29603558-9F35-4820-BC13-EDE54E860BA0}']
//    function _Getval$callback: JFacebookCallback; cdecl;
    function onActivityResult(P1: Integer; P2: JIntent): Boolean; cdecl;//Deprecated
//    property val$callback: JFacebookCallback read _Getval$callback;
  end;
  TJShareInternalUtility_3 = class(TJavaGenericImport<JShareInternalUtility_3Class, JShareInternalUtility_3>) end;

  JShareInternalUtility_4Class = interface(JUtility_MapperClass)
    ['{72B65F31-1484-45E0-982F-0420382361A1}']
    {class} function init(P1: JUUID): JShareInternalUtility_4; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/share/internal/ShareInternalUtility$4')]
  JShareInternalUtility_4 = interface(JUtility_Mapper)
    ['{C85000DF-80AE-4AD4-9097-7ABFE4BF0E4D}']
    function apply(P1: JObject): JObject; cdecl; overload;//Deprecated
    function apply(P1: JSharePhoto): JNativeAppCallAttachmentStore_Attachment; cdecl; overload;//Deprecated
  end;
  TJShareInternalUtility_4 = class(TJavaGenericImport<JShareInternalUtility_4Class, JShareInternalUtility_4>) end;

  JShareInternalUtility_5Class = interface(JUtility_MapperClass)
    ['{B8811815-09F7-4911-B701-087C87117E11}']
  end;

  [JavaSignature('com/facebook/share/internal/ShareInternalUtility$5')]
  JShareInternalUtility_5 = interface(JUtility_Mapper)
    ['{831D3A9F-05EA-4B2C-B87D-1CE739307F05}']
    function apply(P1: JObject): JObject; cdecl; overload;//Deprecated
    function apply(P1: JNativeAppCallAttachmentStore_Attachment): JString; cdecl; overload;//Deprecated
  end;
  TJShareInternalUtility_5 = class(TJavaGenericImport<JShareInternalUtility_5Class, JShareInternalUtility_5>) end;

  JShareInternalUtility_6Class = interface(JUtility_MapperClass)
    ['{799B53D2-A53F-4EF1-9D1F-70C51714BC6A}']
    {class} function init(P1: JUUID; P2: JList): JShareInternalUtility_6; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/share/internal/ShareInternalUtility$6')]
  JShareInternalUtility_6 = interface(JUtility_Mapper)
    ['{C7540E9F-FCFB-4895-ADFE-4AFA6F8FBE05}']
//    function _Getval$attachments: JList; cdecl;
    function apply(P1: JObject): JObject; cdecl; overload;//Deprecated
    function apply(P1: JShareMedia): JBundle; cdecl; overload;//Deprecated
//    property val$attachments: JList read _Getval$attachments;
  end;
  TJShareInternalUtility_6 = class(TJavaGenericImport<JShareInternalUtility_6Class, JShareInternalUtility_6>) end;

  JShareInternalUtility_7Class = interface(JOpenGraphJSONUtility_PhotoJSONProcessorClass)
    ['{E61CFECA-1641-42DC-B6BA-9EC35B78FB64}']
    {class} function init(P1: JUUID; P2: JArrayList): JShareInternalUtility_7; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/share/internal/ShareInternalUtility$7')]
  JShareInternalUtility_7 = interface(JOpenGraphJSONUtility_PhotoJSONProcessor)
    ['{16F4C477-B7E8-4FAB-A2A5-DACEB99AC1A6}']
//    function _Getval$attachments: JArrayList; cdecl;
    function toJSONObject(P1: JSharePhoto): JJSONObject; cdecl;//Deprecated
//    property val$attachments: JArrayList read _Getval$attachments;
  end;
  TJShareInternalUtility_7 = class(TJavaGenericImport<JShareInternalUtility_7Class, JShareInternalUtility_7>) end;

  JShareInternalUtility_8Class = interface(JOpenGraphJSONUtility_PhotoJSONProcessorClass)
    ['{F27E05FF-2BE2-49CB-81B4-2E3CAE8972AD}']
  end;

  [JavaSignature('com/facebook/share/internal/ShareInternalUtility$8')]
  JShareInternalUtility_8 = interface(JOpenGraphJSONUtility_PhotoJSONProcessor)
    ['{65CC91E9-4A44-49C5-80E6-9681B2B55A1E}']
    function toJSONObject(P1: JSharePhoto): JJSONObject; cdecl;//Deprecated
  end;
  TJShareInternalUtility_8 = class(TJavaGenericImport<JShareInternalUtility_8Class, JShareInternalUtility_8>) end;

  JVideoUploaderClass = interface(JObjectClass)
    ['{538533B0-85BC-43C3-8F0B-BE74F8FE3D1C}']
    {class} function init: JVideoUploader; cdecl;//Deprecated
    {class} procedure uploadAsync(P1: JShareVideoContent; P2: JFacebookCallback); cdecl; overload;//Deprecated
    {class} procedure uploadAsync(P1: JShareVideoContent; P2: JString; P3: JFacebookCallback); cdecl; overload;//Deprecated
  end;

  [JavaSignature('com/facebook/share/internal/VideoUploader')]
  JVideoUploader = interface(JObject)
    ['{21D35990-A00E-4BE5-9F7E-99E6DFBD2598}']
  end;
  TJVideoUploader = class(TJavaGenericImport<JVideoUploaderClass, JVideoUploader>) end;

  JVideoUploader_1Class = interface(JAccessTokenTrackerClass)
    ['{5B355176-6E13-4038-A59A-6ED2F2DFB2E5}']
  end;

  [JavaSignature('com/facebook/share/internal/VideoUploader$1')]
  JVideoUploader_1 = interface(JAccessTokenTracker)
    ['{4AA2F710-92F4-4CE3-BCB8-6933B566455D}']
  end;
  TJVideoUploader_1 = class(TJavaGenericImport<JVideoUploader_1Class, JVideoUploader_1>) end;

  JVideoUploader_UploadWorkItemBaseClass = interface(JRunnableClass)
    ['{111B31EB-843F-438D-98FB-173A6FDAB583}']
    {class} function init(P1: JVideoUploader_UploadContext; P2: Integer): JVideoUploader_UploadWorkItemBase; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/share/internal/VideoUploader$UploadWorkItemBase')]
  JVideoUploader_UploadWorkItemBase = interface(JRunnable)
    ['{09D6868C-09F3-409C-9CEB-8AFCAF6C2A58}']
    function _GetcompletedRetries: Integer; cdecl;
    procedure _SetcompletedRetries(Value: Integer); cdecl;
    procedure endUploadWithFailure(P1: JFacebookException); cdecl;//Deprecated
    procedure enqueueRetry(P1: Integer); cdecl;//Deprecated
    procedure executeGraphRequestSynchronously(P1: JBundle); cdecl;//Deprecated
    function getParameters: JBundle; cdecl;//Deprecated
    function getTransientErrorCodes: JSet; cdecl;//Deprecated
    procedure handleError(P1: JFacebookException); cdecl;//Deprecated
    procedure handleSuccess(P1: JJSONObject); cdecl;//Deprecated
    procedure issueResponseOnMainThread(P1: JFacebookException; P2: JString); cdecl;//Deprecated
    procedure run; cdecl;//Deprecated
    property completedRetries: Integer read _GetcompletedRetries write _SetcompletedRetries;
  end;
  TJVideoUploader_UploadWorkItemBase = class(TJavaGenericImport<JVideoUploader_UploadWorkItemBaseClass, JVideoUploader_UploadWorkItemBase>) end;

  JVideoUploader_FinishUploadWorkItemClass = interface(JVideoUploader_UploadWorkItemBaseClass)
    ['{2B88C7DC-57D1-42F3-9CA3-019C78632DC5}']
    {class} function init(P1: JVideoUploader_UploadContext; P2: Integer): JVideoUploader_FinishUploadWorkItem; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/share/internal/VideoUploader$FinishUploadWorkItem')]
  JVideoUploader_FinishUploadWorkItem = interface(JVideoUploader_UploadWorkItemBase)
    ['{091A57D2-1273-449E-9B6C-87437C30817F}']
    procedure enqueueRetry(P1: Integer); cdecl;//Deprecated
    function getParameters: JBundle; cdecl;//Deprecated
    function getTransientErrorCodes: JSet; cdecl;//Deprecated
    procedure handleError(P1: JFacebookException); cdecl;//Deprecated
    procedure handleSuccess(P1: JJSONObject); cdecl;//Deprecated
  end;
  TJVideoUploader_FinishUploadWorkItem = class(TJavaGenericImport<JVideoUploader_FinishUploadWorkItemClass, JVideoUploader_FinishUploadWorkItem>) end;

  JFinishUploadWorkItem_1Class = interface(JHashSetClass)
    ['{B9B85B6F-BB02-444A-8EF0-D64C033438BD}']
  end;

  [JavaSignature('com/facebook/share/internal/VideoUploader$FinishUploadWorkItem$1')]
  JFinishUploadWorkItem_1 = interface(JHashSet)
    ['{8894ADEC-02A5-4594-B938-C5EE22C0C03B}']
  end;
  TJFinishUploadWorkItem_1 = class(TJavaGenericImport<JFinishUploadWorkItem_1Class, JFinishUploadWorkItem_1>) end;

  JVideoUploader_StartUploadWorkItemClass = interface(JVideoUploader_UploadWorkItemBaseClass)
    ['{1E9C627B-03E6-45B6-BFDF-AA5F819E3E42}']
    {class} function init(P1: JVideoUploader_UploadContext; P2: Integer): JVideoUploader_StartUploadWorkItem; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/share/internal/VideoUploader$StartUploadWorkItem')]
  JVideoUploader_StartUploadWorkItem = interface(JVideoUploader_UploadWorkItemBase)
    ['{4B7D5D7E-5FB7-4CD0-A29C-BDB21D10EBA3}']
    procedure enqueueRetry(P1: Integer); cdecl;//Deprecated
    function getParameters: JBundle; cdecl;//Deprecated
    function getTransientErrorCodes: JSet; cdecl;//Deprecated
    procedure handleError(P1: JFacebookException); cdecl;//Deprecated
    procedure handleSuccess(P1: JJSONObject); cdecl;//Deprecated
  end;
  TJVideoUploader_StartUploadWorkItem = class(TJavaGenericImport<JVideoUploader_StartUploadWorkItemClass, JVideoUploader_StartUploadWorkItem>) end;

  JStartUploadWorkItem_1Class = interface(JHashSetClass)
    ['{A06FEC78-51B0-444A-B006-91FF93B65977}']
  end;

  [JavaSignature('com/facebook/share/internal/VideoUploader$StartUploadWorkItem$1')]
  JStartUploadWorkItem_1 = interface(JHashSet)
    ['{B8A2FEFC-0413-4B27-A9EB-DBDCF06DEBD6}']
  end;
  TJStartUploadWorkItem_1 = class(TJavaGenericImport<JStartUploadWorkItem_1Class, JStartUploadWorkItem_1>) end;

  JVideoUploader_TransferChunkWorkItemClass = interface(JVideoUploader_UploadWorkItemBaseClass)
    ['{1D1F98E5-32E1-4DBF-96C8-4B50029A9F47}']
    {class} function init(P1: JVideoUploader_UploadContext; P2: JString; P3: JString; P4: Integer): JVideoUploader_TransferChunkWorkItem; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/share/internal/VideoUploader$TransferChunkWorkItem')]
  JVideoUploader_TransferChunkWorkItem = interface(JVideoUploader_UploadWorkItemBase)
    ['{AF7BB9D9-FA50-4520-8E02-D490E75AD09F}']
    procedure enqueueRetry(P1: Integer); cdecl;//Deprecated
    function getParameters: JBundle; cdecl;//Deprecated
    function getTransientErrorCodes: JSet; cdecl;//Deprecated
    procedure handleError(P1: JFacebookException); cdecl;//Deprecated
    procedure handleSuccess(P1: JJSONObject); cdecl;//Deprecated
  end;
  TJVideoUploader_TransferChunkWorkItem = class(TJavaGenericImport<JVideoUploader_TransferChunkWorkItemClass, JVideoUploader_TransferChunkWorkItem>) end;

  JTransferChunkWorkItem_1Class = interface(JHashSetClass)
    ['{7A7C4D03-8560-4617-AE63-5EC3FF85B12E}']
  end;

  [JavaSignature('com/facebook/share/internal/VideoUploader$TransferChunkWorkItem$1')]
  JTransferChunkWorkItem_1 = interface(JHashSet)
    ['{2827DC91-E75F-457D-83BF-C99931B6D11D}']
  end;
  TJTransferChunkWorkItem_1 = class(TJavaGenericImport<JTransferChunkWorkItem_1Class, JTransferChunkWorkItem_1>) end;

  JVideoUploader_UploadContextClass = interface(JObjectClass)
    ['{3C6E08F1-7FEA-4F36-8DC6-EFB345C4A4E3}']
    {class} function init(P1: JShareVideoContent; P2: JString; P3: JFacebookCallback; P4: JVideoUploader_1): JVideoUploader_UploadContext; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/share/internal/VideoUploader$UploadContext')]
  JVideoUploader_UploadContext = interface(JObject)
    ['{114D2FA2-7E34-4BF4-9D53-27AF371D84EA}']
    function _GetaccessToken: JAccessToken; cdecl;
    function _Getcallback: JFacebookCallback; cdecl;
    function _GetchunkStart: JString; cdecl;
    procedure _SetchunkStart(Value: JString); cdecl;
    function _Getdescription: JString; cdecl;
    function _GetgraphNode: JString; cdecl;
    function _GetisCanceled: Boolean; cdecl;
    procedure _SetisCanceled(Value: Boolean); cdecl;
    function _Getparams: JBundle; cdecl;
    procedure _Setparams(Value: JBundle); cdecl;
    function _Getref: JString; cdecl;
    function _GetsessionId: JString; cdecl;
    procedure _SetsessionId(Value: JString); cdecl;
    function _Gettitle: JString; cdecl;
    function _GetvideoId: JString; cdecl;
    procedure _SetvideoId(Value: JString); cdecl;
    function _GetvideoSize: Int64; cdecl;
    procedure _SetvideoSize(Value: Int64); cdecl;
    function _GetvideoStream: JInputStream; cdecl;
    procedure _SetvideoStream(Value: JInputStream); cdecl;
    function _GetvideoUri: Jnet_Uri; cdecl;
    function _GetworkItem: JWorkQueue_WorkItem; cdecl;
    procedure _SetworkItem(Value: JWorkQueue_WorkItem); cdecl;
    property accessToken: JAccessToken read _GetaccessToken;
    property callback: JFacebookCallback read _Getcallback;
    property chunkStart: JString read _GetchunkStart write _SetchunkStart;
    property description: JString read _Getdescription;
    property graphNode: JString read _GetgraphNode;
    property isCanceled: Boolean read _GetisCanceled write _SetisCanceled;
    property params: JBundle read _Getparams write _Setparams;
    property ref: JString read _Getref;
    property sessionId: JString read _GetsessionId write _SetsessionId;
    property title: JString read _Gettitle;
    property videoId: JString read _GetvideoId write _SetvideoId;
    property videoSize: Int64 read _GetvideoSize write _SetvideoSize;
    property videoStream: JInputStream read _GetvideoStream write _SetvideoStream;
    property videoUri: Jnet_Uri read _GetvideoUri;
    property workItem: JWorkQueue_WorkItem read _GetworkItem write _SetworkItem;
  end;
  TJVideoUploader_UploadContext = class(TJavaGenericImport<JVideoUploader_UploadContextClass, JVideoUploader_UploadContext>) end;

  JUploadWorkItemBase_1Class = interface(JRunnableClass)
    ['{1AC70E9B-B7BF-456E-B204-2FDBD4A37002}']
    {class} function init(P1: JVideoUploader_UploadWorkItemBase): JUploadWorkItemBase_1; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/share/internal/VideoUploader$UploadWorkItemBase$1')]
  JUploadWorkItemBase_1 = interface(JRunnable)
    ['{99104539-0788-4E75-BDB3-FE5152B2DB71}']
    procedure run; cdecl;//Deprecated
  end;
  TJUploadWorkItemBase_1 = class(TJavaGenericImport<JUploadWorkItemBase_1Class, JUploadWorkItemBase_1>) end;

  JUploadWorkItemBase_2Class = interface(JRunnableClass)
    ['{361945D4-347A-4F07-AAF1-1B7EA8E455E2}']
    {class} function init(P1: JVideoUploader_UploadWorkItemBase; P2: JFacebookException; P3: JString): JUploadWorkItemBase_2; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/share/internal/VideoUploader$UploadWorkItemBase$2')]
  JUploadWorkItemBase_2 = interface(JRunnable)
    ['{BA2CAB17-6222-4333-9B26-264BA05D0157}']
//    function _Getthis$0: JVideoUploader_UploadWorkItemBase; cdecl;
//    function _Getval$videoId: JString; cdecl;
    procedure run; cdecl;//Deprecated
//    property this$0: JVideoUploader_UploadWorkItemBase read _Getthis$0;
//    property val$videoId: JString read _Getval$videoId;
  end;
  TJUploadWorkItemBase_2 = class(TJavaGenericImport<JUploadWorkItemBase_2Class, JUploadWorkItemBase_2>) end;

  JWebDialogParametersClass = interface(JObjectClass)
    ['{950E2778-B44E-4174-BD80-2E05393C223A}']
    {class} function create(P1: JShareLinkContent): JBundle; cdecl; overload;//Deprecated
    {class} function create(P1: JShareOpenGraphContent): JBundle; cdecl; overload;//Deprecated
    {class} function create(P1: JGameRequestContent): JBundle; cdecl; overload;//Deprecated
    {class} function create(P1: JAppGroupCreationContent): JBundle; cdecl; overload;//Deprecated
    {class} function createBaseParameters(P1: JShareContent): JBundle; cdecl;//Deprecated
    {class} function createForFeed(P1: JShareFeedContent): JBundle; cdecl; overload;//Deprecated
    {class} function createForFeed(P1: JShareLinkContent): JBundle; cdecl; overload;//Deprecated
    {class} function init: JWebDialogParameters; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/share/internal/WebDialogParameters')]
  JWebDialogParameters = interface(JObject)
    ['{D90A1BBE-53EB-4E0D-9272-CDAA4D818699}']
  end;
  TJWebDialogParameters = class(TJavaGenericImport<JWebDialogParametersClass, JWebDialogParameters>) end;

  JAppGroupCreationContentClass = interface(JShareModelClass)
    ['{7744A977-B80E-4BE1-8C50-2C1848674580}']
    {class} function _GetCREATOR: JParcelable_Creator; cdecl;
    {class} function init(P1: JParcel): JAppGroupCreationContent; cdecl; overload;//Deprecated
    {class} function init(P1: JAppGroupCreationContent_Builder; P2: JAppGroupCreationContent_1): JAppGroupCreationContent; cdecl; overload;//Deprecated
    {class} property CREATOR: JParcelable_Creator read _GetCREATOR;
  end;

  [JavaSignature('com/facebook/share/model/AppGroupCreationContent')]
  JAppGroupCreationContent = interface(JShareModel)
    ['{9391F9A1-F242-4DD5-B032-C55C8CD1BA47}']
    function describeContents: Integer; cdecl;//Deprecated
    function getAppGroupPrivacy: JAppGroupCreationContent_AppGroupPrivacy; cdecl;//Deprecated
    function getDescription: JString; cdecl;//Deprecated
    function getName: JString; cdecl;//Deprecated
    procedure writeToParcel(P1: JParcel; P2: Integer); cdecl;//Deprecated
  end;
  TJAppGroupCreationContent = class(TJavaGenericImport<JAppGroupCreationContentClass, JAppGroupCreationContent>) end;

  JAppGroupCreationContent_1Class = interface(JParcelable_CreatorClass)
    ['{BDF2CB33-BE36-4A6B-9433-2A675D908F55}']
  end;

  [JavaSignature('com/facebook/share/model/AppGroupCreationContent$1')]
  JAppGroupCreationContent_1 = interface(JParcelable_Creator)
    ['{4B6AECDF-E439-4F9B-BCF8-00113D1477AC}']
    function createFromParcel(P1: JParcel): JAppGroupCreationContent; cdecl;//Deprecated
    function newArray(P1: Integer): TJavaObjectArray<JAppGroupCreationContent>; cdecl;//Deprecated
  end;
  TJAppGroupCreationContent_1 = class(TJavaGenericImport<JAppGroupCreationContent_1Class, JAppGroupCreationContent_1>) end;

  JAppGroupCreationContent_AppGroupPrivacyClass = interface(JEnumClass)
    ['{482C5816-5CC2-48F6-95EF-F508461205BB}']
    {class} function _GetClosed: JAppGroupCreationContent_AppGroupPrivacy; cdecl;
    {class} function _GetOpen: JAppGroupCreationContent_AppGroupPrivacy; cdecl;
    {class} function valueOf(P1: JString): JAppGroupCreationContent_AppGroupPrivacy; cdecl;//Deprecated
    {class} function values: TJavaObjectArray<JAppGroupCreationContent_AppGroupPrivacy>; cdecl;//Deprecated
    {class} property Closed: JAppGroupCreationContent_AppGroupPrivacy read _GetClosed;
    {class} property Open: JAppGroupCreationContent_AppGroupPrivacy read _GetOpen;
  end;

  [JavaSignature('com/facebook/share/model/AppGroupCreationContent$AppGroupPrivacy')]
  JAppGroupCreationContent_AppGroupPrivacy = interface(JEnum)
    ['{09803969-543C-4B26-8DAB-445B99D06AB7}']
  end;
  TJAppGroupCreationContent_AppGroupPrivacy = class(TJavaGenericImport<JAppGroupCreationContent_AppGroupPrivacyClass, JAppGroupCreationContent_AppGroupPrivacy>) end;

  JAppGroupCreationContent_BuilderClass = interface(JShareModelBuilderClass)
    ['{A781B6CB-62E9-4353-BAE0-686ACD756C9C}']
    {class} function init: JAppGroupCreationContent_Builder; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/share/model/AppGroupCreationContent$Builder')]
  JAppGroupCreationContent_Builder = interface(JShareModelBuilder)
    ['{916BAD51-5D6F-4203-B89B-2DEC501ACD01}']
    function build: JAppGroupCreationContent; cdecl;//Deprecated
    function readFrom(P1: JAppGroupCreationContent): JAppGroupCreationContent_Builder; cdecl; overload;//Deprecated
    function readFrom(P1: JShareModel): JShareModelBuilder; cdecl; overload;//Deprecated
    function setAppGroupPrivacy(P1: JAppGroupCreationContent_AppGroupPrivacy): JAppGroupCreationContent_Builder; cdecl;//Deprecated
    function setDescription(P1: JString): JAppGroupCreationContent_Builder; cdecl;//Deprecated
    function setName(P1: JString): JAppGroupCreationContent_Builder; cdecl;//Deprecated
  end;
  TJAppGroupCreationContent_Builder = class(TJavaGenericImport<JAppGroupCreationContent_BuilderClass, JAppGroupCreationContent_Builder>) end;

  JAppInviteContentClass = interface(JShareModelClass)
    ['{8541F650-5302-47C0-8B71-389514447D9F}']
    {class} function _GetCREATOR: JParcelable_Creator; cdecl;
    {class} function init(P1: JParcel): JAppInviteContent; cdecl; overload;//Deprecated
    {class} function init(P1: JAppInviteContent_Builder; P2: JAppInviteContent_1): JAppInviteContent; cdecl; overload;//Deprecated
    {class} property CREATOR: JParcelable_Creator read _GetCREATOR;
  end;

  [JavaSignature('com/facebook/share/model/AppInviteContent')]
  JAppInviteContent = interface(JShareModel)
    ['{D7DA9314-33D3-4830-BAD3-2598C7A3B969}']
    function describeContents: Integer; cdecl;//Deprecated
    function getApplinkUrl: JString; cdecl;//Deprecated
    function getPreviewImageUrl: JString; cdecl;//Deprecated
    function getPromotionCode: JString; cdecl;//Deprecated
    function getPromotionText: JString; cdecl;//Deprecated
    procedure writeToParcel(P1: JParcel; P2: Integer); cdecl;//Deprecated
  end;
  TJAppInviteContent = class(TJavaGenericImport<JAppInviteContentClass, JAppInviteContent>) end;

  JAppInviteContent_1Class = interface(JParcelable_CreatorClass)
    ['{6D91BDFF-AF7D-41FE-BC73-DA77D3089EA8}']
  end;

  [JavaSignature('com/facebook/share/model/AppInviteContent$1')]
  JAppInviteContent_1 = interface(JParcelable_Creator)
    ['{9CF5DB6B-3270-498E-A11D-1DEE967600D1}']
    function createFromParcel(P1: JParcel): JAppInviteContent; cdecl;//Deprecated
    function newArray(P1: Integer): TJavaObjectArray<JAppInviteContent>; cdecl;//Deprecated
  end;
  TJAppInviteContent_1 = class(TJavaGenericImport<JAppInviteContent_1Class, JAppInviteContent_1>) end;

  JAppInviteContent_BuilderClass = interface(JShareModelBuilderClass)
    ['{9F809BB4-3B90-4D99-908C-622A074CADC9}']
    {class} function init: JAppInviteContent_Builder; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/share/model/AppInviteContent$Builder')]
  JAppInviteContent_Builder = interface(JShareModelBuilder)
    ['{299AC6FE-3568-49F5-99D8-EACA994B08E8}']
    function build: JAppInviteContent; cdecl;//Deprecated
    function readFrom(P1: JShareModel): JShareModelBuilder; cdecl; overload;//Deprecated
    function readFrom(P1: JAppInviteContent): JAppInviteContent_Builder; cdecl; overload;//Deprecated
    function setApplinkUrl(P1: JString): JAppInviteContent_Builder; cdecl;//Deprecated
    function setPreviewImageUrl(P1: JString): JAppInviteContent_Builder; cdecl;//Deprecated
    function setPromotionDetails(P1: JString; P2: JString): JAppInviteContent_Builder; cdecl;//Deprecated
  end;
  TJAppInviteContent_Builder = class(TJavaGenericImport<JAppInviteContent_BuilderClass, JAppInviteContent_Builder>) end;

  JGameRequestContentClass = interface(JShareModelClass)
    ['{DFE0D66F-AC84-456D-B089-4B9DCF6FDE6F}']
    {class} function _GetCREATOR: JParcelable_Creator; cdecl;
    {class} function init(P1: JParcel): JGameRequestContent; cdecl; overload;//Deprecated
    {class} function init(P1: JGameRequestContent_Builder; P2: JGameRequestContent_1): JGameRequestContent; cdecl; overload;//Deprecated
    {class} property CREATOR: JParcelable_Creator read _GetCREATOR;
  end;

  [JavaSignature('com/facebook/share/model/GameRequestContent')]
  JGameRequestContent = interface(JShareModel)
    ['{B945F751-D153-4981-8A99-1AE04B345770}']
    function describeContents: Integer; cdecl;//Deprecated
    function getActionType: JGameRequestContent_ActionType; cdecl;//Deprecated
    function getData: JString; cdecl;//Deprecated
    function getFilters: JGameRequestContent_Filters; cdecl;//Deprecated
    function getMessage: JString; cdecl;//Deprecated
    function getObjectId: JString; cdecl;//Deprecated
    function getRecipients: JList; cdecl;//Deprecated
    function getSuggestions: JList; cdecl;//Deprecated
    function getTitle: JString; cdecl;//Deprecated
    function getTo: JString; cdecl;//Deprecated
    procedure writeToParcel(P1: JParcel; P2: Integer); cdecl;//Deprecated
  end;
  TJGameRequestContent = class(TJavaGenericImport<JGameRequestContentClass, JGameRequestContent>) end;

  JGameRequestContent_1Class = interface(JParcelable_CreatorClass)
    ['{AC35B6EA-FE31-41DB-9D4F-3AE4E3A28644}']
  end;

  [JavaSignature('com/facebook/share/model/GameRequestContent$1')]
  JGameRequestContent_1 = interface(JParcelable_Creator)
    ['{22B38019-0B5C-4B51-AD44-1C98F53CB272}']
    function createFromParcel(P1: JParcel): JGameRequestContent; cdecl;//Deprecated
    function newArray(P1: Integer): TJavaObjectArray<JGameRequestContent>; cdecl;//Deprecated
  end;
  TJGameRequestContent_1 = class(TJavaGenericImport<JGameRequestContent_1Class, JGameRequestContent_1>) end;

  JGameRequestContent_ActionTypeClass = interface(JEnumClass)
    ['{B04EE5AD-D36A-4075-BA42-B789CF0DCC78}']
    {class} function _GetASKFOR: JGameRequestContent_ActionType; cdecl;
    {class} function _GetSEND: JGameRequestContent_ActionType; cdecl;
    {class} function _GetTURN: JGameRequestContent_ActionType; cdecl;
    {class} function valueOf(P1: JString): JGameRequestContent_ActionType; cdecl;//Deprecated
    {class} function values: TJavaObjectArray<JGameRequestContent_ActionType>; cdecl;//Deprecated
    {class} property ASKFOR: JGameRequestContent_ActionType read _GetASKFOR;
    {class} property SEND: JGameRequestContent_ActionType read _GetSEND;
    {class} property TURN: JGameRequestContent_ActionType read _GetTURN;
  end;

  [JavaSignature('com/facebook/share/model/GameRequestContent$ActionType')]
  JGameRequestContent_ActionType = interface(JEnum)
    ['{1035ECC1-B0BD-481F-AE8F-0656513A6B39}']
  end;
  TJGameRequestContent_ActionType = class(TJavaGenericImport<JGameRequestContent_ActionTypeClass, JGameRequestContent_ActionType>) end;

  JGameRequestContent_BuilderClass = interface(JShareModelBuilderClass)
    ['{10954A34-0A07-484A-AE7C-7E512A728154}']
    {class} function init: JGameRequestContent_Builder; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/share/model/GameRequestContent$Builder')]
  JGameRequestContent_Builder = interface(JShareModelBuilder)
    ['{F541D8CD-05FC-464E-B718-7BA170DC3784}']
    function build: JGameRequestContent; cdecl;//Deprecated
    function readFrom(P1: JGameRequestContent): JGameRequestContent_Builder; cdecl; overload;//Deprecated
    function readFrom(P1: JShareModel): JShareModelBuilder; cdecl; overload;//Deprecated
    function setActionType(P1: JGameRequestContent_ActionType): JGameRequestContent_Builder; cdecl;//Deprecated
    function setData(P1: JString): JGameRequestContent_Builder; cdecl;//Deprecated
    function setFilters(P1: JGameRequestContent_Filters): JGameRequestContent_Builder; cdecl;//Deprecated
    function setMessage(P1: JString): JGameRequestContent_Builder; cdecl;//Deprecated
    function setObjectId(P1: JString): JGameRequestContent_Builder; cdecl;//Deprecated
    function setRecipients(P1: JList): JGameRequestContent_Builder; cdecl;//Deprecated
    function setSuggestions(P1: JList): JGameRequestContent_Builder; cdecl;//Deprecated
    function setTitle(P1: JString): JGameRequestContent_Builder; cdecl;//Deprecated
    function setTo(P1: JString): JGameRequestContent_Builder; cdecl;//Deprecated
  end;
  TJGameRequestContent_Builder = class(TJavaGenericImport<JGameRequestContent_BuilderClass, JGameRequestContent_Builder>) end;

  JGameRequestContent_FiltersClass = interface(JEnumClass)
    ['{081827D5-F025-4785-A218-843E83B8E5DB}']
    {class} function _GetAPP_NON_USERS: JGameRequestContent_Filters; cdecl;
    {class} function _GetAPP_USERS: JGameRequestContent_Filters; cdecl;
    {class} function valueOf(P1: JString): JGameRequestContent_Filters; cdecl;//Deprecated
    {class} function values: TJavaObjectArray<JGameRequestContent_Filters>; cdecl;//Deprecated
    {class} property APP_NON_USERS: JGameRequestContent_Filters read _GetAPP_NON_USERS;
    {class} property APP_USERS: JGameRequestContent_Filters read _GetAPP_USERS;
  end;

  [JavaSignature('com/facebook/share/model/GameRequestContent$Filters')]
  JGameRequestContent_Filters = interface(JEnum)
    ['{0457586C-E074-45B8-87CD-CFE3EBD329BC}']
  end;
  TJGameRequestContent_Filters = class(TJavaGenericImport<JGameRequestContent_FiltersClass, JGameRequestContent_Filters>) end;

  JShareHashtagClass = interface(JShareModelClass)
    ['{93314EC7-D3EB-4BD5-B045-84F81F243254}']
    {class} function _GetCREATOR: JParcelable_Creator; cdecl;
    {class} function init(P1: JParcel): JShareHashtag; cdecl; overload;//Deprecated
    {class} function init(P1: JShareHashtag_Builder; P2: JShareHashtag_1): JShareHashtag; cdecl; overload;//Deprecated
    {class} property CREATOR: JParcelable_Creator read _GetCREATOR;
  end;

  [JavaSignature('com/facebook/share/model/ShareHashtag')]
  JShareHashtag = interface(JShareModel)
    ['{C485D1A2-21EF-4663-926A-48F7EBEF85CD}']
    function describeContents: Integer; cdecl;//Deprecated
    function getHashtag: JString; cdecl;//Deprecated
    procedure writeToParcel(P1: JParcel; P2: Integer); cdecl;//Deprecated
  end;
  TJShareHashtag = class(TJavaGenericImport<JShareHashtagClass, JShareHashtag>) end;

  JShareHashtag_1Class = interface(JParcelable_CreatorClass)
    ['{99E7B70B-BA23-4307-9EC5-C52D06F61C93}']
  end;

  [JavaSignature('com/facebook/share/model/ShareHashtag$1')]
  JShareHashtag_1 = interface(JParcelable_Creator)
    ['{75164272-96EB-4704-BB3E-9E269F406FE2}']
    function createFromParcel(P1: JParcel): JShareHashtag; cdecl;//Deprecated
    function newArray(P1: Integer): TJavaObjectArray<JShareHashtag>; cdecl;//Deprecated
  end;
  TJShareHashtag_1 = class(TJavaGenericImport<JShareHashtag_1Class, JShareHashtag_1>) end;

  JShareHashtag_BuilderClass = interface(JShareModelBuilderClass)
    ['{CE326AF7-8189-46A4-993C-C055CB302BE5}']
    {class} function init: JShareHashtag_Builder; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/share/model/ShareHashtag$Builder')]
  JShareHashtag_Builder = interface(JShareModelBuilder)
    ['{EC5AAB38-B36C-4C69-8373-F6AD82EEDC73}']
    function build: JShareHashtag; cdecl;//Deprecated
    function getHashtag: JString; cdecl;//Deprecated
    function readFrom(P1: JShareModel): JShareModelBuilder; cdecl; overload;//Deprecated
    function readFrom(P1: JShareHashtag): JShareHashtag_Builder; cdecl; overload;//Deprecated
    function setHashtag(P1: JString): JShareHashtag_Builder; cdecl;//Deprecated
  end;
  TJShareHashtag_Builder = class(TJavaGenericImport<JShareHashtag_BuilderClass, JShareHashtag_Builder>) end;

  JShareLinkContentClass = interface(JShareContentClass)
    ['{9B834C54-A8AA-4C56-9FD2-21D15966D593}']
    {class} function _GetCREATOR: JParcelable_Creator; cdecl;
    {class} function init(P1: JParcel): JShareLinkContent; cdecl; overload;//Deprecated
    {class} function init(P1: JShareLinkContent_Builder; P2: JShareLinkContent_1): JShareLinkContent; cdecl; overload;//Deprecated
    {class} property CREATOR: JParcelable_Creator read _GetCREATOR;
  end;

  [JavaSignature('com/facebook/share/model/ShareLinkContent')]
  JShareLinkContent = interface(JShareContent)
    ['{99D2CCA1-34F3-4A5C-AFBF-033A92F2432F}']
    function describeContents: Integer; cdecl;//Deprecated
    function getContentDescription: JString; cdecl;//Deprecated
    function getContentTitle: JString; cdecl;//Deprecated
    function getImageUrl: Jnet_Uri; cdecl;//Deprecated
    function getQuote: JString; cdecl;//Deprecated
    procedure writeToParcel(P1: JParcel; P2: Integer); cdecl;//Deprecated
  end;
  TJShareLinkContent = class(TJavaGenericImport<JShareLinkContentClass, JShareLinkContent>) end;

  JShareLinkContent_1Class = interface(JParcelable_CreatorClass)
    ['{A685DD3D-479E-40B3-A3E5-ACCE2F157FD3}']
  end;

  [JavaSignature('com/facebook/share/model/ShareLinkContent$1')]
  JShareLinkContent_1 = interface(JParcelable_Creator)
    ['{7ADDD5CB-151F-4FB7-8362-114B9FAE487E}']
    function createFromParcel(P1: JParcel): JShareLinkContent; cdecl;//Deprecated
    function newArray(P1: Integer): TJavaObjectArray<JShareLinkContent>; cdecl;//Deprecated
  end;
  TJShareLinkContent_1 = class(TJavaGenericImport<JShareLinkContent_1Class, JShareLinkContent_1>) end;

  JShareLinkContent_BuilderClass = interface(JShareContent_BuilderClass)
    ['{1F400925-4BF7-4687-8779-FA412300C8FC}']
    {class} function init: JShareLinkContent_Builder; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/share/model/ShareLinkContent$Builder')]
  JShareLinkContent_Builder = interface(JShareContent_Builder)
    ['{0CE96D9D-3E6F-405C-A947-C3112A15FBB7}']
    function build: JShareLinkContent; cdecl;//Deprecated
    function readFrom(P1: JShareModel): JShareModelBuilder; cdecl; overload;//Deprecated
    function readFrom(P1: JShareLinkContent): JShareLinkContent_Builder; cdecl; overload;//Deprecated
    function readFrom(P1: JShareContent): JShareContent_Builder; cdecl; overload;//Deprecated
    function setContentDescription(P1: JString): JShareLinkContent_Builder; cdecl;//Deprecated
    function setContentTitle(P1: JString): JShareLinkContent_Builder; cdecl;//Deprecated
    function setImageUrl(P1: Jnet_Uri): JShareLinkContent_Builder; cdecl;//Deprecated
    function setQuote(P1: JString): JShareLinkContent_Builder; cdecl;//Deprecated
  end;
  TJShareLinkContent_Builder = class(TJavaGenericImport<JShareLinkContent_BuilderClass, JShareLinkContent_Builder>) end;

  JShareMediaClass = interface(JShareModelClass)
    ['{47BB1137-A11B-404E-8503-5F2E10D63D87}']
  end;

  [JavaSignature('com/facebook/share/model/ShareMedia')]
  JShareMedia = interface(JShareModel)
    ['{D236BEB8-A464-4364-9BD5-F68025CF4AB0}']
    function describeContents: Integer; cdecl;//Deprecated
    function getMediaType: JShareMedia_Type; cdecl;//Deprecated
    function getParameters: JBundle; cdecl;//Deprecated
    procedure writeToParcel(P1: JParcel; P2: Integer); cdecl;//Deprecated
  end;
  TJShareMedia = class(TJavaGenericImport<JShareMediaClass, JShareMedia>) end;

  JShareMedia_BuilderClass = interface(JShareModelBuilderClass)
    ['{7838E2A7-2E21-4E9C-B7D6-5D24DF05A4B0}']
    {class} function init: JShareMedia_Builder; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/share/model/ShareMedia$Builder')]
  JShareMedia_Builder = interface(JShareModelBuilder)
    ['{959A52D5-BBF7-46B2-82D0-59A8129D85F8}']
    function readFrom(P1: JShareMedia): JShareMedia_Builder; cdecl; overload;//Deprecated
    function readFrom(P1: JShareModel): JShareModelBuilder; cdecl; overload;//Deprecated
    function setParameter(P1: JString; P2: JString): JShareMedia_Builder; cdecl;//Deprecated
    function setParameters(P1: JBundle): JShareMedia_Builder; cdecl;//Deprecated
  end;
  TJShareMedia_Builder = class(TJavaGenericImport<JShareMedia_BuilderClass, JShareMedia_Builder>) end;

  JShareMedia_TypeClass = interface(JEnumClass)
    ['{726E2E31-58A9-42E8-892D-8DE471CC2A43}']
    {class} function _GetPHOTO: JShareMedia_Type; cdecl;
    {class} function _GetVIDEO: JShareMedia_Type; cdecl;
    {class} function valueOf(P1: JString): JShareMedia_Type; cdecl;//Deprecated
    {class} function values: TJavaObjectArray<JShareMedia_Type>; cdecl;//Deprecated
    {class} property PHOTO: JShareMedia_Type read _GetPHOTO;
    {class} property VIDEO: JShareMedia_Type read _GetVIDEO;
  end;

  [JavaSignature('com/facebook/share/model/ShareMedia$Type')]
  JShareMedia_Type = interface(JEnum)
    ['{05BE44F3-5531-4E9C-9BF9-54325006A45B}']
  end;
  TJShareMedia_Type = class(TJavaGenericImport<JShareMedia_TypeClass, JShareMedia_Type>) end;

  JShareMediaContentClass = interface(JShareContentClass)
    ['{ACC30051-1A80-4EA5-8511-4E56C0F548D5}']
    {class} function _GetCREATOR: JParcelable_Creator; cdecl;
    {class} function init(P1: JParcel): JShareMediaContent; cdecl; overload;//Deprecated
    {class} function init(P1: JShareMediaContent_Builder; P2: JShareMediaContent_1): JShareMediaContent; cdecl; overload;//Deprecated
    {class} property CREATOR: JParcelable_Creator read _GetCREATOR;
  end;

  [JavaSignature('com/facebook/share/model/ShareMediaContent')]
  JShareMediaContent = interface(JShareContent)
    ['{70580F66-2366-497B-90FD-5F247026E667}']
    function describeContents: Integer; cdecl;//Deprecated
    function getMedia: JList; cdecl;//Deprecated
    procedure writeToParcel(P1: JParcel; P2: Integer); cdecl;//Deprecated
  end;
  TJShareMediaContent = class(TJavaGenericImport<JShareMediaContentClass, JShareMediaContent>) end;

  JShareMediaContent_1Class = interface(JParcelable_CreatorClass)
    ['{BF555DE4-1D2F-4FF1-93E8-CC70765B6B71}']
  end;

  [JavaSignature('com/facebook/share/model/ShareMediaContent$1')]
  JShareMediaContent_1 = interface(JParcelable_Creator)
    ['{53B85524-1317-48B4-B15A-8A7430357BE6}']
    function createFromParcel(P1: JParcel): JShareMediaContent; cdecl;//Deprecated
    function newArray(P1: Integer): TJavaObjectArray<JShareMediaContent>; cdecl;//Deprecated
  end;
  TJShareMediaContent_1 = class(TJavaGenericImport<JShareMediaContent_1Class, JShareMediaContent_1>) end;

  JShareMediaContent_BuilderClass = interface(JShareContent_BuilderClass)
    ['{B5424D38-38FC-40E5-8201-5A141B08C6AC}']
    {class} function init: JShareMediaContent_Builder; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/share/model/ShareMediaContent$Builder')]
  JShareMediaContent_Builder = interface(JShareContent_Builder)
    ['{7DE1307E-7FFC-4242-8E4E-89401882D3D1}']
    function addMedia(P1: JList): JShareMediaContent_Builder; cdecl;//Deprecated
    function addMedium(P1: JShareMedia): JShareMediaContent_Builder; cdecl;//Deprecated
    function build: JShareMediaContent; cdecl;//Deprecated
    function readFrom(P1: JShareContent): JShareContent_Builder; cdecl; overload;//Deprecated
    function readFrom(P1: JShareModel): JShareModelBuilder; cdecl; overload;//Deprecated
    function readFrom(P1: JShareMediaContent): JShareMediaContent_Builder; cdecl; overload;//Deprecated
    function setMedia(P1: JList): JShareMediaContent_Builder; cdecl;//Deprecated
  end;
  TJShareMediaContent_Builder = class(TJavaGenericImport<JShareMediaContent_BuilderClass, JShareMediaContent_Builder>) end;

  JShareOpenGraphValueContainerClass = interface(JShareModelClass)
    ['{D5A73FF5-13EE-4B47-AB68-BD086B08EFDB}']
  end;

  [JavaSignature('com/facebook/share/model/ShareOpenGraphValueContainer')]
  JShareOpenGraphValueContainer = interface(JShareModel)
    ['{5AD6F660-E77E-42A0-812A-81873E13E44E}']
    function describeContents: Integer; cdecl;//Deprecated
    function get(P1: JString): JObject; cdecl;//Deprecated
    function getBoolean(P1: JString; P2: Boolean): Boolean; cdecl;//Deprecated
    function getBooleanArray(P1: JString): TJavaArray<Boolean>; cdecl;//Deprecated
    function getBundle: JBundle; cdecl;//Deprecated
    function getDouble(P1: JString; P2: Double): Double; cdecl;//Deprecated
    function getDoubleArray(P1: JString): TJavaArray<Double>; cdecl;//Deprecated
    function getInt(P1: JString; P2: Integer): Integer; cdecl;//Deprecated
    function getIntArray(P1: JString): TJavaArray<Integer>; cdecl;//Deprecated
    function getLong(P1: JString; P2: Int64): Int64; cdecl;//Deprecated
    function getLongArray(P1: JString): TJavaArray<Int64>; cdecl;//Deprecated
    function getObject(P1: JString): JShareOpenGraphObject; cdecl;//Deprecated
    function getObjectArrayList(P1: JString): JArrayList; cdecl;//Deprecated
    function getPhoto(P1: JString): JSharePhoto; cdecl;//Deprecated
    function getPhotoArrayList(P1: JString): JArrayList; cdecl;//Deprecated
    function getString(P1: JString): JString; cdecl;//Deprecated
    function getStringArrayList(P1: JString): JArrayList; cdecl;//Deprecated
    function keySet: JSet; cdecl;//Deprecated
    procedure writeToParcel(P1: JParcel; P2: Integer); cdecl;//Deprecated
  end;
  TJShareOpenGraphValueContainer = class(TJavaGenericImport<JShareOpenGraphValueContainerClass, JShareOpenGraphValueContainer>) end;

  JShareOpenGraphActionClass = interface(JShareOpenGraphValueContainerClass)
    ['{3457A333-5DF4-49FB-A4AD-A237E2E5B472}']
    {class} function _GetCREATOR: JParcelable_Creator; cdecl;
    {class} function init(P1: JParcel): JShareOpenGraphAction; cdecl; overload;//Deprecated
    {class} function init(P1: JShareOpenGraphAction_Builder; P2: JShareOpenGraphAction_1): JShareOpenGraphAction; cdecl; overload;//Deprecated
    {class} property CREATOR: JParcelable_Creator read _GetCREATOR;
  end;

  [JavaSignature('com/facebook/share/model/ShareOpenGraphAction')]
  JShareOpenGraphAction = interface(JShareOpenGraphValueContainer)
    ['{D88544BC-DBEB-407B-8DBC-64DB93959FBB}']
    function getActionType: JString; cdecl;//Deprecated
  end;
  TJShareOpenGraphAction = class(TJavaGenericImport<JShareOpenGraphActionClass, JShareOpenGraphAction>) end;

  JShareOpenGraphAction_1Class = interface(JParcelable_CreatorClass)
    ['{5EA78F86-C449-4B7D-AD9B-19EC374964A8}']
  end;

  [JavaSignature('com/facebook/share/model/ShareOpenGraphAction$1')]
  JShareOpenGraphAction_1 = interface(JParcelable_Creator)
    ['{0874167B-ACB6-4A8B-8329-32F0881ABE4A}']
    function createFromParcel(P1: JParcel): JShareOpenGraphAction; cdecl;//Deprecated
    function newArray(P1: Integer): TJavaObjectArray<JShareOpenGraphAction>; cdecl;//Deprecated
  end;
  TJShareOpenGraphAction_1 = class(TJavaGenericImport<JShareOpenGraphAction_1Class, JShareOpenGraphAction_1>) end;

  JShareOpenGraphValueContainer_BuilderClass = interface(JShareModelBuilderClass)
    ['{96BB6823-1307-4ED3-B74D-7D37F1CC709F}']
    {class} function init: JShareOpenGraphValueContainer_Builder; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/share/model/ShareOpenGraphValueContainer$Builder')]
  JShareOpenGraphValueContainer_Builder = interface(JShareModelBuilder)
    ['{C5CBE309-C29B-41B7-B270-966D515C1196}']
    function putBoolean(P1: JString; P2: Boolean): JShareOpenGraphValueContainer_Builder; cdecl;//Deprecated
    function putBooleanArray(P1: JString; P2: TJavaArray<Boolean>): JShareOpenGraphValueContainer_Builder; cdecl;//Deprecated
    function putDouble(P1: JString; P2: Double): JShareOpenGraphValueContainer_Builder; cdecl;//Deprecated
    function putDoubleArray(P1: JString; P2: TJavaArray<Double>): JShareOpenGraphValueContainer_Builder; cdecl;//Deprecated
    function putInt(P1: JString; P2: Integer): JShareOpenGraphValueContainer_Builder; cdecl;//Deprecated
    function putIntArray(P1: JString; P2: TJavaArray<Integer>): JShareOpenGraphValueContainer_Builder; cdecl;//Deprecated
    function putLong(P1: JString; P2: Int64): JShareOpenGraphValueContainer_Builder; cdecl;//Deprecated
    function putLongArray(P1: JString; P2: TJavaArray<Int64>): JShareOpenGraphValueContainer_Builder; cdecl;//Deprecated
    function putObject(P1: JString; P2: JShareOpenGraphObject): JShareOpenGraphValueContainer_Builder; cdecl;//Deprecated
    function putObjectArrayList(P1: JString; P2: JArrayList): JShareOpenGraphValueContainer_Builder; cdecl;//Deprecated
    function putPhoto(P1: JString; P2: JSharePhoto): JShareOpenGraphValueContainer_Builder; cdecl;//Deprecated
    function putPhotoArrayList(P1: JString; P2: JArrayList): JShareOpenGraphValueContainer_Builder; cdecl;//Deprecated
    function putString(P1: JString; P2: JString): JShareOpenGraphValueContainer_Builder; cdecl;//Deprecated
    function putStringArrayList(P1: JString; P2: JArrayList): JShareOpenGraphValueContainer_Builder; cdecl;//Deprecated
    function readFrom(P1: JShareModel): JShareModelBuilder; cdecl; overload;//Deprecated
    function readFrom(P1: JShareOpenGraphValueContainer): JShareOpenGraphValueContainer_Builder; cdecl; overload;//Deprecated
  end;
  TJShareOpenGraphValueContainer_Builder = class(TJavaGenericImport<JShareOpenGraphValueContainer_BuilderClass, JShareOpenGraphValueContainer_Builder>) end;

  JShareOpenGraphAction_BuilderClass = interface(JShareOpenGraphValueContainer_BuilderClass)
    ['{413AC826-0E06-4DCE-821E-D962284E5448}']
    {class} function init: JShareOpenGraphAction_Builder; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/share/model/ShareOpenGraphAction$Builder')]
  JShareOpenGraphAction_Builder = interface(JShareOpenGraphValueContainer_Builder)
    ['{5FCFBF80-DEDD-425E-A359-FBBF0D22C0E3}']
    function build: JShareOpenGraphAction; cdecl;//Deprecated
    function readFrom(P1: JShareOpenGraphValueContainer): JShareOpenGraphValueContainer_Builder; cdecl; overload;//Deprecated
    function readFrom(P1: JShareModel): JShareModelBuilder; cdecl; overload;//Deprecated
    function readFrom(P1: JShareOpenGraphAction): JShareOpenGraphAction_Builder; cdecl; overload;//Deprecated
    function setActionType(P1: JString): JShareOpenGraphAction_Builder; cdecl;//Deprecated
  end;
  TJShareOpenGraphAction_Builder = class(TJavaGenericImport<JShareOpenGraphAction_BuilderClass, JShareOpenGraphAction_Builder>) end;

  JShareOpenGraphContentClass = interface(JShareContentClass)
    ['{03CDB7F2-2E9A-4680-926F-1C3E8946AB98}']
    {class} function _GetCREATOR: JParcelable_Creator; cdecl;
    {class} function init(P1: JParcel): JShareOpenGraphContent; cdecl; overload;//Deprecated
    {class} function init(P1: JShareOpenGraphContent_Builder; P2: JShareOpenGraphContent_1): JShareOpenGraphContent; cdecl; overload;//Deprecated
    {class} property CREATOR: JParcelable_Creator read _GetCREATOR;
  end;

  [JavaSignature('com/facebook/share/model/ShareOpenGraphContent')]
  JShareOpenGraphContent = interface(JShareContent)
    ['{9AF069D1-FA9F-47D2-820D-9D93FC2F6DD3}']
    function describeContents: Integer; cdecl;//Deprecated
    function getAction: JShareOpenGraphAction; cdecl;//Deprecated
    function getPreviewPropertyName: JString; cdecl;//Deprecated
    procedure writeToParcel(P1: JParcel; P2: Integer); cdecl;//Deprecated
  end;
  TJShareOpenGraphContent = class(TJavaGenericImport<JShareOpenGraphContentClass, JShareOpenGraphContent>) end;

  JShareOpenGraphContent_1Class = interface(JParcelable_CreatorClass)
    ['{CA07D31C-1F03-434B-A415-80C6EF896BC4}']
  end;

  [JavaSignature('com/facebook/share/model/ShareOpenGraphContent$1')]
  JShareOpenGraphContent_1 = interface(JParcelable_Creator)
    ['{8090BA1F-65BB-425A-B0D1-AADD30F6C226}']
    function createFromParcel(P1: JParcel): JShareOpenGraphContent; cdecl;//Deprecated
    function newArray(P1: Integer): TJavaObjectArray<JShareOpenGraphContent>; cdecl;//Deprecated
  end;
  TJShareOpenGraphContent_1 = class(TJavaGenericImport<JShareOpenGraphContent_1Class, JShareOpenGraphContent_1>) end;

  JShareOpenGraphContent_BuilderClass = interface(JShareContent_BuilderClass)
    ['{98A575D8-6040-4993-A11A-1D267C4DB859}']
    {class} function init: JShareOpenGraphContent_Builder; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/share/model/ShareOpenGraphContent$Builder')]
  JShareOpenGraphContent_Builder = interface(JShareContent_Builder)
    ['{F2E3E2C8-29A9-428A-9490-8DB02F3046D3}']
    function build: JShareOpenGraphContent; cdecl;//Deprecated
    function readFrom(P1: JShareContent): JShareContent_Builder; cdecl; overload;//Deprecated
    function readFrom(P1: JShareModel): JShareModelBuilder; cdecl; overload;//Deprecated
    function readFrom(P1: JShareOpenGraphContent): JShareOpenGraphContent_Builder; cdecl; overload;//Deprecated
    function setAction(P1: JShareOpenGraphAction): JShareOpenGraphContent_Builder; cdecl;//Deprecated
    function setPreviewPropertyName(P1: JString): JShareOpenGraphContent_Builder; cdecl;//Deprecated
  end;
  TJShareOpenGraphContent_Builder = class(TJavaGenericImport<JShareOpenGraphContent_BuilderClass, JShareOpenGraphContent_Builder>) end;

  JShareOpenGraphObjectClass = interface(JShareOpenGraphValueContainerClass)
    ['{89AFFC20-B25A-454A-A752-A95FE1C05F29}']
    {class} function _GetCREATOR: JParcelable_Creator; cdecl;
    {class} function init(P1: JParcel): JShareOpenGraphObject; cdecl; overload;//Deprecated
    {class} function init(P1: JShareOpenGraphObject_Builder; P2: JShareOpenGraphObject_1): JShareOpenGraphObject; cdecl; overload;//Deprecated
    {class} property CREATOR: JParcelable_Creator read _GetCREATOR;
  end;

  [JavaSignature('com/facebook/share/model/ShareOpenGraphObject')]
  JShareOpenGraphObject = interface(JShareOpenGraphValueContainer)
    ['{A28030D0-4405-49CF-A432-C86C0D6814BF}']
  end;
  TJShareOpenGraphObject = class(TJavaGenericImport<JShareOpenGraphObjectClass, JShareOpenGraphObject>) end;

  JShareOpenGraphObject_1Class = interface(JParcelable_CreatorClass)
    ['{8BD0C776-F6EF-4967-BF3B-A7C116FAEE28}']
  end;

  [JavaSignature('com/facebook/share/model/ShareOpenGraphObject$1')]
  JShareOpenGraphObject_1 = interface(JParcelable_Creator)
    ['{D436185A-B593-4581-A52F-8322899A8E4E}']
    function createFromParcel(P1: JParcel): JShareOpenGraphObject; cdecl;//Deprecated
    function newArray(P1: Integer): TJavaObjectArray<JShareOpenGraphObject>; cdecl;//Deprecated
  end;
  TJShareOpenGraphObject_1 = class(TJavaGenericImport<JShareOpenGraphObject_1Class, JShareOpenGraphObject_1>) end;

  JShareOpenGraphObject_BuilderClass = interface(JShareOpenGraphValueContainer_BuilderClass)
    ['{5599148F-E589-41CC-B532-F783FBE0AD7D}']
    {class} function init: JShareOpenGraphObject_Builder; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/share/model/ShareOpenGraphObject$Builder')]
  JShareOpenGraphObject_Builder = interface(JShareOpenGraphValueContainer_Builder)
    ['{CDC89885-8351-4E3B-922C-7E80CDA3C9F8}']
    function build: JShareOpenGraphObject; cdecl;//Deprecated
  end;
  TJShareOpenGraphObject_Builder = class(TJavaGenericImport<JShareOpenGraphObject_BuilderClass, JShareOpenGraphObject_Builder>) end;

  JSharePhotoClass = interface(JShareMediaClass)
    ['{F1F7C807-5A66-45FC-8360-35BB0A42005B}']
    {class} function _GetCREATOR: JParcelable_Creator; cdecl;
    {class} function init(P1: JParcel): JSharePhoto; cdecl; overload;//Deprecated
    {class} function init(P1: JSharePhoto_Builder; P2: JSharePhoto_1): JSharePhoto; cdecl; overload;//Deprecated
    {class} property CREATOR: JParcelable_Creator read _GetCREATOR;
  end;

  [JavaSignature('com/facebook/share/model/SharePhoto')]
  JSharePhoto = interface(JShareMedia)
    ['{757128ED-34CB-4221-B7AD-87B3143C2ED6}']
    function describeContents: Integer; cdecl;//Deprecated
    function getBitmap: JBitmap; cdecl;//Deprecated
    function getCaption: JString; cdecl;//Deprecated
    function getImageUrl: Jnet_Uri; cdecl;//Deprecated
    function getMediaType: JShareMedia_Type; cdecl;//Deprecated
    function getUserGenerated: Boolean; cdecl;//Deprecated
    procedure writeToParcel(P1: JParcel; P2: Integer); cdecl;//Deprecated
  end;
  TJSharePhoto = class(TJavaGenericImport<JSharePhotoClass, JSharePhoto>) end;

  JSharePhoto_1Class = interface(JParcelable_CreatorClass)
    ['{FCC0B671-A613-491F-8CF1-552B055AD224}']
  end;

  [JavaSignature('com/facebook/share/model/SharePhoto$1')]
  JSharePhoto_1 = interface(JParcelable_Creator)
    ['{5695C99F-9395-4D8B-9FA4-08544A8E0504}']
    function createFromParcel(P1: JParcel): JSharePhoto; cdecl;//Deprecated
    function newArray(P1: Integer): TJavaObjectArray<JSharePhoto>; cdecl;//Deprecated
  end;
  TJSharePhoto_1 = class(TJavaGenericImport<JSharePhoto_1Class, JSharePhoto_1>) end;

  JSharePhoto_BuilderClass = interface(JShareMedia_BuilderClass)
    ['{65C20E48-5817-45F0-8355-62F59886C447}']
    {class} function init: JSharePhoto_Builder; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/share/model/SharePhoto$Builder')]
  JSharePhoto_Builder = interface(JShareMedia_Builder)
    ['{403B810F-24DA-44F4-9D36-BF7C0983E072}']
    function build: JSharePhoto; cdecl;//Deprecated
    function readFrom(P1: JSharePhoto): JSharePhoto_Builder; cdecl; overload;//Deprecated
    function readFrom(P1: JShareModel): JShareModelBuilder; cdecl; overload;//Deprecated
    function readFrom(P1: JShareMedia): JShareMedia_Builder; cdecl; overload;//Deprecated
    function setBitmap(P1: JBitmap): JSharePhoto_Builder; cdecl;//Deprecated
    function setCaption(P1: JString): JSharePhoto_Builder; cdecl;//Deprecated
    function setImageUrl(P1: Jnet_Uri): JSharePhoto_Builder; cdecl;//Deprecated
    function setUserGenerated(P1: Boolean): JSharePhoto_Builder; cdecl;//Deprecated
  end;
  TJSharePhoto_Builder = class(TJavaGenericImport<JSharePhoto_BuilderClass, JSharePhoto_Builder>) end;

  JSharePhotoContentClass = interface(JShareContentClass)
    ['{9DD7C3C8-7A16-40A6-BB43-44DEE5D6CA6F}']
    {class} function _GetCREATOR: JParcelable_Creator; cdecl;
    {class} function init(P1: JParcel): JSharePhotoContent; cdecl; overload;//Deprecated
    {class} function init(P1: JSharePhotoContent_Builder; P2: JSharePhotoContent_1): JSharePhotoContent; cdecl; overload;//Deprecated
    {class} property CREATOR: JParcelable_Creator read _GetCREATOR;
  end;

  [JavaSignature('com/facebook/share/model/SharePhotoContent')]
  JSharePhotoContent = interface(JShareContent)
    ['{B8490549-3AAC-4CAA-B47A-0A3DA22C062D}']
    function describeContents: Integer; cdecl;//Deprecated
    function getPhotos: JList; cdecl;//Deprecated
    procedure writeToParcel(P1: JParcel; P2: Integer); cdecl;//Deprecated
  end;
  TJSharePhotoContent = class(TJavaGenericImport<JSharePhotoContentClass, JSharePhotoContent>) end;

  JSharePhotoContent_1Class = interface(JParcelable_CreatorClass)
    ['{C900A57D-CECC-4C1C-96FC-B1EA311BC667}']
  end;

  [JavaSignature('com/facebook/share/model/SharePhotoContent$1')]
  JSharePhotoContent_1 = interface(JParcelable_Creator)
    ['{B83E3435-6A52-45B6-A7D3-A7EC15F8F4FA}']
    function createFromParcel(P1: JParcel): JSharePhotoContent; cdecl;//Deprecated
    function newArray(P1: Integer): TJavaObjectArray<JSharePhotoContent>; cdecl;//Deprecated
  end;
  TJSharePhotoContent_1 = class(TJavaGenericImport<JSharePhotoContent_1Class, JSharePhotoContent_1>) end;

  JSharePhotoContent_BuilderClass = interface(JShareContent_BuilderClass)
    ['{1952CAF5-092E-4B6A-A5E8-AB3552293A13}']
    {class} function init: JSharePhotoContent_Builder; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/share/model/SharePhotoContent$Builder')]
  JSharePhotoContent_Builder = interface(JShareContent_Builder)
    ['{B0FE179B-3C5F-453A-8603-6CFC1B1601DE}']
    function addPhoto(P1: JSharePhoto): JSharePhotoContent_Builder; cdecl;//Deprecated
    function addPhotos(P1: JList): JSharePhotoContent_Builder; cdecl;//Deprecated
    function build: JSharePhotoContent; cdecl;//Deprecated
    function readFrom(P1: JShareContent): JShareContent_Builder; cdecl; overload;//Deprecated
    function readFrom(P1: JShareModel): JShareModelBuilder; cdecl; overload;//Deprecated
    function readFrom(P1: JSharePhotoContent): JSharePhotoContent_Builder; cdecl; overload;//Deprecated
    function setPhotos(P1: JList): JSharePhotoContent_Builder; cdecl;//Deprecated
  end;
  TJSharePhotoContent_Builder = class(TJavaGenericImport<JSharePhotoContent_BuilderClass, JSharePhotoContent_Builder>) end;

  JShareVideoClass = interface(JShareMediaClass)
    ['{A1AEC1D5-F0C1-48CF-8393-7407E1118AD7}']
    {class} function _GetCREATOR: JParcelable_Creator; cdecl;
    {class} function init(P1: JParcel): JShareVideo; cdecl; overload;//Deprecated
    {class} function init(P1: JShareVideo_Builder; P2: JShareVideo_1): JShareVideo; cdecl; overload;//Deprecated
    {class} property CREATOR: JParcelable_Creator read _GetCREATOR;
  end;

  [JavaSignature('com/facebook/share/model/ShareVideo')]
  JShareVideo = interface(JShareMedia)
    ['{0701320A-6B78-4B6C-8B7F-F9CCD2EEAD71}']
    function describeContents: Integer; cdecl;//Deprecated
    function getLocalUrl: Jnet_Uri; cdecl;//Deprecated
    function getMediaType: JShareMedia_Type; cdecl;//Deprecated
    procedure writeToParcel(P1: JParcel; P2: Integer); cdecl;//Deprecated
  end;
  TJShareVideo = class(TJavaGenericImport<JShareVideoClass, JShareVideo>) end;

  JShareVideo_1Class = interface(JParcelable_CreatorClass)
    ['{A15BF922-0C71-4687-A491-F28FD68553AA}']
  end;

  [JavaSignature('com/facebook/share/model/ShareVideo$1')]
  JShareVideo_1 = interface(JParcelable_Creator)
    ['{F2906740-95E8-48DC-A366-6ABCC3E5C20A}']
    function createFromParcel(P1: JParcel): JShareVideo; cdecl;//Deprecated
    function newArray(P1: Integer): TJavaObjectArray<JShareVideo>; cdecl;//Deprecated
  end;
  TJShareVideo_1 = class(TJavaGenericImport<JShareVideo_1Class, JShareVideo_1>) end;

  JShareVideo_BuilderClass = interface(JShareMedia_BuilderClass)
    ['{AB7DF851-9482-46A5-B1FB-E2B6F7B069A9}']
    {class} function init: JShareVideo_Builder; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/share/model/ShareVideo$Builder')]
  JShareVideo_Builder = interface(JShareMedia_Builder)
    ['{3A2C3ABD-1E9E-4B10-A398-4B7868308B9A}']
    function build: JShareVideo; cdecl;//Deprecated
    function readFrom(P1: JShareMedia): JShareMedia_Builder; cdecl; overload;//Deprecated
    function readFrom(P1: JShareModel): JShareModelBuilder; cdecl; overload;//Deprecated
    function readFrom(P1: JShareVideo): JShareVideo_Builder; cdecl; overload;//Deprecated
    function setLocalUrl(P1: Jnet_Uri): JShareVideo_Builder; cdecl;//Deprecated
  end;
  TJShareVideo_Builder = class(TJavaGenericImport<JShareVideo_BuilderClass, JShareVideo_Builder>) end;

  JShareVideoContentClass = interface(JShareContentClass)
    ['{DEE76414-79EB-4829-B73C-4D8FD601F303}']
    {class} function _GetCREATOR: JParcelable_Creator; cdecl;
    {class} function init(P1: JParcel): JShareVideoContent; cdecl; overload;//Deprecated
    {class} function init(P1: JShareVideoContent_Builder; P2: JShareVideoContent_1): JShareVideoContent; cdecl; overload;//Deprecated
    {class} property CREATOR: JParcelable_Creator read _GetCREATOR;
  end;

  [JavaSignature('com/facebook/share/model/ShareVideoContent')]
  JShareVideoContent = interface(JShareContent)
    ['{16AA8750-BAB8-4DB8-8B2E-201B4B9CAD66}']
    function describeContents: Integer; cdecl;//Deprecated
    function getContentDescription: JString; cdecl;//Deprecated
    function getContentTitle: JString; cdecl;//Deprecated
    function getPreviewPhoto: JSharePhoto; cdecl;//Deprecated
    function getVideo: JShareVideo; cdecl;//Deprecated
    procedure writeToParcel(P1: JParcel; P2: Integer); cdecl;//Deprecated
  end;
  TJShareVideoContent = class(TJavaGenericImport<JShareVideoContentClass, JShareVideoContent>) end;

  JShareVideoContent_1Class = interface(JParcelable_CreatorClass)
    ['{F5227D13-6008-4AD3-A74D-ED663A7BAE4E}']
  end;

  [JavaSignature('com/facebook/share/model/ShareVideoContent$1')]
  JShareVideoContent_1 = interface(JParcelable_Creator)
    ['{FE45A7D7-9348-4809-9529-3D30A1A7D704}']
    function createFromParcel(P1: JParcel): JShareVideoContent; cdecl;//Deprecated
    function newArray(P1: Integer): TJavaObjectArray<JShareVideoContent>; cdecl;//Deprecated
  end;
  TJShareVideoContent_1 = class(TJavaGenericImport<JShareVideoContent_1Class, JShareVideoContent_1>) end;

  JShareVideoContent_BuilderClass = interface(JShareContent_BuilderClass)
    ['{BC07A61B-443D-4E64-A485-B6CB528B894F}']
    {class} function init: JShareVideoContent_Builder; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/share/model/ShareVideoContent$Builder')]
  JShareVideoContent_Builder = interface(JShareContent_Builder)
    ['{CE8720D9-1DD4-4AD6-A352-B807BEF48A7B}']
    function build: JShareVideoContent; cdecl;//Deprecated
    function readFrom(P1: JShareModel): JShareModelBuilder; cdecl; overload;//Deprecated
    function readFrom(P1: JShareVideoContent): JShareVideoContent_Builder; cdecl; overload;//Deprecated
    function readFrom(P1: JShareContent): JShareContent_Builder; cdecl; overload;//Deprecated
    function setContentDescription(P1: JString): JShareVideoContent_Builder; cdecl;//Deprecated
    function setContentTitle(P1: JString): JShareVideoContent_Builder; cdecl;//Deprecated
    function setPreviewPhoto(P1: JSharePhoto): JShareVideoContent_Builder; cdecl;//Deprecated
    function setVideo(P1: JShareVideo): JShareVideoContent_Builder; cdecl;//Deprecated
  end;
  TJShareVideoContent_Builder = class(TJavaGenericImport<JShareVideoContent_BuilderClass, JShareVideoContent_Builder>) end;

  JAppInviteDialogClass = interface(JFacebookDialogBaseClass)
    ['{3715C82A-B481-4DB5-B31D-4838C28B5373}']
    {class} function canShow: Boolean; cdecl;//Deprecated
    {class} //function init(P1: Japp_Fragment): JAppInviteDialog; cdecl; overload;//Deprecated
    {class} function init(P1: JFragment): JAppInviteDialog; cdecl; overload;//Deprecated
    {class} function init(P1: JActivity): JAppInviteDialog; cdecl; overload;//Deprecated
    {class} procedure show(P1: JActivity; P2: JAppInviteContent); cdecl; overload;//Deprecated
    {class} //procedure show(P1: Japp_Fragment; P2: JAppInviteContent); cdecl; overload;//Deprecated
    {class} procedure show(P1: JFragment; P2: JAppInviteContent); cdecl; overload;//Deprecated
  end;

  [JavaSignature('com/facebook/share/widget/AppInviteDialog')]
  JAppInviteDialog = interface(JFacebookDialogBase)
    ['{39659101-E8E4-418E-9DDF-72FEEF348090}']
  end;
  TJAppInviteDialog = class(TJavaGenericImport<JAppInviteDialogClass, JAppInviteDialog>) end;

  JAppInviteDialog_1Class = interface(JResultProcessorClass)
    ['{29BD5C49-70BD-4A98-B070-75F9273D9DAF}']
    {class} function init(P1: JAppInviteDialog; P2: JFacebookCallback; P3: JFacebookCallback): JAppInviteDialog_1; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/share/widget/AppInviteDialog$1')]
  JAppInviteDialog_1 = interface(JResultProcessor)
    ['{15840E06-1551-4A06-BF51-3472D9A6AA7D}']
//    function _Getthis$0: JAppInviteDialog; cdecl;
    procedure onSuccess(P1: JAppCall; P2: JBundle); cdecl;//Deprecated
//    property this$0: JAppInviteDialog read _Getthis$0;
  end;
  TJAppInviteDialog_1 = class(TJavaGenericImport<JAppInviteDialog_1Class, JAppInviteDialog_1>) end;

  JAppInviteDialog_2Class = interface(JCallbackManagerImpl_CallbackClass)
    ['{A112C57F-AB1B-40BB-8F52-6F7E5CF9E381}']
    {class} function init(P1: JAppInviteDialog; P2: JResultProcessor): JAppInviteDialog_2; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/share/widget/AppInviteDialog$2')]
  JAppInviteDialog_2 = interface(JCallbackManagerImpl_Callback)
    ['{F91DF170-F81B-4ED8-B4BA-B6AA3DD62ECA}']
//    function _Getthis$0: JAppInviteDialog; cdecl;
    function onActivityResult(P1: Integer; P2: JIntent): Boolean; cdecl;//Deprecated
//    property this$0: JAppInviteDialog read _Getthis$0;
  end;
  TJAppInviteDialog_2 = class(TJavaGenericImport<JAppInviteDialog_2Class, JAppInviteDialog_2>) end;

  JAppInviteDialog_NativeHandlerClass = interface(JFacebookDialogBaseClass)
    ['{E2C17C38-58C9-45C6-B47C-CE5D1C53BE64}']
    {class} function init(P1: JAppInviteDialog; P2: JAppInviteDialog_1): JAppInviteDialog_NativeHandler; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/share/widget/AppInviteDialog$NativeHandler')]
  JAppInviteDialog_NativeHandler = interface(JFacebookDialogBase)
    ['{800076CE-F767-4D30-8F4C-570233AB83BF}']
    function canShow(P1: JObject; P2: Boolean): Boolean; cdecl; overload;//Deprecated
    function canShow(P1: JAppInviteContent; P2: Boolean): Boolean; cdecl; overload;//Deprecated
    function createAppCall(P1: JObject): JAppCall; cdecl; overload;//Deprecated
    function createAppCall(P1: JAppInviteContent): JAppCall; cdecl; overload;//Deprecated
  end;
  TJAppInviteDialog_NativeHandler = class(TJavaGenericImport<JAppInviteDialog_NativeHandlerClass, JAppInviteDialog_NativeHandler>) end;

  JAppInviteDialog_NativeHandler_1Class = interface(JDialogPresenter_ParameterProviderClass)
    ['{7A82FE05-CE43-479D-9A91-237B150B6C9C}']
    {class} function init(P1: JAppInviteDialog_NativeHandler; P2: JAppInviteContent): JAppInviteDialog_NativeHandler_1; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/share/widget/AppInviteDialog$NativeHandler$1')]
  JAppInviteDialog_NativeHandler_1 = interface(JDialogPresenter_ParameterProvider)
    ['{FDA338EE-6408-4206-B0AE-508F3EEA14AC}']
//    function _Getthis$1: JAppInviteDialog_NativeHandler; cdecl;
    function getLegacyParameters: JBundle; cdecl;//Deprecated
    function getParameters: JBundle; cdecl;//Deprecated
//    property this$1: JAppInviteDialog_NativeHandler read _Getthis$1;
  end;
  TJAppInviteDialog_NativeHandler_1 = class(TJavaGenericImport<JAppInviteDialog_NativeHandler_1Class, JAppInviteDialog_NativeHandler_1>) end;

  JAppInviteDialog_ResultClass = interface(JObjectClass)
    ['{37446ED7-074A-49D8-A4BF-9F9A9138CBE0}']
    {class} function init(P1: JBundle): JAppInviteDialog_Result; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/share/widget/AppInviteDialog$Result')]
  JAppInviteDialog_Result = interface(JObject)
    ['{5D32454D-504A-4EAC-94B2-0898B36D4504}']
    function getData: JBundle; cdecl;//Deprecated
  end;
  TJAppInviteDialog_Result = class(TJavaGenericImport<JAppInviteDialog_ResultClass, JAppInviteDialog_Result>) end;

  JAppInviteDialog_WebFallbackHandlerClass = interface(JFacebookDialogBaseClass)
    ['{719A2813-73FB-4242-AAAE-2BEED8ADA5C0}']
    {class} function init(P1: JAppInviteDialog; P2: JAppInviteDialog_1): JAppInviteDialog_WebFallbackHandler; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/share/widget/AppInviteDialog$WebFallbackHandler')]
  JAppInviteDialog_WebFallbackHandler = interface(JFacebookDialogBase)
    ['{58AE3FD8-C609-444F-A473-4D59DEB2FEE8}']
    function canShow(P1: JObject; P2: Boolean): Boolean; cdecl; overload;//Deprecated
    function canShow(P1: JAppInviteContent; P2: Boolean): Boolean; cdecl; overload;//Deprecated
    function createAppCall(P1: JObject): JAppCall; cdecl; overload;//Deprecated
    function createAppCall(P1: JAppInviteContent): JAppCall; cdecl; overload;//Deprecated
  end;
  TJAppInviteDialog_WebFallbackHandler = class(TJavaGenericImport<JAppInviteDialog_WebFallbackHandlerClass, JAppInviteDialog_WebFallbackHandler>) end;

  JCreateAppGroupDialogClass = interface(JFacebookDialogBaseClass)
    ['{DDB6060B-15A5-4EDC-8BBE-D9FFE7AAE74C}']
    {class} function canShow: Boolean; cdecl;//Deprecated
    {class} //function init(P1: Japp_Fragment): JCreateAppGroupDialog; cdecl; overload;//Deprecated
    {class} function init(P1: JFragment): JCreateAppGroupDialog; cdecl; overload;//Deprecated
    {class} function init(P1: JActivity): JCreateAppGroupDialog; cdecl; overload;//Deprecated
    {class} procedure show(P1: JActivity; P2: JAppGroupCreationContent); cdecl; overload;//Deprecated
    {class} //procedure show(P1: Japp_Fragment; P2: JAppGroupCreationContent); cdecl; overload;//Deprecated
    {class} procedure show(P1: JFragment; P2: JAppGroupCreationContent); cdecl; overload;//Deprecated
  end;

  [JavaSignature('com/facebook/share/widget/CreateAppGroupDialog')]
  JCreateAppGroupDialog = interface(JFacebookDialogBase)
    ['{B3AD589F-4FC5-41CF-8278-41D24F5E405B}']
  end;
  TJCreateAppGroupDialog = class(TJavaGenericImport<JCreateAppGroupDialogClass, JCreateAppGroupDialog>) end;

  JCreateAppGroupDialog_1Class = interface(JResultProcessorClass)
    ['{71E07D06-9D89-4A84-AE8E-09588B9B7B23}']
    {class} function init(P1: JCreateAppGroupDialog; P2: JFacebookCallback; P3: JFacebookCallback): JCreateAppGroupDialog_1; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/share/widget/CreateAppGroupDialog$1')]
  JCreateAppGroupDialog_1 = interface(JResultProcessor)
    ['{03B29191-D913-433F-81EC-6FD75515CAFA}']
//    function _Getthis$0: JCreateAppGroupDialog; cdecl;
    procedure onSuccess(P1: JAppCall; P2: JBundle); cdecl;//Deprecated
//    property this$0: JCreateAppGroupDialog read _Getthis$0;
  end;
  TJCreateAppGroupDialog_1 = class(TJavaGenericImport<JCreateAppGroupDialog_1Class, JCreateAppGroupDialog_1>) end;

  JCreateAppGroupDialog_2Class = interface(JCallbackManagerImpl_CallbackClass)
    ['{98E64188-B300-41D7-8AEB-C1FDE24F3E7B}']
    {class} function init(P1: JCreateAppGroupDialog; P2: JResultProcessor): JCreateAppGroupDialog_2; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/share/widget/CreateAppGroupDialog$2')]
  JCreateAppGroupDialog_2 = interface(JCallbackManagerImpl_Callback)
    ['{FC4E3C1C-3D16-45F4-BF04-7009BF7D612A}']
//    function _Getthis$0: JCreateAppGroupDialog; cdecl;
    function onActivityResult(P1: Integer; P2: JIntent): Boolean; cdecl;//Deprecated
//    property this$0: JCreateAppGroupDialog read _Getthis$0;
  end;
  TJCreateAppGroupDialog_2 = class(TJavaGenericImport<JCreateAppGroupDialog_2Class, JCreateAppGroupDialog_2>) end;

  JCreateAppGroupDialog_ResultClass = interface(JObjectClass)
    ['{A17AA009-6380-4EF3-AD66-6F49837FF9C2}']
  end;

  [JavaSignature('com/facebook/share/widget/CreateAppGroupDialog$Result')]
  JCreateAppGroupDialog_Result = interface(JObject)
    ['{0B4569AB-CAC3-4949-ABFC-3A12CBEF9F76}']
    function getId: JString; cdecl;//Deprecated
  end;
  TJCreateAppGroupDialog_Result = class(TJavaGenericImport<JCreateAppGroupDialog_ResultClass, JCreateAppGroupDialog_Result>) end;

  JCreateAppGroupDialog_WebHandlerClass = interface(JFacebookDialogBaseClass)
    ['{653DFF24-4B15-41A7-A3CD-33384D192D04}']
    {class} function init(P1: JCreateAppGroupDialog; P2: JCreateAppGroupDialog_1): JCreateAppGroupDialog_WebHandler; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/share/widget/CreateAppGroupDialog$WebHandler')]
  JCreateAppGroupDialog_WebHandler = interface(JFacebookDialogBase)
    ['{D468FF6F-46DE-4E08-BE91-F00241FEFCF7}']
    function canShow(P1: JObject; P2: Boolean): Boolean; cdecl; overload;//Deprecated
    function canShow(P1: JAppGroupCreationContent; P2: Boolean): Boolean; cdecl; overload;//Deprecated
    function createAppCall(P1: JObject): JAppCall; cdecl; overload;//Deprecated
    function createAppCall(P1: JAppGroupCreationContent): JAppCall; cdecl; overload;//Deprecated
  end;
  TJCreateAppGroupDialog_WebHandler = class(TJavaGenericImport<JCreateAppGroupDialog_WebHandlerClass, JCreateAppGroupDialog_WebHandler>) end;

  JDeviceShareButtonClass = interface(JFacebookButtonBaseClass)
    ['{C93EEECF-D3D9-4A20-BFC9-A38B05F7EB9B}']
    {class} function init(P1: JContext): JDeviceShareButton; cdecl; overload;//Deprecated
    {class} function init(P1: JContext; P2: JAttributeSet): JDeviceShareButton; cdecl; overload;//Deprecated
  end;

  [JavaSignature('com/facebook/share/widget/DeviceShareButton')]
  JDeviceShareButton = interface(JFacebookButtonBase)
    ['{CC69E231-3E2E-4137-899F-9FFB3D66E441}']
    function getRequestCode: Integer; cdecl;//Deprecated
    function getShareContent: JShareContent; cdecl;//Deprecated
    procedure registerCallback(P1: JCallbackManager; P2: JFacebookCallback); cdecl; overload;//Deprecated
    procedure registerCallback(P1: JCallbackManager; P2: JFacebookCallback; P3: Integer); cdecl; overload;//Deprecated
    procedure setEnabled(P1: Boolean); cdecl;//Deprecated
    procedure setShareContent(P1: JShareContent); cdecl;//Deprecated
  end;
  TJDeviceShareButton = class(TJavaGenericImport<JDeviceShareButtonClass, JDeviceShareButton>) end;

  JDeviceShareButton_1Class = interface(JView_OnClickListenerClass)
    ['{5AE4AA48-F250-4AA0-961A-F2DF22095265}']
    {class} function init(P1: JDeviceShareButton): JDeviceShareButton_1; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/share/widget/DeviceShareButton$1')]
  JDeviceShareButton_1 = interface(JView_OnClickListener)
    ['{94BF96C0-F4EB-409C-8574-74B2E416318E}']
    procedure onClick(P1: JView); cdecl;//Deprecated
  end;
  TJDeviceShareButton_1 = class(TJavaGenericImport<JDeviceShareButton_1Class, JDeviceShareButton_1>) end;

  JGameRequestDialogClass = interface(JFacebookDialogBaseClass)
    ['{8E4CD70B-ED3F-4909-88B1-16DAD6007B5F}']
    {class} function canShow: Boolean; cdecl;//Deprecated
    {class} //function init(P1: Japp_Fragment): JGameRequestDialog; cdecl; overload;//Deprecated
    {class} function init(P1: JFragment): JGameRequestDialog; cdecl; overload;//Deprecated
    {class} function init(P1: JActivity): JGameRequestDialog; cdecl; overload;//Deprecated
    {class} procedure show(P1: JActivity; P2: JGameRequestContent); cdecl; overload;//Deprecated
    {class} //procedure show(P1: Japp_Fragment; P2: JGameRequestContent); cdecl; overload;//Deprecated
    {class} procedure show(P1: JFragment; P2: JGameRequestContent); cdecl; overload;//Deprecated
  end;

  [JavaSignature('com/facebook/share/widget/GameRequestDialog')]
  JGameRequestDialog = interface(JFacebookDialogBase)
    ['{527A13FA-5AD4-49CF-B9FB-39436A340FBA}']
  end;
  TJGameRequestDialog = class(TJavaGenericImport<JGameRequestDialogClass, JGameRequestDialog>) end;

  JGameRequestDialog_1Class = interface(JResultProcessorClass)
    ['{9C25BD8C-27EB-4091-AE18-9B1C44C2B0AB}']
    {class} function init(P1: JGameRequestDialog; P2: JFacebookCallback; P3: JFacebookCallback): JGameRequestDialog_1; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/share/widget/GameRequestDialog$1')]
  JGameRequestDialog_1 = interface(JResultProcessor)
    ['{EF17AC77-5F86-4B2D-9C25-5581A655DCB6}']
//    function _Getthis$0: JGameRequestDialog; cdecl;
    procedure onSuccess(P1: JAppCall; P2: JBundle); cdecl;//Deprecated
//    property this$0: JGameRequestDialog read _Getthis$0;
  end;
  TJGameRequestDialog_1 = class(TJavaGenericImport<JGameRequestDialog_1Class, JGameRequestDialog_1>) end;

  JGameRequestDialog_2Class = interface(JCallbackManagerImpl_CallbackClass)
    ['{8BDE8020-FDD9-4EF5-8CE0-1894793D42ED}']
    {class} function init(P1: JGameRequestDialog; P2: JResultProcessor): JGameRequestDialog_2; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/share/widget/GameRequestDialog$2')]
  JGameRequestDialog_2 = interface(JCallbackManagerImpl_Callback)
    ['{C9016E88-D5CD-4FB1-8105-6092DB3A087B}']
//    function _Getthis$0: JGameRequestDialog; cdecl;
    function onActivityResult(P1: Integer; P2: JIntent): Boolean; cdecl;//Deprecated
//    property this$0: JGameRequestDialog read _Getthis$0;
  end;
  TJGameRequestDialog_2 = class(TJavaGenericImport<JGameRequestDialog_2Class, JGameRequestDialog_2>) end;

  JGameRequestDialog_ResultClass = interface(JObjectClass)
    ['{92B6464B-33BB-4A2B-9D14-4FE1E2995796}']
    {class} function init(P1: JBundle; P2: JGameRequestDialog_1): JGameRequestDialog_Result; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/share/widget/GameRequestDialog$Result')]
  JGameRequestDialog_Result = interface(JObject)
    ['{02A2A24E-7DA0-4B40-B618-6DD2DDFBC05D}']
    function _Getto: JList; cdecl;
    procedure _Setto(Value: JList); cdecl;
    function getRequestId: JString; cdecl;//Deprecated
    function getRequestRecipients: JList; cdecl;//Deprecated
    property &to: JList read _Getto write _Setto;
  end;
  TJGameRequestDialog_Result = class(TJavaGenericImport<JGameRequestDialog_ResultClass, JGameRequestDialog_Result>) end;

  JGameRequestDialog_WebHandlerClass = interface(JFacebookDialogBaseClass)
    ['{5B672F13-778D-407E-A272-1908F5F9A2A8}']
    {class} function init(P1: JGameRequestDialog; P2: JGameRequestDialog_1): JGameRequestDialog_WebHandler; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/share/widget/GameRequestDialog$WebHandler')]
  JGameRequestDialog_WebHandler = interface(JFacebookDialogBase)
    ['{ED2E9D82-3F81-451B-8133-68480CBC6F45}']
    function canShow(P1: JObject; P2: Boolean): Boolean; cdecl; overload;//Deprecated
    function canShow(P1: JGameRequestContent; P2: Boolean): Boolean; cdecl; overload;//Deprecated
    function createAppCall(P1: JObject): JAppCall; cdecl; overload;//Deprecated
    function createAppCall(P1: JGameRequestContent): JAppCall; cdecl; overload;//Deprecated
  end;
  TJGameRequestDialog_WebHandler = class(TJavaGenericImport<JGameRequestDialog_WebHandlerClass, JGameRequestDialog_WebHandler>) end;

  JJoinAppGroupDialogClass = interface(JFacebookDialogBaseClass)
    ['{E49E9104-27C6-4AC0-BE0A-97E9F9D39184}']
    {class} function canShow: Boolean; cdecl;//Deprecated
    {class} //function init(P1: Japp_Fragment): JJoinAppGroupDialog; cdecl; overload;//Deprecated
    {class} function init(P1: JFragment): JJoinAppGroupDialog; cdecl; overload;//Deprecated
    {class} function init(P1: JActivity): JJoinAppGroupDialog; cdecl; overload;//Deprecated
    {class} procedure show(P1: JActivity; P2: JString); cdecl; overload;//Deprecated
    {class} //procedure show(P1: Japp_Fragment; P2: JString); cdecl; overload;//Deprecated
    {class} procedure show(P1: JFragment; P2: JString); cdecl; overload;//Deprecated
  end;

  [JavaSignature('com/facebook/share/widget/JoinAppGroupDialog')]
  JJoinAppGroupDialog = interface(JFacebookDialogBase)
    ['{D2AFAD61-ACCA-46A4-82AD-D407567FA26D}']
  end;
  TJJoinAppGroupDialog = class(TJavaGenericImport<JJoinAppGroupDialogClass, JJoinAppGroupDialog>) end;

  JJoinAppGroupDialog_1Class = interface(JResultProcessorClass)
    ['{8D14C332-72F0-4355-BE4F-6DD6BCC78E09}']
    {class} function init(P1: JJoinAppGroupDialog; P2: JFacebookCallback; P3: JFacebookCallback): JJoinAppGroupDialog_1; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/share/widget/JoinAppGroupDialog$1')]
  JJoinAppGroupDialog_1 = interface(JResultProcessor)
    ['{AB79D4EF-6E5F-4BAF-BBE1-9AFED2993200}']
//    function _Getthis$0: JJoinAppGroupDialog; cdecl;
    procedure onSuccess(P1: JAppCall; P2: JBundle); cdecl;//Deprecated
//    property this$0: JJoinAppGroupDialog read _Getthis$0;
  end;
  TJJoinAppGroupDialog_1 = class(TJavaGenericImport<JJoinAppGroupDialog_1Class, JJoinAppGroupDialog_1>) end;

  JJoinAppGroupDialog_2Class = interface(JCallbackManagerImpl_CallbackClass)
    ['{E771A832-AE65-4FA9-A46C-7A1F0381F62A}']
    {class} function init(P1: JJoinAppGroupDialog; P2: JResultProcessor): JJoinAppGroupDialog_2; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/share/widget/JoinAppGroupDialog$2')]
  JJoinAppGroupDialog_2 = interface(JCallbackManagerImpl_Callback)
    ['{6DF0B35C-635A-45A3-8EF5-8FA34A2A3050}']
//    function _Getthis$0: JJoinAppGroupDialog; cdecl;
    function onActivityResult(P1: Integer; P2: JIntent): Boolean; cdecl;//Deprecated
//    property this$0: JJoinAppGroupDialog read _Getthis$0;
  end;
  TJJoinAppGroupDialog_2 = class(TJavaGenericImport<JJoinAppGroupDialog_2Class, JJoinAppGroupDialog_2>) end;

  JJoinAppGroupDialog_ResultClass = interface(JObjectClass)
    ['{8804FB4C-2318-4FEF-BA30-58455676CE40}']
  end;

  [JavaSignature('com/facebook/share/widget/JoinAppGroupDialog$Result')]
  JJoinAppGroupDialog_Result = interface(JObject)
    ['{A85A4D2A-E333-4DC2-BFB0-8BEF26243796}']
    function getData: JBundle; cdecl;//Deprecated
  end;
  TJJoinAppGroupDialog_Result = class(TJavaGenericImport<JJoinAppGroupDialog_ResultClass, JJoinAppGroupDialog_Result>) end;

  JJoinAppGroupDialog_WebHandlerClass = interface(JFacebookDialogBaseClass)
    ['{BD7239FE-9901-4318-8B72-27CA6D1A0651}']
    {class} function init(P1: JJoinAppGroupDialog; P2: JJoinAppGroupDialog_1): JJoinAppGroupDialog_WebHandler; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/share/widget/JoinAppGroupDialog$WebHandler')]
  JJoinAppGroupDialog_WebHandler = interface(JFacebookDialogBase)
    ['{091E1608-4459-49E9-BAD4-7D3882DFF55B}']
    function canShow(P1: JObject; P2: Boolean): Boolean; cdecl; overload;//Deprecated
    function canShow(P1: JString; P2: Boolean): Boolean; cdecl; overload;//Deprecated
    function createAppCall(P1: JObject): JAppCall; cdecl; overload;//Deprecated
    function createAppCall(P1: JString): JAppCall; cdecl; overload;//Deprecated
  end;
  TJJoinAppGroupDialog_WebHandler = class(TJavaGenericImport<JJoinAppGroupDialog_WebHandlerClass, JJoinAppGroupDialog_WebHandler>) end;

  JLikeViewClass = interface(JFrameLayoutClass)
    ['{088B9B1A-372D-4E56-BF20-B274A9D0A4DF}']
    {class} function init(P1: JContext): JLikeView; cdecl; overload;//Deprecated
    {class} function init(P1: JContext; P2: JAttributeSet): JLikeView; cdecl; overload;//Deprecated
  end;

  [JavaSignature('com/facebook/share/widget/LikeView')]
  JLikeView = interface(JFrameLayout)
    ['{82EA81A8-4C6D-4293-8142-A889CF8F70E0}']
    function getOnErrorListener: JLikeView_OnErrorListener; cdecl;//Deprecated
    procedure setAuxiliaryViewPosition(P1: JLikeView_AuxiliaryViewPosition); cdecl;//Deprecated
    procedure setEnabled(P1: Boolean); cdecl;//Deprecated
    procedure setForegroundColor(P1: Integer); cdecl;//Deprecated
    //procedure setFragment(P1: Japp_Fragment); cdecl; overload;//Deprecated
    procedure setFragment(P1: JFragment); cdecl; overload;//Deprecated
    procedure setHorizontalAlignment(P1: JLikeView_HorizontalAlignment); cdecl;//Deprecated
    procedure setLikeViewStyle(P1: JLikeView_Style); cdecl;//Deprecated
    procedure setObjectIdAndType(P1: JString; P2: JLikeView_ObjectType); cdecl;//Deprecated
    procedure setOnErrorListener(P1: JLikeView_OnErrorListener); cdecl;//Deprecated
  end;
  TJLikeView = class(TJavaGenericImport<JLikeViewClass, JLikeView>) end;

  JLikeView_1Class = interface(JView_OnClickListenerClass)
    ['{09E4B7EC-52B5-4963-92A4-041FFA05FBAB}']
    {class} function init(P1: JLikeView): JLikeView_1; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/share/widget/LikeView$1')]
  JLikeView_1 = interface(JView_OnClickListener)
    ['{B87F0B24-0ED5-418A-97DF-7FBE1F35B2DE}']
    procedure onClick(P1: JView); cdecl;//Deprecated
  end;
  TJLikeView_1 = class(TJavaGenericImport<JLikeView_1Class, JLikeView_1>) end;

  JLikeView_2Class = interface(JObjectClass)
    ['{97F8737B-6BB8-4B27-88EF-A3648ABBAA48}']
  end;

  [JavaSignature('com/facebook/share/widget/LikeView$2')]
  JLikeView_2 = interface(JObject)
    ['{EA50F029-1261-419C-AE32-BA16ADB271F3}']
  end;
  TJLikeView_2 = class(TJavaGenericImport<JLikeView_2Class, JLikeView_2>) end;

  JLikeView_AuxiliaryViewPositionClass = interface(JEnumClass)
    ['{F7543C6E-1F0C-4FAD-9B31-C0193B7437B4}']
    {class} function _GetBOTTOM: JLikeView_AuxiliaryViewPosition; cdecl;
    {class} function _GetDEFAULT: JLikeView_AuxiliaryViewPosition; cdecl;
    {class} procedure _SetDEFAULT(Value: JLikeView_AuxiliaryViewPosition); cdecl;
    {class} function _GetINLINE: JLikeView_AuxiliaryViewPosition; cdecl;
    {class} function _GetTOP: JLikeView_AuxiliaryViewPosition; cdecl;
    {class} function fromInt(P1: Integer): JLikeView_AuxiliaryViewPosition; cdecl;//Deprecated
    {class} function valueOf(P1: JString): JLikeView_AuxiliaryViewPosition; cdecl;//Deprecated
    {class} function values: TJavaObjectArray<JLikeView_AuxiliaryViewPosition>; cdecl;//Deprecated
    {class} property BOTTOM: JLikeView_AuxiliaryViewPosition read _GetBOTTOM;
    {class} property DEFAULT: JLikeView_AuxiliaryViewPosition read _GetDEFAULT write _SetDEFAULT;
    {class} property &INLINE: JLikeView_AuxiliaryViewPosition read _GetINLINE;
    {class} property TOP: JLikeView_AuxiliaryViewPosition read _GetTOP;
  end;

  [JavaSignature('com/facebook/share/widget/LikeView$AuxiliaryViewPosition')]
  JLikeView_AuxiliaryViewPosition = interface(JEnum)
    ['{4EAF93D6-3F74-4E6C-A514-55AB9FC1A9C5}']
    function toString: JString; cdecl;//Deprecated
  end;
  TJLikeView_AuxiliaryViewPosition = class(TJavaGenericImport<JLikeView_AuxiliaryViewPositionClass, JLikeView_AuxiliaryViewPosition>) end;

  JLikeView_HorizontalAlignmentClass = interface(JEnumClass)
    ['{95AD59CE-1D7C-48C5-9E10-36DDC55A70A9}']
    {class} function _GetCENTER: JLikeView_HorizontalAlignment; cdecl;
    {class} function _GetDEFAULT: JLikeView_HorizontalAlignment; cdecl;
    {class} procedure _SetDEFAULT(Value: JLikeView_HorizontalAlignment); cdecl;
    {class} function _GetLEFT: JLikeView_HorizontalAlignment; cdecl;
    {class} function _GetRIGHT: JLikeView_HorizontalAlignment; cdecl;
    {class} function fromInt(P1: Integer): JLikeView_HorizontalAlignment; cdecl;//Deprecated
    {class} function valueOf(P1: JString): JLikeView_HorizontalAlignment; cdecl;//Deprecated
    {class} function values: TJavaObjectArray<JLikeView_HorizontalAlignment>; cdecl;//Deprecated
    {class} property CENTER: JLikeView_HorizontalAlignment read _GetCENTER;
    {class} property DEFAULT: JLikeView_HorizontalAlignment read _GetDEFAULT write _SetDEFAULT;
    {class} property LEFT: JLikeView_HorizontalAlignment read _GetLEFT;
    {class} property RIGHT: JLikeView_HorizontalAlignment read _GetRIGHT;
  end;

  [JavaSignature('com/facebook/share/widget/LikeView$HorizontalAlignment')]
  JLikeView_HorizontalAlignment = interface(JEnum)
    ['{31CFF49B-EEFB-4E28-866E-B41D60A80F8A}']
    function toString: JString; cdecl;//Deprecated
  end;
  TJLikeView_HorizontalAlignment = class(TJavaGenericImport<JLikeView_HorizontalAlignmentClass, JLikeView_HorizontalAlignment>) end;

  JLikeView_LikeActionControllerCreationCallbackClass = interface(JLikeActionController_CreationCallbackClass)
    ['{F0151666-E155-4131-B5A2-986B94C8B3A6}']
    {class} function init(P1: JLikeView; P2: JLikeView_1): JLikeView_LikeActionControllerCreationCallback; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/share/widget/LikeView$LikeActionControllerCreationCallback')]
  JLikeView_LikeActionControllerCreationCallback = interface(JLikeActionController_CreationCallback)
    ['{20F2BF64-5E50-4AFB-A03D-BEA1C6D520EE}']
    procedure cancel; cdecl;//Deprecated
    procedure onComplete(P1: JLikeActionController; P2: JFacebookException); cdecl;//Deprecated
  end;
  TJLikeView_LikeActionControllerCreationCallback = class(TJavaGenericImport<JLikeView_LikeActionControllerCreationCallbackClass, JLikeView_LikeActionControllerCreationCallback>) end;

  JLikeView_LikeControllerBroadcastReceiverClass = interface(JBroadcastReceiverClass)
    ['{24C7D10A-4276-4865-B2DB-B8F53217D14B}']
    {class} function init(P1: JLikeView; P2: JLikeView_1): JLikeView_LikeControllerBroadcastReceiver; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/share/widget/LikeView$LikeControllerBroadcastReceiver')]
  JLikeView_LikeControllerBroadcastReceiver = interface(JBroadcastReceiver)
    ['{9093F902-C6C3-4A04-8386-B71620B210FC}']
    procedure onReceive(P1: JContext; P2: JIntent); cdecl;//Deprecated
  end;
  TJLikeView_LikeControllerBroadcastReceiver = class(TJavaGenericImport<JLikeView_LikeControllerBroadcastReceiverClass, JLikeView_LikeControllerBroadcastReceiver>) end;

  JLikeView_ObjectTypeClass = interface(JEnumClass)
    ['{F2369AE4-6B6D-45F3-91BA-905669AB55D7}']
    {class} function _GetDEFAULT: JLikeView_ObjectType; cdecl;
    {class} procedure _SetDEFAULT(Value: JLikeView_ObjectType); cdecl;
    {class} function _GetOPEN_GRAPH: JLikeView_ObjectType; cdecl;
    {class} function _GetPAGE: JLikeView_ObjectType; cdecl;
    {class} function _GetUNKNOWN: JLikeView_ObjectType; cdecl;
    {class} function fromInt(P1: Integer): JLikeView_ObjectType; cdecl;//Deprecated
    {class} function valueOf(P1: JString): JLikeView_ObjectType; cdecl;//Deprecated
    {class} function values: TJavaObjectArray<JLikeView_ObjectType>; cdecl;//Deprecated
    {class} property DEFAULT: JLikeView_ObjectType read _GetDEFAULT write _SetDEFAULT;
    {class} property OPEN_GRAPH: JLikeView_ObjectType read _GetOPEN_GRAPH;
    {class} property PAGE: JLikeView_ObjectType read _GetPAGE;
    {class} property UNKNOWN: JLikeView_ObjectType read _GetUNKNOWN;
  end;

  [JavaSignature('com/facebook/share/widget/LikeView$ObjectType')]
  JLikeView_ObjectType = interface(JEnum)
    ['{7C2646F9-2A8D-4506-A486-30E2BEEAF6B8}']
    function getValue: Integer; cdecl;//Deprecated
    function toString: JString; cdecl;//Deprecated
  end;
  TJLikeView_ObjectType = class(TJavaGenericImport<JLikeView_ObjectTypeClass, JLikeView_ObjectType>) end;

  JLikeView_OnErrorListenerClass = interface(IJavaClass)
    ['{4EAB212D-C1E1-4735-8119-86B69B269422}']
  end;

  [JavaSignature('com/facebook/share/widget/LikeView$OnErrorListener')]
  JLikeView_OnErrorListener = interface(IJavaInstance)
    ['{C0AA85C8-2190-4886-BDEA-27C707CD85C8}']
    procedure onError(P1: JFacebookException); cdecl;//Deprecated
  end;
  TJLikeView_OnErrorListener = class(TJavaGenericImport<JLikeView_OnErrorListenerClass, JLikeView_OnErrorListener>) end;

  JLikeView_StyleClass = interface(JEnumClass)
    ['{CFE28EC5-5640-46A2-8972-B4E6D5572D87}']
    {class} function _GetBOX_COUNT: JLikeView_Style; cdecl;
    {class} function _GetBUTTON: JLikeView_Style; cdecl;
    {class} function _GetDEFAULT: JLikeView_Style; cdecl;
    {class} procedure _SetDEFAULT(Value: JLikeView_Style); cdecl;
    {class} function _GetSTANDARD: JLikeView_Style; cdecl;
    {class} function fromInt(P1: Integer): JLikeView_Style; cdecl;//Deprecated
    {class} function valueOf(P1: JString): JLikeView_Style; cdecl;//Deprecated
    {class} function values: TJavaObjectArray<JLikeView_Style>; cdecl;//Deprecated
    {class} property BOX_COUNT: JLikeView_Style read _GetBOX_COUNT;
    {class} property BUTTON: JLikeView_Style read _GetBUTTON;
    {class} property DEFAULT: JLikeView_Style read _GetDEFAULT write _SetDEFAULT;
    {class} property STANDARD: JLikeView_Style read _GetSTANDARD;
  end;

  [JavaSignature('com/facebook/share/widget/LikeView$Style')]
  JLikeView_Style = interface(JEnum)
    ['{D79210B3-2A34-403C-B094-C31B7D59324F}']
    function toString: JString; cdecl;//Deprecated
  end;
  TJLikeView_Style = class(TJavaGenericImport<JLikeView_StyleClass, JLikeView_Style>) end;

  JMessageDialogClass = interface(JFacebookDialogBaseClass)
    ['{D3DEBFC8-8D5C-45E5-85CA-37528791796F}']
    {class} function canShow(P1: Jlang_Class): Boolean; cdecl;//Deprecated
    {class} function init(P1: JFragment): JMessageDialog; cdecl; overload;//Deprecated
    {class} //function init(P1: Japp_Fragment): JMessageDialog; cdecl; overload;//Deprecated
    {class} function init(P1: JActivity): JMessageDialog; cdecl; overload;//Deprecated
    {class} procedure show(P1: JActivity; P2: JShareContent); cdecl; overload;//Deprecated
    {class} //procedure show(P1: Japp_Fragment; P2: JShareContent); cdecl; overload;//Deprecated
    {class} procedure show(P1: JFragment; P2: JShareContent); cdecl; overload;//Deprecated
  end;

  [JavaSignature('com/facebook/share/widget/MessageDialog')]
  JMessageDialog = interface(JFacebookDialogBase)
    ['{66F1AF64-8112-4C8E-8CC1-85E5F8AA1A3E}']
    function getShouldFailOnDataError: Boolean; cdecl;//Deprecated
    procedure setShouldFailOnDataError(P1: Boolean); cdecl;//Deprecated
  end;
  TJMessageDialog = class(TJavaGenericImport<JMessageDialogClass, JMessageDialog>) end;

  JMessageDialog_1Class = interface(JObjectClass)
    ['{4059E6FD-372B-46D7-8127-396A965AC486}']
  end;

  [JavaSignature('com/facebook/share/widget/MessageDialog$1')]
  JMessageDialog_1 = interface(JObject)
    ['{BE970268-709A-480E-A605-4B60F9F9166A}']
  end;
  TJMessageDialog_1 = class(TJavaGenericImport<JMessageDialog_1Class, JMessageDialog_1>) end;

  JMessageDialog_NativeHandlerClass = interface(JFacebookDialogBaseClass)
    ['{70550A7E-5BE8-4FF2-AB79-8958C557E7BB}']
    {class} function init(P1: JMessageDialog; P2: JMessageDialog_1): JMessageDialog_NativeHandler; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/share/widget/MessageDialog$NativeHandler')]
  JMessageDialog_NativeHandler = interface(JFacebookDialogBase)
    ['{D7357734-B9BA-4199-A6D1-562539720FC8}']
    function canShow(P1: JObject; P2: Boolean): Boolean; cdecl; overload;//Deprecated
    function canShow(P1: JShareContent; P2: Boolean): Boolean; cdecl; overload;//Deprecated
    function createAppCall(P1: JObject): JAppCall; cdecl; overload;//Deprecated
    function createAppCall(P1: JShareContent): JAppCall; cdecl; overload;//Deprecated
  end;
  TJMessageDialog_NativeHandler = class(TJavaGenericImport<JMessageDialog_NativeHandlerClass, JMessageDialog_NativeHandler>) end;

  JMessageDialog_NativeHandler_1Class = interface(JDialogPresenter_ParameterProviderClass)
    ['{2848B52E-35C0-4244-9733-03C75F68F303}']
    {class} function init(P1: JMessageDialog_NativeHandler; P2: JAppCall; P3: JShareContent; P4: Boolean): JMessageDialog_NativeHandler_1; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/share/widget/MessageDialog$NativeHandler$1')]
  JMessageDialog_NativeHandler_1 = interface(JDialogPresenter_ParameterProvider)
    ['{3EE8BD1D-FE4D-49D9-8237-854BAF627A0A}']
//    function _Getthis$1: JMessageDialog_NativeHandler; cdecl;
//    function _Getval$content: JShareContent; cdecl;
//    function _Getval$shouldFailOnDataError: Boolean; cdecl;
    function getLegacyParameters: JBundle; cdecl;//Deprecated
    function getParameters: JBundle; cdecl;//Deprecated
//    property this$1: JMessageDialog_NativeHandler read _Getthis$1;
//    property val$content: JShareContent read _Getval$content;
//    property val$shouldFailOnDataError: Boolean read _Getval$shouldFailOnDataError;
  end;
  TJMessageDialog_NativeHandler_1 = class(TJavaGenericImport<JMessageDialog_NativeHandler_1Class, JMessageDialog_NativeHandler_1>) end;

  JShareButtonBaseClass = interface(JFacebookButtonBaseClass)
    ['{D6AD757D-79E4-4D27-B3F0-3C4FFD39C261}']
  end;

  [JavaSignature('com/facebook/share/widget/ShareButtonBase')]
  JShareButtonBase = interface(JFacebookButtonBase)
    ['{5F471D77-03C9-41D7-AABA-7AE6096EDE8F}']
    function getRequestCode: Integer; cdecl;//Deprecated
    function getShareContent: JShareContent; cdecl;//Deprecated
    procedure registerCallback(P1: JCallbackManager; P2: JFacebookCallback); cdecl; overload;//Deprecated
    procedure registerCallback(P1: JCallbackManager; P2: JFacebookCallback; P3: Integer); cdecl; overload;//Deprecated
    procedure setEnabled(P1: Boolean); cdecl;//Deprecated
    procedure setShareContent(P1: JShareContent); cdecl;//Deprecated
  end;
  TJShareButtonBase = class(TJavaGenericImport<JShareButtonBaseClass, JShareButtonBase>) end;

  JSendButtonClass = interface(JShareButtonBaseClass)
    ['{4B4DD382-A04A-46B9-A193-6C316CAD6BEB}']
    {class} function init(P1: JContext): JSendButton; cdecl; overload;//Deprecated
    {class} function init(P1: JContext; P2: JAttributeSet): JSendButton; cdecl; overload;//Deprecated
    {class} function init(P1: JContext; P2: JAttributeSet; P3: Integer): JSendButton; cdecl; overload;//Deprecated
  end;

  [JavaSignature('com/facebook/share/widget/SendButton')]
  JSendButton = interface(JShareButtonBase)
    ['{AC04D9A8-0864-4910-9F53-C4D2B42BE53F}']
  end;
  TJSendButton = class(TJavaGenericImport<JSendButtonClass, JSendButton>) end;

  JShareButtonClass = interface(JShareButtonBaseClass)
    ['{2588D2F3-7F7A-419B-9677-941A4A5BDBF7}']
    {class} function init(P1: JContext): JShareButton; cdecl; overload;//Deprecated
    {class} function init(P1: JContext; P2: JAttributeSet): JShareButton; cdecl; overload;//Deprecated
    {class} function init(P1: JContext; P2: JAttributeSet; P3: Integer): JShareButton; cdecl; overload;//Deprecated
  end;

  [JavaSignature('com/facebook/share/widget/ShareButton')]
  JShareButton = interface(JShareButtonBase)
    ['{3987E00D-7B3B-4E6C-9150-07832DD98DD6}']
  end;
  TJShareButton = class(TJavaGenericImport<JShareButtonClass, JShareButton>) end;

  JShareButtonBase_1Class = interface(JView_OnClickListenerClass)
    ['{B50EDE1A-774D-4630-B028-E6D1462CBA97}']
    {class} function init(P1: JShareButtonBase): JShareButtonBase_1; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/share/widget/ShareButtonBase$1')]
  JShareButtonBase_1 = interface(JView_OnClickListener)
    ['{9550E2DB-D931-400D-903F-1AC8A24F04E1}']
    procedure onClick(P1: JView); cdecl;//Deprecated
  end;
  TJShareButtonBase_1 = class(TJavaGenericImport<JShareButtonBase_1Class, JShareButtonBase_1>) end;

  JShareDialogClass = interface(JFacebookDialogBaseClass)
    ['{8C80742A-9C0D-4711-A429-016D57B3F680}']
    {class} function canShow(P1: Jlang_Class): Boolean; cdecl; overload;//Deprecated
    {class} function init(P1: JFragment): JShareDialog; cdecl; overload;//Deprecated
    {class} function init(P1: JActivity): JShareDialog; cdecl; overload;//Deprecated
    {class} //function init(P1: Japp_Fragment): JShareDialog; cdecl; overload;//Deprecated
    {class} //procedure show(P1: Japp_Fragment; P2: JShareContent); cdecl; overload;//Deprecated
    {class} procedure show(P1: JActivity; P2: JShareContent); cdecl; overload;//Deprecated
    {class} procedure show(P1: JFragment; P2: JShareContent); cdecl; overload;//Deprecated
  end;

  [JavaSignature('com/facebook/share/widget/ShareDialog')]
  JShareDialog = interface(JFacebookDialogBase)
    ['{3D0ACF81-5CB2-4F9F-9CEB-498628F5BAC8}']
    function canShow(P1: JShareContent; P2: JShareDialog_Mode): Boolean; cdecl; overload;//Deprecated
    function getShouldFailOnDataError: Boolean; cdecl;//Deprecated
    procedure setShouldFailOnDataError(P1: Boolean); cdecl;//Deprecated
    procedure show(P1: JShareContent; P2: JShareDialog_Mode); cdecl; overload;//Deprecated
  end;
  TJShareDialog = class(TJavaGenericImport<JShareDialogClass, JShareDialog>) end;

  JShareDialog_1Class = interface(JObjectClass)
    ['{8DBBE482-EBBA-4B1F-AE4A-8C9F928B1B33}']
  end;

  [JavaSignature('com/facebook/share/widget/ShareDialog$1')]
  JShareDialog_1 = interface(JObject)
    ['{CB09C811-0BEE-4E07-9A49-C58BF3816177}']
  end;
  TJShareDialog_1 = class(TJavaGenericImport<JShareDialog_1Class, JShareDialog_1>) end;

  JShareDialog_FeedHandlerClass = interface(JFacebookDialogBaseClass)
    ['{C29B3660-A2C7-47EB-9615-4DD2BAC27DA6}']
    {class} function init(P1: JShareDialog; P2: JShareDialog_1): JShareDialog_FeedHandler; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/share/widget/ShareDialog$FeedHandler')]
  JShareDialog_FeedHandler = interface(JFacebookDialogBase)
    ['{71A0E056-76DC-4B4E-9FC2-71F335FFCB12}']
    function canShow(P1: JShareContent; P2: Boolean): Boolean; cdecl; overload;//Deprecated
    function canShow(P1: JObject; P2: Boolean): Boolean; cdecl; overload;//Deprecated
    function createAppCall(P1: JObject): JAppCall; cdecl; overload;//Deprecated
    function createAppCall(P1: JShareContent): JAppCall; cdecl; overload;//Deprecated
    function getMode: JObject; cdecl;//Deprecated
  end;
  TJShareDialog_FeedHandler = class(TJavaGenericImport<JShareDialog_FeedHandlerClass, JShareDialog_FeedHandler>) end;

  JShareDialog_ModeClass = interface(JEnumClass)
    ['{52B79008-7CFC-48BC-9339-5B2D047D0335}']
    {class} function _GetAUTOMATIC: JShareDialog_Mode; cdecl;
    {class} function _GetFEED: JShareDialog_Mode; cdecl;
    {class} function _GetNATIVE: JShareDialog_Mode; cdecl;
    {class} function _GetWEB: JShareDialog_Mode; cdecl;
    {class} function valueOf(P1: JString): JShareDialog_Mode; cdecl;//Deprecated
    {class} function values: TJavaObjectArray<JShareDialog_Mode>; cdecl;//Deprecated
    {class} property AUTOMATIC: JShareDialog_Mode read _GetAUTOMATIC;
    {class} property FEED: JShareDialog_Mode read _GetFEED;
    {class} property NATIVE: JShareDialog_Mode read _GetNATIVE;
    {class} property WEB: JShareDialog_Mode read _GetWEB;
  end;

  [JavaSignature('com/facebook/share/widget/ShareDialog$Mode')]
  JShareDialog_Mode = interface(JEnum)
    ['{6E357B07-5152-4267-A226-60293AC83C57}']
  end;
  TJShareDialog_Mode = class(TJavaGenericImport<JShareDialog_ModeClass, JShareDialog_Mode>) end;

  JShareDialog_NativeHandlerClass = interface(JFacebookDialogBaseClass)
    ['{C47DCABE-ACB2-4033-9115-CC43F87B4BA8}']
    {class} function init(P1: JShareDialog; P2: JShareDialog_1): JShareDialog_NativeHandler; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/share/widget/ShareDialog$NativeHandler')]
  JShareDialog_NativeHandler = interface(JFacebookDialogBase)
    ['{0675BA8A-72DA-45CD-AB89-D28981875296}']
    function canShow(P1: JShareContent; P2: Boolean): Boolean; cdecl; overload;//Deprecated
    function canShow(P1: JObject; P2: Boolean): Boolean; cdecl; overload;//Deprecated
    function createAppCall(P1: JObject): JAppCall; cdecl; overload;//Deprecated
    function createAppCall(P1: JShareContent): JAppCall; cdecl; overload;//Deprecated
    function getMode: JObject; cdecl;//Deprecated
  end;
  TJShareDialog_NativeHandler = class(TJavaGenericImport<JShareDialog_NativeHandlerClass, JShareDialog_NativeHandler>) end;

  JShareDialog_NativeHandler_1Class = interface(JDialogPresenter_ParameterProviderClass)
    ['{5EB0DBE4-F775-4AC2-84FA-4EAD4C9C7997}']
    {class} function init(P1: JShareDialog_NativeHandler; P2: JAppCall; P3: JShareContent; P4: Boolean): JShareDialog_NativeHandler_1; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/share/widget/ShareDialog$NativeHandler$1')]
  JShareDialog_NativeHandler_1 = interface(JDialogPresenter_ParameterProvider)
    ['{7AFCB4D8-09BB-4DB3-A209-32211F01B747}']
//    function _Getthis$1: JShareDialog_NativeHandler; cdecl;
//    function _Getval$content: JShareContent; cdecl;
//    function _Getval$shouldFailOnDataError: Boolean; cdecl;
    function getLegacyParameters: JBundle; cdecl;//Deprecated
    function getParameters: JBundle; cdecl;//Deprecated
//    property this$1: JShareDialog_NativeHandler read _Getthis$1;
//    property val$content: JShareContent read _Getval$content;
//    property val$shouldFailOnDataError: Boolean read _Getval$shouldFailOnDataError;
  end;
  TJShareDialog_NativeHandler_1 = class(TJavaGenericImport<JShareDialog_NativeHandler_1Class, JShareDialog_NativeHandler_1>) end;

  JShareDialog_WebShareHandlerClass = interface(JFacebookDialogBaseClass)
    ['{BACBC9E4-2963-4F2B-A8CA-12F2380CC65E}']
    {class} function init(P1: JShareDialog; P2: JShareDialog_1): JShareDialog_WebShareHandler; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/share/widget/ShareDialog$WebShareHandler')]
  JShareDialog_WebShareHandler = interface(JFacebookDialogBase)
    ['{7573823A-76BE-4997-8A1A-5079965BFCB1}']
    function canShow(P1: JShareContent; P2: Boolean): Boolean; cdecl; overload;//Deprecated
    function canShow(P1: JObject; P2: Boolean): Boolean; cdecl; overload;//Deprecated
    function createAppCall(P1: JObject): JAppCall; cdecl; overload;//Deprecated
    function createAppCall(P1: JShareContent): JAppCall; cdecl; overload;//Deprecated
    function getMode: JObject; cdecl;//Deprecated
  end;
  TJShareDialog_WebShareHandler = class(TJavaGenericImport<JShareDialog_WebShareHandlerClass, JShareDialog_WebShareHandler>) end;

  JObjectInputStream_GetFieldClass = interface(JObjectClass)
    ['{B2A17356-DC2C-4DD0-BA5B-926AB526F0F6}']
    {class} function init: JObjectInputStream_GetField; cdecl;//Deprecated
    {class} function get(name: JString; defaultValue: Byte): Byte; cdecl; overload;//Deprecated
    {class} function get(name: JString; defaultValue: SmallInt): SmallInt; cdecl; overload;//Deprecated
    {class} function get(name: JString; defaultValue: Double): Double; cdecl; overload;
    {class} function get(name: JString; defaultValue: JObject): JObject; cdecl; overload;
    {class} function getObjectStreamClass: Jio_ObjectStreamClass; cdecl;
  end;

  [JavaSignature('java/io/ObjectInputStream$GetField')]
  JObjectInputStream_GetField = interface(JObject)
    ['{B087619B-FB6D-415B-BE57-9D4EBDC7E9B9}']
    function defaulted(name: JString): Boolean; cdecl;//Deprecated
    function get(name: JString; defaultValue: Boolean): Boolean; cdecl; overload;//Deprecated
    function get(name: JString; defaultValue: Char): Char; cdecl; overload;//Deprecated
    function get(name: JString; defaultValue: Integer): Integer; cdecl; overload;
    function get(name: JString; defaultValue: Int64): Int64; cdecl; overload;
    function get(name: JString; defaultValue: Single): Single; cdecl; overload;
  end;
  TJObjectInputStream_GetField = class(TJavaGenericImport<JObjectInputStream_GetFieldClass, JObjectInputStream_GetField>) end;

  JObjectInputValidationClass = interface(IJavaClass)
    ['{62ED8408-3F77-4D14-869F-9B23C6114A7E}']
    {class} procedure validateObject; cdecl;//Deprecated
  end;

  [JavaSignature('java/io/ObjectInputValidation')]
  JObjectInputValidation = interface(IJavaInstance)
    ['{84E8CFA7-F64F-43D1-AC79-DAE8ADB43A56}']
  end;
  TJObjectInputValidation = class(TJavaGenericImport<JObjectInputValidationClass, JObjectInputValidation>) end;

  Jio_ObjectStreamClassClass = interface(JObjectClass)
    ['{58DBAE53-DDE4-43B3-8112-035D4955F07D}']
    {class} function _GetNO_FIELDS: TJavaObjectArray<JObjectStreamField>; cdecl;
    {class} function forClass: Jlang_Class; cdecl;//Deprecated
    {class} function getField(name: JString): JObjectStreamField; cdecl;//Deprecated
    {class} function lookup(cl: Jlang_Class): Jio_ObjectStreamClass; cdecl;//Deprecated
    {class} function lookupAny(cl: Jlang_Class): Jio_ObjectStreamClass; cdecl;//Deprecated
    {class} function toString: JString; cdecl;//Deprecated
    {class} property NO_FIELDS: TJavaObjectArray<JObjectStreamField> read _GetNO_FIELDS;
  end;

  [JavaSignature('java/io/ObjectStreamClass')]
  Jio_ObjectStreamClass = interface(JObject)
    ['{13F49D75-C16F-47C6-91F9-B37C879D7FF2}']
    function getFields: TJavaObjectArray<JObjectStreamField>; cdecl;//Deprecated
    function getName: JString; cdecl;//Deprecated
    function getSerialVersionUID: Int64; cdecl;//Deprecated
  end;
  TJio_ObjectStreamClass = class(TJavaGenericImport<Jio_ObjectStreamClassClass, Jio_ObjectStreamClass>) end;

  JObjectStreamFieldClass = interface(JObjectClass)
    ['{FE2D8AF0-961B-40C3-834D-38B8B5258EDA}']
    {class} function init(name: JString; cl: Jlang_Class): JObjectStreamField; cdecl; overload;//Deprecated
    {class} function init(name: JString; cl: Jlang_Class; unshared: Boolean): JObjectStreamField; cdecl; overload;//Deprecated
    {class} function getName: JString; cdecl;//Deprecated
    {class} function getOffset: Integer; cdecl;//Deprecated
    {class} function getType: Jlang_Class; cdecl;//Deprecated
    {class} function isUnshared: Boolean; cdecl;//Deprecated
    {class} function toString: JString; cdecl;//Deprecated
  end;

  [JavaSignature('java/io/ObjectStreamField')]
  JObjectStreamField = interface(JObject)
    ['{A48306B9-9899-47BD-BE6B-4C5922811119}']
    function compareTo(o: JObject): Integer; cdecl;//Deprecated
    function getTypeCode: Char; cdecl;//Deprecated
    function getTypeString: JString; cdecl;//Deprecated
    function isPrimitive: Boolean; cdecl;//Deprecated
  end;
  TJObjectStreamField = class(TJavaGenericImport<JObjectStreamFieldClass, JObjectStreamField>) end;

  // java.lang.StringBuffer
  // java.lang.StringBuilder
  JVoidClass = interface(JObjectClass)
    ['{E5AB6B2B-2580-469B-BBF6-C226984DFEBE}']
    {class} function _GetTYPE: Jlang_Class; cdecl;
    {class} property &type: Jlang_Class read _GetTYPE;
  end;

  [JavaSignature('java/lang/Void')]
  JVoid = interface(JObject)
    ['{013CC63A-938C-46BE-ACAC-BA854F2F6AC8}']
  end;
  TJVoid = class(TJavaGenericImport<JVoidClass, JVoid>) end;

  JBigDecimalClass = interface(JNumberClass)
    ['{9009797E-6E36-4AD2-A8D6-A058B4E1E586}']
    {class} function _GetONE: JBigDecimal; cdecl;
    {class} function _GetROUND_CEILING: Integer; cdecl;
    {class} function _GetROUND_DOWN: Integer; cdecl;
    {class} function _GetROUND_FLOOR: Integer; cdecl;
    {class} function _GetROUND_HALF_DOWN: Integer; cdecl;
    {class} function _GetROUND_HALF_EVEN: Integer; cdecl;
    {class} function _GetROUND_HALF_UP: Integer; cdecl;
    {class} function _GetROUND_UNNECESSARY: Integer; cdecl;
    {class} function _GetROUND_UP: Integer; cdecl;
    {class} function _GetTEN: JBigDecimal; cdecl;
    {class} function _GetZERO: JBigDecimal; cdecl;
    {class} function init(&in:  TJavaArray<Char>; offset: Integer; len: Integer): JBigDecimal; cdecl; overload;//Deprecated
    {class} function init(&in:  TJavaArray<Char>; offset: Integer; len: Integer; mc: JMathContext): JBigDecimal; cdecl; overload;//Deprecated
    {class} function init(&in:  TJavaArray<Char>): JBigDecimal; cdecl; overload;//Deprecated
    {class} function init(&in:  TJavaArray<Char>; mc: JMathContext): JBigDecimal; cdecl; overload;//Deprecated
    {class} function init(val: JString): JBigDecimal; cdecl; overload;//Deprecated
    {class} function init(val: JString; mc: JMathContext): JBigDecimal; cdecl; overload;//Deprecated
    {class} function init(val: Double): JBigDecimal; cdecl; overload;//Deprecated
    {class} function init(val: Double; mc: JMathContext): JBigDecimal; cdecl; overload;//Deprecated
    {class} function init(val: JBigInteger): JBigDecimal; cdecl; overload;//Deprecated
    {class} function init(val: JBigInteger; mc: JMathContext): JBigDecimal; cdecl; overload;//Deprecated
    {class} function init(unscaledVal: JBigInteger; scale: Integer): JBigDecimal; cdecl; overload;//Deprecated
    {class} function init(unscaledVal: JBigInteger; scale: Integer; mc: JMathContext): JBigDecimal; cdecl; overload;//Deprecated
    {class} function init(val: Integer): JBigDecimal; cdecl; overload;//Deprecated
    {class} function init(val: Integer; mc: JMathContext): JBigDecimal; cdecl; overload;//Deprecated
    {class} function init(val: Int64): JBigDecimal; cdecl; overload;//Deprecated
    {class} function init(val: Int64; mc: JMathContext): JBigDecimal; cdecl; overload;//Deprecated
    {class} function abs: JBigDecimal; cdecl; overload;
    {class} function abs(mc: JMathContext): JBigDecimal; cdecl; overload;
    {class} function add(augend: JBigDecimal): JBigDecimal; cdecl; overload;
    {class} function divide(divisor: JBigDecimal; scale: Integer; roundingMode: Integer): JBigDecimal; cdecl; overload;
    {class} function divide(divisor: JBigDecimal; scale: Integer; roundingMode: JRoundingMode): JBigDecimal; cdecl; overload;
    {class} function divide(divisor: JBigDecimal; roundingMode: Integer): JBigDecimal; cdecl; overload;
    {class} function divideAndRemainder(divisor: JBigDecimal): TJavaObjectArray<JBigDecimal>; cdecl; overload;
    {class} function divideAndRemainder(divisor: JBigDecimal; mc: JMathContext): TJavaObjectArray<JBigDecimal>; cdecl; overload;
    {class} function divideToIntegralValue(divisor: JBigDecimal): JBigDecimal; cdecl; overload;
    {class} function floatValue: Single; cdecl;
    {class} function hashCode: Integer; cdecl;
    {class} function intValue: Integer; cdecl;
    {class} function max(val: JBigDecimal): JBigDecimal; cdecl;//Deprecated
    {class} function min(val: JBigDecimal): JBigDecimal; cdecl;//Deprecated
    {class} function movePointLeft(n: Integer): JBigDecimal; cdecl;//Deprecated
    {class} function multiply(multiplicand: JBigDecimal; mc: JMathContext): JBigDecimal; cdecl; overload;//Deprecated
    {class} function negate: JBigDecimal; cdecl; overload;//Deprecated
    {class} function negate(mc: JMathContext): JBigDecimal; cdecl; overload;//Deprecated
    {class} function pow(n: Integer; mc: JMathContext): JBigDecimal; cdecl; overload;//Deprecated
    {class} function precision: Integer; cdecl;//Deprecated
    {class} function remainder(divisor: JBigDecimal): JBigDecimal; cdecl; overload;//Deprecated
    {class} function scaleByPowerOfTen(n: Integer): JBigDecimal; cdecl;//Deprecated
    {class} function setScale(newScale: Integer; roundingMode: JRoundingMode): JBigDecimal; cdecl; overload;//Deprecated
    {class} function setScale(newScale: Integer; roundingMode: Integer): JBigDecimal; cdecl; overload;//Deprecated
    {class} function stripTrailingZeros: JBigDecimal; cdecl;
    {class} function subtract(subtrahend: JBigDecimal): JBigDecimal; cdecl; overload;
    {class} function subtract(subtrahend: JBigDecimal; mc: JMathContext): JBigDecimal; cdecl; overload;
    {class} function toPlainString: JString; cdecl;
    {class} function ulp: JBigDecimal; cdecl;
    {class} function unscaledValue: JBigInteger; cdecl;
    {class} function valueOf(unscaledVal: Int64; scale: Integer): JBigDecimal; cdecl; overload;
    {class} function valueOf(unscaledVal: Int64): JBigDecimal; cdecl; overload;
    {class} function valueOf(val: Double): JBigDecimal; cdecl; overload;
    {class} property ONE: JBigDecimal read _GetONE;
    {class} property ROUND_CEILING: Integer read _GetROUND_CEILING;
    {class} property ROUND_DOWN: Integer read _GetROUND_DOWN;
    {class} property ROUND_FLOOR: Integer read _GetROUND_FLOOR;
    {class} property ROUND_HALF_DOWN: Integer read _GetROUND_HALF_DOWN;
    {class} property ROUND_HALF_EVEN: Integer read _GetROUND_HALF_EVEN;
    {class} property ROUND_HALF_UP: Integer read _GetROUND_HALF_UP;
    {class} property ROUND_UNNECESSARY: Integer read _GetROUND_UNNECESSARY;
    {class} property ROUND_UP: Integer read _GetROUND_UP;
    {class} property TEN: JBigDecimal read _GetTEN;
    {class} property ZERO: JBigDecimal read _GetZERO;
  end;

  [JavaSignature('java/math/BigDecimal')]
  JBigDecimal = interface(JNumber)
    ['{5DD69CCE-D7AC-4C6C-9133-44AF78FD4CB0}']
    function add(augend: JBigDecimal; mc: JMathContext): JBigDecimal; cdecl; overload;
    function byteValueExact: Byte; cdecl;
    function compareTo(val: JBigDecimal): Integer; cdecl;
    function divide(divisor: JBigDecimal; roundingMode: JRoundingMode): JBigDecimal; cdecl; overload;
    function divide(divisor: JBigDecimal): JBigDecimal; cdecl; overload;
    function divide(divisor: JBigDecimal; mc: JMathContext): JBigDecimal; cdecl; overload;
    function divideToIntegralValue(divisor: JBigDecimal; mc: JMathContext): JBigDecimal; cdecl; overload;
    function doubleValue: Double; cdecl;
    function equals(x: JObject): Boolean; cdecl;
    function intValueExact: Integer; cdecl;//Deprecated
    function longValue: Int64; cdecl;//Deprecated
    function longValueExact: Int64; cdecl;//Deprecated
    function movePointRight(n: Integer): JBigDecimal; cdecl;//Deprecated
    function multiply(multiplicand: JBigDecimal): JBigDecimal; cdecl; overload;//Deprecated
    function plus: JBigDecimal; cdecl; overload;//Deprecated
    function plus(mc: JMathContext): JBigDecimal; cdecl; overload;//Deprecated
    function pow(n: Integer): JBigDecimal; cdecl; overload;//Deprecated
    function remainder(divisor: JBigDecimal; mc: JMathContext): JBigDecimal; cdecl; overload;//Deprecated
    function round(mc: JMathContext): JBigDecimal; cdecl;//Deprecated
    function scale: Integer; cdecl;//Deprecated
    function setScale(newScale: Integer): JBigDecimal; cdecl; overload;
    function shortValueExact: SmallInt; cdecl;
    function signum: Integer; cdecl;
    function toBigInteger: JBigInteger; cdecl;
    function toBigIntegerExact: JBigInteger; cdecl;
    function toEngineeringString: JString; cdecl;
    function toString: JString; cdecl;
  end;
  TJBigDecimal = class(TJavaGenericImport<JBigDecimalClass, JBigDecimal>) end;

  JMathContextClass = interface(JObjectClass)
    ['{7BA456B9-E218-4B5E-8E75-DD5303C10587}']
    {class} function _GetDECIMAL128: JMathContext; cdecl;
    {class} function _GetDECIMAL32: JMathContext; cdecl;
    {class} function _GetDECIMAL64: JMathContext; cdecl;
    {class} function _GetUNLIMITED: JMathContext; cdecl;
    {class} function init(precision: Integer): JMathContext; cdecl; overload;//Deprecated
    {class} function init(precision: Integer; roundingMode: JRoundingMode): JMathContext; cdecl; overload;//Deprecated
    {class} function init(s: JString): JMathContext; cdecl; overload;//Deprecated
    {class} function hashCode: Integer; cdecl;
    {class} function toString: JString; cdecl;
    {class} property DECIMAL128: JMathContext read _GetDECIMAL128;
    {class} property DECIMAL32: JMathContext read _GetDECIMAL32;
    {class} property DECIMAL64: JMathContext read _GetDECIMAL64;
    {class} property UNLIMITED: JMathContext read _GetUNLIMITED;
  end;

  [JavaSignature('java/math/MathContext')]
  JMathContext = interface(JObject)
    ['{9AC8FD30-F111-4D18-AF6B-1FB0F8B44CC7}']
    function equals(x: JObject): Boolean; cdecl;
    function getPrecision: Integer; cdecl;
    function getRoundingMode: JRoundingMode; cdecl;
  end;
  TJMathContext = class(TJavaGenericImport<JMathContextClass, JMathContext>) end;

  JRoundingModeClass = interface(JEnumClass)
    ['{832C09BF-E862-4B62-82F4-875D0E27BEAC}']
    {class} function _GetCEILING: JRoundingMode; cdecl;
    {class} function _GetDOWN: JRoundingMode; cdecl;
    {class} function _GetFLOOR: JRoundingMode; cdecl;
    {class} function _GetHALF_DOWN: JRoundingMode; cdecl;
    {class} function _GetHALF_EVEN: JRoundingMode; cdecl;
    {class} function _GetHALF_UP: JRoundingMode; cdecl;
    {class} function _GetUNNECESSARY: JRoundingMode; cdecl;
    {class} function _GetUP: JRoundingMode; cdecl;
    {class} function valueOf(name: JString): JRoundingMode; cdecl; overload;//Deprecated
    {class} function valueOf(mode: Integer): JRoundingMode; cdecl; overload;//Deprecated
    {class} function values: TJavaObjectArray<JRoundingMode>; cdecl;//Deprecated
    {class} property CEILING: JRoundingMode read _GetCEILING;
    {class} property DOWN: JRoundingMode read _GetDOWN;
    {class} property FLOOR: JRoundingMode read _GetFLOOR;
    {class} property HALF_DOWN: JRoundingMode read _GetHALF_DOWN;
    {class} property HALF_EVEN: JRoundingMode read _GetHALF_EVEN;
    {class} property HALF_UP: JRoundingMode read _GetHALF_UP;
    {class} property UNNECESSARY: JRoundingMode read _GetUNNECESSARY;
    {class} property UP: JRoundingMode read _GetUP;
  end;

  [JavaSignature('java/math/RoundingMode')]
  JRoundingMode = interface(JEnum)
    ['{6C96FF9E-74EE-4135-9310-847B4AC4929C}']
  end;
  TJRoundingMode = class(TJavaGenericImport<JRoundingModeClass, JRoundingMode>) end;

  JCurrencyClass = interface(JObjectClass)
    ['{819E7837-91D5-4FC1-9934-90AE60501BC4}']
    {class} function getAvailableCurrencies: JSet; cdecl;//Deprecated
    {class} function getDefaultFractionDigits: Integer; cdecl;//Deprecated
    {class} function getDisplayName: JString; cdecl; overload;//Deprecated
    {class} function getDisplayName(locale: JLocale): JString; cdecl; overload;//Deprecated
    {class} function getInstance(currencyCode: JString): JCurrency; cdecl; overload;//Deprecated
    {class} function getInstance(locale: JLocale): JCurrency; cdecl; overload;//Deprecated
    {class} function getSymbol(locale: JLocale): JString; cdecl; overload;//Deprecated
    {class} function toString: JString; cdecl;//Deprecated
  end;

  [JavaSignature('java/util/Currency')]
  JCurrency = interface(JObject)
    ['{484CC272-21BF-49BD-B8D8-6BEB10DFFDE0}']
    function getCurrencyCode: JString; cdecl;//Deprecated
    function getSymbol: JString; cdecl; overload;//Deprecated
  end;
  TJCurrency = class(TJavaGenericImport<JCurrencyClass, JCurrency>) end;

  JSortedSetClass = interface(JSetClass)
    ['{D632DFD2-D924-463C-8111-EEB33B490B09}']
    {class} function comparator: JComparator; cdecl;//Deprecated
    {class} function first: JObject; cdecl;//Deprecated
    {class} function headSet(&end: JObject): JSortedSet; cdecl;//Deprecated
    {class} function tailSet(start: JObject): JSortedSet; cdecl;//Deprecated
  end;

  [JavaSignature('java/util/SortedSet')]
  JSortedSet = interface(JSet)
    ['{D812E9E6-D0D0-4974-9E17-20601495F86C}']
    function last: JObject; cdecl;//Deprecated
    function subSet(start: JObject; &end: JObject): JSortedSet; cdecl;//Deprecated
  end;
  TJSortedSet = class(TJavaGenericImport<JSortedSetClass, JSortedSet>) end;

  JNavigableSetClass = interface(JSortedSetClass)
    ['{6BB98CBF-284D-4FC5-A792-09DBB1168402}']
    {class} function descendingSet: JNavigableSet; cdecl;
    {class} function floor(e: JObject): JObject; cdecl;
    {class} function headSet(toElement: JObject; inclusive: Boolean): JNavigableSet; cdecl; overload;
    {class} function lower(e: JObject): JObject; cdecl;
    {class} function pollFirst: JObject; cdecl;
    {class} function pollLast: JObject; cdecl;
    {class} function tailSet(fromElement: JObject): JSortedSet; cdecl; overload;
  end;

  [JavaSignature('java/util/NavigableSet')]
  JNavigableSet = interface(JSortedSet)
    ['{FFE5FDC3-1071-413A-9D8D-4873ECBE3685}']
    function ceiling(e: JObject): JObject; cdecl;
    function descendingIterator: JIterator; cdecl;
    function headSet(toElement: JObject): JSortedSet; cdecl; overload;
    function higher(e: JObject): JObject; cdecl;
    function iterator: JIterator; cdecl;
    function subSet(fromElement: JObject; fromInclusive: Boolean; toElement: JObject; toInclusive: Boolean): JNavigableSet; cdecl; overload;
    function subSet(fromElement: JObject; toElement: JObject): JSortedSet; cdecl; overload;
    function tailSet(fromElement: JObject; inclusive: Boolean): JNavigableSet; cdecl; overload;
  end;
  TJNavigableSet = class(TJavaGenericImport<JNavigableSetClass, JNavigableSet>) end;

  JTreeSetClass = interface(JAbstractSetClass)
    ['{412982A1-EAE9-430F-A292-29A8C2A1883E}']
    {class} function init: JTreeSet; cdecl; overload;//Deprecated
    {class} function init(collection: JCollection): JTreeSet; cdecl; overload;//Deprecated
    {class} function init(comparator: JComparator): JTreeSet; cdecl; overload;//Deprecated
    {class} function init(&set:  JSortedSet): JTreeSet; cdecl; overload;//Deprecated
    {class} function addAll(collection: JCollection): Boolean; cdecl;//Deprecated
    {class} function ceiling(e: JObject): JObject; cdecl;//Deprecated
    {class} procedure clear; cdecl;//Deprecated
    {class} function descendingIterator: JIterator; cdecl;
    {class} function descendingSet: JNavigableSet; cdecl;
    {class} function first: JObject; cdecl;
    {class} function higher(e: JObject): JObject; cdecl;
    {class} function isEmpty: Boolean; cdecl;
    {class} function iterator: JIterator; cdecl;
    {class} function pollLast: JObject; cdecl;
    {class} function remove(&object: JObject): Boolean; cdecl;
    {class} function size: Integer; cdecl;
    {class} function tailSet(start: JObject): JSortedSet; cdecl; overload;
  end;

  [JavaSignature('java/util/TreeSet')]
  JTreeSet = interface(JAbstractSet)
    ['{A09957D1-D3BE-487F-81D4-6EB1315FA56C}']
    function add(&object: JObject): Boolean; cdecl;//Deprecated
    function clone: JObject; cdecl;
    function comparator: JComparator; cdecl;
    function contains(&object: JObject): Boolean; cdecl;
    function floor(e: JObject): JObject; cdecl;
    function headSet(&end: JObject; endInclusive: Boolean): JNavigableSet; cdecl; overload;
    function headSet(&end: JObject): JSortedSet; cdecl; overload;
    function last: JObject; cdecl;
    function lower(e: JObject): JObject; cdecl;
    function pollFirst: JObject; cdecl;
    function subSet(start: JObject; startInclusive: Boolean; &end: JObject; endInclusive: Boolean): JNavigableSet; cdecl; overload;
    function subSet(start: JObject; &end: JObject): JSortedSet; cdecl; overload;
    function tailSet(start: JObject; startInclusive: Boolean): JNavigableSet; cdecl; overload;
  end;
  TJTreeSet = class(TJavaGenericImport<JTreeSetClass, JTreeSet>) end;

  JAtomicBooleanClass = interface(JObjectClass)
    ['{0B779F71-44E4-44F2-82FB-2BC97D8AC338}']
    {class} function init(initialValue: Boolean): JAtomicBoolean; cdecl; overload;//Deprecated
    {class} function init: JAtomicBoolean; cdecl; overload;//Deprecated
    {class} function compareAndSet(expect: Boolean; update: Boolean): Boolean; cdecl;
    {class} procedure &set(newValue: Boolean); cdecl;
    {class} function toString: JString; cdecl;
    {class} function weakCompareAndSet(expect: Boolean; update: Boolean): Boolean; cdecl;
  end;

  [JavaSignature('java/util/concurrent/atomic/AtomicBoolean')]
  JAtomicBoolean = interface(JObject)
    ['{332E141C-D230-4F7B-9FF1-CFE5AE632E18}']
    function get: Boolean; cdecl;
    function getAndSet(newValue: Boolean): Boolean; cdecl;
    procedure lazySet(newValue: Boolean); cdecl;
  end;
  TJAtomicBoolean = class(TJavaGenericImport<JAtomicBooleanClass, JAtomicBoolean>) end;

implementation

procedure RegisterTypes;
begin
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JAccount', TypeInfo(Grijjy.FBSDK.Android.API.JAccount));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JAnimator', TypeInfo(Grijjy.FBSDK.Android.API.JAnimator));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JAnimator_AnimatorListener', TypeInfo(Grijjy.FBSDK.Android.API.JAnimator_AnimatorListener));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JAnimator_AnimatorPauseListener', TypeInfo(Grijjy.FBSDK.Android.API.JAnimator_AnimatorPauseListener));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JKeyframe', TypeInfo(Grijjy.FBSDK.Android.API.JKeyframe));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JLayoutTransition', TypeInfo(Grijjy.FBSDK.Android.API.JLayoutTransition));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JLayoutTransition_TransitionListener', TypeInfo(Grijjy.FBSDK.Android.API.JLayoutTransition_TransitionListener));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JPropertyValuesHolder', TypeInfo(Grijjy.FBSDK.Android.API.JPropertyValuesHolder));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JStateListAnimator', TypeInfo(Grijjy.FBSDK.Android.API.JStateListAnimator));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JTimeInterpolator', TypeInfo(Grijjy.FBSDK.Android.API.JTimeInterpolator));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JTypeConverter', TypeInfo(Grijjy.FBSDK.Android.API.JTypeConverter));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JTypeEvaluator', TypeInfo(Grijjy.FBSDK.Android.API.JTypeEvaluator));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JValueAnimator', TypeInfo(Grijjy.FBSDK.Android.API.JValueAnimator));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JValueAnimator_AnimatorUpdateListener', TypeInfo(Grijjy.FBSDK.Android.API.JValueAnimator_AnimatorUpdateListener));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JAsyncTask', TypeInfo(Grijjy.FBSDK.Android.API.JAsyncTask));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JAsyncTask_Status', TypeInfo(Grijjy.FBSDK.Android.API.JAsyncTask_Status));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JPathMotion', TypeInfo(Grijjy.FBSDK.Android.API.JPathMotion));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JScene', TypeInfo(Grijjy.FBSDK.Android.API.JScene));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JTransition', TypeInfo(Grijjy.FBSDK.Android.API.JTransition));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JTransition_EpicenterCallback', TypeInfo(Grijjy.FBSDK.Android.API.JTransition_EpicenterCallback));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JTransition_TransitionListener', TypeInfo(Grijjy.FBSDK.Android.API.JTransition_TransitionListener));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JTransitionManager', TypeInfo(Grijjy.FBSDK.Android.API.JTransitionManager));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JTransitionPropagation', TypeInfo(Grijjy.FBSDK.Android.API.JTransitionPropagation));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JTransitionValues', TypeInfo(Grijjy.FBSDK.Android.API.JTransitionValues));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JInterpolator', TypeInfo(Grijjy.FBSDK.Android.API.JInterpolator));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JToolbar_LayoutParams', TypeInfo(Grijjy.FBSDK.Android.API.JToolbar_LayoutParams));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JAccessToken', TypeInfo(Grijjy.FBSDK.Android.API.JAccessToken));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JUtility_GraphMeRequestWithCacheCallback', TypeInfo(Grijjy.FBSDK.Android.API.JUtility_GraphMeRequestWithCacheCallback));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JAccessToken_1', TypeInfo(Grijjy.FBSDK.Android.API.JAccessToken_1));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JAccessToken_2', TypeInfo(Grijjy.FBSDK.Android.API.JAccessToken_2));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JAccessToken_AccessTokenCreationCallback', TypeInfo(Grijjy.FBSDK.Android.API.JAccessToken_AccessTokenCreationCallback));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JAccessToken_AccessTokenRefreshCallback', TypeInfo(Grijjy.FBSDK.Android.API.JAccessToken_AccessTokenRefreshCallback));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JAccessTokenCache', TypeInfo(Grijjy.FBSDK.Android.API.JAccessTokenCache));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JAccessTokenCache_SharedPreferencesTokenCachingStrategyFactory', TypeInfo(Grijjy.FBSDK.Android.API.JAccessTokenCache_SharedPreferencesTokenCachingStrategyFactory));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JAccessTokenManager', TypeInfo(Grijjy.FBSDK.Android.API.JAccessTokenManager));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JAccessTokenManager_1', TypeInfo(Grijjy.FBSDK.Android.API.JAccessTokenManager_1));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JGraphRequest_Callback', TypeInfo(Grijjy.FBSDK.Android.API.JGraphRequest_Callback));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JAccessTokenManager_2', TypeInfo(Grijjy.FBSDK.Android.API.JAccessTokenManager_2));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JAccessTokenManager_3', TypeInfo(Grijjy.FBSDK.Android.API.JAccessTokenManager_3));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JGraphRequestBatch_Callback', TypeInfo(Grijjy.FBSDK.Android.API.JGraphRequestBatch_Callback));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JAccessTokenManager_4', TypeInfo(Grijjy.FBSDK.Android.API.JAccessTokenManager_4));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JAccessTokenManager_RefreshResult', TypeInfo(Grijjy.FBSDK.Android.API.JAccessTokenManager_RefreshResult));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JAccessTokenSource', TypeInfo(Grijjy.FBSDK.Android.API.JAccessTokenSource));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JAccessTokenTracker', TypeInfo(Grijjy.FBSDK.Android.API.JAccessTokenTracker));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JAccessTokenTracker_1', TypeInfo(Grijjy.FBSDK.Android.API.JAccessTokenTracker_1));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JAccessTokenTracker_CurrentAccessTokenBroadcastReceiver', TypeInfo(Grijjy.FBSDK.Android.API.JAccessTokenTracker_CurrentAccessTokenBroadcastReceiver));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.Jfacebook_BuildConfig', TypeInfo(Grijjy.FBSDK.Android.API.Jfacebook_BuildConfig));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JCallbackManager', TypeInfo(Grijjy.FBSDK.Android.API.JCallbackManager));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JCallbackManager_Factory', TypeInfo(Grijjy.FBSDK.Android.API.JCallbackManager_Factory));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JCustomTabActivity', TypeInfo(Grijjy.FBSDK.Android.API.JCustomTabActivity));
  //TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JFacebookActivity', TypeInfo(Grijjy.FBSDK.Android.API.JFacebookActivity));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JFacebookException', TypeInfo(Grijjy.FBSDK.Android.API.JFacebookException));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JFacebookAuthorizationException', TypeInfo(Grijjy.FBSDK.Android.API.JFacebookAuthorizationException));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JFacebookBroadcastReceiver', TypeInfo(Grijjy.FBSDK.Android.API.JFacebookBroadcastReceiver));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JFacebookButtonBase', TypeInfo(Grijjy.FBSDK.Android.API.JFacebookButtonBase));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JFacebookButtonBase_1', TypeInfo(Grijjy.FBSDK.Android.API.JFacebookButtonBase_1));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JFacebookCallback', TypeInfo(Grijjy.FBSDK.Android.API.JFacebookCallback));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JFacebookContentProvider', TypeInfo(Grijjy.FBSDK.Android.API.JFacebookContentProvider));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JFacebookDialog', TypeInfo(Grijjy.FBSDK.Android.API.JFacebookDialog));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JFacebookDialogException', TypeInfo(Grijjy.FBSDK.Android.API.JFacebookDialogException));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JFacebookGraphResponseException', TypeInfo(Grijjy.FBSDK.Android.API.JFacebookGraphResponseException));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JFacebookOperationCanceledException', TypeInfo(Grijjy.FBSDK.Android.API.JFacebookOperationCanceledException));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JFacebookRequestError', TypeInfo(Grijjy.FBSDK.Android.API.JFacebookRequestError));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JFacebookRequestError_1', TypeInfo(Grijjy.FBSDK.Android.API.JFacebookRequestError_1));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JFacebookRequestError_Category', TypeInfo(Grijjy.FBSDK.Android.API.JFacebookRequestError_Category));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JFacebookRequestError_Range', TypeInfo(Grijjy.FBSDK.Android.API.JFacebookRequestError_Range));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JFacebookSdk', TypeInfo(Grijjy.FBSDK.Android.API.JFacebookSdk));
//  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JFacebookSdk_1', TypeInfo(Grijjy.FBSDK.Android.API.JFacebookSdk_1));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JFacebookSdk_2', TypeInfo(Grijjy.FBSDK.Android.API.JFacebookSdk_2));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JFacebookSdk_3', TypeInfo(Grijjy.FBSDK.Android.API.JFacebookSdk_3));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JFacebookSdk_4', TypeInfo(Grijjy.FBSDK.Android.API.JFacebookSdk_4));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JFacebookSdk_InitializeCallback', TypeInfo(Grijjy.FBSDK.Android.API.JFacebookSdk_InitializeCallback));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JFacebookSdkNotInitializedException', TypeInfo(Grijjy.FBSDK.Android.API.JFacebookSdkNotInitializedException));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JFacebookSdkVersion', TypeInfo(Grijjy.FBSDK.Android.API.JFacebookSdkVersion));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JFacebookServiceException', TypeInfo(Grijjy.FBSDK.Android.API.JFacebookServiceException));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JGraphRequest', TypeInfo(Grijjy.FBSDK.Android.API.JGraphRequest));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JGraphRequest_1', TypeInfo(Grijjy.FBSDK.Android.API.JGraphRequest_1));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JGraphRequest_2', TypeInfo(Grijjy.FBSDK.Android.API.JGraphRequest_2));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JGraphRequest_3', TypeInfo(Grijjy.FBSDK.Android.API.JGraphRequest_3));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JGraphRequest_4', TypeInfo(Grijjy.FBSDK.Android.API.JGraphRequest_4));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JGraphRequest_5', TypeInfo(Grijjy.FBSDK.Android.API.JGraphRequest_5));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JGraphRequest_KeyValueSerializer', TypeInfo(Grijjy.FBSDK.Android.API.JGraphRequest_KeyValueSerializer));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JGraphRequest_6', TypeInfo(Grijjy.FBSDK.Android.API.JGraphRequest_6));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JOpenGraphJSONUtility_PhotoJSONProcessor', TypeInfo(Grijjy.FBSDK.Android.API.JOpenGraphJSONUtility_PhotoJSONProcessor));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JGraphRequest_7', TypeInfo(Grijjy.FBSDK.Android.API.JGraphRequest_7));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JGraphRequest_Attachment', TypeInfo(Grijjy.FBSDK.Android.API.JGraphRequest_Attachment));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JGraphRequest_GraphJSONArrayCallback', TypeInfo(Grijjy.FBSDK.Android.API.JGraphRequest_GraphJSONArrayCallback));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JGraphRequest_GraphJSONObjectCallback', TypeInfo(Grijjy.FBSDK.Android.API.JGraphRequest_GraphJSONObjectCallback));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JGraphRequest_OnProgressCallback', TypeInfo(Grijjy.FBSDK.Android.API.JGraphRequest_OnProgressCallback));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JGraphRequest_ParcelableResourceWithMimeType', TypeInfo(Grijjy.FBSDK.Android.API.JGraphRequest_ParcelableResourceWithMimeType));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JParcelableResourceWithMimeType_1', TypeInfo(Grijjy.FBSDK.Android.API.JParcelableResourceWithMimeType_1));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JGraphRequest_Serializer', TypeInfo(Grijjy.FBSDK.Android.API.JGraphRequest_Serializer));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JGraphRequestAsyncTask', TypeInfo(Grijjy.FBSDK.Android.API.JGraphRequestAsyncTask));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JGraphRequestBatch', TypeInfo(Grijjy.FBSDK.Android.API.JGraphRequestBatch));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JGraphRequestBatch_OnProgressCallback', TypeInfo(Grijjy.FBSDK.Android.API.JGraphRequestBatch_OnProgressCallback));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JGraphResponse', TypeInfo(Grijjy.FBSDK.Android.API.JGraphResponse));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JGraphResponse_PagingDirection', TypeInfo(Grijjy.FBSDK.Android.API.JGraphResponse_PagingDirection));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JHttpMethod', TypeInfo(Grijjy.FBSDK.Android.API.JHttpMethod));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JLegacyTokenHelper', TypeInfo(Grijjy.FBSDK.Android.API.JLegacyTokenHelper));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JLoggingBehavior', TypeInfo(Grijjy.FBSDK.Android.API.JLoggingBehavior));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JProfile', TypeInfo(Grijjy.FBSDK.Android.API.JProfile));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JProfile_1', TypeInfo(Grijjy.FBSDK.Android.API.JProfile_1));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JProfile_2', TypeInfo(Grijjy.FBSDK.Android.API.JProfile_2));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JProfileCache', TypeInfo(Grijjy.FBSDK.Android.API.JProfileCache));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JProfileManager', TypeInfo(Grijjy.FBSDK.Android.API.JProfileManager));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JProfileTracker', TypeInfo(Grijjy.FBSDK.Android.API.JProfileTracker));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JProfileTracker_1', TypeInfo(Grijjy.FBSDK.Android.API.JProfileTracker_1));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JProfileTracker_ProfileBroadcastReceiver', TypeInfo(Grijjy.FBSDK.Android.API.JProfileTracker_ProfileBroadcastReceiver));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JProgressNoopOutputStream', TypeInfo(Grijjy.FBSDK.Android.API.JProgressNoopOutputStream));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JProgressOutputStream', TypeInfo(Grijjy.FBSDK.Android.API.JProgressOutputStream));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JProgressOutputStream_1', TypeInfo(Grijjy.FBSDK.Android.API.JProgressOutputStream_1));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JRequestOutputStream', TypeInfo(Grijjy.FBSDK.Android.API.JRequestOutputStream));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JRequestProgress', TypeInfo(Grijjy.FBSDK.Android.API.JRequestProgress));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JRequestProgress_1', TypeInfo(Grijjy.FBSDK.Android.API.JRequestProgress_1));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JTestUserManager', TypeInfo(Grijjy.FBSDK.Android.API.JTestUserManager));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JTestUserManager_Mode', TypeInfo(Grijjy.FBSDK.Android.API.JTestUserManager_Mode));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JAccessTokenAppIdPair', TypeInfo(Grijjy.FBSDK.Android.API.JAccessTokenAppIdPair));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JAccessTokenAppIdPair_1', TypeInfo(Grijjy.FBSDK.Android.API.JAccessTokenAppIdPair_1));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JAccessTokenAppIdPair_SerializationProxyV1', TypeInfo(Grijjy.FBSDK.Android.API.JAccessTokenAppIdPair_SerializationProxyV1));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JAppEvent', TypeInfo(Grijjy.FBSDK.Android.API.JAppEvent));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JAppEvent_1', TypeInfo(Grijjy.FBSDK.Android.API.JAppEvent_1));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JAppEvent_SerializationProxyV1', TypeInfo(Grijjy.FBSDK.Android.API.JAppEvent_SerializationProxyV1));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JAppEventCollection', TypeInfo(Grijjy.FBSDK.Android.API.JAppEventCollection));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JAppEventQueue', TypeInfo(Grijjy.FBSDK.Android.API.JAppEventQueue));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JAppEventQueue_1', TypeInfo(Grijjy.FBSDK.Android.API.JAppEventQueue_1));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JAppEventQueue_2', TypeInfo(Grijjy.FBSDK.Android.API.JAppEventQueue_2));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JAppEventQueue_3', TypeInfo(Grijjy.FBSDK.Android.API.JAppEventQueue_3));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JAppEventQueue_4', TypeInfo(Grijjy.FBSDK.Android.API.JAppEventQueue_4));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JAppEventQueue_5', TypeInfo(Grijjy.FBSDK.Android.API.JAppEventQueue_5));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JAppEventQueue_6', TypeInfo(Grijjy.FBSDK.Android.API.JAppEventQueue_6));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JAppEventStore', TypeInfo(Grijjy.FBSDK.Android.API.JAppEventStore));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JObjectInputStream', TypeInfo(Grijjy.FBSDK.Android.API.JObjectInputStream));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JAppEventStore_MovedClassObjectInputStream', TypeInfo(Grijjy.FBSDK.Android.API.JAppEventStore_MovedClassObjectInputStream));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JAppEventsConstants', TypeInfo(Grijjy.FBSDK.Android.API.JAppEventsConstants));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JAppEventsLogger', TypeInfo(Grijjy.FBSDK.Android.API.JAppEventsLogger));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JAppEventsLogger_1', TypeInfo(Grijjy.FBSDK.Android.API.JAppEventsLogger_1));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JAppEventsLogger_2', TypeInfo(Grijjy.FBSDK.Android.API.JAppEventsLogger_2));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JAppEventsLogger_3', TypeInfo(Grijjy.FBSDK.Android.API.JAppEventsLogger_3));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JAppEventsLogger_FlushBehavior', TypeInfo(Grijjy.FBSDK.Android.API.JAppEventsLogger_FlushBehavior));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JAppEventsLogger_PersistedAppSessionInfo', TypeInfo(Grijjy.FBSDK.Android.API.JAppEventsLogger_PersistedAppSessionInfo));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JPersistedAppSessionInfo_1', TypeInfo(Grijjy.FBSDK.Android.API.JPersistedAppSessionInfo_1));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JFacebookTimeSpentData', TypeInfo(Grijjy.FBSDK.Android.API.JFacebookTimeSpentData));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JFacebookTimeSpentData_1', TypeInfo(Grijjy.FBSDK.Android.API.JFacebookTimeSpentData_1));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JFacebookTimeSpentData_SerializationProxyV1', TypeInfo(Grijjy.FBSDK.Android.API.JFacebookTimeSpentData_SerializationProxyV1));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JFacebookTimeSpentData_SerializationProxyV2', TypeInfo(Grijjy.FBSDK.Android.API.JFacebookTimeSpentData_SerializationProxyV2));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JFlushReason', TypeInfo(Grijjy.FBSDK.Android.API.JFlushReason));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JFlushResult', TypeInfo(Grijjy.FBSDK.Android.API.JFlushResult));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JFlushStatistics', TypeInfo(Grijjy.FBSDK.Android.API.JFlushStatistics));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JPersistedEvents', TypeInfo(Grijjy.FBSDK.Android.API.JPersistedEvents));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JSessionEventsState', TypeInfo(Grijjy.FBSDK.Android.API.JSessionEventsState));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JActivityLifecycleTracker', TypeInfo(Grijjy.FBSDK.Android.API.JActivityLifecycleTracker));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JActivityLifecycleTracker_1', TypeInfo(Grijjy.FBSDK.Android.API.JActivityLifecycleTracker_1));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JActivityLifecycleTracker_2', TypeInfo(Grijjy.FBSDK.Android.API.JActivityLifecycleTracker_2));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JActivityLifecycleTracker_3', TypeInfo(Grijjy.FBSDK.Android.API.JActivityLifecycleTracker_3));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JActivityLifecycleTracker_4', TypeInfo(Grijjy.FBSDK.Android.API.JActivityLifecycleTracker_4));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.J4_1', TypeInfo(Grijjy.FBSDK.Android.API.J4_1));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.Jinternal_Constants', TypeInfo(Grijjy.FBSDK.Android.API.Jinternal_Constants));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JSessionInfo', TypeInfo(Grijjy.FBSDK.Android.API.JSessionInfo));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JSessionLogger', TypeInfo(Grijjy.FBSDK.Android.API.JSessionLogger));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JSourceApplicationInfo', TypeInfo(Grijjy.FBSDK.Android.API.JSourceApplicationInfo));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JSourceApplicationInfo_1', TypeInfo(Grijjy.FBSDK.Android.API.JSourceApplicationInfo_1));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JSourceApplicationInfo_Factory', TypeInfo(Grijjy.FBSDK.Android.API.JSourceApplicationInfo_Factory));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JAppLinkData', TypeInfo(Grijjy.FBSDK.Android.API.JAppLinkData));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JAppLinkData_1', TypeInfo(Grijjy.FBSDK.Android.API.JAppLinkData_1));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JAppLinkData_CompletionHandler', TypeInfo(Grijjy.FBSDK.Android.API.JAppLinkData_CompletionHandler));
  //TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JFacebookAppLinkResolver', TypeInfo(Grijjy.FBSDK.Android.API.JFacebookAppLinkResolver));
  //TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JFacebookAppLinkResolver_1', TypeInfo(Grijjy.FBSDK.Android.API.JFacebookAppLinkResolver_1));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JFacebookAppLinkResolver_2', TypeInfo(Grijjy.FBSDK.Android.API.JFacebookAppLinkResolver_2));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JAnalyticsEvents', TypeInfo(Grijjy.FBSDK.Android.API.JAnalyticsEvents));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JAppCall', TypeInfo(Grijjy.FBSDK.Android.API.JAppCall));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JAppEventsLoggerUtility', TypeInfo(Grijjy.FBSDK.Android.API.JAppEventsLoggerUtility));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JAppEventsLoggerUtility_1', TypeInfo(Grijjy.FBSDK.Android.API.JAppEventsLoggerUtility_1));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JAppEventsLoggerUtility_GraphAPIActivityType', TypeInfo(Grijjy.FBSDK.Android.API.JAppEventsLoggerUtility_GraphAPIActivityType));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JAttributionIdentifiers', TypeInfo(Grijjy.FBSDK.Android.API.JAttributionIdentifiers));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JAttributionIdentifiers_1', TypeInfo(Grijjy.FBSDK.Android.API.JAttributionIdentifiers_1));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JAttributionIdentifiers_GoogleAdInfo', TypeInfo(Grijjy.FBSDK.Android.API.JAttributionIdentifiers_GoogleAdInfo));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JAttributionIdentifiers_GoogleAdServiceConnection', TypeInfo(Grijjy.FBSDK.Android.API.JAttributionIdentifiers_GoogleAdServiceConnection));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JBoltsMeasurementEventListener', TypeInfo(Grijjy.FBSDK.Android.API.JBoltsMeasurementEventListener));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JBundleJSONConverter', TypeInfo(Grijjy.FBSDK.Android.API.JBundleJSONConverter));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JBundleJSONConverter_Setter', TypeInfo(Grijjy.FBSDK.Android.API.JBundleJSONConverter_Setter));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JBundleJSONConverter_1', TypeInfo(Grijjy.FBSDK.Android.API.JBundleJSONConverter_1));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JBundleJSONConverter_2', TypeInfo(Grijjy.FBSDK.Android.API.JBundleJSONConverter_2));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JBundleJSONConverter_3', TypeInfo(Grijjy.FBSDK.Android.API.JBundleJSONConverter_3));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JBundleJSONConverter_4', TypeInfo(Grijjy.FBSDK.Android.API.JBundleJSONConverter_4));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JBundleJSONConverter_5', TypeInfo(Grijjy.FBSDK.Android.API.JBundleJSONConverter_5));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JBundleJSONConverter_6', TypeInfo(Grijjy.FBSDK.Android.API.JBundleJSONConverter_6));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JBundleJSONConverter_7', TypeInfo(Grijjy.FBSDK.Android.API.JBundleJSONConverter_7));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JCallbackManagerImpl', TypeInfo(Grijjy.FBSDK.Android.API.JCallbackManagerImpl));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JCallbackManagerImpl_Callback', TypeInfo(Grijjy.FBSDK.Android.API.JCallbackManagerImpl_Callback));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JCallbackManagerImpl_RequestCodeOffset', TypeInfo(Grijjy.FBSDK.Android.API.JCallbackManagerImpl_RequestCodeOffset));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JCollectionMapper', TypeInfo(Grijjy.FBSDK.Android.API.JCollectionMapper));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JCollectionMapper_OnErrorListener', TypeInfo(Grijjy.FBSDK.Android.API.JCollectionMapper_OnErrorListener));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JCollectionMapper_OnMapperCompleteListener', TypeInfo(Grijjy.FBSDK.Android.API.JCollectionMapper_OnMapperCompleteListener));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JCollectionMapper_1', TypeInfo(Grijjy.FBSDK.Android.API.JCollectionMapper_1));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JCollectionMapper_OnMapValueCompleteListener', TypeInfo(Grijjy.FBSDK.Android.API.JCollectionMapper_OnMapValueCompleteListener));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JCollectionMapper_2', TypeInfo(Grijjy.FBSDK.Android.API.JCollectionMapper_2));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JCollectionMapper_Collection', TypeInfo(Grijjy.FBSDK.Android.API.JCollectionMapper_Collection));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JCollectionMapper_ValueMapper', TypeInfo(Grijjy.FBSDK.Android.API.JCollectionMapper_ValueMapper));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JCustomTab', TypeInfo(Grijjy.FBSDK.Android.API.JCustomTab));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JDialogFeature', TypeInfo(Grijjy.FBSDK.Android.API.JDialogFeature));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JDialogPresenter', TypeInfo(Grijjy.FBSDK.Android.API.JDialogPresenter));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JDialogPresenter_ParameterProvider', TypeInfo(Grijjy.FBSDK.Android.API.JDialogPresenter_ParameterProvider));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JFacebookDialogBase', TypeInfo(Grijjy.FBSDK.Android.API.JFacebookDialogBase));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JFacebookDialogBase_ModeHandler', TypeInfo(Grijjy.FBSDK.Android.API.JFacebookDialogBase_ModeHandler));
  //TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JFacebookDialogFragment', TypeInfo(Grijjy.FBSDK.Android.API.JFacebookDialogFragment));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JWebDialog_OnCompleteListener', TypeInfo(Grijjy.FBSDK.Android.API.JWebDialog_OnCompleteListener));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JFacebookDialogFragment_1', TypeInfo(Grijjy.FBSDK.Android.API.JFacebookDialogFragment_1));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JFacebookDialogFragment_2', TypeInfo(Grijjy.FBSDK.Android.API.JFacebookDialogFragment_2));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JFacebookRequestErrorClassification', TypeInfo(Grijjy.FBSDK.Android.API.JFacebookRequestErrorClassification));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JFacebookRequestErrorClassification_1', TypeInfo(Grijjy.FBSDK.Android.API.JFacebookRequestErrorClassification_1));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JFacebookRequestErrorClassification_2', TypeInfo(Grijjy.FBSDK.Android.API.JFacebookRequestErrorClassification_2));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JFacebookRequestErrorClassification_3', TypeInfo(Grijjy.FBSDK.Android.API.JFacebookRequestErrorClassification_3));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JWebDialog', TypeInfo(Grijjy.FBSDK.Android.API.JWebDialog));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JFacebookWebFallbackDialog', TypeInfo(Grijjy.FBSDK.Android.API.JFacebookWebFallbackDialog));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JFacebookWebFallbackDialog_1', TypeInfo(Grijjy.FBSDK.Android.API.JFacebookWebFallbackDialog_1));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JFileLruCache', TypeInfo(Grijjy.FBSDK.Android.API.JFileLruCache));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JFileLruCache_StreamCloseCallback', TypeInfo(Grijjy.FBSDK.Android.API.JFileLruCache_StreamCloseCallback));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JFileLruCache_1', TypeInfo(Grijjy.FBSDK.Android.API.JFileLruCache_1));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JFileLruCache_2', TypeInfo(Grijjy.FBSDK.Android.API.JFileLruCache_2));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JFileLruCache_3', TypeInfo(Grijjy.FBSDK.Android.API.JFileLruCache_3));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JFileLruCache_BufferFile', TypeInfo(Grijjy.FBSDK.Android.API.JFileLruCache_BufferFile));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JBufferFile_1', TypeInfo(Grijjy.FBSDK.Android.API.JBufferFile_1));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JBufferFile_2', TypeInfo(Grijjy.FBSDK.Android.API.JBufferFile_2));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JFileLruCache_CloseCallbackOutputStream', TypeInfo(Grijjy.FBSDK.Android.API.JFileLruCache_CloseCallbackOutputStream));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JFileLruCache_CopyingInputStream', TypeInfo(Grijjy.FBSDK.Android.API.JFileLruCache_CopyingInputStream));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JFileLruCache_Limits', TypeInfo(Grijjy.FBSDK.Android.API.JFileLruCache_Limits));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JFileLruCache_ModifiedFile', TypeInfo(Grijjy.FBSDK.Android.API.JFileLruCache_ModifiedFile));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JFileLruCache_StreamHeader', TypeInfo(Grijjy.FBSDK.Android.API.JFileLruCache_StreamHeader));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JFragmentWrapper', TypeInfo(Grijjy.FBSDK.Android.API.JFragmentWrapper));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JGraphUtil', TypeInfo(Grijjy.FBSDK.Android.API.JGraphUtil));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JImageDownloader', TypeInfo(Grijjy.FBSDK.Android.API.JImageDownloader));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JImageDownloader_1', TypeInfo(Grijjy.FBSDK.Android.API.JImageDownloader_1));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JImageDownloader_CacheReadWorkItem', TypeInfo(Grijjy.FBSDK.Android.API.JImageDownloader_CacheReadWorkItem));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JImageDownloader_DownloadImageWorkItem', TypeInfo(Grijjy.FBSDK.Android.API.JImageDownloader_DownloadImageWorkItem));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JImageDownloader_DownloaderContext', TypeInfo(Grijjy.FBSDK.Android.API.JImageDownloader_DownloaderContext));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JImageDownloader_RequestKey', TypeInfo(Grijjy.FBSDK.Android.API.JImageDownloader_RequestKey));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JImageRequest', TypeInfo(Grijjy.FBSDK.Android.API.JImageRequest));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JImageRequest_1', TypeInfo(Grijjy.FBSDK.Android.API.JImageRequest_1));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JImageRequest_Builder', TypeInfo(Grijjy.FBSDK.Android.API.JImageRequest_Builder));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JImageRequest_Callback', TypeInfo(Grijjy.FBSDK.Android.API.JImageRequest_Callback));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JImageResponse', TypeInfo(Grijjy.FBSDK.Android.API.JImageResponse));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JImageResponseCache', TypeInfo(Grijjy.FBSDK.Android.API.JImageResponseCache));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JFilterInputStream', TypeInfo(Grijjy.FBSDK.Android.API.JFilterInputStream));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JBufferedInputStream', TypeInfo(Grijjy.FBSDK.Android.API.JBufferedInputStream));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JImageResponseCache_BufferedHttpInputStream', TypeInfo(Grijjy.FBSDK.Android.API.JImageResponseCache_BufferedHttpInputStream));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JInternalSettings', TypeInfo(Grijjy.FBSDK.Android.API.JInternalSettings));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JJsonUtil', TypeInfo(Grijjy.FBSDK.Android.API.JJsonUtil));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JMap_Entry', TypeInfo(Grijjy.FBSDK.Android.API.JMap_Entry));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JJsonUtil_JSONObjectEntry', TypeInfo(Grijjy.FBSDK.Android.API.JJsonUtil_JSONObjectEntry));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JLockOnGetVariable', TypeInfo(Grijjy.FBSDK.Android.API.JLockOnGetVariable));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JLockOnGetVariable_1', TypeInfo(Grijjy.FBSDK.Android.API.JLockOnGetVariable_1));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.Jinternal_Logger', TypeInfo(Grijjy.FBSDK.Android.API.Jinternal_Logger));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JLoginAuthorizationType', TypeInfo(Grijjy.FBSDK.Android.API.JLoginAuthorizationType));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JMutable', TypeInfo(Grijjy.FBSDK.Android.API.JMutable));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JNativeAppCallAttachmentStore', TypeInfo(Grijjy.FBSDK.Android.API.JNativeAppCallAttachmentStore));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JNativeAppCallAttachmentStore_1', TypeInfo(Grijjy.FBSDK.Android.API.JNativeAppCallAttachmentStore_1));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JNativeAppCallAttachmentStore_Attachment', TypeInfo(Grijjy.FBSDK.Android.API.JNativeAppCallAttachmentStore_Attachment));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JNativeProtocol', TypeInfo(Grijjy.FBSDK.Android.API.JNativeProtocol));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JNativeProtocol_1', TypeInfo(Grijjy.FBSDK.Android.API.JNativeProtocol_1));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JNativeProtocol_NativeAppInfo', TypeInfo(Grijjy.FBSDK.Android.API.JNativeProtocol_NativeAppInfo));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JNativeProtocol_KatanaAppInfo', TypeInfo(Grijjy.FBSDK.Android.API.JNativeProtocol_KatanaAppInfo));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JNativeProtocol_MessengerAppInfo', TypeInfo(Grijjy.FBSDK.Android.API.JNativeProtocol_MessengerAppInfo));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JNativeProtocol_WakizashiAppInfo', TypeInfo(Grijjy.FBSDK.Android.API.JNativeProtocol_WakizashiAppInfo));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JPermissionType', TypeInfo(Grijjy.FBSDK.Android.API.JPermissionType));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JPlatformServiceClient', TypeInfo(Grijjy.FBSDK.Android.API.JPlatformServiceClient));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JPlatformServiceClient_1', TypeInfo(Grijjy.FBSDK.Android.API.JPlatformServiceClient_1));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JPlatformServiceClient_CompletedListener', TypeInfo(Grijjy.FBSDK.Android.API.JPlatformServiceClient_CompletedListener));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JProfileInformationCache', TypeInfo(Grijjy.FBSDK.Android.API.JProfileInformationCache));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JServerProtocol', TypeInfo(Grijjy.FBSDK.Android.API.JServerProtocol));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JUrlRedirectCache', TypeInfo(Grijjy.FBSDK.Android.API.JUrlRedirectCache));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JUtility', TypeInfo(Grijjy.FBSDK.Android.API.JUtility));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JUtility_1', TypeInfo(Grijjy.FBSDK.Android.API.JUtility_1));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JUtility_2', TypeInfo(Grijjy.FBSDK.Android.API.JUtility_2));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JUtility_3', TypeInfo(Grijjy.FBSDK.Android.API.JUtility_3));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JUtility_DialogFeatureConfig', TypeInfo(Grijjy.FBSDK.Android.API.JUtility_DialogFeatureConfig));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JUtility_FetchedAppSettings', TypeInfo(Grijjy.FBSDK.Android.API.JUtility_FetchedAppSettings));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JUtility_Mapper', TypeInfo(Grijjy.FBSDK.Android.API.JUtility_Mapper));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JUtility_PermissionsPair', TypeInfo(Grijjy.FBSDK.Android.API.JUtility_PermissionsPair));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JUtility_Predicate', TypeInfo(Grijjy.FBSDK.Android.API.JUtility_Predicate));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JValidate', TypeInfo(Grijjy.FBSDK.Android.API.JValidate));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JWebDialog_1', TypeInfo(Grijjy.FBSDK.Android.API.JWebDialog_1));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JWebDialog_2', TypeInfo(Grijjy.FBSDK.Android.API.JWebDialog_2));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JWebDialog_3', TypeInfo(Grijjy.FBSDK.Android.API.JWebDialog_3));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JWebDialog_4', TypeInfo(Grijjy.FBSDK.Android.API.JWebDialog_4));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JWebDialog_Builder', TypeInfo(Grijjy.FBSDK.Android.API.JWebDialog_Builder));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JWebDialog_DialogWebViewClient', TypeInfo(Grijjy.FBSDK.Android.API.JWebDialog_DialogWebViewClient));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JWorkQueue', TypeInfo(Grijjy.FBSDK.Android.API.JWorkQueue));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JWorkQueue_1', TypeInfo(Grijjy.FBSDK.Android.API.JWorkQueue_1));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JWorkQueue_WorkItem', TypeInfo(Grijjy.FBSDK.Android.API.JWorkQueue_WorkItem));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JWorkQueue_WorkNode', TypeInfo(Grijjy.FBSDK.Android.API.JWorkQueue_WorkNode));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JLoginMethodHandler', TypeInfo(Grijjy.FBSDK.Android.API.JLoginMethodHandler));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JWebLoginMethodHandler', TypeInfo(Grijjy.FBSDK.Android.API.JWebLoginMethodHandler));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JCustomTabLoginMethodHandler', TypeInfo(Grijjy.FBSDK.Android.API.JCustomTabLoginMethodHandler));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JCustomTabLoginMethodHandler_1', TypeInfo(Grijjy.FBSDK.Android.API.JCustomTabLoginMethodHandler_1));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JDefaultAudience', TypeInfo(Grijjy.FBSDK.Android.API.JDefaultAudience));
  //TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JDeviceAuthDialog', TypeInfo(Grijjy.FBSDK.Android.API.JDeviceAuthDialog));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JDeviceAuthDialog_1', TypeInfo(Grijjy.FBSDK.Android.API.JDeviceAuthDialog_1));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JDeviceAuthDialog_2', TypeInfo(Grijjy.FBSDK.Android.API.JDeviceAuthDialog_2));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JDeviceAuthDialog_3', TypeInfo(Grijjy.FBSDK.Android.API.JDeviceAuthDialog_3));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JDeviceAuthDialog_4', TypeInfo(Grijjy.FBSDK.Android.API.JDeviceAuthDialog_4));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JDeviceAuthDialog_5', TypeInfo(Grijjy.FBSDK.Android.API.JDeviceAuthDialog_5));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JDeviceAuthDialog_RequestState', TypeInfo(Grijjy.FBSDK.Android.API.JDeviceAuthDialog_RequestState));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JRequestState_1', TypeInfo(Grijjy.FBSDK.Android.API.JRequestState_1));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JDeviceAuthMethodHandler', TypeInfo(Grijjy.FBSDK.Android.API.JDeviceAuthMethodHandler));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JDeviceAuthMethodHandler_1', TypeInfo(Grijjy.FBSDK.Android.API.JDeviceAuthMethodHandler_1));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JLoginManager', TypeInfo(Grijjy.FBSDK.Android.API.JLoginManager));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JDeviceLoginManager', TypeInfo(Grijjy.FBSDK.Android.API.JDeviceLoginManager));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JGetTokenClient', TypeInfo(Grijjy.FBSDK.Android.API.JGetTokenClient));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JGetTokenLoginMethodHandler', TypeInfo(Grijjy.FBSDK.Android.API.JGetTokenLoginMethodHandler));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JGetTokenLoginMethodHandler_1', TypeInfo(Grijjy.FBSDK.Android.API.JGetTokenLoginMethodHandler_1));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JGetTokenLoginMethodHandler_2', TypeInfo(Grijjy.FBSDK.Android.API.JGetTokenLoginMethodHandler_2));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JGetTokenLoginMethodHandler_3', TypeInfo(Grijjy.FBSDK.Android.API.JGetTokenLoginMethodHandler_3));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JKatanaProxyLoginMethodHandler', TypeInfo(Grijjy.FBSDK.Android.API.JKatanaProxyLoginMethodHandler));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JKatanaProxyLoginMethodHandler_1', TypeInfo(Grijjy.FBSDK.Android.API.JKatanaProxyLoginMethodHandler_1));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JLoginBehavior', TypeInfo(Grijjy.FBSDK.Android.API.JLoginBehavior));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JLoginClient', TypeInfo(Grijjy.FBSDK.Android.API.JLoginClient));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JLoginClient_1', TypeInfo(Grijjy.FBSDK.Android.API.JLoginClient_1));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JLoginClient_BackgroundProcessingListener', TypeInfo(Grijjy.FBSDK.Android.API.JLoginClient_BackgroundProcessingListener));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JLoginClient_OnCompletedListener', TypeInfo(Grijjy.FBSDK.Android.API.JLoginClient_OnCompletedListener));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JLoginClient_Request', TypeInfo(Grijjy.FBSDK.Android.API.JLoginClient_Request));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JRequest_1', TypeInfo(Grijjy.FBSDK.Android.API.JRequest_1));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JLoginClient_Result', TypeInfo(Grijjy.FBSDK.Android.API.JLoginClient_Result));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JResult_1', TypeInfo(Grijjy.FBSDK.Android.API.JResult_1));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JResult_Code', TypeInfo(Grijjy.FBSDK.Android.API.JResult_Code));
  //TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JLoginFragment', TypeInfo(Grijjy.FBSDK.Android.API.JLoginFragment));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JLoginFragment_1', TypeInfo(Grijjy.FBSDK.Android.API.JLoginFragment_1));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JLoginFragment_2', TypeInfo(Grijjy.FBSDK.Android.API.JLoginFragment_2));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JLoginLogger', TypeInfo(Grijjy.FBSDK.Android.API.JLoginLogger));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JLoginManager_1', TypeInfo(Grijjy.FBSDK.Android.API.JLoginManager_1));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JLoginManager_2', TypeInfo(Grijjy.FBSDK.Android.API.JLoginManager_2));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JLoginManager_3', TypeInfo(Grijjy.FBSDK.Android.API.JLoginManager_3));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JStartActivityDelegate', TypeInfo(Grijjy.FBSDK.Android.API.JStartActivityDelegate));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JLoginManager_ActivityStartActivityDelegate', TypeInfo(Grijjy.FBSDK.Android.API.JLoginManager_ActivityStartActivityDelegate));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JLoginManager_FragmentStartActivityDelegate', TypeInfo(Grijjy.FBSDK.Android.API.JLoginManager_FragmentStartActivityDelegate));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JLoginManager_LoginLoggerHolder', TypeInfo(Grijjy.FBSDK.Android.API.JLoginManager_LoginLoggerHolder));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JLoginResult', TypeInfo(Grijjy.FBSDK.Android.API.JLoginResult));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JWebViewLoginMethodHandler', TypeInfo(Grijjy.FBSDK.Android.API.JWebViewLoginMethodHandler));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JWebViewLoginMethodHandler_1', TypeInfo(Grijjy.FBSDK.Android.API.JWebViewLoginMethodHandler_1));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JWebViewLoginMethodHandler_2', TypeInfo(Grijjy.FBSDK.Android.API.JWebViewLoginMethodHandler_2));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JWebViewLoginMethodHandler_AuthDialogBuilder', TypeInfo(Grijjy.FBSDK.Android.API.JWebViewLoginMethodHandler_AuthDialogBuilder));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JLoginButton', TypeInfo(Grijjy.FBSDK.Android.API.JLoginButton));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JDeviceLoginButton', TypeInfo(Grijjy.FBSDK.Android.API.JDeviceLoginButton));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JDeviceLoginButton_1', TypeInfo(Grijjy.FBSDK.Android.API.JDeviceLoginButton_1));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JLoginButton_LoginClickListener', TypeInfo(Grijjy.FBSDK.Android.API.JLoginButton_LoginClickListener));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JDeviceLoginButton_DeviceLoginClickListener', TypeInfo(Grijjy.FBSDK.Android.API.JDeviceLoginButton_DeviceLoginClickListener));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JLoginButton_1', TypeInfo(Grijjy.FBSDK.Android.API.JLoginButton_1));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.J1_1', TypeInfo(Grijjy.FBSDK.Android.API.J1_1));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JLoginButton_2', TypeInfo(Grijjy.FBSDK.Android.API.JLoginButton_2));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JLoginButton_3', TypeInfo(Grijjy.FBSDK.Android.API.JLoginButton_3));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JLoginButton_LoginButtonProperties', TypeInfo(Grijjy.FBSDK.Android.API.JLoginButton_LoginButtonProperties));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JLoginClickListener_1', TypeInfo(Grijjy.FBSDK.Android.API.JLoginClickListener_1));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JLoginButton_ToolTipMode', TypeInfo(Grijjy.FBSDK.Android.API.JLoginButton_ToolTipMode));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JProfilePictureView', TypeInfo(Grijjy.FBSDK.Android.API.JProfilePictureView));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JProfilePictureView_1', TypeInfo(Grijjy.FBSDK.Android.API.JProfilePictureView_1));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JProfilePictureView_OnErrorListener', TypeInfo(Grijjy.FBSDK.Android.API.JProfilePictureView_OnErrorListener));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JToolTipPopup', TypeInfo(Grijjy.FBSDK.Android.API.JToolTipPopup));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JToolTipPopup_1', TypeInfo(Grijjy.FBSDK.Android.API.JToolTipPopup_1));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JToolTipPopup_2', TypeInfo(Grijjy.FBSDK.Android.API.JToolTipPopup_2));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JToolTipPopup_3', TypeInfo(Grijjy.FBSDK.Android.API.JToolTipPopup_3));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JToolTipPopup_PopupContentView', TypeInfo(Grijjy.FBSDK.Android.API.JToolTipPopup_PopupContentView));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JToolTipPopup_Style', TypeInfo(Grijjy.FBSDK.Android.API.JToolTipPopup_Style));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JMessengerThreadParams', TypeInfo(Grijjy.FBSDK.Android.API.JMessengerThreadParams));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JMessengerThreadParams_Origin', TypeInfo(Grijjy.FBSDK.Android.API.JMessengerThreadParams_Origin));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JMessengerUtils', TypeInfo(Grijjy.FBSDK.Android.API.JMessengerUtils));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JShareToMessengerParams', TypeInfo(Grijjy.FBSDK.Android.API.JShareToMessengerParams));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JShareToMessengerParamsBuilder', TypeInfo(Grijjy.FBSDK.Android.API.JShareToMessengerParamsBuilder));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JDeviceShareDialog', TypeInfo(Grijjy.FBSDK.Android.API.JDeviceShareDialog));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JDeviceShareDialog_1', TypeInfo(Grijjy.FBSDK.Android.API.JDeviceShareDialog_1));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JDeviceShareDialog_Result', TypeInfo(Grijjy.FBSDK.Android.API.JDeviceShareDialog_Result));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JShareApi', TypeInfo(Grijjy.FBSDK.Android.API.JShareApi));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JShareApi_1', TypeInfo(Grijjy.FBSDK.Android.API.JShareApi_1));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JShareApi_10', TypeInfo(Grijjy.FBSDK.Android.API.JShareApi_10));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JShareApi_11', TypeInfo(Grijjy.FBSDK.Android.API.JShareApi_11));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JShareApi_12', TypeInfo(Grijjy.FBSDK.Android.API.JShareApi_12));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JShareApi_2', TypeInfo(Grijjy.FBSDK.Android.API.JShareApi_2));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JShareApi_3', TypeInfo(Grijjy.FBSDK.Android.API.JShareApi_3));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JShareApi_4', TypeInfo(Grijjy.FBSDK.Android.API.JShareApi_4));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JShareApi_5', TypeInfo(Grijjy.FBSDK.Android.API.JShareApi_5));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.J5_1', TypeInfo(Grijjy.FBSDK.Android.API.J5_1));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JShareApi_6', TypeInfo(Grijjy.FBSDK.Android.API.JShareApi_6));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JShareApi_7', TypeInfo(Grijjy.FBSDK.Android.API.JShareApi_7));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JShareApi_8', TypeInfo(Grijjy.FBSDK.Android.API.JShareApi_8));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JShareApi_9', TypeInfo(Grijjy.FBSDK.Android.API.JShareApi_9));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JShareBuilder', TypeInfo(Grijjy.FBSDK.Android.API.JShareBuilder));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JSharer', TypeInfo(Grijjy.FBSDK.Android.API.JSharer));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JSharer_Result', TypeInfo(Grijjy.FBSDK.Android.API.JSharer_Result));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JAppInviteDialogFeature', TypeInfo(Grijjy.FBSDK.Android.API.JAppInviteDialogFeature));
  //TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JDeviceShareDialogFragment', TypeInfo(Grijjy.FBSDK.Android.API.JDeviceShareDialogFragment));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JDeviceShareDialogFragment_1', TypeInfo(Grijjy.FBSDK.Android.API.JDeviceShareDialogFragment_1));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JDeviceShareDialogFragment_2', TypeInfo(Grijjy.FBSDK.Android.API.JDeviceShareDialogFragment_2));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JDeviceShareDialogFragment_3', TypeInfo(Grijjy.FBSDK.Android.API.JDeviceShareDialogFragment_3));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JDeviceShareDialogFragment_RequestState', TypeInfo(Grijjy.FBSDK.Android.API.JDeviceShareDialogFragment_RequestState));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JDeviceShareDialogFragment_RequestState_1', TypeInfo(Grijjy.FBSDK.Android.API.JDeviceShareDialogFragment_RequestState_1));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JGameRequestValidation', TypeInfo(Grijjy.FBSDK.Android.API.JGameRequestValidation));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JLegacyNativeDialogParameters', TypeInfo(Grijjy.FBSDK.Android.API.JLegacyNativeDialogParameters));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JLikeActionController', TypeInfo(Grijjy.FBSDK.Android.API.JLikeActionController));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JLikeActionController_CreationCallback', TypeInfo(Grijjy.FBSDK.Android.API.JLikeActionController_CreationCallback));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JLikeActionController_1', TypeInfo(Grijjy.FBSDK.Android.API.JLikeActionController_1));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JLikeActionController_10', TypeInfo(Grijjy.FBSDK.Android.API.JLikeActionController_10));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JLikeActionController_11', TypeInfo(Grijjy.FBSDK.Android.API.JLikeActionController_11));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JLikeActionController_12', TypeInfo(Grijjy.FBSDK.Android.API.JLikeActionController_12));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JLikeActionController_2', TypeInfo(Grijjy.FBSDK.Android.API.JLikeActionController_2));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JLikeActionController_3', TypeInfo(Grijjy.FBSDK.Android.API.JLikeActionController_3));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JLikeActionController_4', TypeInfo(Grijjy.FBSDK.Android.API.JLikeActionController_4));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JLikeActionController_5', TypeInfo(Grijjy.FBSDK.Android.API.JLikeActionController_5));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JResultProcessor', TypeInfo(Grijjy.FBSDK.Android.API.JResultProcessor));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JLikeActionController_6', TypeInfo(Grijjy.FBSDK.Android.API.JLikeActionController_6));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JLikeActionController_RequestCompletionCallback', TypeInfo(Grijjy.FBSDK.Android.API.JLikeActionController_RequestCompletionCallback));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JLikeActionController_7', TypeInfo(Grijjy.FBSDK.Android.API.JLikeActionController_7));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.J7_1', TypeInfo(Grijjy.FBSDK.Android.API.J7_1));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JLikeActionController_8', TypeInfo(Grijjy.FBSDK.Android.API.JLikeActionController_8));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JLikeActionController_9', TypeInfo(Grijjy.FBSDK.Android.API.JLikeActionController_9));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.J9_1', TypeInfo(Grijjy.FBSDK.Android.API.J9_1));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JLikeActionController_RequestWrapper', TypeInfo(Grijjy.FBSDK.Android.API.JLikeActionController_RequestWrapper));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JLikeActionController_AbstractRequestWrapper', TypeInfo(Grijjy.FBSDK.Android.API.JLikeActionController_AbstractRequestWrapper));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JAbstractRequestWrapper_1', TypeInfo(Grijjy.FBSDK.Android.API.JAbstractRequestWrapper_1));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JLikeActionController_CreateLikeActionControllerWorkItem', TypeInfo(Grijjy.FBSDK.Android.API.JLikeActionController_CreateLikeActionControllerWorkItem));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JLikeActionController_GetEngagementRequestWrapper', TypeInfo(Grijjy.FBSDK.Android.API.JLikeActionController_GetEngagementRequestWrapper));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JLikeActionController_GetOGObjectIdRequestWrapper', TypeInfo(Grijjy.FBSDK.Android.API.JLikeActionController_GetOGObjectIdRequestWrapper));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JLikeActionController_GetOGObjectLikesRequestWrapper', TypeInfo(Grijjy.FBSDK.Android.API.JLikeActionController_GetOGObjectLikesRequestWrapper));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JLikeActionController_GetPageIdRequestWrapper', TypeInfo(Grijjy.FBSDK.Android.API.JLikeActionController_GetPageIdRequestWrapper));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JLikeActionController_GetPageLikesRequestWrapper', TypeInfo(Grijjy.FBSDK.Android.API.JLikeActionController_GetPageLikesRequestWrapper));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JLikeActionController_LikeRequestWrapper', TypeInfo(Grijjy.FBSDK.Android.API.JLikeActionController_LikeRequestWrapper));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JLikeActionController_MRUCacheWorkItem', TypeInfo(Grijjy.FBSDK.Android.API.JLikeActionController_MRUCacheWorkItem));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JLikeActionController_PublishLikeRequestWrapper', TypeInfo(Grijjy.FBSDK.Android.API.JLikeActionController_PublishLikeRequestWrapper));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JLikeActionController_PublishUnlikeRequestWrapper', TypeInfo(Grijjy.FBSDK.Android.API.JLikeActionController_PublishUnlikeRequestWrapper));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JLikeActionController_SerializeToDiskWorkItem', TypeInfo(Grijjy.FBSDK.Android.API.JLikeActionController_SerializeToDiskWorkItem));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JLikeBoxCountView', TypeInfo(Grijjy.FBSDK.Android.API.JLikeBoxCountView));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JLikeBoxCountView_1', TypeInfo(Grijjy.FBSDK.Android.API.JLikeBoxCountView_1));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JLikeBoxCountView_LikeBoxCountViewCaretPosition', TypeInfo(Grijjy.FBSDK.Android.API.JLikeBoxCountView_LikeBoxCountViewCaretPosition));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JLikeButton', TypeInfo(Grijjy.FBSDK.Android.API.JLikeButton));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JShareModel', TypeInfo(Grijjy.FBSDK.Android.API.JShareModel));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JLikeContent', TypeInfo(Grijjy.FBSDK.Android.API.JLikeContent));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JLikeContent_1', TypeInfo(Grijjy.FBSDK.Android.API.JLikeContent_1));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JShareModelBuilder', TypeInfo(Grijjy.FBSDK.Android.API.JShareModelBuilder));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JLikeContent_Builder', TypeInfo(Grijjy.FBSDK.Android.API.JLikeContent_Builder));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JLikeDialog', TypeInfo(Grijjy.FBSDK.Android.API.JLikeDialog));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JLikeDialog_1', TypeInfo(Grijjy.FBSDK.Android.API.JLikeDialog_1));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JLikeDialog_2', TypeInfo(Grijjy.FBSDK.Android.API.JLikeDialog_2));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JLikeDialog_NativeHandler', TypeInfo(Grijjy.FBSDK.Android.API.JLikeDialog_NativeHandler));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JNativeHandler_1', TypeInfo(Grijjy.FBSDK.Android.API.JNativeHandler_1));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JLikeDialog_Result', TypeInfo(Grijjy.FBSDK.Android.API.JLikeDialog_Result));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JLikeDialog_WebFallbackHandler', TypeInfo(Grijjy.FBSDK.Android.API.JLikeDialog_WebFallbackHandler));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JLikeDialogFeature', TypeInfo(Grijjy.FBSDK.Android.API.JLikeDialogFeature));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JLikeStatusClient', TypeInfo(Grijjy.FBSDK.Android.API.JLikeStatusClient));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JMessageDialogFeature', TypeInfo(Grijjy.FBSDK.Android.API.JMessageDialogFeature));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JNativeDialogParameters', TypeInfo(Grijjy.FBSDK.Android.API.JNativeDialogParameters));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JOpenGraphActionDialogFeature', TypeInfo(Grijjy.FBSDK.Android.API.JOpenGraphActionDialogFeature));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JOpenGraphJSONUtility', TypeInfo(Grijjy.FBSDK.Android.API.JOpenGraphJSONUtility));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JOpenGraphMessageDialogFeature', TypeInfo(Grijjy.FBSDK.Android.API.JOpenGraphMessageDialogFeature));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JShareConstants', TypeInfo(Grijjy.FBSDK.Android.API.JShareConstants));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JShareContentValidation', TypeInfo(Grijjy.FBSDK.Android.API.JShareContentValidation));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JShareContentValidation_1', TypeInfo(Grijjy.FBSDK.Android.API.JShareContentValidation_1));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JShareContentValidation_Validator', TypeInfo(Grijjy.FBSDK.Android.API.JShareContentValidation_Validator));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JShareContentValidation_ApiValidator', TypeInfo(Grijjy.FBSDK.Android.API.JShareContentValidation_ApiValidator));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JShareContentValidation_WebShareValidator', TypeInfo(Grijjy.FBSDK.Android.API.JShareContentValidation_WebShareValidator));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JShareDialogFeature', TypeInfo(Grijjy.FBSDK.Android.API.JShareDialogFeature));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JShareContent', TypeInfo(Grijjy.FBSDK.Android.API.JShareContent));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JShareFeedContent', TypeInfo(Grijjy.FBSDK.Android.API.JShareFeedContent));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JShareFeedContent_1', TypeInfo(Grijjy.FBSDK.Android.API.JShareFeedContent_1));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JShareContent_Builder', TypeInfo(Grijjy.FBSDK.Android.API.JShareContent_Builder));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JShareFeedContent_Builder', TypeInfo(Grijjy.FBSDK.Android.API.JShareFeedContent_Builder));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JShareInternalUtility', TypeInfo(Grijjy.FBSDK.Android.API.JShareInternalUtility));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JShareInternalUtility_1', TypeInfo(Grijjy.FBSDK.Android.API.JShareInternalUtility_1));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JShareInternalUtility_2', TypeInfo(Grijjy.FBSDK.Android.API.JShareInternalUtility_2));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JShareInternalUtility_3', TypeInfo(Grijjy.FBSDK.Android.API.JShareInternalUtility_3));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JShareInternalUtility_4', TypeInfo(Grijjy.FBSDK.Android.API.JShareInternalUtility_4));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JShareInternalUtility_5', TypeInfo(Grijjy.FBSDK.Android.API.JShareInternalUtility_5));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JShareInternalUtility_6', TypeInfo(Grijjy.FBSDK.Android.API.JShareInternalUtility_6));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JShareInternalUtility_7', TypeInfo(Grijjy.FBSDK.Android.API.JShareInternalUtility_7));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JShareInternalUtility_8', TypeInfo(Grijjy.FBSDK.Android.API.JShareInternalUtility_8));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JVideoUploader', TypeInfo(Grijjy.FBSDK.Android.API.JVideoUploader));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JVideoUploader_1', TypeInfo(Grijjy.FBSDK.Android.API.JVideoUploader_1));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JVideoUploader_UploadWorkItemBase', TypeInfo(Grijjy.FBSDK.Android.API.JVideoUploader_UploadWorkItemBase));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JVideoUploader_FinishUploadWorkItem', TypeInfo(Grijjy.FBSDK.Android.API.JVideoUploader_FinishUploadWorkItem));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JFinishUploadWorkItem_1', TypeInfo(Grijjy.FBSDK.Android.API.JFinishUploadWorkItem_1));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JVideoUploader_StartUploadWorkItem', TypeInfo(Grijjy.FBSDK.Android.API.JVideoUploader_StartUploadWorkItem));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JStartUploadWorkItem_1', TypeInfo(Grijjy.FBSDK.Android.API.JStartUploadWorkItem_1));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JVideoUploader_TransferChunkWorkItem', TypeInfo(Grijjy.FBSDK.Android.API.JVideoUploader_TransferChunkWorkItem));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JTransferChunkWorkItem_1', TypeInfo(Grijjy.FBSDK.Android.API.JTransferChunkWorkItem_1));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JVideoUploader_UploadContext', TypeInfo(Grijjy.FBSDK.Android.API.JVideoUploader_UploadContext));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JUploadWorkItemBase_1', TypeInfo(Grijjy.FBSDK.Android.API.JUploadWorkItemBase_1));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JUploadWorkItemBase_2', TypeInfo(Grijjy.FBSDK.Android.API.JUploadWorkItemBase_2));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JWebDialogParameters', TypeInfo(Grijjy.FBSDK.Android.API.JWebDialogParameters));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JAppGroupCreationContent', TypeInfo(Grijjy.FBSDK.Android.API.JAppGroupCreationContent));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JAppGroupCreationContent_1', TypeInfo(Grijjy.FBSDK.Android.API.JAppGroupCreationContent_1));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JAppGroupCreationContent_AppGroupPrivacy', TypeInfo(Grijjy.FBSDK.Android.API.JAppGroupCreationContent_AppGroupPrivacy));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JAppGroupCreationContent_Builder', TypeInfo(Grijjy.FBSDK.Android.API.JAppGroupCreationContent_Builder));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JAppInviteContent', TypeInfo(Grijjy.FBSDK.Android.API.JAppInviteContent));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JAppInviteContent_1', TypeInfo(Grijjy.FBSDK.Android.API.JAppInviteContent_1));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JAppInviteContent_Builder', TypeInfo(Grijjy.FBSDK.Android.API.JAppInviteContent_Builder));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JGameRequestContent', TypeInfo(Grijjy.FBSDK.Android.API.JGameRequestContent));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JGameRequestContent_1', TypeInfo(Grijjy.FBSDK.Android.API.JGameRequestContent_1));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JGameRequestContent_ActionType', TypeInfo(Grijjy.FBSDK.Android.API.JGameRequestContent_ActionType));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JGameRequestContent_Builder', TypeInfo(Grijjy.FBSDK.Android.API.JGameRequestContent_Builder));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JGameRequestContent_Filters', TypeInfo(Grijjy.FBSDK.Android.API.JGameRequestContent_Filters));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JShareHashtag', TypeInfo(Grijjy.FBSDK.Android.API.JShareHashtag));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JShareHashtag_1', TypeInfo(Grijjy.FBSDK.Android.API.JShareHashtag_1));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JShareHashtag_Builder', TypeInfo(Grijjy.FBSDK.Android.API.JShareHashtag_Builder));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JShareLinkContent', TypeInfo(Grijjy.FBSDK.Android.API.JShareLinkContent));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JShareLinkContent_1', TypeInfo(Grijjy.FBSDK.Android.API.JShareLinkContent_1));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JShareLinkContent_Builder', TypeInfo(Grijjy.FBSDK.Android.API.JShareLinkContent_Builder));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JShareMedia', TypeInfo(Grijjy.FBSDK.Android.API.JShareMedia));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JShareMedia_Builder', TypeInfo(Grijjy.FBSDK.Android.API.JShareMedia_Builder));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JShareMedia_Type', TypeInfo(Grijjy.FBSDK.Android.API.JShareMedia_Type));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JShareMediaContent', TypeInfo(Grijjy.FBSDK.Android.API.JShareMediaContent));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JShareMediaContent_1', TypeInfo(Grijjy.FBSDK.Android.API.JShareMediaContent_1));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JShareMediaContent_Builder', TypeInfo(Grijjy.FBSDK.Android.API.JShareMediaContent_Builder));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JShareOpenGraphValueContainer', TypeInfo(Grijjy.FBSDK.Android.API.JShareOpenGraphValueContainer));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JShareOpenGraphAction', TypeInfo(Grijjy.FBSDK.Android.API.JShareOpenGraphAction));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JShareOpenGraphAction_1', TypeInfo(Grijjy.FBSDK.Android.API.JShareOpenGraphAction_1));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JShareOpenGraphValueContainer_Builder', TypeInfo(Grijjy.FBSDK.Android.API.JShareOpenGraphValueContainer_Builder));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JShareOpenGraphAction_Builder', TypeInfo(Grijjy.FBSDK.Android.API.JShareOpenGraphAction_Builder));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JShareOpenGraphContent', TypeInfo(Grijjy.FBSDK.Android.API.JShareOpenGraphContent));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JShareOpenGraphContent_1', TypeInfo(Grijjy.FBSDK.Android.API.JShareOpenGraphContent_1));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JShareOpenGraphContent_Builder', TypeInfo(Grijjy.FBSDK.Android.API.JShareOpenGraphContent_Builder));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JShareOpenGraphObject', TypeInfo(Grijjy.FBSDK.Android.API.JShareOpenGraphObject));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JShareOpenGraphObject_1', TypeInfo(Grijjy.FBSDK.Android.API.JShareOpenGraphObject_1));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JShareOpenGraphObject_Builder', TypeInfo(Grijjy.FBSDK.Android.API.JShareOpenGraphObject_Builder));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JSharePhoto', TypeInfo(Grijjy.FBSDK.Android.API.JSharePhoto));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JSharePhoto_1', TypeInfo(Grijjy.FBSDK.Android.API.JSharePhoto_1));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JSharePhoto_Builder', TypeInfo(Grijjy.FBSDK.Android.API.JSharePhoto_Builder));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JSharePhotoContent', TypeInfo(Grijjy.FBSDK.Android.API.JSharePhotoContent));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JSharePhotoContent_1', TypeInfo(Grijjy.FBSDK.Android.API.JSharePhotoContent_1));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JSharePhotoContent_Builder', TypeInfo(Grijjy.FBSDK.Android.API.JSharePhotoContent_Builder));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JShareVideo', TypeInfo(Grijjy.FBSDK.Android.API.JShareVideo));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JShareVideo_1', TypeInfo(Grijjy.FBSDK.Android.API.JShareVideo_1));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JShareVideo_Builder', TypeInfo(Grijjy.FBSDK.Android.API.JShareVideo_Builder));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JShareVideoContent', TypeInfo(Grijjy.FBSDK.Android.API.JShareVideoContent));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JShareVideoContent_1', TypeInfo(Grijjy.FBSDK.Android.API.JShareVideoContent_1));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JShareVideoContent_Builder', TypeInfo(Grijjy.FBSDK.Android.API.JShareVideoContent_Builder));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JAppInviteDialog', TypeInfo(Grijjy.FBSDK.Android.API.JAppInviteDialog));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JAppInviteDialog_1', TypeInfo(Grijjy.FBSDK.Android.API.JAppInviteDialog_1));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JAppInviteDialog_2', TypeInfo(Grijjy.FBSDK.Android.API.JAppInviteDialog_2));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JAppInviteDialog_NativeHandler', TypeInfo(Grijjy.FBSDK.Android.API.JAppInviteDialog_NativeHandler));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JAppInviteDialog_NativeHandler_1', TypeInfo(Grijjy.FBSDK.Android.API.JAppInviteDialog_NativeHandler_1));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JAppInviteDialog_Result', TypeInfo(Grijjy.FBSDK.Android.API.JAppInviteDialog_Result));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JAppInviteDialog_WebFallbackHandler', TypeInfo(Grijjy.FBSDK.Android.API.JAppInviteDialog_WebFallbackHandler));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JCreateAppGroupDialog', TypeInfo(Grijjy.FBSDK.Android.API.JCreateAppGroupDialog));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JCreateAppGroupDialog_1', TypeInfo(Grijjy.FBSDK.Android.API.JCreateAppGroupDialog_1));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JCreateAppGroupDialog_2', TypeInfo(Grijjy.FBSDK.Android.API.JCreateAppGroupDialog_2));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JCreateAppGroupDialog_Result', TypeInfo(Grijjy.FBSDK.Android.API.JCreateAppGroupDialog_Result));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JCreateAppGroupDialog_WebHandler', TypeInfo(Grijjy.FBSDK.Android.API.JCreateAppGroupDialog_WebHandler));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JDeviceShareButton', TypeInfo(Grijjy.FBSDK.Android.API.JDeviceShareButton));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JDeviceShareButton_1', TypeInfo(Grijjy.FBSDK.Android.API.JDeviceShareButton_1));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JGameRequestDialog', TypeInfo(Grijjy.FBSDK.Android.API.JGameRequestDialog));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JGameRequestDialog_1', TypeInfo(Grijjy.FBSDK.Android.API.JGameRequestDialog_1));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JGameRequestDialog_2', TypeInfo(Grijjy.FBSDK.Android.API.JGameRequestDialog_2));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JGameRequestDialog_Result', TypeInfo(Grijjy.FBSDK.Android.API.JGameRequestDialog_Result));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JGameRequestDialog_WebHandler', TypeInfo(Grijjy.FBSDK.Android.API.JGameRequestDialog_WebHandler));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JJoinAppGroupDialog', TypeInfo(Grijjy.FBSDK.Android.API.JJoinAppGroupDialog));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JJoinAppGroupDialog_1', TypeInfo(Grijjy.FBSDK.Android.API.JJoinAppGroupDialog_1));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JJoinAppGroupDialog_2', TypeInfo(Grijjy.FBSDK.Android.API.JJoinAppGroupDialog_2));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JJoinAppGroupDialog_Result', TypeInfo(Grijjy.FBSDK.Android.API.JJoinAppGroupDialog_Result));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JJoinAppGroupDialog_WebHandler', TypeInfo(Grijjy.FBSDK.Android.API.JJoinAppGroupDialog_WebHandler));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JLikeView', TypeInfo(Grijjy.FBSDK.Android.API.JLikeView));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JLikeView_1', TypeInfo(Grijjy.FBSDK.Android.API.JLikeView_1));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JLikeView_2', TypeInfo(Grijjy.FBSDK.Android.API.JLikeView_2));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JLikeView_AuxiliaryViewPosition', TypeInfo(Grijjy.FBSDK.Android.API.JLikeView_AuxiliaryViewPosition));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JLikeView_HorizontalAlignment', TypeInfo(Grijjy.FBSDK.Android.API.JLikeView_HorizontalAlignment));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JLikeView_LikeActionControllerCreationCallback', TypeInfo(Grijjy.FBSDK.Android.API.JLikeView_LikeActionControllerCreationCallback));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JLikeView_LikeControllerBroadcastReceiver', TypeInfo(Grijjy.FBSDK.Android.API.JLikeView_LikeControllerBroadcastReceiver));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JLikeView_ObjectType', TypeInfo(Grijjy.FBSDK.Android.API.JLikeView_ObjectType));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JLikeView_OnErrorListener', TypeInfo(Grijjy.FBSDK.Android.API.JLikeView_OnErrorListener));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JLikeView_Style', TypeInfo(Grijjy.FBSDK.Android.API.JLikeView_Style));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JMessageDialog', TypeInfo(Grijjy.FBSDK.Android.API.JMessageDialog));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JMessageDialog_1', TypeInfo(Grijjy.FBSDK.Android.API.JMessageDialog_1));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JMessageDialog_NativeHandler', TypeInfo(Grijjy.FBSDK.Android.API.JMessageDialog_NativeHandler));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JMessageDialog_NativeHandler_1', TypeInfo(Grijjy.FBSDK.Android.API.JMessageDialog_NativeHandler_1));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JShareButtonBase', TypeInfo(Grijjy.FBSDK.Android.API.JShareButtonBase));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JSendButton', TypeInfo(Grijjy.FBSDK.Android.API.JSendButton));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JShareButton', TypeInfo(Grijjy.FBSDK.Android.API.JShareButton));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JShareButtonBase_1', TypeInfo(Grijjy.FBSDK.Android.API.JShareButtonBase_1));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JShareDialog', TypeInfo(Grijjy.FBSDK.Android.API.JShareDialog));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JShareDialog_1', TypeInfo(Grijjy.FBSDK.Android.API.JShareDialog_1));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JShareDialog_FeedHandler', TypeInfo(Grijjy.FBSDK.Android.API.JShareDialog_FeedHandler));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JShareDialog_Mode', TypeInfo(Grijjy.FBSDK.Android.API.JShareDialog_Mode));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JShareDialog_NativeHandler', TypeInfo(Grijjy.FBSDK.Android.API.JShareDialog_NativeHandler));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JShareDialog_NativeHandler_1', TypeInfo(Grijjy.FBSDK.Android.API.JShareDialog_NativeHandler_1));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JShareDialog_WebShareHandler', TypeInfo(Grijjy.FBSDK.Android.API.JShareDialog_WebShareHandler));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JObjectInputStream_GetField', TypeInfo(Grijjy.FBSDK.Android.API.JObjectInputStream_GetField));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JObjectInputValidation', TypeInfo(Grijjy.FBSDK.Android.API.JObjectInputValidation));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.Jio_ObjectStreamClass', TypeInfo(Grijjy.FBSDK.Android.API.Jio_ObjectStreamClass));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JObjectStreamField', TypeInfo(Grijjy.FBSDK.Android.API.JObjectStreamField));
  //TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JStringBuffer', TypeInfo(Grijjy.FBSDK.Android.API.JStringBuffer));
  //TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JStringBuilder', TypeInfo(Grijjy.FBSDK.Android.API.JStringBuilder));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JVoid', TypeInfo(Grijjy.FBSDK.Android.API.JVoid));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JBigDecimal', TypeInfo(Grijjy.FBSDK.Android.API.JBigDecimal));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JMathContext', TypeInfo(Grijjy.FBSDK.Android.API.JMathContext));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JRoundingMode', TypeInfo(Grijjy.FBSDK.Android.API.JRoundingMode));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JCurrency', TypeInfo(Grijjy.FBSDK.Android.API.JCurrency));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JSortedSet', TypeInfo(Grijjy.FBSDK.Android.API.JSortedSet));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JNavigableSet', TypeInfo(Grijjy.FBSDK.Android.API.JNavigableSet));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JTreeSet', TypeInfo(Grijjy.FBSDK.Android.API.JTreeSet));
  TRegTypes.RegisterType('Grijjy.FBSDK.Android.API.JAtomicBoolean', TypeInfo(Grijjy.FBSDK.Android.API.JAtomicBoolean));
end;

initialization
  RegisterTypes;
end.
