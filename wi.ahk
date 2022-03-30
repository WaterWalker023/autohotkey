#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

l::
While, True{
    send 1
}
Return

k::Exit, [ ExitCode]

