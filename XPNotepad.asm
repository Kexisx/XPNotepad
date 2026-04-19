.386
.model flat, stdcall
option casemap:none

includelib kernel32.lib
includelib user32.lib
includelib gdi32.lib
includelib comdlg32.lib
includelib comctl32.lib

NULL                  equ 0
FALSE                 equ 0
TRUE                  equ 1
MAX_PATH              equ 260
CW_USEDEFAULT         equ 80000000h

WS_OVERLAPPEDWINDOW   equ 00CF0000h
WS_CHILD              equ 40000000h
WS_VISIBLE            equ 10000000h
WS_TABSTOP            equ 00010000h
WS_VSCROLL            equ 00200000h
WS_HSCROLL            equ 00100000h
WS_THICKFRAME         equ 00040000h
WS_MINIMIZEBOX        equ 00020000h
WS_MAXIMIZEBOX        equ 00010000h
WS_BORDER             equ 00800000h
WS_EX_CLIENTEDGE      equ 00000200h

ES_LEFT               equ 0000h
ES_MULTILINE          equ 0004h
ES_AUTOVSCROLL        equ 0040h
ES_AUTOHSCROLL        equ 0080h
ES_NOHIDESEL          equ 0100h
ES_WANTRETURN         equ 1000h

EDIT_STYLE_WRAP       equ WS_CHILD or WS_VISIBLE or WS_TABSTOP or WS_VSCROLL or ES_LEFT or ES_MULTILINE or ES_AUTOVSCROLL or ES_NOHIDESEL or ES_WANTRETURN
EDIT_STYLE_NOWRAP     equ EDIT_STYLE_WRAP or WS_HSCROLL or ES_AUTOHSCROLL

WM_CREATE             equ 0001h
WM_DESTROY            equ 0002h
WM_SIZE               equ 0005h
WM_SETFOCUS           equ 0007h
WM_CLOSE              equ 0010h
WM_COMMAND            equ 0111h
WM_SETFONT            equ 0030h
WM_TIMER              equ 0113h
WM_USER               equ 0400h

SB_SETTEXTA           equ WM_USER + 1
SB_SETPARTS           equ WM_USER + 4

WM_CUT                equ 0300h
WM_COPY               equ 0301h
WM_PASTE              equ 0302h
WM_CLEAR              equ 0303h
WM_UNDO               equ 0304h

EM_GETSEL             equ 00B0h
EM_SETSEL             equ 00B1h
EM_GETMODIFY          equ 00B8h
EM_SETMODIFY          equ 00B9h
EM_LINEINDEX          equ 00BBh
EM_REPLACESEL         equ 00C2h
EM_SCROLLCARET        equ 00B7h
EM_LINEFROMCHAR       equ 00C9h

EN_CHANGE             equ 0300h
SIZE_RESTORED         equ 0
SIZE_MINIMIZED        equ 1
SIZE_MAXIMIZED        equ 2

MF_STRING             equ 0000h
MF_POPUP              equ 0010h
MF_SEPARATOR          equ 0800h
MF_BYCOMMAND          equ 0000h
MF_CHECKED            equ 0008h
MF_UNCHECKED          equ 0000h
MF_GRAYED             equ 0001h
MF_ENABLED            equ 0000h

MB_OK                 equ 00000000h
MB_ICONERROR          equ 00000010h
MB_ICONQUESTION       equ 00000020h
MB_YESNOCANCEL        equ 00000003h
MB_ICONINFORMATION    equ 00000040h
MB_USERICON           equ 00000080h
IDYES                 equ 6
IDNO                  equ 7
IDCANCEL              equ 2

OFN_HIDEREADONLY      equ 00000004h
OFN_OVERWRITEPROMPT   equ 00000002h
OFN_PATHMUSTEXIST     equ 00000800h
OFN_FILEMUSTEXIST     equ 00001000h
OFN_EXPLORER          equ 00080000h

GENERIC_READ          equ 80000000h
GENERIC_WRITE         equ 40000000h
FILE_SHARE_READ       equ 00000001h
OPEN_EXISTING         equ 3
CREATE_ALWAYS         equ 2
FILE_ATTRIBUTE_NORMAL equ 00000080h
INVALID_HANDLE_VALUE  equ -1
GMEM_FIXED            equ 0000h

IDI_APPLICATION       equ 32512
IDI_APPICON           equ 101
IDC_ARROW             equ 32512
COLOR_WINDOW          equ 5
DEFAULT_GUI_FONT      equ 17
WS_CAPTION            equ 00C00000h
WS_SYSMENU            equ 00080000h
WS_POPUP              equ 80000000h
SS_LEFT               equ 00000000h
SS_RIGHT              equ 00000002h
BS_PUSHBUTTON         equ 00000000h
BS_DEFPUSHBUTTON      equ 00000001h
ES_NUMBER             equ 2000h
SW_SHOW               equ 5
SW_HIDE               equ 0
SBARS_SIZEGRIP        equ 0100h

IDM_FILE_NEW          equ 1001
IDM_FILE_OPEN         equ 1002
IDM_FILE_SAVE         equ 1003
IDM_FILE_SAVEAS       equ 1004
IDM_FILE_EXIT         equ 1005
IDM_EDIT_UNDO         equ 1101
IDM_EDIT_CUT          equ 1102
IDM_EDIT_COPY         equ 1103
IDM_EDIT_PASTE        equ 1104
IDM_EDIT_DELETE       equ 1105
IDM_EDIT_SELECTALL    equ 1106
IDM_EDIT_TIMEDATE     equ 1107
IDM_EDIT_FIND         equ 1108
IDM_EDIT_FINDNEXT     equ 1109
IDM_EDIT_REPLACE      equ 1110
IDM_EDIT_GOTO         equ 1111
IDM_FORMAT_WORDWRAP   equ 1201
IDM_FORMAT_FONT       equ 1202
IDM_VIEW_STATUSBAR    equ 1301
IDM_HELP_ABOUT        equ 1401
IDC_MAIN_EDIT         equ 2001
IDC_STATUS            equ 2002
IDC_GOTO_EDIT         equ 3001
IDC_GOTO_OK           equ 3002
IDC_GOTO_CANCEL       equ 3003

APP_TIMER_ID          equ 1
APP_TIMER_MS          equ 200
STATUS_HEIGHT         equ 20
STATUS_TEXT_PART_W    equ 84
STATUS_GRIP_PART_W    equ 22

ICC_BAR_CLASSES       equ 00000004h

CF_SCREENFONTS        equ 00000001h
CF_INITTOLOGFONTSTRUCT equ 00000040h
LF_FACESIZE           equ 32

FR_DOWN               equ 00000001h
FR_WHOLEWORD          equ 00000002h
FR_MATCHCASE          equ 00000004h
FR_FINDNEXT           equ 00000008h
FR_REPLACE            equ 00000010h
FR_REPLACEALL         equ 00000020h
FR_DIALOGTERM         equ 00000040h

FRA_FLAGS_OFF         equ 12
FRA_FIND_OFF          equ 16
FRA_REPLACE_OFF       equ 20

WNDCLASSEXA STRUCT
    cbSize          DWORD ?
    style           DWORD ?
    lpfnWndProc     DWORD ?
    cbClsExtra      DWORD ?
    cbWndExtra      DWORD ?
    hInstance       DWORD ?
    hIcon           DWORD ?
    hCursor         DWORD ?
    hbrBackground   DWORD ?
    lpszMenuName    DWORD ?
    lpszClassName   DWORD ?
    hIconSm         DWORD ?
WNDCLASSEXA ENDS

POINT STRUCT
    x DWORD ?
    y DWORD ?
POINT ENDS

MSG STRUCT
    hwnd    DWORD ?
    message DWORD ?
    wParam  DWORD ?
    lParam  DWORD ?
    time    DWORD ?
    pt      POINT <>
MSG ENDS

RECT STRUCT
    left    DWORD ?
    top     DWORD ?
    right   DWORD ?
    bottom  DWORD ?
RECT ENDS

PAINTSTRUCT STRUCT
    hdc         DWORD ?
    fErase      DWORD ?
    rcPaint     RECT <>
    fRestore    DWORD ?
    fIncUpdate  DWORD ?
    rgbReserved BYTE 32 dup(?)
PAINTSTRUCT ENDS

MSGBOXPARAMSA STRUCT
    cbSize              DWORD ?
    hwndOwner           DWORD ?
    hInstance           DWORD ?
    lpszText            DWORD ?
    lpszCaption         DWORD ?
    dwStyle             DWORD ?
    lpszIcon            DWORD ?
    dwContextHelpId     DWORD ?
    lpfnMsgBoxCallback  DWORD ?
    dwLanguageId        DWORD ?
MSGBOXPARAMSA ENDS

INITCOMMONCONTROLSEX STRUCT
    dwSize      DWORD ?
    dwICC       DWORD ?
INITCOMMONCONTROLSEX ENDS

OPENFILENAMEA STRUCT
    lStructSize         DWORD ?
    hwndOwner           DWORD ?
    hInstance           DWORD ?
    lpstrFilter         DWORD ?
    lpstrCustomFilter   DWORD ?
    nMaxCustFilter      DWORD ?
    nFilterIndex        DWORD ?
    lpstrFile           DWORD ?
    nMaxFile            DWORD ?
    lpstrFileTitle      DWORD ?
    nMaxFileTitle       DWORD ?
    lpstrInitialDir     DWORD ?
    lpstrTitle          DWORD ?
    Flags               DWORD ?
    nFileOffset         WORD  ?
    nFileExtension      WORD  ?
    lpstrDefExt         DWORD ?
    lCustData           DWORD ?
    lpfnHook            DWORD ?
    lpTemplateName      DWORD ?
