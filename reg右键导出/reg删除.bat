@echo off
reg delete HKEY_CLASSES_ROOT\.7z\ShellNew /va /f
reg delete HKEY_CLASSES_ROOT\.bmp\ShellNew /va /f
reg delete HKEY_CLASSES_ROOT\.dps\WPP.Presentation.6\ShellNew /va /f
reg delete HKEY_CLASSES_ROOT\.et\ET.Workbook.6\ShellNew /va /f
reg delete HKEY_CLASSES_ROOT\.rar\ShellNew /va /f
reg delete HKEY_CLASSES_ROOT\.rtf\ShellNew /va /f
reg delete HKEY_CLASSES_ROOT\.wps\WPS.Document.6\ShellNew /va /f
reg delete HKEY_CLASSES_ROOT\.zip\ShellNew /va /f
pause