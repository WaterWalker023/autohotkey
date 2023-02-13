#NoEnv 
#SingleInstance, Force 
#Persistent
#If WinActive("ahk_exe firefox.exe")

WheelLeft::
send +^{tab}
sleep 100
return

Wheelright::
send ^{tab}
sleep 100
return