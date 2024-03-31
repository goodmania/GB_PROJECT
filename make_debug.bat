@echo off

rmdir /s /q bin\Debug
rmdir /s /q dist\Debug

mkdir bin\Debug
mkdir dist\Debug

SET GBDK_HOME=..\..\Resources\gbdk

SET LCC_COMPILE_BASE=%GBDK_HOME%\bin\lcc
SET LCC_COMPILE=%LCC_COMPILE_BASE% -debug -c -o 

SETLOCAL ENABLEDELAYEDEXPANSION

SET "COMPILE_OBJECT_FILES="

:: loop for all files in the default source folder
FOR /R "source/" %%X IN (*.c) DO (
    echo Compiling main %%~nX ...
    %LCC_COMPILE% bin/Debug/%%~nX.o %%X
    SET "COMPILE_OBJECT_FILES=bin/Debug/%%~nX.o !COMPILE_OBJECT_FILES!"
)

:: Compile a .gb file from the compiled .o files
%LCC_COMPILE_BASE% -debug -o dist/Debug/game.gb !COMPILE_OBJECT_FILES!

endlocal

"lib/romusage" dist\Debug\game.noi -a