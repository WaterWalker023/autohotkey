#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

>!s::
Send {up}
Sleep, 10
send {enter}
Return

>!d::
Send {up}
Sleep, 10
Send {Right}
Sleep, 10
send {enter}
Return

>!f::
Send {up}
Sleep, 10
Send {Right}
Sleep, 10
Send {Right}
Sleep, 10
send {enter}
Return

>!a::
Sleep, 100
ExitApp
Return
