#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

F11::
while True
{
    Send, {w down}
    sleep 1000
    send {w up}
    sleep 1000
    Send, {d down}
    sleep 1000
    send {d up}
    sleep 1000
    Send, {s down}
    sleep 1000
    send {s up}
    sleep 1000
    Send, {a down}
    sleep 1000
    send {a up}
    sleep 1000
}

f12::
Reload
Return