#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

sit = 0
Loop{
    If (sit = 1){
    Send, 2
    sleep 100
    send 3
    }
    sleep 100
}


f18::1
f19::1

MButton::
m::
If (sit = 1){
    sit = 0
    Return
}
Else{
    sit = 1
    Return
    
}
Return




