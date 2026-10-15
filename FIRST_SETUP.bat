@echo off
setlocal
cd /d "%~dp0"
py -m venv .venv
call .venv\Scripts\activate
python -m pip install --upgrade pip
pip install -r requirements.txt
if not exist .env copy .env.example .env >nul
echo.
echo SETUP COMPLETE
echo Open .env and paste your own GOOGLE_API_KEY before running the app.
pause
