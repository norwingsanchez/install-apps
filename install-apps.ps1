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

Write-Host "Installing Adobe Reader..."
$adobeInstaller = "C:\adobe_reader.exe"
Invoke-WebRequest -Uri "https://ardownload2.adobe.com/pub/adobe/reader/win/AcrobatDC/2300820420/AcroRdrDC2300820420_en_US.exe" -OutFile $adobeInstaller
Start-Process -FilePath $adobeInstaller -Args "/sAll /rs /rps /msi EULA_ACCEPT=YES" -Wait
Remove-Item $adobeInstaller


Write-Output "Install complete."