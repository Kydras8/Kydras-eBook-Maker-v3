#!/bin/bash

# Set your GitHub repo URL here:
REPO_URL="https://github.com/Kydras8/Kydras-eBook-Maker-v3.git"

# Go to project folder
cd ~/Documents/Kydras-eBook-Maker-v3 || {
  echo "[!] Folder not found: ~/Documents/Kydras-eBook-Maker-v3"
  exit 1
}

# Initialize git if needed
if [ ! -d ".git" ]; then
  git init
  git remote add origin "$REPO_URL"
  git branch -M main
fi

# Add all files, commit, and push
git add .
git commit -m "Auto-push: updated Kydras eBook Maker v3"
git push -u origin main

echo "[✓] Pushed to GitHub successfully!"
