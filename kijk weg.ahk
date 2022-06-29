#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

Loop,
{
    Sleep, 1200000
    ToolTip, kijk even weg voor 20 seconden, X, Y, 1
    Sleep, 21000
    ToolTip,, X, Y, 1

}
