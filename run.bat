@echo off
echo ========================================================
echo  🇳🇵 Automated Devanagari/Nepali PDF OCR System Launcher
echo ========================================================
echo Select Mode:
echo [1] Start Streamlit UI (Split Preview + Rendered Markdown)
echo [2] Start FastAPI Web Server (/extract-pdf Endpoint)
echo [3] Run Unit Tests
echo [4] Generate Sample Nepali PDF
echo ========================================================
set /p choice="Enter option (1-4): "

if "%choice%"=="1" (
    .\venv\Scripts\python.exe main.py ui
) else if "%choice%"=="2" (
    .\venv\Scripts\python.exe main.py api
) else if "%choice%"=="3" (
    .\venv\Scripts\python.exe main.py test
) else if "%choice%"=="4" (
    .\venv\Scripts\python.exe main.py sample
) else (
    echo Invalid choice.
)
pause