OPENFILENAMEA ENDS

LOGFONTA STRUCT
    lfHeight            SDWORD ?
    lfWidth             SDWORD ?
    lfEscapement        SDWORD ?
    lfOrientation       SDWORD ?
    lfWeight            SDWORD ?
    lfItalic            BYTE ?
    lfUnderline         BYTE ?
    lfStrikeOut         BYTE ?
    lfCharSet           BYTE ?
    lfOutPrecision      BYTE ?
    lfClipPrecision     BYTE ?
    lfQuality           BYTE ?
    lfPitchAndFamily    BYTE ?
    lfFaceName          BYTE LF_FACESIZE dup(?)
LOGFONTA ENDS

CHOOSEFONTA STRUCT
    lStructSize         DWORD ?
    hwndOwner           DWORD ?
    hDC                 DWORD ?
    lpLogFont           DWORD ?
    iPointSize          DWORD ?
    Flags               DWORD ?
    rgbColors           DWORD ?
    lCustData           DWORD ?
    lpfnHook            DWORD ?
    lpTemplateName      DWORD ?
    hInstance           DWORD ?
    lpszStyle           DWORD ?
    nFontType           WORD  ?
    __align             WORD  ?
    nSizeMin            DWORD ?
    nSizeMax            DWORD ?
CHOOSEFONTA ENDS

FINDREPLACEA STRUCT
    lStructSize         DWORD ?
    hwndOwner           DWORD ?
    hInstance           DWORD ?
    Flags               DWORD ?
    lpstrFindWhat       DWORD ?
    lpstrReplaceWith    DWORD ?
    wFindWhatLen        WORD ?
    wReplaceWithLen     WORD ?
    lCustData           DWORD ?
    lpfnHook            DWORD ?
    lpTemplateName      DWORD ?
FINDREPLACEA ENDS

SYSTEMTIME STRUCT
    wYear           WORD ?
    wMonth          WORD ?
    wDayOfWeek      WORD ?
    wDay            WORD ?
    wHour           WORD ?
    wMinute         WORD ?
    wSecond         WORD ?
    wMilliseconds   WORD ?
SYSTEMTIME ENDS

GetModuleHandleA     PROTO STDCALL :DWORD
ExitProcess          PROTO STDCALL :DWORD
CreateFileA          PROTO STDCALL :DWORD, :DWORD, :DWORD, :DWORD, :DWORD, :DWORD, :DWORD
ReadFile             PROTO STDCALL :DWORD, :DWORD, :DWORD, :DWORD, :DWORD
WriteFile            PROTO STDCALL :DWORD, :DWORD, :DWORD, :DWORD, :DWORD
CloseHandle          PROTO STDCALL :DWORD
GetFileSize          PROTO STDCALL :DWORD, :DWORD
GlobalAlloc          PROTO STDCALL :DWORD, :DWORD
GlobalFree           PROTO STDCALL :DWORD
GetLocalTime         PROTO STDCALL :DWORD
RegisterWindowMessageA PROTO STDCALL :DWORD
RegisterClassExA     PROTO STDCALL :DWORD
CreateWindowExA      PROTO STDCALL :DWORD, :DWORD, :DWORD, :DWORD, :DWORD, :DWORD, :DWORD, :DWORD, :DWORD, :DWORD, :DWORD, :DWORD
DefWindowProcA       PROTO STDCALL :DWORD, :DWORD, :DWORD, :DWORD
ShowWindow           PROTO STDCALL :DWORD, :DWORD
UpdateWindow         PROTO STDCALL :DWORD
GetMessageA          PROTO STDCALL :DWORD, :DWORD, :DWORD, :DWORD
TranslateMessage     PROTO STDCALL :DWORD
DispatchMessageA     PROTO STDCALL :DWORD
PostQuitMessage      PROTO STDCALL :DWORD
LoadCursorA          PROTO STDCALL :DWORD, :DWORD
LoadIconA            PROTO STDCALL :DWORD, :DWORD
MessageBoxA          PROTO STDCALL :DWORD, :DWORD, :DWORD, :DWORD
MessageBoxIndirectA  PROTO STDCALL :DWORD
DestroyWindow        PROTO STDCALL :DWORD
SetFocus             PROTO STDCALL :DWORD
SendMessageA         PROTO STDCALL :DWORD, :DWORD, :DWORD, :DWORD
SetWindowTextA       PROTO STDCALL :DWORD, :DWORD
GetWindowTextLengthA PROTO STDCALL :DWORD
GetWindowTextA       PROTO STDCALL :DWORD, :DWORD, :DWORD
MoveWindow           PROTO STDCALL :DWORD, :DWORD, :DWORD, :DWORD, :DWORD, :DWORD
GetClientRect        PROTO STDCALL :DWORD, :DWORD
SetTimer             PROTO STDCALL :DWORD, :DWORD, :DWORD, :DWORD
KillTimer            PROTO STDCALL :DWORD, :DWORD
CreateMenu           PROTO STDCALL
CreatePopupMenu      PROTO STDCALL
AppendMenuA          PROTO STDCALL :DWORD, :DWORD, :DWORD, :DWORD
SetMenu              PROTO STDCALL :DWORD, :DWORD
DrawMenuBar          PROTO STDCALL :DWORD
GetMenu              PROTO STDCALL :DWORD
CheckMenuItem        PROTO STDCALL :DWORD, :DWORD, :DWORD
EnableMenuItem       PROTO STDCALL :DWORD, :DWORD, :DWORD
GetOpenFileNameA     PROTO STDCALL :DWORD
GetSaveFileNameA     PROTO STDCALL :DWORD
FindTextA            PROTO STDCALL :DWORD
ReplaceTextA         PROTO STDCALL :DWORD
ChooseFontA          PROTO STDCALL :DWORD
InitCommonControlsEx PROTO STDCALL :DWORD
GetStockObject       PROTO STDCALL :DWORD
CreateFontIndirectA  PROTO STDCALL :DWORD
DeleteObject         PROTO STDCALL :DWORD
EnableWindow         PROTO STDCALL :DWORD, :DWORD
SetForegroundWindow  PROTO STDCALL :DWORD
wsprintfA            PROTO C :DWORD, :DWORD, :VARARG

WinMain              PROTO :DWORD
WndProc              PROTO :DWORD, :DWORD, :DWORD, :DWORD
GotoWndProc          PROTO :DWORD, :DWORD, :DWORD, :DWORD
CreateAppMenu        PROTO
ResizeEdit           PROTO
UpdateStatusText     PROTO
UpdateViewAndFormatMenus PROTO
UpdateTitle          PROTO
ShowAboutBox         PROTO
PromptSaveIfDirty    PROTO
DoFileNew            PROTO
DoFileOpen           PROTO
DoFileSave           PROTO
DoFileSaveAs         PROTO
ShowOpenDialog       PROTO
ShowSaveDialog       PROTO
LoadTextFile         PROTO :DWORD
SaveTextFile         PROTO :DWORD
ToggleWordWrap       PROTO
RecreateEdit         PROTO
ChooseEditorFont     PROTO
ApplyCurrentFont     PROTO
ShowFindDialog       PROTO
ShowReplaceDialog    PROTO
DoFindNext           PROTO
DoReplaceOne         PROTO
DoReplaceAll         PROTO
ProcessFindReplace   PROTO :DWORD
FindInEditText       PROTO :DWORD, :DWORD, :DWORD
MatchAtPos           PROTO :DWORD, :DWORD, :DWORD, :DWORD
IsWordChar           PROTO :DWORD
ShowGotoDialog       PROTO
GoToLineNumber       PROTO :DWORD
ParseUint            PROTO :DWORD
InsertTimeDate       PROTO
CopyString           PROTO :DWORD, :DWORD
ZeroMem              PROTO :DWORD, :DWORD
GetFileNamePtr       PROTO :DWORD
StrLenA              PROTO :DWORD
BuildCannotFindText  PROTO :DWORD

.data
szClassName          db "XPNotepadClass",0
szEditClass          db "EDIT",0
szAppCaption         db "XPNotepad",0
szUntitledTitle      db "Untitled - XPNotepad",0
szTitleFmt           db "%s - XPNotepad",0
szUntitledName       db "Untitled",0
szSavePromptFmt      db "Do you want to save changes to %s?",0
szOpenTitle          db "Open",0
szSaveTitle          db "Save As",0
szFilter             db "Text Documents (*.txt)",0,"*.txt",0,"All Files (*.*)",0,"*.*",0,0
szDefExt             db "txt",0
szDateFmt            db "%02u:%02u %02u/%02u/%04u",0
szStatusFmt          db "Ln %u, Col %u",0
szFindMsgClass       db "commdlg_FindReplace",0
szCannotFindFmt      db "Cannot find '%s'.",0
szFindTitle          db "Find",0
szReplaceTitle       db "Replace",0
szGotoClass          db "XPGotoLineClass",0
szGotoTitle          db "Go To Line",0
szGotoPrompt         db "Line number:",0
szGotoBadLine        db "Enter a valid line number.",0
szGotoNoLine         db "That line does not exist.",0
szGotoWrapOff        db "Go To is disabled when Word Wrap is on.",0
szReplacedFmt        db "Replaced %u occurrence(s).",0
szButtonClass        db "BUTTON",0
szStaticClass        db "STATIC",0
szStatusClass        db "msctls_statusbar32",0
szGotoOk             db "OK",0
szGotoCancel         db "Cancel",0
szOne                db "1",0
szMView              db "&View",0
szMStatusBar         db "&Status Bar",0
szMFind              db "&Find...",9,"Ctrl+F",0
szMFindNext          db "Find &Next",9,"F3",0
szMReplace           db "&Replace...",9,"Ctrl+H",0
szMGoto              db "&Go To...",9,"Ctrl+G",0
szMFont              db "&Font...",0
szErrOpen            db "Unable to open the file.",0
szErrRead            db "Unable to read the file.",0
szErrSave            db "Unable to save the file.",0
szErrMem             db "Not enough memory.",0
szErrCtl             db "Unable to create edit control.",0
szAboutCaption       db "About XPNotepad",0
szAbout              db "XPNotepad",13,10
                     db "Version 1.0",13,10,13,10
                     db "A lightweight Windows XP-style text editor written in MASM.",13,10,13,10
                     db "Copyright ",169," 2026 Chris Wager",13,10
                     db "Licensed under the MIT License",0
