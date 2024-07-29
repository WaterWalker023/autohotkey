#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

if not A_IsAdmin
    {
       Run *RunAs "%A_ScriptFullPath%"  ; Requires v1.0.92.01+
       ExitApp
    }
    
    MsgBox, IsAdmin: %A_IsAdmin%



run chrome























run chrome