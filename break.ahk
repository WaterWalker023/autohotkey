#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
SetTimer, Loop, 100
lastnumber = -1

#if GetKeyState("NumLock", "T") 
LControl::c
CapsLock::BackSpace
RCtrl::Tab
LAlt::4
~1::lastnumber = 1 
~2::lastnumber = 2 
~3::lastnumber = 3 
~4::lastnumber = 4 
~5::lastnumber = 5
~6::lastnumber = 6 
~8::lastnumber = 8
~9::lastnumber = 9
~0::lastnumber = 0

Loop:
If (GetKeyState("NumLock", "T"))
{
ImageSearch, FoundX, FoundY, 0, 0, 1920, 1080, C:\Users\Tomst\OneDrive - Mediacollege Amsterdam\Bureaublad\ahk\fotos\0schuine8.png

If (FoundX)
{

lastnumber++
If (lastnumber = 10)
{
    lastnumber = 0
}
Send, %lastnumber%
Return
}
}
ToolTip, X %FoundX%
return

