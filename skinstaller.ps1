# Use System.Windows.MessageBox
Add-Type -AssemblyName 'PresentationFramework'

# Install msys2
$UserInput = [System.Windows.MessageBox]::Show('Install MSYS2?', 'Confirmation', 'YesNo');
if ($UserInput -eq 'Yes') {
    & "$env:LOCALAPPDATA\Microsoft\WindowsApps\winget" install msys2
}

# Install VS Code
$UserInput = [System.Windows.MessageBox]::Show('Install Visual Studio Code?', 'Confirmation', 'YesNo');
if ($UserInput -eq 'y') {
    & "$env:LOCALAPPDATA\Microsoft\WindowsApps\winget" install Microsoft.VisualStudioCode
}

# Install the .NET 6 LTS Core SDK on Windows for C#
$UserInput = [System.Windows.MessageBox]::Show('Install .Net 6 LTS Core SDK?', 'Confirmation', 'YesNo');
if ($UserInput -eq 'y') {
    & "$env:LOCALAPPDATA\Microsoft\WindowsApps\winget" install Microsoft.DotNet.SDK.6
}

function InstallGit {
    pacman -S git --noconfirm --disable-download-timeout
}

function InstallSplashKit {
    # (-O,  --output-document=FILE      write documents to FILE)
    wget https://raw.githubusercontent.com/splashkit/skm/master/install-scripts/skm-install.sh -O skm-install.sh
    bash skm-install.sh
    rm skm-install.sh    
}

function InstallGCC {
    bash -l -c "yes | pacman --disable-download-timeout -S mingw-w64-{x86_64,i686}-gcc mingw-w64-{i686,x86_64}-gdb"
}

# Install git
$UserInput = [System.Windows.MessageBox]::Show('Install Git using pacman?', 'Confirmation', 'YesNo');
if ($UserInput -eq 'y') {
    InstallGit
}

# Install SplashKit SDK
$UserInput = [System.Windows.MessageBox]::Show('Install SplashKit SDK?', 'Confirmation', 'YesNo');
if ($UserInput -eq 'y') {
    InstallSplashKit
}
# Installing GCC on Windows for C++
$UserInput = [System.Windows.MessageBox]::Show('Install GCC for C++', 'Confirmation', 'YesNo');
if ($UserInput -eq 'y') {
    InstallGCC
}


