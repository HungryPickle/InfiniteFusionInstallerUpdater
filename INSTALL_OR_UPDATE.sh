#!/usr/bin/env bash

git init .
git remote add origin "https://github.com/infinitefusion/infinitefusion-e18.git"
git fetch origin releases
git reset --hard origin/releases

unzip -o -d "./Data" "./Data/species.zip"

echo ""
echo "Installer/Updater made by Hungry Pickle"
echo ""
echo "Thank you for installing or updating!"