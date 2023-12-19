Remove-Item -Path ".\out" -Recurse
New-Item -ItemType Directory -Name ".\out\InfiniteFusion\REQUIRED_BY_INSTALLER_UPDATER" -Path ".\" -ErrorAction SilentlyContinue

Copy-Item -Path ".\INSTALL_OR_UPDATE.bat" -Destination ".\out\InfiniteFusion" -Force
Start-Process "C:\Program Files\7-zip\7z.exe" -ArgumentList "a -spf -aoa `".\out\InfiniteFusion\REQUIRED_BY_INSTALLER_UPDATER\MinGit.7z`" `".\REQUIRED_BY_INSTALLER_UPDATER`"" -Wait
Copy-Item -Path ".\7z\*" -Destination ".\out\InfiniteFusion\REQUIRED_BY_INSTALLER_UPDATER" -Force
#Copy-Item -Path ".\ReadMe_InstallerUpdater.txt" -Destination ".\out\InfiniteFusion" -Force

Compress-Archive -Path ".\out\InfiniteFusion" -DestinationPath ".\out\InfiniteFusion.zip" -Force
#explorer .\out

Write-Host "Built:"(Get-Date -DisplayHint Time) 

# MinGit-2.40.1-64-bit

#Compress-Archive -Path ".\out\*" -DestinationPath ".\out\KIF_Installer_by_HungryPickle.zip" -Force