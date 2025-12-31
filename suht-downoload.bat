@echo off
mkdir \suht
copy suht.bat \suht\
copy suht-downoload.bat \suht\
copy suht-update.bat \suht\
setx PATH "\suht;%PATH%"