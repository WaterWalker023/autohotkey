#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

MsgBox, 4, , turn on panicshutdown? `nShift + Win + Delete
IfMsgBox, Yes
{
    Run, C:\Users\Tomst\OneDrive - Mediacollege Amsterdam\Bureaublad\ahk\Shutdown.ahk
}
