@echo off
mkdir c:\suht
copy suht.bat C:\suht\
copy suht-downoload.bat C:\suht\
copy suht-update.bat C:\suht\
setx PATH "C:\suht;%PATH%"