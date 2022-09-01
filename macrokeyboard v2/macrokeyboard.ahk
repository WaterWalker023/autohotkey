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


F20 ::
OutputDebug, %macro%
FileRead, macro, macrokeyboard.txt
if macro = r 
{
    Reload
} 
else if macro = a 
{
    ToolTip, a
}
Else if macro := "F1"
{
    SetWorkingDir C:\Users\
    run C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe
    SetWorkingDir, %A_ScriptDir%
}
else 
{
    ToolTip, not used
}

;ToolTip, %macro%