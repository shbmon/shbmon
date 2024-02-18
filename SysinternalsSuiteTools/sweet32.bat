set kb=hosts
FOR /F "eol=; tokens=1 delims=;" %%i in (%kb%.txt) do (
PsExec.exe \\%%i reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\SecurityProviders\S CHANNEL\Ciphers\Triple DES 168" /f /v "Enabled" /t REG_DWORD /d 00000000
PsExec.exe \\%%i reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\SecurityProviders\S CHANNEL\Ciphers\Triple DES 168/168" /f /v "Enabled" /t REG_DWORD /d 00000000
@echo ------------------------------------------------------------------ ---------------------
@echo -- [%%i - %date% - %time%]
@echo ------------------------------------------------------------------ ---------------------
@echo.
@echo.
)