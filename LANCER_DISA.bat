@echo off
title DISA Pro Dashboard
echo ================================================
echo   DISA Pro Dashboard — Demarrage automatique
echo   KOUKPAKI Cyrius — ESMER Benin 2025-2026
echo ================================================

cd /d "%~dp0"

echo Demarrage du dashboard Streamlit...
start "DISA Dashboard" cmd /k "python -m streamlit run dashboard_disa_streamlit.py"

timeout /t 3 /nobreak >nul

echo Demarrage du tunnel ngrok...
start "DISA Ngrok" cmd /k "ngrok http 8501"

timeout /t 3 /nobreak >nul

echo Ouverture du navigateur...
start http://localhost:8501

echo ================================================
echo   Dashboard accessible sur :
echo   Local  : http://localhost:8501
echo   Ngrok  : http://localhost:4040
echo ================================================