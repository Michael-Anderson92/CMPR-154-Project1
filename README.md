# my-asm-project

An x86 Assembly starter project using MASM on Windows. It includes a simple `main.asm` program, a batch build script, and recommended Git ignore rules for common MASM artifacts.

## Project Structure

```
my-asm-project/
├── src/
│   └── main.asm
├── build/
├── build.bat
├── README.md
└── .gitignore
```

## Requirements

- OS: Windows (x86 target)
- Assembler: MASM (`ml.exe`) and linker (`link.exe`)
- Environment: Visual Studio Developer Command Prompt (so MASM and linker tools are in `PATH`)

## Build and Run (Visual Studio Developer Command Prompt)

1. Open **Developer Command Prompt for Visual Studio**.
2. Change to the project directory:

	```bat
	cd path\to\my-asm-project
	```

3. Build the project:

	```bat
	build.bat
	```

4. Run the executable:

	```bat
	build\main.exe
	```

The executable is generated in the `build\` folder.

## Manual Build Commands (Optional)

```bat
ml /c /coff src\main.asm /Fo"build\main.obj"
link build\main.obj /SUBSYSTEM:CONSOLE /MACHINE:X86 /ENTRY:main /OUT:"build\main.exe" kernel32.lib
```