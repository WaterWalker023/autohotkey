#NoEnv 
#SingleInstance, Force 
#Persistent
wasd = 1
;OnExit("ExitFunc")
#If WinActive("ahk_exe ScrapMechanic.exe") && GetKeyState("NumLock", "T")


F21::l
F20::tab
F18::up
F19::down
F17::e

WheelRight::
send {Right}
sleep 100
return
WheelLeft::
send {Left}
sleep 100
return

ins::
if (wasd = 1)
    {
        wasd =  0
    }
    else
{
    wasd = 1
}
return

`::
refine()
return

refine()
{
    send {e down}
    sleep 6000
    send {e up}
    return
}

#if wasd = 0 && WinActive("ahk_exe ScrapMechanic.exe") && GetKeyState("NumLock", "T")
w::3
a::4
s::5
d::6


ExitFunc(ExitReason, ExitCode)
{
    if ExitReason not in Logoff,Shutdown
    {
        FileCopy, [Complete file location (pat naar de file en de naam van de file)], [path to backup dir (waar je de backups wilt opshaan)]\ of [name of backup file] on %A_MM% %A_DD% %A_Hour% %A_Min%.db
    }
    
}