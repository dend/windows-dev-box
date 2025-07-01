
echo This script will disable various privacy-invasive features in Microsoft Edge.
set /p streaming_choice="Do you plan to use Edge for video streaming, video calls, or web chats? (y/n): "

:: Disable Edge diagnostic data sending
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "DiagnosticData" /t REG_DWORD /d 0 /f

:: Disable Edge Feedback
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "UserFeedbackAllowed" /t REG_DWORD /d 0 /f

:: Disable Edge Copilot and Hubs Sidebar
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "HubsSidebarEnabled" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "StandaloneHubsSidebarEnabled" /t REG_DWORD /d 0 /f

:: Disable Edge Copilot browsing data collection
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "CopilotPageContext" /t REG_DWORD /d 0 /f

:: Disable Edge Copilot access on new tab page
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "NewTabPageBingChatEnabled" /t REG_DWORD /d 0 /f

:: Disable Edge Discover button
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "EdgeDiscoverEnabled" /t REG_DWORD /d 0 /f

:: Disable Edge spotlight recommendations
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "SpotlightExperiencesAndRecommendationsEnabled" /t REG_DWORD /d 0 /f

:: Disable Edge feature ads
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "ShowRecommendationsEnabled" /t REG_DWORD /d 0 /f

:: Disable Edge Bing ads
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "BingAdsSuppression" /t REG_DWORD /d 0 /f

:: Disable Edge browsing history collection for ads
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "PersonalizationReportingEnabled" /t REG_DWORD /d 0 /f

:: Disable Edge Insider ads
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "MicrosoftEdgeInsiderPromotionEnabled" /t REG_DWORD /d 0 /f

:: Disable Edge Adobe Acrobat subscription ads
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "ShowAcrobatSubscriptionButton" /t REG_DWORD /d 0 /f

:: Disable Edge top sites and sponsored links on new tab page
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "NewTabPageHideDefaultTopSites" /t REG_DWORD /d 1 /f

:: Enable Edge tracking prevention (Strict)
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "TrackingPrevention" /t REG_DWORD /d 3 /f

:: Block Edge third party cookies
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "BlockThirdPartyCookies" /t REG_DWORD /d 1 /f

:: Enable Do Not Track requests
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "ConfigureDoNotTrack" /t REG_DWORD /d 1 /f

:: Disable Edge Shopping Assistant
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "EdgeShoppingAssistantEnabled" /t REG_DWORD /d 0 /f

:: Disable Edge Search bar on desktop
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "SearchbarAllowed" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "SearchbarIsEnabledOnStartup" /t REG_DWORD /d 0 /f

:: Disable Edge Microsoft Rewards
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "ShowMicrosoftRewards" /t REG_DWORD /d 0 /f

:: Disable Edge search and site suggestions
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "SearchSuggestEnabled" /t REG_DWORD /d 0 /f

:: Disable Edge quick links on the new tab page
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "NewTabPageQuickLinksEnabled" /t REG_DWORD /d 0 /f

:: Disable Edge remote background images on new tab page
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "NewTabPageAllowedBackgroundTypes" /t REG_DWORD /d 1 /f

:: Disable Edge Collections feature
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "EdgeCollectionsEnabled" /t REG_DWORD /d 0 /f

:: Disable Edge failed page data collection and suggestions
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "AlternateErrorPagesEnabled" /t REG_DWORD /d 0 /f

:: Disable Edge payment data storage and ads
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "AutofillCreditCardEnabled" /t REG_DWORD /d 0 /f

:: Disable Edge address data storage
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "AutofillAddressEnabled" /t REG_DWORD /d 0 /f

:: Disable Edge experimentation and remote configuration
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "ExperimentationAndConfigurationServiceControl" /t REG_DWORD /d 0 /f

:: Disable Edge automatic startup
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "StartupBoostEnabled" /t REG_DWORD /d 0 /f

:: Disable Edge external connectivity checks
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "ResolveNavigationErrorsUseWebService" /t REG_DWORD /d 0 /f

:: Disable Edge Family Safety settings
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "FamilySafetySettingsEnabled" /t REG_DWORD /d 0 /f

:: Block websites from asking for location access
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "DefaultGeolocationSetting" /t REG_DWORD /d 2 /f

:: Configure camera and microphone access based on user preference
if /i "%streaming_choice%"=="y" (
    echo Allowing camera and microphone access for streaming/video calls...
    :: Allow websites to request camera access
    reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "VideoCaptureAllowed" /t REG_DWORD /d 1 /f
    :: Allow websites to request microphone access
    reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "AudioCaptureAllowed" /t REG_DWORD /d 1 /f
) else (
    echo Blocking camera and microphone access for privacy...
    :: Block websites from accessing camera
    reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "VideoCaptureAllowed" /t REG_DWORD /d 0 /f
    :: Block websites from accessing microphone
    reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "AudioCaptureAllowed" /t REG_DWORD /d 0 /f
)

