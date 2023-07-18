Remove-Item -Path ".\out" -Recurse
New-Item -ItemType Directory -Name ".\out\InfiniteFusion" -Path ".\" -ErrorAction SilentlyContinue
Copy-Item -Path ".\INSTALL_OR_UPDATE.sh" -Destination ".\out\InfiniteFusion" -Force
Copy-Item -Path ".\REQUIRED_BY_INSTALLER_UPDATER" -Destination ".\out\InfiniteFusion" -Force -Recurse

Compress-Archive -Path ".\out\InfiniteFusion" -DestinationPath ".\out\InfiniteFusion_linux.zip" -Force
explorer .\out

Write-Host "Built:"(Get-Date -DisplayHint Time) 