@echo off

echo Enabling SATA HIPM + DIPM mode...

for /f "tokens=4 skip=1" %%f in ('powercfg -list ^| findstr \*') do set GUID=%%f

powercfg /setacvalueindex %GUID% 0012ee47-9041-4b5d-9b77-535fba8b1442 0b2d69d7-a2a1-449c-9680-f91c70521c60 2
powercfg /setdcvalueindex %GUID% 0012ee47-9041-4b5d-9b77-535fba8b1442 0b2d69d7-a2a1-449c-9680-f91c70521c60 2

echo Enabled successfully. Suspend mode should now be fully functional.

pause
