#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%


h::SetscrollLockState, alwaysOn
n::
While, true{
    setscrolllockstate, alwaysoff
    setscrolllockstate, alwayson
    sleep 500
}
Return