szEmpty              db 0
szMFile              db "&File",0
szMNew               db "&New",9,"Ctrl+N",0
szMOpen              db "&Open...",9,"Ctrl+O",0
szMSave              db "&Save",9,"Ctrl+S",0
szMSaveAs            db "Save &As...",0
szMExit              db "E&xit",0
szMEdit              db "&Edit",0
szMUndo              db "&Undo",9,"Ctrl+Z",0
szMCut               db "Cu&t",9,"Ctrl+X",0
szMCopy              db "&Copy",9,"Ctrl+C",0
szMPaste             db "&Paste",9,"Ctrl+V",0
szMDelete            db "De&lete",9,"Del",0
szMSelAll            db "Select &All",9,"Ctrl+A",0
szMTimeDate          db "Time/&Date",9,"F5",0
szMFormat            db "F&ormat",0
szMWordWrap          db "&Word Wrap",0
szMHelp              db "&Help",0
szMAbout             db "&About XPNotepad",0

g_hInst              dd 0
g_hWndMain           dd 0
g_hEdit              dd 0
g_hStatus            dd 0
g_hUserFont          dd 0
g_hFindDlg           dd 0
g_hGotoWnd           dd 0
g_hGotoEdit          dd 0
g_uFindMsg           dd 0
g_gotoClassReady     dd FALSE
g_dirty              dd FALSE
g_wordWrap           dd FALSE
g_showStatus         dd TRUE
g_findFlags          dd FR_DOWN
g_silentFind         dd FALSE
g_currentFile        db MAX_PATH dup(0)
g_dialogPath         db MAX_PATH dup(0)
g_titleBuffer        db 512 dup(0)
g_promptBuffer       db 512 dup(0)
g_timeBuffer         db 80 dup(0)
g_statusBuffer       db 80 dup(0)
g_statusParts        dd 3 dup(0)
g_findBuffer         db 256 dup(0)
g_replaceBuffer      db 256 dup(0)
g_cannotFindBuffer   db 300 dup(0)
g_tmpMsgBuffer       db 128 dup(0)
g_gotoBuffer         db 16 dup(0)
g_wc                 WNDCLASSEXA <>
g_wcGoto             WNDCLASSEXA <>
g_msg                MSG <>
g_rc                 RECT <>
g_ofn                OPENFILENAMEA <>
g_cf                 CHOOSEFONTA <>
g_icc                INITCOMMONCONTROLSEX <>
g_logFont            LOGFONTA <>
g_fr                 FINDREPLACEA <>

.code
start:
    invoke GetModuleHandleA, NULL
    mov g_hInst, eax
    invoke WinMain, eax
    invoke ExitProcess, eax

WinMain PROC uses ebx esi edi, hInst:DWORD
    mov g_wc.cbSize, SIZEOF WNDCLASSEXA
    mov g_wc.style, 0003h
    mov g_wc.lpfnWndProc, OFFSET WndProc
    mov g_wc.cbClsExtra, 0
    mov g_wc.cbWndExtra, 0
    mov eax, hInst
    mov g_wc.hInstance, eax
    invoke LoadIconA, hInst, IDI_APPICON
    test eax, eax
    jnz @F
    invoke LoadIconA, NULL, IDI_APPLICATION
@@:
    mov g_wc.hIcon, eax
    mov g_wc.hIconSm, eax
    invoke LoadCursorA, NULL, IDC_ARROW
    mov g_wc.hCursor, eax
    mov g_wc.hbrBackground, COLOR_WINDOW + 1
    mov g_wc.lpszMenuName, NULL
    mov g_wc.lpszClassName, OFFSET szClassName
    invoke RegisterClassExA, ADDR g_wc
    test eax, eax
    jz wm_fail

    invoke CreateWindowExA, 0, ADDR szClassName, ADDR szUntitledTitle, WS_OVERLAPPEDWINDOW, CW_USEDEFAULT, CW_USEDEFAULT, 760, 560, NULL, NULL, hInst, NULL
    mov g_hWndMain, eax
    test eax, eax
    jz wm_fail

    invoke ShowWindow, g_hWndMain, SW_SHOW
    invoke UpdateWindow, g_hWndMain
@@:
    invoke GetMessageA, ADDR g_msg, NULL, 0, 0
    cmp eax, 0
    jle wm_done
    invoke TranslateMessage, ADDR g_msg
    invoke DispatchMessageA, ADDR g_msg
    jmp @B
wm_done:
    mov eax, g_msg.wParam
    ret
wm_fail:
    xor eax, eax
    ret
WinMain ENDP

WndProc PROC uses ebx esi edi, hWnd:DWORD, uMsg:DWORD, wParam:DWORD, lParam:DWORD
    mov eax, g_uFindMsg
    cmp eax, 0
    je @F
    cmp uMsg, eax
    je wm_findmsg
@@:
    mov eax, uMsg
    cmp eax, WM_CREATE
    je wm_create
    cmp eax, WM_SIZE
    je wm_size
    cmp eax, WM_SETFOCUS
    je wm_focus
    cmp eax, WM_TIMER
    je wm_timer
    cmp eax, WM_COMMAND
    je wm_command
    cmp eax, WM_CLOSE
    je wm_close
    cmp eax, WM_DESTROY
    je wm_destroy
    jmp wm_default

wm_create:
    mov eax, hWnd
    mov g_hWndMain, eax
    invoke ZeroMem, ADDR g_logFont, SIZEOF LOGFONTA
    mov g_logFont.lfHeight, -13
    invoke ZeroMem, ADDR g_icc, SIZEOF INITCOMMONCONTROLSEX
    mov g_icc.dwSize, SIZEOF INITCOMMONCONTROLSEX
    mov g_icc.dwICC, ICC_BAR_CLASSES
    invoke InitCommonControlsEx, ADDR g_icc
    invoke RegisterWindowMessageA, ADDR szFindMsgClass
    mov g_uFindMsg, eax

    invoke CreateWindowExA, WS_EX_CLIENTEDGE, ADDR szEditClass, NULL, EDIT_STYLE_NOWRAP, 0, 0, 0, 0, hWnd, IDC_MAIN_EDIT, g_hInst, NULL
    mov g_hEdit, eax
    test eax, eax
    jnz @F
    invoke MessageBoxA, hWnd, ADDR szErrCtl, ADDR szAppCaption, MB_OK or MB_ICONERROR
    mov eax, -1
    ret
@@:
    invoke CreateWindowExA, 0, ADDR szStatusClass, ADDR szEmpty, WS_CHILD or WS_VISIBLE or SBARS_SIZEGRIP, 0, 0, 0, 0, hWnd, IDC_STATUS, g_hInst, NULL
    mov g_hStatus, eax
    test eax, eax
    jnz @F
    invoke MessageBoxA, hWnd, ADDR szErrCtl, ADDR szAppCaption, MB_OK or MB_ICONERROR
    mov eax, -1
    ret
@@:
    invoke ApplyCurrentFont
    invoke CreateAppMenu
    invoke UpdateViewAndFormatMenus
    invoke ResizeEdit
    invoke SetTimer, hWnd, APP_TIMER_ID, APP_TIMER_MS, NULL
    invoke UpdateStatusText
    xor eax, eax
    ret

wm_size:
    invoke ResizeEdit
    xor eax, eax
    ret

wm_focus:
    invoke SetFocus, g_hEdit
    xor eax, eax
    ret

wm_timer:
    cmp wParam, APP_TIMER_ID
    jne timer_done
    invoke UpdateStatusText
timer_done:
    xor eax, eax
    ret

wm_command:
    mov eax, wParam
    and eax, 0FFFFh
    mov edx, wParam
    shr edx, 16

    cmp eax, IDC_MAIN_EDIT
    jne command_dispatch
    cmp edx, EN_CHANGE
    jne command_done
    invoke SendMessageA, g_hEdit, EM_GETMODIFY, 0, 0
    mov g_dirty, eax
    invoke UpdateStatusText
    jmp command_done

command_dispatch:
    cmp eax, IDM_FILE_NEW
    jne @F
    invoke DoFileNew
    jmp command_done
@@:
    cmp eax, IDM_FILE_OPEN
    jne @F
    invoke DoFileOpen
    jmp command_done
@@:
    cmp eax, IDM_FILE_SAVE
    jne @F
    invoke DoFileSave
    jmp command_done
@@:
    cmp eax, IDM_FILE_SAVEAS
    jne @F
    invoke DoFileSaveAs
    jmp command_done
@@:
    cmp eax, IDM_FILE_EXIT
    jne @F
    invoke DestroyWindow, hWnd
    jmp command_done
