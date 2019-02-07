@echo off
echo starting prerun
echo Windows Registry Editor Version 5.00 > spellCheck.reg
echo. >> spellCheck.reg
echo [HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_SPELLCHECKING] >> spellCheck.reg
echo "iexplore.exe"=dword:00000000 >> spellCheck.reg
echo content of registry file to import:
type spellCheck.reg
echo importing registry file
reg import spellCheck.reg
echo prerun complete
