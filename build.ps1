Remove-Item -Path ".\out" -Recurse
New-Item -ItemType Directory -Name ".\out" -Path ".\" -ErrorAction SilentlyContinue
New-Item -ItemType Directory -Name ".\out\REQUIRED_BY_INSTALLER_UPDATER" -Path ".\" -ErrorAction SilentlyContinue

Start-Process "C:\Program Files\7-zip\7z.exe" -ArgumentList "a -spf -aoa `".\out\REQUIRED_BY_INSTALLER_UPDATER\MinGit.7z`" `".\REQUIRED_BY_INSTALLER_UPDATER`"" -Wait
Copy-Item -Path ".\7z\*" -Destination ".\out\REQUIRED_BY_INSTALLER_UPDATER" -Force
Copy-Item -Path ".\INSTALL_OR_UPDATE.bat" -Destination ".\out" -Force
#Copy-Item -Path ".\REQUIRED_BY_INSTALLER_UPDATER" -Destination ".\out" -Force -Recurse
#Copy-Item -Path ".\ReadMe_InstallerUpdater.txt" -Destination ".\out" -Force

Compress-Archive -Path ".\out\*" -DestinationPath ".\out\KIF_Installer_by_HungryPickle.zip" -Force
#explorer .\out

Write-Host "Built:"(Get-Date -DisplayHint Time) 

# MinGit-2.40.1-64-bit