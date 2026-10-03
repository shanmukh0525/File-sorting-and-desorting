@echo off
setlocal enabledelayedexpansion

:: Loop through all files in the current directory
for %%F in (*.*) do (
    :: Ensure we do not move the batch script itself
    if not "%%~nxF"=="%~nx0" (
        :: Get the file extension (without the dot)
        set "ext=%%~xF"
        set "ext=!ext:.=!"
        
        :: If the file has an extension, process it
        if not "!ext!"=="" (
            :: Create the folder if it doesn't exist
            if not exist "!ext!" mkdir "!ext!"
            :: Move the file into the folder
            move "%%F" "!ext!\"
        )
    )
)

echo Files have been successfully sorted by extension!
pause
