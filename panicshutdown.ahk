#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

MsgBox, 4, , turn on panicshutdown?
IfMsgBox, Yes
{
    Run, C:\Users\Tomst\OneDrive\Bureaublad\ahk\Shutdown.ahk
}