:: Block website notifications by default
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "DefaultNotificationsSetting" /t REG_DWORD /d 2 /f

:: Disable system notifications from Edge
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "AllowSystemNotifications" /t REG_DWORD /d 0 /f

:: Configure WebRTC to prevent local IP address exposure
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "WebRtcIPHandling" /t REG_SZ /d "default_public_interface_only" /f

:: Disable password manager
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "PasswordManagerEnabled" /t REG_DWORD /d 0 /f

:: Disable password monitoring
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "PasswordMonitorAllowed" /t REG_DWORD /d 0 /f

:: Disable sync to Microsoft account
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "SyncDisabled" /t REG_DWORD /d 1 /f

:: Disable importing data from other browsers
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "ImportAutofillFormData" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "ImportBrowserSettings" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "ImportCookies" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "ImportExtensions" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "ImportFavorites" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "ImportHistory" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "ImportHomepage" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "ImportOpenTabs" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "ImportPaymentInfo" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "ImportSavedPasswords" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "ImportSearchEngine" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "ImportShortcuts" /t REG_DWORD /d 0 /f

:: Disable typosquatting checker (sends URLs to Microsoft)
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "TyposquattingCheckerEnabled" /t REG_DWORD /d 0 /f

:: Disable spell checker (sends text to Microsoft)
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "SpellcheckEnabled" /t REG_DWORD /d 0 /f

:: Disable translation offers
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "TranslateEnabled" /t REG_DWORD /d 0 /f

:: Disable network prediction/prefetching
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "NetworkPredictionOptions" /t REG_DWORD /d 2 /f

:: Disable background sync
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "BackgroundModeEnabled" /t REG_DWORD /d 0 /f

:: Disable Edge sleeping tabs data collection
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "SleepingTabsEnabled" /t REG_DWORD /d 0 /f

:: Disable efficiency mode
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "EfficiencyModeEnabled" /t REG_DWORD /d 0 /f

:: Disable Edge Workspaces feature
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "EdgeWorkspacesEnabled" /t REG_DWORD /d 0 /f

:: Block websites from querying available payment methods
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "PaymentMethodQueryEnabled" /t REG_DWORD /d 0 /f

:: Disable wallet donation functionality
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "WalletDonationEnabled" /t REG_DWORD /d 0 /f

:: Block all sensor access (accelerometer, gyroscope, ambient light)
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "DefaultSensorsSetting" /t REG_DWORD /d 2 /f

:: Block HID device access
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "DefaultWebHIDGuardSetting" /t REG_DWORD /d 2 /f

:: Block file system read access (File System Access API)
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "DefaultFileSystemReadGuardSetting" /t REG_DWORD /d 2 /f

:: Block file system write access
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "DefaultFileSystemWriteGuardSetting" /t REG_DWORD /d 2 /f

:: Block clipboard access (Clipboard API)
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "DefaultClipboardSetting" /t REG_DWORD /d 2 /f

:: Block Window Management API (multi-window control)
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "DefaultWindowManagementSetting" /t REG_DWORD /d 2 /f

:: Create sensors blocked URLs key
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge\SensorsBlockedForUrls" /v "1" /t REG_SZ /d "*" /f

:: Create WebUSB blocked URLs key
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge\WebUsbBlockedForUrls" /v "1" /t REG_SZ /d "*" /f

:: Create Serial blocked URLs key
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge\SerialBlockedForUrls" /v "1" /t REG_SZ /d "*" /f

:: Block protocol handlers via URL blocklist
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge\URLBlocklist" /v "2" /t REG_SZ /d "tel:*" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge\URLBlocklist" /v "3" /t REG_SZ /d "ms-appinstaller:*" /f

:: Disable browser sign-in
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "BrowserSignin" /t REG_DWORD /d 0 /f

:: Disable forced sign-in for Microsoft services
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "ForceSync" /t REG_DWORD /d 0 /f

:: Disable Edge performance detector
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "PerformanceDetectorEnabled" /t REG_DWORD /d 0 /f

:: Disable Edge workspace integration
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "WorkspacesNavigationSettings" /t REG_DWORD /d 2 /f

:: Disable Edge mini menu
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "QuickSearchShowMiniMenu" /t REG_DWORD /d 0 /f

:: Disable Edge visual search
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "VisualSearchEnabled" /t REG_DWORD /d 0 /f

:: Disable Edge content suggestions
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "NewTabPageContentEnabled" /t REG_DWORD /d 0 /f

:: Disable Edge screen capture API
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "ScreenCaptureAllowed" /t REG_DWORD /d 0 /f

:: Disable DNS-over-HTTPS templates fallback
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "BuiltInDnsClientEnabled" /t REG_DWORD /d 0 /f

:: Disable Edge accessibility insights
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "AccessibilityImageLabelsEnabled" /t REG_DWORD /d 0 /f
