# splashkit-installer-windows
Install MSYS2, VS Code, Git, SplashKit, GCC,  and .NET Core

Run the following at the PowerShell Terminal:
```
$ScriptFromGitHub = Invoke-WebRequest https://raw.githubusercontent.com/abvitasa/splashkit-installer-windows/master/skinstaller.ps1; Invoke-Expression $($ScriptFromGitHub.Content)
```
