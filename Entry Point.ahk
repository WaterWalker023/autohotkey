#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
ToolTip, started entry point, 0, 0
sleep 5000
ToolTip,


tab::i
CapsLock::b
RCtrl::Tab
F18::1
F19::v
LAlt::4
MButton::m
$F7::^+F7
>^e::
Sleep, 100
ExitApp
Return
