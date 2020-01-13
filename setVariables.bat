REM Get current folder
set drive=%~dp0
set drivep=%drive%
if #%drive:~-1%# == #\# set drivep=%drive:~0,-1%
set "drivep=%drivep:\=/%"

REM Set the location of this pack
SET ONETHINX_PACK_LOC=%drivep%
SETX ONETHINX_PACK_LOC %ONETHINX_PACK_LOC%

REM Set the PDL version (must match the folder name of the PDL!)
SET ONETHINX_PDL_VERSION=PDL_1.3.1.1499
SETX ONETHINX_PDL_VERSION %ONETHINX_PDL_VERSION%

REM Set the Compiler version (must match the folder name of the Compiler!)
SET ONETHINX_COMPILER_VERSION=gcc-arm-none-eabi-9-2019-q4-major
SETX ONETHINX_COMPILER_VERSION %ONETHINX_COMPILER_VERSION%

SET ONETHINX_PDL_LOC=%ONETHINX_PACK_LOC%/%ONETHINX_PDL_VERSION%
SETX ONETHINX_PDL_LOC %ONETHINX_PDL_LOC%
SET ONETHINX_SVD_LOC=%ONETHINX_PDL_LOC%/devices/svd
SETX ONETHINX_SVD_LOC %ONETHINX_SVD_LOC%
SET ONETHINX_COMPILER_LOC=%ONETHINX_PACK_LOC%/%ONETHINX_COMPILER_VERSION%/bin
SETX ONETHINX_COMPILER_LOC %ONETHINX_COMPILER_LOC%

REM Set the Path to the CMake executable
PackSetup\pathed /REMOVE %ONETHINX_PACK_LOC%/CMake/bin /USER && PackSetup\pathed /ADD %ONETHINX_PACK_LOC%/CMake/bin /USER
REM Set the Path to the Make executable
PackSetup\pathed /REMOVE %ONETHINX_PACK_LOC%/mingw-make /USER && PackSetup\pathed /ADD %ONETHINX_PACK_LOC%/mingw-make /USER
REM Set the Path to the Compiler
PackSetup\pathed /REMOVE %ONETHINX_COMPILER_LOC% /USER && PackSetup\pathed /ADD %ONETHINX_COMPILER_LOC% /USER

@ECHO. 
@ECHO Done, Please restart your machine!