@@:
    cmp eax, IDM_EDIT_UNDO
    jne @F
    invoke SendMessageA, g_hEdit, WM_UNDO, 0, 0
    jmp command_done
@@:
    cmp eax, IDM_EDIT_CUT
    jne @F
    invoke SendMessageA, g_hEdit, WM_CUT, 0, 0
    jmp command_done
@@:
    cmp eax, IDM_EDIT_COPY
    jne @F
    invoke SendMessageA, g_hEdit, WM_COPY, 0, 0
    jmp command_done
@@:
    cmp eax, IDM_EDIT_PASTE
    jne @F
    invoke SendMessageA, g_hEdit, WM_PASTE, 0, 0
    jmp command_done
@@:
    cmp eax, IDM_EDIT_DELETE
    jne @F
    invoke SendMessageA, g_hEdit, WM_CLEAR, 0, 0
    jmp command_done
@@:
    cmp eax, IDM_EDIT_SELECTALL
    jne @F
    invoke SendMessageA, g_hEdit, EM_SETSEL, 0, -1
    jmp command_done
@@:
    cmp eax, IDM_EDIT_TIMEDATE
    jne @F
    invoke InsertTimeDate
    jmp command_done
@@:
    cmp eax, IDM_EDIT_FIND
    jne @F
    invoke ShowFindDialog
    jmp command_done
@@:
    cmp eax, IDM_EDIT_FINDNEXT
    jne @F
    invoke DoFindNext
    jmp command_done
@@:
    cmp eax, IDM_EDIT_REPLACE
    jne @F
    invoke ShowReplaceDialog
    jmp command_done
@@:
    cmp eax, IDM_EDIT_GOTO
    jne @F
    invoke ShowGotoDialog
    jmp command_done
@@:
    cmp eax, IDM_FORMAT_WORDWRAP
    jne @F
    invoke ToggleWordWrap
    jmp command_done
@@:
    cmp eax, IDM_FORMAT_FONT
    jne @F
    invoke ChooseEditorFont
    jmp command_done
@@:
    cmp eax, IDM_VIEW_STATUSBAR
    jne @F
    cmp g_wordWrap, FALSE
    jne command_done
    cmp g_showStatus, FALSE
    jne status_off
    mov g_showStatus, TRUE
    jmp status_done
status_off:
    mov g_showStatus, FALSE
status_done:
    invoke UpdateViewAndFormatMenus
    invoke ResizeEdit
    invoke UpdateStatusText
    jmp command_done
@@:
    cmp eax, IDM_HELP_ABOUT
    jne command_done
    invoke ShowAboutBox

command_done:
    xor eax, eax
    ret

wm_close:
    invoke PromptSaveIfDirty
    cmp eax, IDCANCEL
    je @F
    mov eax, g_hFindDlg
    test eax, eax
    jz close_goto
    invoke DestroyWindow, eax
close_goto:
    mov eax, g_hGotoWnd
    test eax, eax
    jz close_main
    invoke DestroyWindow, eax
close_main:
    invoke DestroyWindow, hWnd
@@:
    xor eax, eax
    ret

wm_destroy:
    invoke KillTimer, hWnd, APP_TIMER_ID
    mov eax, g_hUserFont
    test eax, eax
    jz @F
    invoke DeleteObject, eax
@@:
    invoke PostQuitMessage, 0
    xor eax, eax
    ret

wm_findmsg:
    invoke ProcessFindReplace, lParam
    xor eax, eax
    ret

wm_default:
    invoke DefWindowProcA, hWnd, uMsg, wParam, lParam
    ret
WndProc ENDP

CreateAppMenu PROC
    LOCAL hMenu:DWORD
    LOCAL hFile:DWORD
    LOCAL hEdit:DWORD
    LOCAL hFmt:DWORD
    LOCAL hView:DWORD
    LOCAL hHelp:DWORD

    invoke CreateMenu
    mov hMenu, eax

    invoke CreatePopupMenu
    mov hFile, eax
    invoke AppendMenuA, hFile, MF_STRING, IDM_FILE_NEW, ADDR szMNew
    invoke AppendMenuA, hFile, MF_STRING, IDM_FILE_OPEN, ADDR szMOpen
    invoke AppendMenuA, hFile, MF_STRING, IDM_FILE_SAVE, ADDR szMSave
    invoke AppendMenuA, hFile, MF_STRING, IDM_FILE_SAVEAS, ADDR szMSaveAs
    invoke AppendMenuA, hFile, MF_SEPARATOR, 0, 0
    invoke AppendMenuA, hFile, MF_STRING, IDM_FILE_EXIT, ADDR szMExit

    invoke CreatePopupMenu
    mov hEdit, eax
    invoke AppendMenuA, hEdit, MF_STRING, IDM_EDIT_UNDO, ADDR szMUndo
    invoke AppendMenuA, hEdit, MF_SEPARATOR, 0, 0
    invoke AppendMenuA, hEdit, MF_STRING, IDM_EDIT_CUT, ADDR szMCut
    invoke AppendMenuA, hEdit, MF_STRING, IDM_EDIT_COPY, ADDR szMCopy
    invoke AppendMenuA, hEdit, MF_STRING, IDM_EDIT_PASTE, ADDR szMPaste
    invoke AppendMenuA, hEdit, MF_STRING, IDM_EDIT_DELETE, ADDR szMDelete
    invoke AppendMenuA, hEdit, MF_SEPARATOR, 0, 0
    invoke AppendMenuA, hEdit, MF_STRING, IDM_EDIT_SELECTALL, ADDR szMSelAll
    invoke AppendMenuA, hEdit, MF_SEPARATOR, 0, 0
    invoke AppendMenuA, hEdit, MF_STRING, IDM_EDIT_FIND, ADDR szMFind
    invoke AppendMenuA, hEdit, MF_STRING, IDM_EDIT_FINDNEXT, ADDR szMFindNext
    invoke AppendMenuA, hEdit, MF_STRING, IDM_EDIT_REPLACE, ADDR szMReplace
    invoke AppendMenuA, hEdit, MF_STRING, IDM_EDIT_GOTO, ADDR szMGoto
    invoke AppendMenuA, hEdit, MF_SEPARATOR, 0, 0
    invoke AppendMenuA, hEdit, MF_STRING, IDM_EDIT_TIMEDATE, ADDR szMTimeDate

    invoke CreatePopupMenu
    mov hFmt, eax
    invoke AppendMenuA, hFmt, MF_STRING, IDM_FORMAT_WORDWRAP, ADDR szMWordWrap
    invoke AppendMenuA, hFmt, MF_STRING, IDM_FORMAT_FONT, ADDR szMFont

    invoke CreatePopupMenu
    mov hView, eax
    invoke AppendMenuA, hView, MF_STRING, IDM_VIEW_STATUSBAR, ADDR szMStatusBar

    invoke CreatePopupMenu
    mov hHelp, eax
    invoke AppendMenuA, hHelp, MF_STRING, IDM_HELP_ABOUT, ADDR szMAbout

    invoke AppendMenuA, hMenu, MF_POPUP, hFile, ADDR szMFile
    invoke AppendMenuA, hMenu, MF_POPUP, hEdit, ADDR szMEdit
    invoke AppendMenuA, hMenu, MF_POPUP, hFmt, ADDR szMFormat
    invoke AppendMenuA, hMenu, MF_POPUP, hView, ADDR szMView
    invoke AppendMenuA, hMenu, MF_POPUP, hHelp, ADDR szMHelp
    invoke SetMenu, g_hWndMain, hMenu
    invoke DrawMenuBar, g_hWndMain

    ret
CreateAppMenu ENDP

ResizeEdit PROC
    LOCAL clientW:DWORD
    LOCAL clientH:DWORD
    LOCAL showStatusNow:DWORD
    LOCAL editH:DWORD
    LOCAL textLeft:DWORD
    LOCAL gripLeft:DWORD

    invoke GetClientRect, g_hWndMain, ADDR g_rc
    mov eax, g_rc.right
    sub eax, g_rc.left
    mov clientW, eax
    mov edx, g_rc.bottom
    sub edx, g_rc.top
    mov clientH, edx

    mov showStatusNow, FALSE
    cmp g_showStatus, FALSE
    je @F
    cmp g_wordWrap, FALSE
    jne @F
    mov showStatusNow, TRUE
@@:
    cmp showStatusNow, FALSE
    je hide_status
    invoke ShowWindow, g_hStatus, SW_SHOW
    mov eax, clientH
    sub eax, STATUS_HEIGHT
    invoke MoveWindow, g_hStatus, 0, eax, clientW, STATUS_HEIGHT, TRUE

    mov eax, clientW
    sub eax, STATUS_TEXT_PART_W
    sub eax, STATUS_GRIP_PART_W
    cmp eax, 0
    jge @F
    xor eax, eax
@@:
    mov textLeft, eax
    mov g_statusParts[0], eax

    mov eax, clientW
    sub eax, STATUS_GRIP_PART_W
    cmp eax, textLeft
    jge @F
    mov eax, textLeft
@@:
    mov gripLeft, eax
    mov g_statusParts[4], eax
    mov g_statusParts[8], -1
    invoke SendMessageA, g_hStatus, SB_SETPARTS, 3, ADDR g_statusParts

    mov eax, clientH
    sub eax, STATUS_HEIGHT
    mov editH, eax
    jmp resize_edit

hide_status:
    invoke ShowWindow, g_hStatus, SW_HIDE
    mov eax, clientH
    mov editH, eax

