@ECHO OFF
mingw32-make -f CMakeFiles/%1.elf.dir/build.make CMakeFiles/%1.elf.dir/build -q
if %errorlevel% EQU 0 (
    echo Build is OK :-^)
    exit 0
)
if %errorlevel% EQU 1 (
    echo **** Please build project first. ****
    exit 1
) else ( 
    echo **** Please fix build errors. ****
    exit 2
)