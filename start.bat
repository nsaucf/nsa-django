@echo off
setlocal

REM Pick a Python executable
where py >nul 2>&1
IF %ERRORLEVEL%==0 (
  set "PY=py -3"
) ELSE (
  set "PY=python"
)

REM Create venv if missing
IF NOT EXIST env\Scripts\python.exe (
  %PY% -m venv env
)

REM Activate venv
call env\Scripts\activate

REM Upgrade pip and install deps
python -m pip install --upgrade pip
IF EXIST requirements.txt (
  pip install -r requirements.txt
)

REM Run the Django dev server
python manage.py runserver

endlocal
