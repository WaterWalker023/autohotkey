#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

NumpadLeft::send a
NumpadUp::send w
NumpadClear::send s
NumpadRight::send d
numpadhome::send f
NumpadPgup::send g
NumpadDown::send z
numpadend::send {LShift}
numpadpgdn::send v
NumpadEnter::send b
Numpad0::send {LControl}
down::send {Space}