#NoEnv 
#SingleInstance, Force 
#Persistent
#If WinActive("ahk_exe starwarsjedifallenorder.exe") && GetKeyState("NumLock", "T")

F17::3
;F18::3
F21::m


*f18::
if(mode = 1)
{
mode = 2
send c
}
else
{
mode = 1
send x
}
return
*~x::
mode = 1
return

*~c::
mode = 2
return

F19::1
f20::2

$*wheelup::
send 2
send {wheelup}
return

tab::backspace