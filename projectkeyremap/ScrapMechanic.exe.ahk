#NoEnv 
#SingleInstance, Force 
#Persistent
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
