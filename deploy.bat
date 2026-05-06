@echo off
echo ==================================================
echo   MEGHANA'S PORTFOLIO DEPLOYMENT HELPER
echo ==================================================
echo.
echo 1. Initializing Git...
git init
git add .
git commit -m "Deployment of static portfolio version"
git branch -M main

echo.
echo 2. Go to GitHub and create a NEW repository called "portfolio-static"
echo 3. Copy the URL of your new repository (ends in .git)
echo.
set /p repo_url="Paste your GitHub Repository URL here: "

echo.
echo 4. Connecting to GitHub...
git remote add origin %repo_url%
git push -u origin main

echo.
echo ==================================================
echo   DONE! Now go to Render.com and:
echo   1. Click 'New +' -> 'Static Site'
echo   2. Connect your GitHub account
echo   3. Select 'portfolio-static'
echo   4. Click 'Create Static Site'
echo ==================================================
pause
