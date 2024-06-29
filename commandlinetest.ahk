#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%
#Persistent

MsgBox, %1%, %2%
nonsens = %1%

If (nonsens ="")
{
    MsgBox, testerdetesttest
}
Else
{
    MsgBox, %1%
}
    