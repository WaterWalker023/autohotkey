#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#singleinstance force



Ins & m::
        InputBox, Mym, 1, Mapping m, SHOW, Width, Height, X, Y, Locale, Timeout, %Mym%
        Hotkey, m, Script1
        If (Mym = "")
        Hotkey, m, off
        Return
    return
    Script1:
        Send {Blind}{%Mym% Down}
        KeyWait, m
        send {Blind}{%Mym% Up}
    return
