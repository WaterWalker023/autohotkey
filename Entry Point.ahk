#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

tab::i
CapsLock::b
RCtrl::Tab
XButton1::1
XButton2::v
LAlt::4

>^e::
Sleep, 100
ExitApp
Return