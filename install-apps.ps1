# install-apps.ps1

Write-Host "Installing 7-Zip..."
Invoke-WebRequest -Uri "https://www.7-zip.org/a/7z1900-x64.exe" -OutFile "C:\7zip.exe"
Start-Process "C:\7zip.exe" -ArgumentList "/S" -Wait
Remove-Item "C:\7zip.exe"

Write-Host "Installing Google Chrome..."
$chromeInstaller = "C:\chrome_installer.exe"
Invoke-WebRequest -Uri "https://dl.google.com/chrome/install/latest/chrome_installer.exe" -OutFile $chromeInstaller
Start-Process -FilePath $chromeInstaller -Args "/silent /install" -Wait
Remove-Item $chromeInstaller

Write-Output "Install complete."
