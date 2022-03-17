#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#singleinstance force

KeyFrom1 = 0
KeyTo1 = 0
KeyFrom2 = 0
KeyTo2 = 0
KeyFrom3 = 0
KeyTo3 = 0
KeyFrom4 = 0
KeyTo4 = 0
KeyFrom5 = 0
KeyTo5 = 0

Ins & 1::
    InputBox, KeyFrom1, 1, Current setting: %KeyFrom1% to %KeyTo1%, Show, Width, Height, X, Y, Locale, Timeout, 0
    InputBox, KeyTo1, 1, Mapping from %KeyFrom1%, SHOW, Width, Height, X, Y, Locale, Timeout, 0
    Hotkey, $%KeyFrom1%, Script1
return
Script1:
    Send, %KeyTo1%
return

Ins & 2::
    InputBox, KeyFrom2, 2, Current setting: %KeyFrom2% to %KeyTo2%, Show, Width, Height, X, Y, Locale, Timeout, 0
    InputBox, KeyTo2, 2, Mapping from %KeyFrom2%, SHOW, Width, Height, X, Y, Locale, Timeout, 0
    Hotkey, $%KeyFrom2%, Script2
return
Script2:
    Send, %KeyTo2%
return

Ins & 3::
    InputBox, KeyFrom3, 3, Current setting: %KeyFrom3% to %KeyTo3%, Show, Width, Height, X, Y, Locale, Timeout, 0
    InputBox, KeyTo3, 3, Mapping from %KeyFrom3%, SHOW, Width, Height, X, Y, Locale, Timeout, 0
    Hotkey, $%KeyFrom3%, Script3
return
Script3:
    Send, %KeyTo3%
return

Ins & 4::
    InputBox, KeyFrom4, 4, Current setting: %KeyFrom4% to %KeyTo4%, Show, Width, Height, X, Y, Locale, Timeout, 0
    InputBox, KeyTo4, 4, Mapping from %KeyFrom4%, SHOW, Width, Height, X, Y, Locale, Timeout, 0
    Hotkey, $%KeyFrom4%, Script4
return
Script4:
    Send, %KeyTo4%
return

Ins & 5::
    InputBox, KeyFrom5, 5, Current setting: %KeyFrom5% to %KeyTo5%, Show, Width, Height, X, Y, Locale, Timeout, 0
    InputBox, KeyTo5, 5, Mapping from %KeyFrom5%, SHOW, Width, Height, X, Y, Locale, Timeout, 0
    Hotkey, $%KeyFrom5%, Script5
return
Script5:
    Send, %KeyTo5%
return