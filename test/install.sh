#!/bin/sh
set -e -x
echo "===== STEP1 ====="
sudo apt -y install curl
echo "[OK]"
echo "===== STEP2 ====="
sudo add-apt-repository "deb https://cliassets.heroku.com/branches/stable/apt ./"
echo "[OK]"
echo "===== STEP3 ====="
curl -L https://cli-assets.heroku.com/apt/release.key | sudo apt-key add -
echo "[OK]"
echo "===== STEP4 ====="
sudo apt-get update
echo "[OK]"
echo "===== STEP5 ====="
sudo apt-get install heroku
echo "[OK]"
