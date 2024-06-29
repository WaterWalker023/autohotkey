#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

Numpad0:

While, True
{
    
    send t
    
    Sleep, 1000
    
    send /give nonsens minecraft:
    
    send {down %i%}
    
    send {Tab}*>,
    
    send ^{left}
    
    Send, ^+{Left}
    
    Send, ^+{Left}

    send <
    
    send {Enter}
    
    ToolTip, %i%
    
    if(i > 100)
    {
        Return
        exitapp
    }
        
    i++
}