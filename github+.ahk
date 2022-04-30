#SingleInstance force
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


;#IfWinActive ahk_class Notepad
#IfWinActive C:\
::updategit+::
Send, update %A_YYYY%%A_MM%%A_DD%%A_Hour%%A_min%
#IfWinActive C:\
::git+::
send ^{a}
send ^{c}
send cmd{Enter}
Sleep, 1000
Send, git add . `ngit commit -m " %Clipboard%" `ngit push`ngit status`n
send exit
return


