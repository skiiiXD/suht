@echo off
mkdir c:\suht
copy suht.bat C:\suht\
copy downoload.bat C:\suht\
copy update.bat C:\suht\
setx PATH "C:\suht;%PATH%"
pause