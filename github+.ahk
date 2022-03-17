#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

::git+::
send ^{a}
send ^{c}
send {esc}
Sleep, 100
Send, git add . `ngit commit -m "%Clipboard%" `ngit push`ngit status`n
return
