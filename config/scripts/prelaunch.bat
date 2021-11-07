@ECHO OFF
if %1 EQU 0 (
    echo Build is OK :-^)
    exit 0
)
if %1 EQU 1 (
    echo **** Please build project first. ****
    exit 1
) else ( 
    echo **** Please fix build errors. ****
    exit 2
)