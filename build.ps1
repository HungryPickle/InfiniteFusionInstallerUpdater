Remove-Item -Path ".\out" -Recurse
New-Item -ItemType Directory -Name ".\out" -Path ".\" -ErrorAction SilentlyContinue
Copy-Item -Path ".\INSTALL_OR_UPDATE.sh" -Destination ".\out" -Force
Copy-Item -Path ".\ReadMe_InstallerUpdater.txt" -Destination ".\out" -Force

Compress-Archive -Path ".\out\*" -DestinationPath ".\out\KIF_Linux_Installer_by_HungryPickle.zip" -Force
#explorer .\out

Write-Host "Built:"(Get-Date -DisplayHint Time) 