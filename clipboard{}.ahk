#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

test := "!{tab}"
test2 := "!{tab}"

m::
test = %Clipboard%
If %test% != %test2%
    MsgBox, "%test%"
    Return
Return
