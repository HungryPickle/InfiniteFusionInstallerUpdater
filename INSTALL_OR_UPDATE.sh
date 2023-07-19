#!/usr/bin/env bash

./REQUIRED_BY_INSTALLER_UPDATER/7z.exe e -spf -aoa "REQUIRED_BY_INSTALLER_UPDATER/MinGit.7z"

mgit="./REQUIRED_BY_INSTALLER_UPDATER/cmd/git.exe"
$mgit init .
$mgit remote add origin "https://github.com/infinitefusion/infinitefusion-e18.git"
$mgit fetch origin releases
$mgit reset --hard origin/releases

./REQUIRED_BY_INSTALLER_UPDATER/7z.exe e -spf -aoa -o"Data" "Data/species.zip"

echo ""
echo "Installer/Updater made by Hungry Pickle"
echo ""
echo "Thank you for installing or updating!"