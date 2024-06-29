#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

test = ToolTip, Text,


m::
test(%test%)
Return

n::
ToolTip, %test%, X, Y, 2
Return


test(test)
{
    %test%
}