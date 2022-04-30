#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%


>!F1::
InputBox, Button,turbo,what butten to turbo,
InputBox, Interval , turbo, ms per keypress, Show, Width, Height, X, Y, Locale, Timeout, 200
InputBox, Button2 , turbo, to Button, Show, Width, Height, X, Y, Locale, Timeout, %Button%
Hotkey, $%Button2%, turboscipt
delay = %Interval%
return
turboscipt:
    state = 1
    while (state = 1)
    {
        Send, %button%
        Sleep, %delay%
        state := getkeystate(%button2%)
    }
    Return

m::MsgBox, %delay%
