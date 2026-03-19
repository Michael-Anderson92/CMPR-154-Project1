# CMPR-154-Project1

A simple x86 Assembly project written in MASM (Microsoft Macro Assembler). This project demonstrates basic integer arithmetic — adding two immediate values and storing the result in a variable — as a foundation for learning low-level programming on Windows.

## Requirements

- **Assembler:** MASM (`ml.exe`) — included with Visual Studio (any recent edition) or the standalone [Microsoft Build Tools](https://visualstudio.microsoft.com/downloads/#build-tools-for-visual-studio-2022)
- **Linker:** `link.exe` — included with Visual Studio / Build Tools
- **Operating System:** Windows (x86 or x64 with 32-bit support)
- **Command Prompt:** Visual Studio Developer Command Prompt (so `ml.exe` and `link.exe` are on the PATH)

## Project Structure

```
my-asm-project/
├── src/
│   └── main.asm    # x86 Assembly source
├── build/          # Output directory (generated files are git-ignored)
├── build.bat       # Build script
├── .gitignore
└── README.md
```

## Build Instructions

1. Open the **Visual Studio Developer Command Prompt** (search for it in the Start menu).
2. Navigate to the project root:
   ```bat
   cd path\to\CMPR-154-Project1
   ```
3. Run the build script:
   ```bat
   build.bat
   ```
   The script will:
   - Assemble `src/main.asm` → `build/main.obj`
   - Link `build/main.obj` → `build/main.exe`

## Run Instructions

After a successful build, run the executable from the same command prompt:

```bat
build\main.exe
```

The program adds 30 + 20, stores the result (50) in the `sum` variable, and exits cleanly with code 0.

## Git Initialization (first-time setup)

If you are setting up this repository from scratch, use the following commands:

```bat
git init
git add .
git commit -m "Initial commit: add x86 MASM project structure"
```