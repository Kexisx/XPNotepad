@echo off
setlocal

echo [1/3] Compiling resources
rc /nologo XPNotepad.rc
if errorlevel 1 goto :fail

echo [2/3] Assembling XPNotepad.asm
ml /nologo /c /coff XPNotepad.asm
if errorlevel 1 goto :fail

echo [3/3] Linking XPNotepad_XP.exe (Windows XP subsystem)
link /nologo /out:XPNotepad_XP.exe /subsystem:windows,5.01 /machine:x86 /entry:start XPNotepad.obj XPNotepad.res kernel32.lib user32.lib gdi32.lib comdlg32.lib comctl32.lib
if errorlevel 1 goto :fail

echo Build complete: XPNotepad_XP.exe
exit /b 0

:fail
echo Build failed.
exit /b 1
