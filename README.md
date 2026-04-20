# XPNotepad (MASM / ml)

A lightweight Windows XP-style text editor written entirely in MASM using the Win32 API.

[![Download](https://img.shields.io/badge/Download-Pre--release-blue)](https://github.com/Kexisx/XPNotepad/releases)

---

## 📦 Download

A **digitally signed pre-release build** is available:

👉 [Download XPNotepad (pre-release)](https://github.com/Kexisx/XPNotepad/releases)

> ⚠️ This is an early build intended for testing and feedback.

---

## 📄 License
MIT — see [LICENSE](LICENSE)

---

## 🛠 Build

### Manual build (modern Windows)

```bat
rc /nologo XPNotepad.rc

ml /nologo /c /coff XPNotepad.asm

link /nologo ^
  /subsystem:windows ^
  /machine:x86 ^
  /entry:start ^
  XPNotepad.obj XPNotepad.res ^
  kernel32.lib user32.lib gdi32.lib comdlg32.lib comctl32.lib
```

### Windows XP–targeted build

```bat
rc /nologo XPNotepad.rc

ml /nologo /c /coff XPNotepad.asm

link /nologo ^
  /out:XPNotepad_XP.exe ^
  /subsystem:windows,5.01 ^
  /machine:x86 ^
  /entry:start ^
  XPNotepad.obj XPNotepad.res ^
  kernel32.lib user32.lib gdi32.lib comdlg32.lib comctl32.lib
```

### Quick build

```bat
build.bat
build_xp.bat
```

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

## 👤 Author

Chris Wager
