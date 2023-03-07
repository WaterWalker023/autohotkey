#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

+Esc::
    WinGet pid, PID, A
    ; Get WMI service object.
    wmi := ComObjGet("winmgmts:")
    ; Run query to retrieve matching process(es).
    queryEnum := wmi.ExecQuery(""
        . "Select * from Win32_Process where ProcessId=" . pid)
        ._NewEnum()
    ; Get first matching process.
    if queryEnum[proc]
        MsgBox 0, Command line, % proc.CommandLine
    else
        MsgBox Process not found!
    ; Free all global objects (not necessary when using local vars).
    wmi := queryEnum := proc := ""
