# Install msys2
& "$env:LOCALAPPDATA\Microsoft\WindowsApps\winget" install msys2

# Install VS Code
& "$env:LOCALAPPDATA\Microsoft\WindowsApps\winget" install Microsoft.VisualStudioCode

# Installing the SplashKit SDK
function InstallSplashKit {

    # Install git
    pacman -S git --noconfirm --disable-download-timeout

    # Install SplashKit
    wget https://raw.githubusercontent.com/splashkit/skm/master/install-scripts/skm-install.sh -O skm-install.sh
    bash skm-install.sh
    rm skm-install.sh

    # Installing GCC on Windows for C++
    bash -l -c "yes | pacman --disable-download-timeout -S mingw-w64-{x86_64,i686}-gcc mingw-w64-{i686,x86_64}-gdb"
}

InstallSplashKit

# Install the .NET 6 LTS Core SDK on Windows for C#
& "$env:LOCALAPPDATA\Microsoft\WindowsApps\winget" install Microsoft.DotNet.SDK.6 
