#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%
OnExit("ExitFunc")

res = 0

    Insert::
    Sleep, 100
    Send, {r Down}
    sleep 100
    send {r Up}
    Sleep, 100
    Send, {f Down}
    sleep 100
    send {f Up}
    Sleep, 100
    Send, {u Down} 
    sleep 100
    send {u Up}
    Sleep, 100
    Send, {o Down}
    sleep 100
    send {o Up}

    Sleep, 100
    Send, {w Down}
    sleep 100
    send {w Up}
    Sleep, 100
    Send, {s Down}
    sleep 100
    send {s Up}
    Sleep, 100
    Send, {a Down}
    sleep 100
    send {a Up}
    Sleep, 100
    Send, {d Down}
    sleep 100
    send {d Up}

    Sleep, 100
    Send, {i Down}
    sleep 100
    send {i Up}
    Sleep, 100
    Send, {k Down}
    sleep 100
    send {k Up}
    Sleep, 100
    Send, {j Down}
    sleep 100
    send {j Up}
    Sleep, 100
    Send, {l Down}
    sleep 100
    send {l Up}

    Sleep, 100
    Send, {Shift Down}
    sleep 100
    send {Shift Up}
    Sleep, 100
    Send, {Space Down}
    sleep 100
    send {Space Up}
    Sleep, 100
    Send, {Enter Down}
    sleep 100
    send {enter Up}
    Sleep, 100
    Send, {Alt Down}
    sleep 100
    send {Alt Up}

    Sleep, 100
    Send, {q Down}
    sleep 100
    send {q Up}
    Sleep, 100
    Send, {e Down}
    sleep 100
    send {e Up}
    Return

f11::
If (res = 1){
    ChangeResolution(1920, 1080)
    res = 0
}
Else{
    ChangeResolution(800, 600)
    res = 1
}

ChangeResolution(Screen_Width := 3240, Screen_Height := 2160, Color_Depth := 32)
{
	VarSetCapacity(Device_Mode,156,0)
	NumPut(156,Device_Mode,36) 
	DllCall( "EnumDisplaySettingsA", UInt,0, UInt,-1, UInt,&Device_Mode )
	NumPut(0x5c0000,Device_Mode,40) 
	NumPut(Color_Depth,Device_Mode,104)
	NumPut(Screen_Width,Device_Mode,108)
	NumPut(Screen_Height,Device_Mode,112)
	Return DllCall( "ChangeDisplaySettingsA", UInt,&Device_Mode, UInt,0 )
}
Return

ExitFunc(ExitReason, ExitCode)
{
    if ExitReason not in Logoff,Shutdown
    {
        ChangeResolution(1920, 1080)
        return
    }
}
