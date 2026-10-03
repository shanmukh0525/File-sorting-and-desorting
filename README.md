# File Organization toolkit

This repository contains two simple but powerful Windows Batch scripts designed to help you organize a messy folder and easily undo the process if needed.

## Included Scripts

### 1. `filesort.bat`

This script acts as an automated folder organizer.

* **What it does:** It loops through all files in the current directory and moves them into newly created folders based on their file extension. For example, all `.jpg` files will be moved into a folder named `jpg`.


* **Smart Filtering:** It ensures that the batch script itself is not moved during the process.


* **No-Extension Files:** It skips files that do not have a file extension.


* **Completion:** Once finished, it displays the message "Files have been successfully sorted by extension!" and pauses so you can see the result.



### 2. `filereverse.bat`

This script acts as an "undo" button for `filesort.bat` or a general tool to flatten a folder structure.

* **What it does:** It loops through all immediate subfolders in the current directory.


* **File Flattening:** It moves all files from inside those subfolders back to the current root directory (the exact location where the script is running).


* **Automatic Cleanup:** After moving the files out, it attempts to remove the subfolder. It will safely only delete a folder if it is completely empty.


* **Completion:** Once finished, it displays the message "Files have been successfully moved back and empty folders removed!" and pauses.



---

## How to Use

1. **Place the Scripts:** Copy either `filesort.bat` or `filereverse.bat` directly into the folder you want to organize or flatten.
2. **Run the Script:** Double-click the `.bat` file to execute it. A command prompt window will briefly appear to show you the progress.
3. **Press Any Key:** The script will pause at the end so you can read the success message. Press any key on your keyboard to close the window.

## ⚠️ Important Safety Warnings

* **Target Specific Folders:** Only place and run these scripts in specific folders you want to organize (like a messy "Downloads" folder).
* **Do NOT run on your Desktop:** Running `filesort.bat` directly on your Desktop will scoop up all your shortcuts and files into extension-based folders, which can be highly disruptive.
* **Do NOT run in System Folders:** Never run these scripts in `C:\Windows`, `Program Files`, or other critical system directories, as flattening or moving those files will break your software.
