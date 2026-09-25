Write-Host "========================================================" -ForegroundColor Cyan
Write-Host " 🇳🇵 Automated Devanagari/Nepali PDF OCR System Launcher" -ForegroundColor Yellow
Write-Host "========================================================" -ForegroundColor Cyan
Write-Host "[1] Start Streamlit UI (PDF Preview + Rendered Markdown)"
Write-Host "[2] Start FastAPI Web Server (/extract-pdf Endpoint)"
Write-Host "[3] Run Unit Tests"
Write-Host "[4] Generate Sample Nepali PDF"
Write-Host "========================================================"

$choice = Read-Host "Select option (1-4)"

switch ($choice) {
    "1" { .\venv\Scripts\python.exe main.py ui }
    "2" { .\venv\Scripts\python.exe main.py api }
    "3" { .\venv\Scripts\python.exe main.py test }
    "4" { .\venv\Scripts\python.exe main.py sample }
    Default { Write-Host "Invalid option selected." -ForegroundColor Red }
}
