#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%
ToolTip, started macrokeyboard v2
Sleep, 1000
Loop
{
    ToolTip,
    sleep 10000
}

/*



*/


F20::
FileRead, macro, macrokeyboard.txt
if macro = r 
{
    Reload
} 
else if macro = a 
{
    ToolTip, a
}
else 
{
    ToolTip, not used
}
OutputDebug, %macro%
;ToolTip, %macro%