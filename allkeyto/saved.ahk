#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

mDefault = m


Mym = %mDefault%
Insert & m::
InputBox, Mym,map keyboard to...,for shortcuts use + = shift. ^ = Ctrl. ! = Alt. # = Win `nfor Multi letter keys use { } `nselected key: m, Show, 375, Height, X, Y, Locale, Timeout, %Mym%
    If (Mym = "")
    Mym = %mDefault%
    Return
Return

$*m::
Send {Blind}{%Mym% Down}
KeyWait, m
send {Blind}{%Mym% Up}
Return

