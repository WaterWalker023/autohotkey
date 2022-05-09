#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%


m::
WinGetTitle, OutputVar , A
MsgBox, %OutputVar%
Clipboard = %OutputVar%
Return
A_TimeIdle

#IfWinActive ahk_class Notepad
^!c::MsgBox You pressed Control+Alt+C in Notepad.
#IfWinActive File Explorer
^!c::
#IfWinActive C:\
^!c::
MsgBox You pressed Control+Alt+C in File Explorer.
Return
#IfWinActive
^!c::MsgBox You pressed Control+Alt+C in a window other than Notepad/File Explorer.
