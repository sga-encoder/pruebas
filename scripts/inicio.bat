@echo off
cd "C:\Users\Sga51\Documents\java\pruebas"
git fetch

REM Verifica si hay cambios en la rama remota
for /f "tokens=*" %%i in ('git rev-parse HEAD') do set local=%%i
for /f "tokens=*" %%i in ('git rev-parse @{upstream}') do set remote=%%i

if not "%local%"=="%remote%" (
    echo Hay cambios en el repositorio remoto. Actualizando...
    git merge
) else (
    echo No hay cambios en el repositorio remoto.
)