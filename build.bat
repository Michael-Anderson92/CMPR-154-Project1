@echo off
REM build.bat - Assemble and link src/main.asm using MASM
REM Run this script from the Visual Studio Developer Command Prompt

REM Create the build directory if it doesn't exist
if not exist build mkdir build

REM Assemble the source file
ml /c /Zi /Fo build\main.obj src\main.asm
if %ERRORLEVEL% neq 0 (
    echo Assembly failed.
    exit /b %ERRORLEVEL%
)

REM Link the object file to produce the executable
link /SUBSYSTEM:CONSOLE /OUT:build\main.exe build\main.obj
if %ERRORLEVEL% neq 0 (
    echo Linking failed.
    exit /b %ERRORLEVEL%
)

echo Build successful! Output: build\main.exe
