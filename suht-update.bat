@echo off
cd /d "%~dp0"
set /A num=2
:upd
set /A num=%num%-1
curl -L -o "suht.bat" "https://raw.githubusercontent.com/skiiiXD/suht/refs/heads/main/suht.bat"
curl -L -o "suht-downoload.bat" "https://raw.githubusercontent.com/skiiiXD/suht/refs/heads/main/suht-downoload.bat"
curl -L -o "suht-update.bat" "https://raw.githubusercontent.com/skiiiXD/suht/refs/heads/main/suht-update.bat"
if %num%==1 (
    goto :upd
)
suht-downoload.bat