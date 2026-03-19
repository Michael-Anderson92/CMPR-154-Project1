@echo off
setlocal

REM Build script for MASM x86 using Visual Studio Developer Command Prompt
set ROOT_DIR=%~dp0
set SRC_FILE=%ROOT_DIR%src\main.asm
set OUT_DIR=%ROOT_DIR%build
set OBJ_FILE=%OUT_DIR%\main.obj
set EXE_FILE=%OUT_DIR%\main.exe

if not exist "%OUT_DIR%" mkdir "%OUT_DIR%"

echo Assembling %SRC_FILE% ...
ml /c /coff "%SRC_FILE%" /Fo"%OBJ_FILE%"
if errorlevel 1 (
  echo Assembly failed.
  exit /b 1
)

echo Linking %OBJ_FILE% ...
link "%OBJ_FILE%" /SUBSYSTEM:CONSOLE /MACHINE:X86 /ENTRY:main /OUT:"%EXE_FILE%" kernel32.lib
if errorlevel 1 (
  echo Link failed.
  exit /b 1
)

echo Build succeeded: %EXE_FILE%
endlocal