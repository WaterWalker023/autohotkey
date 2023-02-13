#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance Force

<!c::
    myclip = %Clipboard%
    send ^c
    Sleep, 1000
    my2clip = %Clipboard%
    Clipboard = %myclip%
    Return

<!x::
    myclip = %Clipboard%
    send ^x
    Sleep, 1000
    my2clip = %Clipboard%
    Clipboard = %myclip%
    Return

<!v::
    myclip = %Clipboard%
    Clipboard = %my2clip%
    Sleep, 100
    send ^v
    Sleep, 100
    Clipboard = %myclip%
Return

<^b::
InputBox, fastclipboard,betterclipboards, Change your clipboard quickly, Show, 375, Height, X, Y, Locale, Timeout, %clipboard%
clipboard = %fastclipboard%
Return

>!c::
Sleep, 100
ExitApp
Return
