# Onethinx Core Windows dependencies pack

## How to setup Visual Studio Code with the Onethinx Core dependencies pack

## 1. Download prerequisites
- **VS Code**
    - [Download Visual Studio Code](https://code.visualstudio.com/download)
- **Onethinx Dependencies Pack**
    - [Download the Onethinx dependencies pack for Windows](https://github.com/onethinx/VSCode_OnethinxPack_Windows/archive/master.zip)
## 2. Install VS Code & extensions
  - Install VS Code.
  - Install extensions:
    - ARM Support For Visual Studio Code (dan-c-underwood)
    - C/C++ IntelliSense, debugging (microsoft)
    - CMake language support (twxs)
    - CMake Tools (microsoft)
    - Cortex-Debug GDB support (marus25)
    - Power Tools (e.GO Mobile)
    - LinkerScript support for GNU (Zixuan Wang)
    - Open in Application (Fabio Spampinato)
    - Output Colorizer (IBM)
    - Tasks (actboy168)
    - Power Tools (e.GO Digital GmbH)
## 3. Install the Onethinx Dependencies Pack
  - Unzip the pack archive to your local harddisk (eg: C:\VSCode_OnethinxPack_Windows).
    _Hint: you might want to remove '-master' at the end of the folder name._
  - Open your command prompt (cmd).
  - Drag and drop the file `setVariables.bat` to your command prompt (or type `C:\VSCode_OnethinxPack_Windows\setVariables.bat`).
  - Press enter, you'll see the environment variables and the path being set.
  - Restart your machine.
## 4. Check
  - If CMake, Make and the compiler is correctly installed by typing the following into your command prompt or terminal window of VS Code.
    - `cmake -version`
    - `mingw32-make -v`
    - `arm-none-eabi-gcc -v`
  - If you have not done this yet, download the Hello World from https://ghithub.com/onethingx/VSCode_HelloWorld
    - If this builds without error, the Onethinx build suite has been installed properly.
## 5. Remind
  - After changing the device configuration (or project file structure) to use
    - Clean Reconfigure
    - Clean Rebuild
       in order to build the image properly  
  - To delete the contents of the build folder
    - if you copied the project including build folder from another location / machine
    - when build fails.
  - This pack contains the 64bit version of CMake. Replace with the 32bit version if you run on a 32bit machine.
