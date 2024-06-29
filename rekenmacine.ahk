#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
calculator = 0

#If, (calculator = 0)
NumLock::
calculator = 1 
ToolTip,  %calculator%, X, Y, WhichToolTip
Return

#If, (calculator = 1 )
NumpadEnter::
calculator = 0
ToolTip,  %calculator%, X, Y, WhichToolTip
Return

