#NoEnv 
#SingleInstance, Force 
#Persistent
#If WinActive("ahk_exe Explorer.EXE") && GetKeyState("NumLock", "T")

$!f4::Run, C:\Users\Tomst\OneDrive - Mediacollege Amsterdam\Bureaublad\ahk\sounds\Rick Astley - Never Gonna Give You Up (Official Music Video).mp4
$!F5::!f4