:: Disable Bing search suggestions in Start Menu.
reg add "HKCU\SOFTWARE\Policies\Microsoft\Windows\Explorer" /f /v DisableSearchBoxSuggestions /t REG_DWORD /d 1

:: Remove Cortana and set search preferences.
reg add "HKCU\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /f /v AllowCortana /t REG_DWORD /d 0
reg add "HKCU\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /f /v AllowSearchToUseLocation /t REG_DWORD /d 0
reg add "HKCU\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /f /v ConnectedSearchUseWeb /t REG_DWORD /d 0
reg add "HKCU\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /f /v DisableWebSearch /t REG_DWORD /d 1
reg add "HKCU\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /f /v PreventIndexingOutlook /t REG_DWORD /d 1
reg add "HKCU\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /f /v PreventIndexingEmailAttachments /t REG_DWORD /d 1
reg add "HKCU\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /f /v ConnectedSearchPrivacy /t REG_DWORD /d 3
reg add "HKCU\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /f /v ConnectedSearchSafeSearch /t REG_DWORD /d 3
reg add "HKCU\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /f /v PreventRemoteQueries /t REG_DWORD /d 1
reg add "HKCU\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /f /v BingSearchEnabled /t REG_DWORD /d 0
reg add "HKCU\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /f /v CortanaConsent /t REG_DWORD /d 0
reg add "HKCU\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /f /v AllowCloudSearch /t REG_DWORD /d 0

:: Disable OneDrive sync.
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\OneDrive" /f /v DisableFileSyncNGSC /t REG_DWORD /d 1
reg delete "HKCR\CLSID\{018D5C66-4533-4307-9B53-224DE2ED1FE6}" /f
reg query "HKLM\Hardware\Description\System\CentralProcessor\0" | find /i "x86" > NUL && set OS=32BIT || set OS=64BIT
if %OS%==64BIT (
	reg delete "HKCR\Wow6432Node\CLSID\{018D5C66-4533-4307-9B53-224DE2ED1FE6}" /f
)

:: Disable ads in File Explorer.
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /f /v ShowSyncProviderNotifications /t REG_DWORD /d 0

:: Disable online tips in Settings.
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /f /v AllowOnlineTips /t REG_DWORD /d 0

:: Disable activity history.
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /f /v PublishUserActivities /t REG_DWORD /d 0