resize_edit:
    cmp editH, 0
    jge @F
    mov editH, 0
@@:
    invoke MoveWindow, g_hEdit, 0, 0, clientW, editH, TRUE
    ret
ResizeEdit ENDP

UpdateStatusText PROC
    LOCAL selStart:DWORD
    LOCAL lineZero:DWORD
    LOCAL lineStart:DWORD
    LOCAL lineNum:DWORD
    LOCAL colNum:DWORD

    cmp g_showStatus, FALSE
    je done
    cmp g_wordWrap, FALSE
    jne done
    invoke SendMessageA, g_hEdit, EM_GETSEL, ADDR selStart, NULL
    invoke SendMessageA, g_hEdit, EM_LINEFROMCHAR, selStart, 0
    mov lineZero, eax
    mov eax, lineZero
    inc eax
    mov lineNum, eax
    mov eax, lineZero
    invoke SendMessageA, g_hEdit, EM_LINEINDEX, eax, 0
    mov lineStart, eax
    mov eax, selStart
    sub eax, lineStart
    inc eax
    mov colNum, eax
    invoke wsprintfA, ADDR g_statusBuffer, ADDR szStatusFmt, lineNum, colNum
    invoke SendMessageA, g_hStatus, SB_SETTEXTA, 1, ADDR g_statusBuffer
done:
    ret
UpdateStatusText ENDP

UpdateViewAndFormatMenus PROC
    LOCAL hMenu:DWORD

    invoke GetMenu, g_hWndMain
    mov hMenu, eax
    test eax, eax
    jz done
    mov eax, MF_BYCOMMAND or MF_UNCHECKED
    cmp g_wordWrap, FALSE
    je @F
    mov eax, MF_BYCOMMAND or MF_CHECKED
@@:
    invoke CheckMenuItem, hMenu, IDM_FORMAT_WORDWRAP, eax

    cmp g_wordWrap, FALSE
    je menu_wordwrap_off
    invoke EnableMenuItem, hMenu, IDM_VIEW_STATUSBAR, MF_BYCOMMAND or MF_GRAYED
    invoke CheckMenuItem, hMenu, IDM_VIEW_STATUSBAR, MF_BYCOMMAND or MF_UNCHECKED
    invoke EnableMenuItem, hMenu, IDM_EDIT_GOTO, MF_BYCOMMAND or MF_GRAYED
    jmp redraw

menu_wordwrap_off:
    invoke EnableMenuItem, hMenu, IDM_VIEW_STATUSBAR, MF_BYCOMMAND or MF_ENABLED
    invoke EnableMenuItem, hMenu, IDM_EDIT_GOTO, MF_BYCOMMAND or MF_ENABLED
    mov eax, MF_BYCOMMAND or MF_UNCHECKED
    cmp g_showStatus, FALSE
    je @F
    mov eax, MF_BYCOMMAND or MF_CHECKED
@@:
    invoke CheckMenuItem, hMenu, IDM_VIEW_STATUSBAR, eax
redraw:
    invoke DrawMenuBar, g_hWndMain
done:
    ret
UpdateViewAndFormatMenus ENDP

UpdateTitle PROC
    LOCAL pName:DWORD
    cmp byte ptr [g_currentFile], 0
    jne have_file
    invoke SetWindowTextA, g_hWndMain, ADDR szUntitledTitle
    ret
have_file:
    invoke GetFileNamePtr, ADDR g_currentFile
    mov pName, eax
    invoke wsprintfA, ADDR g_titleBuffer, ADDR szTitleFmt, pName
    invoke SetWindowTextA, g_hWndMain, ADDR g_titleBuffer
    ret
UpdateTitle ENDP

ShowAboutBox PROC
    LOCAL mbp:MSGBOXPARAMSA

    invoke ZeroMem, ADDR mbp, SIZEOF MSGBOXPARAMSA
    mov mbp.cbSize, SIZEOF MSGBOXPARAMSA
    mov eax, g_hWndMain
    mov mbp.hwndOwner, eax
    mov eax, g_hInst
    mov mbp.hInstance, eax
    mov mbp.lpszText, OFFSET szAbout
    mov mbp.lpszCaption, OFFSET szAboutCaption
    mov mbp.dwStyle, MB_OK or MB_USERICON
    mov mbp.lpszIcon, IDI_APPICON
    invoke MessageBoxIndirectA, ADDR mbp
    ret
ShowAboutBox ENDP

PromptSaveIfDirty PROC
    LOCAL pName:DWORD

    cmp g_dirty, FALSE
    jne ask
    mov eax, IDNO
    ret

ask:
    mov pName, OFFSET szUntitledName
    cmp byte ptr [g_currentFile], 0
    je @F
    invoke GetFileNamePtr, ADDR g_currentFile
    mov pName, eax
@@:
    invoke wsprintfA, ADDR g_promptBuffer, ADDR szSavePromptFmt, pName
    invoke MessageBoxA, g_hWndMain, ADDR g_promptBuffer, ADDR szAppCaption, MB_YESNOCANCEL or MB_ICONQUESTION
    cmp eax, IDYES
    jne done

    invoke DoFileSave
    test eax, eax
    jz save_cancel
    mov eax, IDYES
    ret
save_cancel:
    mov eax, IDCANCEL
done:
    ret
PromptSaveIfDirty ENDP

DoFileNew PROC
    invoke PromptSaveIfDirty
    cmp eax, IDCANCEL
    je cancel
    invoke SetWindowTextA, g_hEdit, ADDR szEmpty
    mov byte ptr [g_currentFile], 0
    mov g_dirty, FALSE
    invoke SendMessageA, g_hEdit, EM_SETMODIFY, FALSE, 0
    invoke UpdateTitle
    invoke UpdateStatusText
    mov eax, TRUE
    ret
cancel:
    xor eax, eax
    ret
DoFileNew ENDP

DoFileOpen PROC
    invoke PromptSaveIfDirty
    cmp eax, IDCANCEL
    je cancel
    mov byte ptr [g_dialogPath], 0
    invoke ShowOpenDialog
    test eax, eax
    jz cancel
    invoke LoadTextFile, ADDR g_dialogPath
    ret
cancel:
    xor eax, eax
    ret
DoFileOpen ENDP

DoFileSave PROC
    cmp byte ptr [g_currentFile], 0
    je do_save_as
    invoke SaveTextFile, ADDR g_currentFile
    ret
do_save_as:
    invoke DoFileSaveAs
    ret
DoFileSave ENDP

DoFileSaveAs PROC
    cmp byte ptr [g_currentFile], 0
    je clear_name
    invoke CopyString, ADDR g_dialogPath, ADDR g_currentFile
    jmp show
clear_name:
    mov byte ptr [g_dialogPath], 0
show:
    invoke ShowSaveDialog
    test eax, eax
    jz cancel
    invoke SaveTextFile, ADDR g_dialogPath
    ret
cancel:
    xor eax, eax
    ret
DoFileSaveAs ENDP

ShowOpenDialog PROC
    invoke ZeroMem, ADDR g_ofn, SIZEOF OPENFILENAMEA
    mov g_ofn.lStructSize, SIZEOF OPENFILENAMEA
    mov eax, g_hWndMain
    mov g_ofn.hwndOwner, eax
    mov g_ofn.lpstrFilter, OFFSET szFilter
    mov g_ofn.lpstrFile, OFFSET g_dialogPath
    mov g_ofn.nMaxFile, MAX_PATH
    mov g_ofn.lpstrTitle, OFFSET szOpenTitle
    mov g_ofn.Flags, OFN_EXPLORER or OFN_HIDEREADONLY or OFN_PATHMUSTEXIST or OFN_FILEMUSTEXIST
    mov g_ofn.lpstrDefExt, OFFSET szDefExt
    invoke GetOpenFileNameA, ADDR g_ofn
    ret
ShowOpenDialog ENDP

ShowSaveDialog PROC
    invoke ZeroMem, ADDR g_ofn, SIZEOF OPENFILENAMEA
    mov g_ofn.lStructSize, SIZEOF OPENFILENAMEA
    mov eax, g_hWndMain
    mov g_ofn.hwndOwner, eax
    mov g_ofn.lpstrFilter, OFFSET szFilter
    mov g_ofn.lpstrFile, OFFSET g_dialogPath
    mov g_ofn.nMaxFile, MAX_PATH
    mov g_ofn.lpstrTitle, OFFSET szSaveTitle
    mov g_ofn.Flags, OFN_EXPLORER or OFN_HIDEREADONLY or OFN_PATHMUSTEXIST or OFN_OVERWRITEPROMPT
    mov g_ofn.lpstrDefExt, OFFSET szDefExt
    invoke GetSaveFileNameA, ADDR g_ofn
    ret
ShowSaveDialog ENDP

LoadTextFile PROC uses ebx esi edi, pPath:DWORD
    LOCAL hFile:DWORD
    LOCAL fSize:DWORD
    LOCAL bRead:DWORD
    LOCAL pBuf:DWORD
    LOCAL ok:DWORD

    mov hFile, INVALID_HANDLE_VALUE
    mov pBuf, 0
    mov ok, FALSE

    invoke CreateFileA, pPath, GENERIC_READ, FILE_SHARE_READ, NULL, OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL, NULL
    mov hFile, eax
    cmp eax, INVALID_HANDLE_VALUE
    jne @F
    invoke MessageBoxA, g_hWndMain, ADDR szErrOpen, ADDR szAppCaption, MB_OK or MB_ICONERROR
    jmp load_cleanup
