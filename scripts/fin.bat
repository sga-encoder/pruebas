@echo off
cd "C:\Users\Sga51\Documents\java\pruebas"

git add .

for /f "tokens=*" %%i in ('powershell -command "Get-Date -Format 'yyyy-MM-dd HH:mm:ss'"') do set fecha=%%i
git commit -m "Push automático el %fecha%"

git push