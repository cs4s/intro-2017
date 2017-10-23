@echo off

start "" "C:\Program Files (x86)\AppInventor\aiStarter.exe"

cd /D "%APPDATA%\Mozilla\Firefox\Profiles"
cd *.default
set ffile=%cd%
echo user_pref("network.proxy.http", "proxy.newcastle.edu.au ");>>"%ffile%\prefs.js"
echo user_pref("network.proxy.http_port", 8080);>>"%ffile%\prefs.js"
echo user_pref("network.proxy.type", 1);>>"%ffile%\prefs.js"
set ffile=
cd %windir%