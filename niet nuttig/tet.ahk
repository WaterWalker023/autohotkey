#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#SingleInstance force
]::
Send, 1
Sleep, 400
Click, left, down
Sleep, 400
Click, left, up
Sleep, 400
Send, 1
return

`::
run, https://www.roblox.com/games/740581508/Entry-Point
return