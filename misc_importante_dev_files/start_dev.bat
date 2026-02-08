@echo off
echo ===========================================
echo 🚀 Iniciando Landing Maker (Dev Environment)
echo ===========================================
echo.

echo [INFO] Cerrando procesos anteriores de node/dotnet por si acaso...
taskkill /F /IM dotnet.exe >nul 2>&1
taskkill /F /IM node.exe >nul 2>&1

echo.
echo [1/3] Verificando Backend...
cd landing_maker_back
if not exist "bin" (
    echo    - Compilando proyecto...
    dotnet build
)
echo    - Iniciando Backend (Puerto 5000)...
start "Landing Maker Backend" cmd /k "dotnet run"
cd ..

REM Esperar arranque del backend
timeout /t 5 /nobreak >nul

echo.
echo [2/3] Verificando Frontend...
cd landing_maker_front
if not exist "node_modules" (
    echo    - Instalando dependencias (esto tarda solo la primera vez)...
    call npm install
)
echo    - Iniciando Frontend (Puerto 5173)...
start "Landing Maker Frontend" cmd /k "npm run dev"
cd ..

echo.
echo [3/3] Listo!
echo.
echo ✅ Backend: http://localhost:5000
echo ✅ Frontend: http://localhost:5173
echo.
echo Presiona cualquier tecla para salir...
pause >nul
