#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%
holding = 0

$*Pause::
    If (holding = 1)
    {
        Return
    }
    send {F13}

    holding = 1
Return


$*Pause up::
    send {f13}
    holding = 0
Return

Home::f13