@@:
    invoke GetFileSize, hFile, NULL
    mov fSize, eax
    cmp eax, 0FFFFFFFFh
    jne @F
    invoke MessageBoxA, g_hWndMain, ADDR szErrRead, ADDR szAppCaption, MB_OK or MB_ICONERROR
    jmp load_cleanup
@@:
    mov eax, fSize
    inc eax
    invoke GlobalAlloc, GMEM_FIXED, eax
    mov pBuf, eax
    test eax, eax
    jnz @F
    invoke MessageBoxA, g_hWndMain, ADDR szErrMem, ADDR szAppCaption, MB_OK or MB_ICONERROR
    jmp load_cleanup
@@:
    invoke ReadFile, hFile, pBuf, fSize, ADDR bRead, NULL
    test eax, eax
    jnz @F
    invoke MessageBoxA, g_hWndMain, ADDR szErrRead, ADDR szAppCaption, MB_OK or MB_ICONERROR
    jmp load_cleanup
@@:
    mov edi, pBuf
    mov eax, bRead
    mov byte ptr [edi+eax], 0
    invoke SetWindowTextA, g_hEdit, pBuf
    invoke CopyString, ADDR g_currentFile, pPath
    mov g_dirty, FALSE
    invoke SendMessageA, g_hEdit, EM_SETMODIFY, FALSE, 0
    invoke UpdateTitle
    invoke UpdateStatusText
    mov ok, TRUE

load_cleanup:
    mov eax, pBuf
    test eax, eax
    jz @F
    invoke GlobalFree, eax
@@:
    mov eax, hFile
    cmp eax, INVALID_HANDLE_VALUE
    je @F
    invoke CloseHandle, eax
@@:
    mov eax, ok
    ret
LoadTextFile ENDP

SaveTextFile PROC uses ebx esi edi, pPath:DWORD
    LOCAL hFile:DWORD
    LOCAL textLen:DWORD
    LOCAL bWritten:DWORD
    LOCAL pBuf:DWORD
    LOCAL ok:DWORD

    mov hFile, INVALID_HANDLE_VALUE
    mov pBuf, 0
    mov ok, FALSE

    invoke GetWindowTextLengthA, g_hEdit
    mov textLen, eax
    inc eax
    invoke GlobalAlloc, GMEM_FIXED, eax
    mov pBuf, eax
    test eax, eax
    jnz @F
    invoke MessageBoxA, g_hWndMain, ADDR szErrMem, ADDR szAppCaption, MB_OK or MB_ICONERROR
    jmp save_cleanup
@@:
    mov eax, textLen
    inc eax
    invoke GetWindowTextA, g_hEdit, pBuf, eax

    invoke CreateFileA, pPath, GENERIC_WRITE, 0, NULL, CREATE_ALWAYS, FILE_ATTRIBUTE_NORMAL, NULL
    mov hFile, eax
    cmp eax, INVALID_HANDLE_VALUE
    jne @F
    invoke MessageBoxA, g_hWndMain, ADDR szErrSave, ADDR szAppCaption, MB_OK or MB_ICONERROR
    jmp save_cleanup
@@:
    invoke WriteFile, hFile, pBuf, textLen, ADDR bWritten, NULL
    test eax, eax
    jz save_fail
    mov eax, bWritten
    cmp eax, textLen
    je save_ok
save_fail:
    invoke MessageBoxA, g_hWndMain, ADDR szErrSave, ADDR szAppCaption, MB_OK or MB_ICONERROR
    jmp save_cleanup

save_ok:
    invoke CopyString, ADDR g_currentFile, pPath
    mov g_dirty, FALSE
    invoke SendMessageA, g_hEdit, EM_SETMODIFY, FALSE, 0
    invoke UpdateTitle
    invoke UpdateStatusText
    mov ok, TRUE

save_cleanup:
    mov eax, pBuf
    test eax, eax
    jz @F
    invoke GlobalFree, eax
@@:
    mov eax, hFile
    cmp eax, INVALID_HANDLE_VALUE
    je @F
    invoke CloseHandle, eax
@@:
    mov eax, ok
    ret
SaveTextFile ENDP

ToggleWordWrap PROC
    cmp g_wordWrap, FALSE
    jne @F
    mov g_wordWrap, TRUE
    jmp wrapped
@@:
    mov g_wordWrap, FALSE
wrapped:
    invoke RecreateEdit
    invoke UpdateViewAndFormatMenus
    invoke ResizeEdit
    invoke UpdateStatusText
    ret
ToggleWordWrap ENDP

RecreateEdit PROC
    LOCAL textLen:DWORD
    LOCAL pBuf:DWORD
    LOCAL selS:DWORD
    LOCAL selE:DWORD
    LOCAL modState:DWORD
    LOCAL style:DWORD

    mov pBuf, 0
    invoke GetWindowTextLengthA, g_hEdit
    mov textLen, eax
    inc eax
    invoke GlobalAlloc, GMEM_FIXED, eax
    mov pBuf, eax
    test eax, eax
    jz @F
    mov eax, textLen
    inc eax
    invoke GetWindowTextA, g_hEdit, pBuf, eax
@@:
    invoke SendMessageA, g_hEdit, EM_GETSEL, ADDR selS, ADDR selE
    invoke SendMessageA, g_hEdit, EM_GETMODIFY, 0, 0
    mov modState, eax
    invoke DestroyWindow, g_hEdit

    mov eax, EDIT_STYLE_WRAP
    cmp g_wordWrap, FALSE
    jne @F
    mov eax, EDIT_STYLE_NOWRAP
@@:
    mov style, eax
    invoke CreateWindowExA, WS_EX_CLIENTEDGE, ADDR szEditClass, NULL, style, 0, 0, 0, 0, g_hWndMain, IDC_MAIN_EDIT, g_hInst, NULL
    mov g_hEdit, eax
    test eax, eax
    jnz @F
    invoke MessageBoxA, g_hWndMain, ADDR szErrCtl, ADDR szAppCaption, MB_OK or MB_ICONERROR
    ret
@@:
    invoke ApplyCurrentFont
    mov eax, pBuf
    test eax, eax
    jz @F
    invoke SetWindowTextA, g_hEdit, eax
@@:
    invoke SendMessageA, g_hEdit, EM_SETSEL, selS, selE
    invoke SendMessageA, g_hEdit, EM_SETMODIFY, modState, 0
    mov eax, modState
    mov g_dirty, eax
    mov eax, pBuf
    test eax, eax
    jz @F
    invoke GlobalFree, eax
@@:
    invoke SetFocus, g_hEdit
    invoke UpdateStatusText
    ret
RecreateEdit ENDP

ApplyCurrentFont PROC
    LOCAL hFont:DWORD
    mov eax, g_hUserFont
    test eax, eax
    jnz have_font
    invoke GetStockObject, DEFAULT_GUI_FONT
have_font:
    mov hFont, eax
    mov eax, g_hEdit
    test eax, eax
    jz @F
    invoke SendMessageA, g_hEdit, WM_SETFONT, hFont, TRUE
@@:
    mov eax, g_hStatus
    test eax, eax
    jz @F
    invoke SendMessageA, g_hStatus, WM_SETFONT, hFont, TRUE
@@:
    mov eax, g_hGotoEdit
    test eax, eax
    jz @F
    invoke SendMessageA, g_hGotoEdit, WM_SETFONT, hFont, TRUE
@@:
    ret
ApplyCurrentFont ENDP

ChooseEditorFont PROC
    invoke ZeroMem, ADDR g_cf, SIZEOF CHOOSEFONTA
    mov g_cf.lStructSize, SIZEOF CHOOSEFONTA
    mov eax, g_hWndMain
    mov g_cf.hwndOwner, eax
    mov g_cf.lpLogFont, OFFSET g_logFont
    mov g_cf.Flags, CF_SCREENFONTS or CF_INITTOLOGFONTSTRUCT
    invoke ChooseFontA, ADDR g_cf
    test eax, eax
    jz done
    invoke CreateFontIndirectA, ADDR g_logFont
    test eax, eax
    jz done
    mov edx, g_hUserFont
    mov g_hUserFont, eax
    test edx, edx
    jz @F
    invoke DeleteObject, edx
@@:
    invoke ApplyCurrentFont
done:
    ret
ChooseEditorFont ENDP

ShowFindDialog PROC
    mov eax, g_hFindDlg
    test eax, eax
    jz create_find
    invoke SetForegroundWindow, eax
    ret
create_find:
    invoke ZeroMem, ADDR g_fr, SIZEOF FINDREPLACEA
    mov g_fr.lStructSize, SIZEOF FINDREPLACEA
    mov eax, g_hWndMain
    mov g_fr.hwndOwner, eax
    mov eax, g_hInst
    mov g_fr.hInstance, eax
    mov eax, g_findFlags
    and eax, FR_DOWN or FR_MATCHCASE or FR_WHOLEWORD
    or eax, FR_DOWN
    mov g_fr.Flags, eax
    mov g_fr.lpstrFindWhat, OFFSET g_findBuffer
    mov g_fr.lpstrReplaceWith, OFFSET g_replaceBuffer
    mov g_fr.wFindWhatLen, 255
    mov g_fr.wReplaceWithLen, 255
    invoke FindTextA, ADDR g_fr
    mov g_hFindDlg, eax
    ret
ShowFindDialog ENDP

ShowReplaceDialog PROC
    mov eax, g_hFindDlg
    test eax, eax
    jz create_replace
    invoke SetForegroundWindow, eax
    ret
