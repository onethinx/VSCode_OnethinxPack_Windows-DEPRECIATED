REM Remove location of this pack variable
SET ONETHINX_PACK_LOC=
REG delete HKCU\Environment /F /V ONETHINX_PACK_LOC

REM Remove the PDL version (must match the folder name of the PDL!)
SET ONETHINX_PDL_VERSION=
REG delete HKCU\Environment /F /V ONETHINX_PDL_VERSION

REM Remove the Compiler version (must match the folder name of the Compiler!)
SET ONETHINX_COMPILER_VERSION=
REG delete HKCU\Environment /F /V ONETHINX_COMPILER_VERSION

SET ONETHINX_PDL_LOC=
REG delete HKCU\Environment /F /V ONETHINX_PDL_LOC
SET ONETHINX_SVD_LOC=
REG delete HKCU\Environment /F /V ONETHINX_SVD_LOC
SET ONETHINX_COMPILER_LOC=
REG delete HKCU\Environment /F /V ONETHINX_COMPILER_LOC

REM Remove the Path to the CMake executable
PackSetup\pathed /REMOVE %ONETHINX_PACK_LOC%/CMake/bin /USER
REM Remove the Path to the Make executable
PackSetup\pathed /REMOVE %ONETHINX_PACK_LOC%/mingw-make /USER
REM Remove the Path to the Compiler
PackSetup\pathed /REMOVE %ONETHINX_COMPILER_LOC% /USER

@ECHO. 
@ECHO Done, Please restart your machine!