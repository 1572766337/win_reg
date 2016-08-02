@echo off
reg delete HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /va /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /va /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Run /va /f

echo HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Run [2 17]>regini.txt
echo HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run [2 17]>>regini.txt
echo HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Run [2 17]>>regini.txt
regini regini.txt
del /f /q regini.txt

echo 屏蔽“开始菜单-启动”目录。。。
del /f /s /q "%userprofile%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"
cacls "%userprofile%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup" /G SYSTEM:F Admin-SCY:R
pause