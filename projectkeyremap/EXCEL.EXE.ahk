#NoEnv 
#SingleInstance, Force 
#Persistent
#If WinActive("ahk_exe EXCEL.EXE") && GetKeyState("NumLock", "T")

F10::
send unknown
return
f11::
send yes
return
f12::
send no
return