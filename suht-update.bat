@echo off
cd /d "%~dp0"
curl -L -o "suht.bat" "https://raw.githubusercontent.com/skiiiXD/suht/refs/heads/main/suht.bat"
curl -L -o "suht-downoload.bat" "https://raw.githubusercontent.com/skiiiXD/suht/refs/heads/main/downoload.bat"
curl -L -o "suht-update.bat" "https://raw.githubusercontent.com/skiiiXD/suht/refs/heads/main/update.bat"
suht-downoload.bat