#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%


#if GetKeyState("NumLock", "T") 
Tab::i
c::m
z::n


>^s::
Sleep, 100
ExitApp
Return