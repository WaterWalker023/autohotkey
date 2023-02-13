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

::06-telnub::
send 06-81834866
Return

::hmail::
send tomsteijger@hotmail.com
Return

::gmail1::
send waterwalker023@gmail.com
Return

::gmail2::
send lukestarkiller.2000@gmail.com
Return

::gmail3::
send tom.steijger.2005@gmail.com
Return

::tsn::
send tom steijger
Return

::tsvn::
send thomas steijger
Return

::stoptypen::
ExitApp
Return