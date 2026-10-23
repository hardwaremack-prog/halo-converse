@echo off
rem Opens Halo Converse's network port (8443) in Windows Firewall, for home (Private) networks only.
net session >nul 2>&1
if errorlevel 1 (
  if "%1"=="" (
    powershell -NoProfile -Command "Start-Process -FilePath '%~f0' -Verb RunAs -Wait"
  ) else (
    powershell -NoProfile -Command "Start-Process -FilePath '%~f0' -ArgumentList '%1' -Verb RunAs -Wait"
  )
  exit /b
)
netsh advfirewall firewall delete rule name="Halo Converse" >nul 2>&1
netsh advfirewall firewall add rule name="Halo Converse" dir=in action=allow protocol=TCP localport=8443 profile=private >nul
if errorlevel 1 (
  echo Couldn't add the firewall rule.
) else (
  echo Halo Converse can now be reached from other devices on your home network.
)
if /i not "%1"=="/quiet" pause
