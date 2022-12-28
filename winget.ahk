#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


WinGet, OutputVar, ProcessName, A
MsgBox, %OutputVar%
Gui, Add, Edit, r9 vMyEdit w135, Text to appear inside the edit control (omit this parameter to start off empty
Gui, Show
MsgBox, %MyEdit%