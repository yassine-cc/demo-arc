# URL for the Arc browser installer
$installerUrl = "https://releases.arc.net/windows/ArcInstaller.exe"

# Location to save the installer
$installerPath = "$env:USERPROFILE\Downloads\ArcInstaller.exe"

# Download the Arc browser installer
Write-Host "Downloading Arc browser installer..."
Invoke-WebRequest -Uri $installerUrl -OutFile $installerPath

# Check if the download was successful
if (Test-Path $installerPath) {
    Write-Host "Download successful. Running the installer..."
    Start-Process -FilePath $installerPath -ArgumentList '/silent' -Wait
    Start-Sleep -Seconds 10
} else {
    Write-Host "Failed to download the Arc browser installer."
}