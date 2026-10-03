****File Organizer Utility Scripts****

This folder contains two batch scripts designed to help you organize and reorganize your files quickly. These scripts act as a pair: one sorts your files into folders, and the other undoes the process by bringing everything back to the main folder.

1. Sort by Extension Script

What it does:
This script automatically cleans up a messy folder by grouping files based on their type (extension).

How it works:

It scans all the files in the same folder where the script is located.

It identifies the file extension of each file (e.g., .jpg, .pdf, .txt).

It creates a new folder named after that extension (e.g., a folder named jpg).

It moves the files into their matching folders.

Note: The script is smart enough to ignore itself, so it won't move the actual batch file.

2. Flatten Folders Script (The Reverser)

What it does:
This script does the exact opposite of the sorting script. It pulls all files out of their subfolders and places them back into the main directory, then cleans up the empty folders.

How it works:

It looks at every folder in the current directory.

It moves all files out of those folders and places them right next to the script.

Once a folder is completely empty of files, the script deletes the folder to keep things tidy.

Safety Note: This script does not delete your files. It only deletes folders if they are empty. If a folder contains another subfolder, it will be left alone.

How to Use the Scripts

Place the script: Copy or move the desired .bat script into the specific folder you want to organize (or flatten).

Run the script: Double-click the batch file.

Wait for completion: A command prompt window will briefly appear, process the files, and then display a success message. Press any key to close the window.

⚠️ Important Warnings

Location Matters: These scripts affect the folder they are currently inside. Do not run them on your Desktop or in essential system folders (like C:\Windows), as it will move everything around! Put the files you want to sort into an isolated folder first.

The Flatten Script is Global: The flatten script will pull files out of every folder in the same directory as the script. Be sure you actually want to extract the contents of all subfolders before running it.
