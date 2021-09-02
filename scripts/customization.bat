:: Remove 3D Objects from Windows Explorer.
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{0DB7E03F-FC29-4DC6-9020-FF41B59E513A}" /f

:: We also need to make this change if it's a 64-bit OS.
reg query "HKLM\Hardware\Description\System\CentralProcessor\0" | find /i "x86" > NUL && set OS=32BIT || set OS=64BIT
if %OS%==64BIT (
	reg delete "HKLM\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{0DB7E03F-FC29-4DC6-9020-FF41B59E513A}" /f
)

:: Show seconds in system clock.
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /f /v ShowSecondsInSystemClock /t REG_DWORD /d 1

:: Remove the lock screen because it just adds another reason to press the spacebar.
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Personalization" /f /v NoLockScreen /t REG_DWORD /d 1

:: Stop the "shake to minimize" window behavior.
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /f /v DisallowShaking /t REG_DWORD /d 1

:: Enable the default Windows Photo Viewer instead of the Photos app.
reg add "HKCR\Applications\photoviewer.dll" /f
reg add "HKCR\Applications\photoviewer.dll\shell" /f
reg add "HKCR\Applications\photoviewer.dll\shell\open" /f /v MuiVerb /t REG_SZ /d "@photoviewer.dll,-3043"
reg add "HKCR\Applications\photoviewer.dll\shell\open\command" /f /ve /t REG_EXPAND_SZ /d "%SystemRoot%\System32\rundll32.exe \"%ProgramFiles%\Windows Photo Viewer\PhotoViewer.dll\", ImageView_Fullscreen %1"
reg add "HKCR\Applications\photoviewer.dll\shell\open\DropTarget" /f /v Clsid /t REG_SZ /d "{FFE2A43C-56B9-4bf5-9A79-CC6D4285608A}"
reg add "HKCR\Applications\photoviewer.dll\shell\print" /f
reg add "HKCR\Applications\photoviewer.dll\shell\print\command" /f /ve /t REG_EXPAND_SZ /d "%SystemRoot%\System32\rundll32.exe \"%ProgramFiles%\Windows Photo Viewer\PhotoViewer.dll\", ImageView_Fullscreen %1"
reg add "HKCR\Applications\photoviewer.dll\shell\print\DropTarget" /f /v Clsid /t REG_SZ /d "{FFE2A43C-56B9-4bf5-9A79-CC6D4285608A}"

:: Disable the News and Interests feed.
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Feeds" /f /v ShellFeedsTaskbarViewMode /t REG_DWORD /d 2

:: Show detailed information on startup.
reg add "HKLM\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Policies\System" /f /v VerboseStatus /t REG_DWORD /d 1

:: Disable the notification center.
reg add "HKCU\Software\Policies\Microsoft\Windows\Explorer" /f /v DisableNotificationCenter /t REG_DWORD /d 1

:: Disable autorun.
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\AutoplayHandlers" /f /v DisableAutoplay /t REG_DWORD /d 1

:: Disable the OS writing "Last Accessed"
reg add "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" /f /v NtfsDisableLastAccessUpdate /t REG_DWORD /d 80000001

:: Disable Microsoft Store pinning to taskbar
reg add "HKCU\SOFTWARE\Policies\Microsoft\Windows\Explorer" /f /v NoPinningStoreToTaskbar /t REG_DWORD /d 1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Explorer" /f /v NoPinningStoreToTaskbar /t REG_DWORD /d 1

:: Hide Edge button in IE.
reg add "HKCU\SOFTWARE\Policies\Microsoft\Internet Explorer\Main" /f /v HideNewEdgeButton /t REG_DWORD /d 1

:: Remove "Look for app in the Store"
reg add "HKLM\Software\Policies\Microsoft\Windows\Explorer" /f /v NoUseStoreOpenWith /t REG_DWORD /d 1
reg add "HKCU\Software\Policies\Microsoft\Windows\Explorer" /f /v NoUseStoreOpenWith /t REG_DWORD /d 1

:: Don't notify about new apps in Start Menu.
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /f /v Start_NotifyNewApps /t REG_DWORD /d 0

:: Hide "Get Help" from Start Menu.
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /f /v Start_ShowHelp /t REG_DWORD /d 0

:: Set the Edge new tab to be a blank page.
reg add "HKLM\Software\Policies\Microsoft\Edge" /f /v NewTabPageLocation /t REG_SZ /d "about:blank"

:: Disable any kinds of promotional materials from Edge.
reg add "HKLM\Software\Policies\Microsoft\Edge" /f /v ShowRecommendationsEnabled /t REG_DWORD /d 0

:: Disable random software from being installed with your drivers.
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Device Installer" /f /v DisableCoInstallers /t REG_DWORD /d 1
