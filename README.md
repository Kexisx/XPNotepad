# XPNotepad (MASM / ml)

A lightweight Windows XP-style text editor written in MASM.

---

## 📄 License
MIT — see [LICENSE](LICENSE)

---

## 🛠 Build

### Quick build
build.bat
build_xp.bat

### Manual build (modern Windows)
rc /nologo XPNotepad.rc
ml /nologo /c /coff XPNotepad.asm
link /nologo /subsystem:windows /machine:x86 /entry:start ^
XPNotepad.obj XPNotepad.res ^
kernel32.lib user32.lib gdi32.lib comdlg32.lib comctl32.lib

### Windows XP-targeted build
rc /nologo XPNotepad.rc
ml /nologo /c /coff XPNotepad.asm
link /nologo /out:XPNotepad_XP.exe /subsystem:windows,5.01 /machine:x86 /entry:start ^
XPNotepad.obj XPNotepad.res ^
kernel32.lib user32.lib gdi32.lib comdlg32.lib comctl32.lib

---

## ✨ Features

- Classic Notepad-style menu layout (File / Edit / Format / View / Help)
- Status bar toggle (View menu)
- File operations: New, Open, Save, Save As
- Unsaved changes prompt (on close/new/open)
- Editing:
  - Undo / Cut / Copy / Paste / Delete / Select All
  - Find / Replace / Find Next / Go To
- Time/Date insertion (F5)
- Word Wrap toggle  
  - Disables Go To and Status Bar when enabled (like XP)
- Font selection dialog

---

## 🎯 Notes

- Clean-room implementation inspired by classic Windows Notepad  
- No Microsoft code or assets are used  

---

## 📸 Screenshot

(Add your screenshot here later)

---

## 👤 Author

Chris Wager