create_replace:
    invoke ZeroMem, ADDR g_fr, SIZEOF FINDREPLACEA
    mov g_fr.lStructSize, SIZEOF FINDREPLACEA
    mov eax, g_hWndMain
    mov g_fr.hwndOwner, eax
    mov eax, g_hInst
    mov g_fr.hInstance, eax
    mov eax, g_findFlags
    and eax, FR_DOWN or FR_MATCHCASE or FR_WHOLEWORD
    or eax, FR_DOWN
    mov g_fr.Flags, eax
    mov g_fr.lpstrFindWhat, OFFSET g_findBuffer
    mov g_fr.lpstrReplaceWith, OFFSET g_replaceBuffer
    mov g_fr.wFindWhatLen, 255
    mov g_fr.wReplaceWithLen, 255
    invoke ReplaceTextA, ADDR g_fr
    mov g_hFindDlg, eax
    ret
ShowReplaceDialog ENDP

ProcessFindReplace PROC uses esi, pFr:DWORD
    LOCAL frFlags:DWORD

    mov esi, pFr
    test esi, esi
    jz done
    mov eax, [esi+FRA_FLAGS_OFF]
    mov frFlags, eax
    mov edx, eax
    and edx, FR_DOWN or FR_MATCHCASE or FR_WHOLEWORD
    mov g_findFlags, edx

    mov edx, [esi+FRA_FIND_OFF]
    test edx, edx
    jz @F
    invoke CopyString, ADDR g_findBuffer, edx
@@:
    mov edx, [esi+FRA_REPLACE_OFF]
    test edx, edx
    jz @F
    invoke CopyString, ADDR g_replaceBuffer, edx
@@:
    mov eax, frFlags
    test eax, FR_DIALOGTERM
    jz @F
    mov g_hFindDlg, 0
    jmp done
@@:
    mov eax, frFlags
    test eax, FR_REPLACEALL
    jz @F
    invoke DoReplaceAll
    jmp done
@@:
    mov eax, frFlags
    test eax, FR_REPLACE
    jz @F
    invoke DoReplaceOne
    jmp done
@@:
    mov eax, frFlags
    test eax, FR_FINDNEXT
    jz done
    invoke DoFindNext
done:
    invoke UpdateStatusText
    ret
ProcessFindReplace ENDP

DoFindNext PROC
    LOCAL selS:DWORD
    LOCAL selE:DWORD
    LOCAL idx:DWORD
    LOCAL findLen:DWORD

    cmp byte ptr [g_findBuffer], 0
    jne have_find
    invoke ShowFindDialog
    xor eax, eax
    ret
have_find:
    invoke SendMessageA, g_hEdit, EM_GETSEL, ADDR selS, ADDR selE
    invoke FindInEditText, ADDR g_findBuffer, selE, g_findFlags
    mov idx, eax
    cmp eax, -1
    jne found
    cmp g_silentFind, FALSE
    jne not_found
    invoke BuildCannotFindText, ADDR g_findBuffer
    invoke MessageBoxA, g_hWndMain, ADDR g_cannotFindBuffer, ADDR szFindTitle, MB_OK or MB_ICONINFORMATION
not_found:
    xor eax, eax
    ret
found:
    invoke StrLenA, ADDR g_findBuffer
    mov findLen, eax
    mov eax, idx
    mov edx, findLen
    add edx, eax
    invoke SendMessageA, g_hEdit, EM_SETSEL, eax, edx
    invoke SendMessageA, g_hEdit, EM_SCROLLCARET, 0, 0
    invoke SetFocus, g_hEdit
    mov eax, TRUE
    ret
DoFindNext ENDP

DoReplaceOne PROC
    cmp byte ptr [g_findBuffer], 0
    jne start_replace
    invoke ShowReplaceDialog
    ret
start_replace:
    invoke DoFindNext
    test eax, eax
    jz done
    invoke SendMessageA, g_hEdit, EM_REPLACESEL, TRUE, ADDR g_replaceBuffer
    mov g_dirty, TRUE
    invoke SendMessageA, g_hEdit, EM_SETMODIFY, TRUE, 0
    invoke DoFindNext
done:
    ret
DoReplaceOne ENDP

DoReplaceAll PROC
    LOCAL replCount:DWORD

    cmp byte ptr [g_findBuffer], 0
    jne begin_replace_all
    invoke ShowReplaceDialog
    ret
begin_replace_all:
    mov replCount, 0
    invoke SendMessageA, g_hEdit, EM_SETSEL, 0, 0
    mov g_silentFind, TRUE
replace_loop:
    invoke DoFindNext
    test eax, eax
    jz replace_done
    invoke SendMessageA, g_hEdit, EM_REPLACESEL, TRUE, ADDR g_replaceBuffer
    mov g_dirty, TRUE
    invoke SendMessageA, g_hEdit, EM_SETMODIFY, TRUE, 0
    mov eax, replCount
    inc eax
    mov replCount, eax
    jmp replace_loop
replace_done:
    mov g_silentFind, FALSE
    invoke wsprintfA, ADDR g_tmpMsgBuffer, ADDR szReplacedFmt, replCount
    invoke MessageBoxA, g_hWndMain, ADDR g_tmpMsgBuffer, ADDR szReplaceTitle, MB_OK or MB_ICONINFORMATION
    ret
DoReplaceAll ENDP

FindInEditText PROC uses ebx esi edi, pNeedle:DWORD, startPos:DWORD, flags:DWORD
    LOCAL txtLen:DWORD
    LOCAL findLen:DWORD
    LOCAL pText:DWORD
    LOCAL maxStart:DWORD
    LOCAL idx:DWORD
    LOCAL matchCase:DWORD
    LOCAL wholeWord:DWORD

    mov pText, 0
    invoke StrLenA, pNeedle
    mov findLen, eax
    cmp eax, 0
    jne @F
    mov eax, -1
    ret
@@:
    invoke GetWindowTextLengthA, g_hEdit
    mov txtLen, eax
    mov eax, startPos
    cmp eax, txtLen
    jbe @F
    mov eax, -1
    ret
@@:
    mov eax, txtLen
    sub eax, findLen
    cmp eax, 0
    jge @F
    mov eax, -1
    ret
@@:
    mov maxStart, eax
    mov eax, txtLen
    inc eax
    invoke GlobalAlloc, GMEM_FIXED, eax
    mov pText, eax
    test eax, eax
    jnz @F
    mov eax, -1
    ret
@@:
    mov eax, txtLen
    inc eax
    invoke GetWindowTextA, g_hEdit, pText, eax
    mov eax, flags
    and eax, FR_MATCHCASE
    mov matchCase, eax
    mov eax, flags
    and eax, FR_WHOLEWORD
    mov wholeWord, eax
    mov eax, startPos
    mov idx, eax

find_loop:
    mov eax, idx
    cmp eax, maxStart
    jg no_match
    mov edx, pText
    add edx, eax
    invoke MatchAtPos, edx, pNeedle, findLen, matchCase
    test eax, eax
    jz next_idx
    cmp wholeWord, 0
    je found_match

    mov eax, idx
    cmp eax, 0
    je check_word_after
    mov edx, pText
    add edx, eax
    dec edx
    movzx eax, byte ptr [edx]
    invoke IsWordChar, eax
    test eax, eax
    jnz next_idx

check_word_after:
    mov eax, idx
    add eax, findLen
    cmp eax, txtLen
    jge found_match
    mov edx, pText
    add edx, eax
    movzx eax, byte ptr [edx]
    invoke IsWordChar, eax
    test eax, eax
    jnz next_idx

found_match:
    mov eax, idx
    jmp find_cleanup

next_idx:
    mov eax, idx
    inc eax
    mov idx, eax
    jmp find_loop

no_match:
    mov eax, -1

find_cleanup:
    mov edx, pText
    test edx, edx
    jz @F
    push eax
    invoke GlobalFree, edx
    pop eax
@@:
    ret
FindInEditText ENDP

MatchAtPos PROC uses esi edi ecx ebx, pTextPos:DWORD, pNeedle:DWORD, cch:DWORD, matchCase:DWORD
    mov esi, pTextPos
    mov edi, pNeedle
    mov ecx, cch
    mov ebx, matchCase
    cmp ecx, 0
    jne @F
    mov eax, TRUE
    ret
@@:
match_loop:
    mov al, [esi]
    mov dl, [edi]
    cmp ebx, 0
    jne cmp_chars
    cmp al, 'a'
    jb @F
    cmp al, 'z'
    ja @F
    sub al, 20h
@@:
    cmp dl, 'a'
    jb cmp_chars
    cmp dl, 'z'
    ja cmp_chars
    sub dl, 20h
cmp_chars:
    cmp al, dl
    jne no_match
    inc esi
    inc edi
    dec ecx
    jne match_loop
    mov eax, TRUE
    ret
no_match:
    xor eax, eax
    ret
MatchAtPos ENDP

IsWordChar PROC chv:DWORD
    mov eax, chv
    and eax, 0FFh
    cmp eax, '0'
    jb check_upper
    cmp eax, '9'
    jbe yes
check_upper:
    cmp eax, 'A'
    jb check_lower
    cmp eax, 'Z'
    jbe yes
check_lower:
    cmp eax, 'a'
    jb check_underscore
    cmp eax, 'z'
    jbe yes
check_underscore:
    cmp eax, '_'
    jne no
yes:
    mov eax, TRUE
    ret
no:
    xor eax, eax
    ret
IsWordChar ENDP

ShowGotoDialog PROC
    cmp g_wordWrap, FALSE
    je @F
    invoke MessageBoxA, g_hWndMain, ADDR szGotoWrapOff, ADDR szAppCaption, MB_OK or MB_ICONINFORMATION
    ret
