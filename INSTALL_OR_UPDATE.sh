#!/usr/bin/env bash

git init .
git remote add origin "https://github.com/kurayamiblackheart/kurayshinyrevamp.git"
git fetch origin release
git reset --hard origin/release

# unzip -o -d "./Data" "./Data/species.zip"

echo ""
echo "Installer/Updater made by Hungry Pickle"
echo ""
echo "Thank you for installing or updating!"
read