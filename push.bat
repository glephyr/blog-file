@echo off
echo [1/3] Checking for Hugo drafts...
hugo list drafts

echo.
echo [2/3] Adding changes to Git...
git add .

echo.
set /p msg="Enter commit message (or press Enter for 'Update blog'): "
if "%msg%"=="" set msg=Update blog

echo.
echo [3/3] Pushing to GitHub...
git commit -m "%msg%"
git push origin main

echo.
echo ------------------------------------------
echo Done! GitHub Actions and Vercel are building your site.
echo Give it about 2 minutes to go live.
echo ------------------------------------------
pause