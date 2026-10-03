@echo off
setlocal enabledelayedexpansion

:: Loop through all immediate subfolders in the current directory
for /d %%D in (*) do (
    :: Move all files from the subfolder back to the current root directory
    move "%%D\*" "%~dp0" >nul 2>&1
    
    :: Attempt to remove the subfolder (will only delete if it is empty)
    rmdir "%%D" 2>nul
)

echo Files have been successfully moved back and empty folders removed!
pause