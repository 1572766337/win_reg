@echo off
reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\Power Menu" /v MUIVerb /d 快速关机(S) /f
reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\Power Menu" /v SubCommands /d shutdown;logoff;quickshut /f
reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\Power Menu" /v icon /d shell32.dll,215 /f


reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\shutdown" /v 关机 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\shutdown\command" /ve /d "Shutdown -f -s -t 0" /f


reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\logoff" /v 注销 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\logoff\command" /ve /d "Shutdown -f -l" /f


reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\quickshut" /v 快速关机 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\quickshut\command" /ve /d "shutdown -s -hybrid -t 0" /f
pause
