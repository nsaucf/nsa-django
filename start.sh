#!/usr/bin/env bash
set -Eeuo pipefail

# Pick a Python executable
if command -v python3 >/dev/null 2>&1; then
  PY=python3
else
  PY=python
fi

# Create venv if missing
if [ ! -d "env" ]; then
  "$PY" -m venv env
fi

# Activate venv
# shellcheck disable=SC1091
source env/bin/activate

# Upgrade pip and install deps
python -m pip install --upgrade pip
if [ -f requirements.txt ]; then
  pip install -r requirements.txt
fi

# Run the Django dev server
python manage.py runserver