@@:
    mov eax, g_hGotoWnd
    test eax, eax
    jz create_goto
    invoke SetForegroundWindow, eax
    invoke SetFocus, g_hGotoEdit
    ret
create_goto:
    cmp g_gotoClassReady, FALSE
    jne @F
    invoke ZeroMem, ADDR g_wcGoto, SIZEOF WNDCLASSEXA
    mov g_wcGoto.cbSize, SIZEOF WNDCLASSEXA
    mov g_wcGoto.style, 0003h
    mov g_wcGoto.lpfnWndProc, OFFSET GotoWndProc
    mov g_wcGoto.cbClsExtra, 0
    mov g_wcGoto.cbWndExtra, 0
    mov eax, g_hInst
    mov g_wcGoto.hInstance, eax
    invoke LoadIconA, g_hInst, IDI_APPICON
    test eax, eax
    jnz @F
    invoke LoadIconA, NULL, IDI_APPLICATION
@@:
    mov g_wcGoto.hIcon, eax
    mov g_wcGoto.hIconSm, eax
    invoke LoadCursorA, NULL, IDC_ARROW
    mov g_wcGoto.hCursor, eax
    mov g_wcGoto.hbrBackground, COLOR_WINDOW + 1
    mov g_wcGoto.lpszMenuName, NULL
    mov g_wcGoto.lpszClassName, OFFSET szGotoClass
    invoke RegisterClassExA, ADDR g_wcGoto
    mov g_gotoClassReady, TRUE
@@:
    invoke EnableWindow, g_hWndMain, FALSE
    invoke CreateWindowExA, 0, ADDR szGotoClass, ADDR szGotoTitle, WS_POPUP or WS_CAPTION or WS_SYSMENU or WS_VISIBLE, CW_USEDEFAULT, CW_USEDEFAULT, 250, 120, g_hWndMain, NULL, g_hInst, NULL
    mov g_hGotoWnd, eax
    test eax, eax
    jnz @F
    invoke EnableWindow, g_hWndMain, TRUE
    ret
@@:
    invoke ShowWindow, eax, SW_SHOW
    invoke UpdateWindow, eax
    ret
ShowGotoDialog ENDP

GotoWndProc PROC uses ebx esi edi, hWnd:DWORD, uMsg:DWORD, wParam:DWORD, lParam:DWORD
    mov eax, uMsg
    cmp eax, WM_CREATE
    je goto_create
    cmp eax, WM_COMMAND
    je goto_command
    cmp eax, WM_CLOSE
    je goto_close
    cmp eax, WM_DESTROY
    je goto_destroy
    invoke DefWindowProcA, hWnd, uMsg, wParam, lParam
    ret

goto_create:
    invoke CreateWindowExA, 0, ADDR szStaticClass, ADDR szGotoPrompt, WS_CHILD or WS_VISIBLE or SS_LEFT, 12, 15, 70, 20, hWnd, 0, g_hInst, NULL
    invoke CreateWindowExA, WS_EX_CLIENTEDGE, ADDR szEditClass, ADDR szEmpty, WS_CHILD or WS_VISIBLE or WS_TABSTOP or ES_NUMBER, 90, 12, 130, 22, hWnd, IDC_GOTO_EDIT, g_hInst, NULL
    mov g_hGotoEdit, eax
    invoke CreateWindowExA, 0, ADDR szButtonClass, ADDR szGotoOk, WS_CHILD or WS_VISIBLE or WS_TABSTOP or BS_DEFPUSHBUTTON, 58, 48, 62, 24, hWnd, IDC_GOTO_OK, g_hInst, NULL
    invoke CreateWindowExA, 0, ADDR szButtonClass, ADDR szGotoCancel, WS_CHILD or WS_VISIBLE or WS_TABSTOP or BS_PUSHBUTTON, 130, 48, 62, 24, hWnd, IDC_GOTO_CANCEL, g_hInst, NULL
    invoke ApplyCurrentFont
    invoke SetWindowTextA, g_hGotoEdit, ADDR szOne
    invoke SendMessageA, g_hGotoEdit, EM_SETSEL, 0, -1
    invoke SetFocus, g_hGotoEdit
    xor eax, eax
    ret

goto_command:
    mov eax, wParam
    and eax, 0FFFFh
    cmp eax, IDC_GOTO_OK
    jne @F
    invoke GetWindowTextA, g_hGotoEdit, ADDR g_gotoBuffer, 16
    invoke ParseUint, ADDR g_gotoBuffer
    cmp eax, 0
    jne try_goto
    invoke MessageBoxA, hWnd, ADDR szGotoBadLine, ADDR szGotoTitle, MB_OK or MB_ICONERROR
    xor eax, eax
    ret
try_goto:
    push eax
    invoke GoToLineNumber, eax
    test eax, eax
    jnz goto_ok_close
    pop eax
    invoke MessageBoxA, hWnd, ADDR szGotoNoLine, ADDR szGotoTitle, MB_OK or MB_ICONERROR
    xor eax, eax
    ret
goto_ok_close:
    pop eax
    invoke DestroyWindow, hWnd
    xor eax, eax
    ret
@@:
    cmp eax, IDC_GOTO_CANCEL
    jne @F
    invoke DestroyWindow, hWnd
    xor eax, eax
    ret
@@:
    xor eax, eax
    ret

goto_close:
    invoke DestroyWindow, hWnd
    xor eax, eax
    ret

goto_destroy:
    mov g_hGotoWnd, 0
    mov g_hGotoEdit, 0
    invoke EnableWindow, g_hWndMain, TRUE
    invoke SetForegroundWindow, g_hWndMain
    mov eax, g_hEdit
    test eax, eax
    jz @F
    invoke SetFocus, eax
@@:
    xor eax, eax
    ret
GotoWndProc ENDP

GoToLineNumber PROC lineNo:DWORD
    mov eax, lineNo
    cmp eax, 1
    jge @F
    xor eax, eax
    ret
@@:
    dec eax
    invoke SendMessageA, g_hEdit, EM_LINEINDEX, eax, 0
    cmp eax, -1
    jne @F
    xor eax, eax
    ret
@@:
    mov edx, eax
    invoke SendMessageA, g_hEdit, EM_SETSEL, edx, edx
    invoke SendMessageA, g_hEdit, EM_SCROLLCARET, 0, 0
    invoke SetFocus, g_hEdit
    invoke UpdateStatusText
    mov eax, TRUE
    ret
GoToLineNumber ENDP

ParseUint PROC uses esi ebx ecx edx, pText:DWORD
    mov esi, pText
    xor eax, eax
    xor ecx, ecx
parse_loop:
    mov bl, [esi]
    cmp bl, 0
    je parse_done
    cmp bl, '0'
    jb parse_bad
    cmp bl, '9'
    ja parse_bad
    imul eax, 10
    movzx edx, bl
    sub edx, '0'
    add eax, edx
    inc ecx
    inc esi
    jmp parse_loop
parse_done:
    cmp ecx, 0
    jne parse_ok
parse_bad:
    xor eax, eax
parse_ok:
    ret
ParseUint ENDP

StrLenA PROC uses esi, pText:DWORD
    mov esi, pText
    xor eax, eax
@@:
    cmp byte ptr [esi], 0
    je done
    inc esi
    inc eax
    jmp @B
done:
    ret
StrLenA ENDP

BuildCannotFindText PROC pNeedle:DWORD
    invoke wsprintfA, ADDR g_cannotFindBuffer, ADDR szCannotFindFmt, pNeedle
    ret
BuildCannotFindText ENDP

InsertTimeDate PROC
    LOCAL tm:SYSTEMTIME
    LOCAL hh:DWORD
    LOCAL mm:DWORD
    LOCAL dayv:DWORD
    LOCAL mon:DWORD
    LOCAL yy:DWORD

    invoke GetLocalTime, ADDR tm
    movzx eax, tm.wHour
    mov hh, eax
    movzx eax, tm.wMinute
    mov mm, eax
    movzx eax, tm.wDay
    mov dayv, eax
    movzx eax, tm.wMonth
    mov mon, eax
    movzx eax, tm.wYear
    mov yy, eax
    invoke wsprintfA, ADDR g_timeBuffer, ADDR szDateFmt, hh, mm, dayv, mon, yy
    invoke SendMessageA, g_hEdit, EM_REPLACESEL, TRUE, ADDR g_timeBuffer
    mov g_dirty, TRUE
    invoke SendMessageA, g_hEdit, EM_SETMODIFY, TRUE, 0
    invoke UpdateStatusText
    ret
InsertTimeDate ENDP

CopyString PROC uses esi edi, pDst:DWORD, pSrc:DWORD
    mov edi, pDst
    mov esi, pSrc
@@:
    mov al, [esi]
    mov [edi], al
    inc esi
    inc edi
    test al, al
    jne @B
    ret
CopyString ENDP

ZeroMem PROC uses edi ecx eax, pMem:DWORD, cbMem:DWORD
    mov edi, pMem
    mov ecx, cbMem
    xor eax, eax
    rep stosb
    ret
ZeroMem ENDP

GetFileNamePtr PROC uses esi, pPath:DWORD
    mov esi, pPath
    mov eax, esi
@@:
    mov dl, [esi]
    cmp dl, 0
    je done
    cmp dl, 5Ch
    je mark
    cmp dl, '/'
    je mark
    cmp dl, ':'
    je mark
    jmp next
mark:
    lea eax, [esi+1]
next:
    inc esi
    jmp @B
done:
    ret
GetFileNamePtr ENDP

END start
