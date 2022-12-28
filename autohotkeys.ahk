#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%
DetectHiddenWindows, On
;ahk_exe Project64.exe
SetTitleMatchMode, 2 



Loop{
    sleep 1000
    IfWinExist, ahk_exe Project64.exe
    {

        IfWinNotExist project64.ahk
            Run, C:\Users\Tomst\OneDrive - Mediacollege Amsterdam\Bureaublad\ahk\project64.ahk
    }
    
    IfWinNotExist, ahk_exe Project64.exe
    {
        IfWinExist project64.ahk
            WinClose project64.ahk
    }
}
