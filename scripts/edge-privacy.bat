:: Disable Edge diagnostic data sending
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "DiagnosticData" /t REG_DWORD /d 0 /f

:: Disable Edge metrics data sending
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "MetricsReportingEnabled" /t REG_DWORD /d 0 /f

:: Disable Edge site information sending
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "SendSiteInfoToImproveServices" /t REG_DWORD /d 0 /f

:: Disable Edge Feedback
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "UserFeedbackAllowed" /t REG_DWORD /d 0 /f

:: Disable Edge Copilot and Hubs Sidebar
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "HubsSidebarEnabled" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "StandaloneHubsSidebarEnabled" /t REG_DWORD /d 0 /f

:: Disable Edge Copilot browsing data collection
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "DiscoverPageContextEnabled" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "CopilotPageContext" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "CopilotCDPPageContext" /t REG_DWORD /d 0 /f

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

:: Disable Edge promotional pages
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "PromotionalTabsEnabled" /t REG_DWORD /d 0 /f

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

:: Disable Edge Follow feature
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "EdgeFollowEnabled" /t REG_DWORD /d 0 /f

:: Disable Edge Shopping Assistant
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "EdgeShoppingAssistantEnabled" /t REG_DWORD /d 0 /f

:: Disable Edge Search bar on desktop
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "WebWidgetAllowed" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "WebWidgetIsEnabledOnStartup" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "SearchbarAllowed" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "SearchbarIsEnabledOnStartup" /t REG_DWORD /d 0 /f

:: Disable Edge Microsoft Rewards
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "ShowMicrosoftRewards" /t REG_DWORD /d 0 /f

:: Disable Edge Bing suggestions in address bar
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "AddressBarMicrosoftSearchInBingProviderEnabled" /t REG_DWORD /d 0 /f

:: Disable Edge "Find on Page" data collection
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "RelatedMatchesCloudServiceEnabled" /t REG_DWORD /d 0 /f

:: Disable Edge sign-in prompt on new tab page
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "SignInCtaOnNtpEnabled" /t REG_DWORD /d 0 /f

:: Disable Edge search and site suggestions
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "SearchSuggestEnabled" /t REG_DWORD /d 0 /f

:: Disable Edge automatic image enhancement
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "EdgeEnhanceImagesEnabled" /t REG_DWORD /d 0 /f

:: Disable Edge quick links on the new tab page
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "NewTabPageQuickLinksEnabled" /t REG_DWORD /d 0 /f

:: Disable Edge remote background images on new tab page
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "NewTabPageAllowedBackgroundTypes" /t REG_DWORD /d 1 /f

:: Disable Edge Collections feature
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "EdgeCollectionsEnabled" /t REG_DWORD /d 0 /f

:: Disable Edge failed page data collection and suggestions
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "AlternateErrorPagesEnabled" /t REG_DWORD /d 0 /f

:: Disable Edge in-app support
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "InAppSupportEnabled" /t REG_DWORD /d 0 /f

:: Disable Edge games menu
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "AllowGamesMenu" /t REG_DWORD /d 0 /f

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

:: Disable Edge site information gathering from Bing
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "SiteSafetyServicesEnabled" /t REG_DWORD /d 0 /f
