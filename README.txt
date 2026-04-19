XPNotepad (MASM / ml)
=====================

License:
  MIT (see LICENSE)

Build:
  build.bat
  build_xp.bat

Manual build:
  rc /nologo XPNotepad.rc
  ml /nologo /c /coff XPNotepad.asm
  link /nologo /subsystem:windows /machine:x86 /entry:start XPNotepad.obj XPNotepad.res kernel32.lib user32.lib gdi32.lib comdlg32.lib comctl32.lib

Windows XP-targeted build:
  rc /nologo XPNotepad.rc
  ml /nologo /c /coff XPNotepad.asm
  link /nologo /out:XPNotepad_XP.exe /subsystem:windows,5.01 /machine:x86 /entry:start XPNotepad.obj XPNotepad.res kernel32.lib user32.lib gdi32.lib comdlg32.lib comctl32.lib

Features:
  - Notepad-style menu layout (File/Edit/Format/View/Help)
  - View menu with Status Bar toggle
  - New / Open / Save / Save As
  - Dirty-file save prompt on close/new/open
  - Undo / Cut / Copy / Paste / Delete / Select All / Find / Replace / Find Next / Go To
  - Time/Date insertion (F5 menu command)
  - Word Wrap toggle with checked menu state and Go To/Status Bar disable when wrapped
  - Font dialog (Format -> Font...)
