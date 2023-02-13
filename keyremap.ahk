#NoEnv
#SingleInstance, Force
SendMode, Input
SetBatchLines, -1
#Persistent
OnExit, ExitSub
SetTitleMatchMode, 2 
listofprograms := "" 
SetWorkingDir, %A_ScriptDir%
DetectHiddenWindows, On

Loop Files, projectkeyremap\*
{
    StringReplace, Loopfilename, A_LoopFileName, .%A_LoopFileExt%, , All
    If (A_Index = 1){
        listofprograms = %listofprograms%%Loopfilename%
    }
    Else{
        listofprograms = %listofprograms%|%Loopfilename%
    }
}

;listofprograms = CGL.exe|test.exe|test2.exe
;MsgBox, %listofprograms%
SetTimer, timedcheckiflaunched, 1000

timedcheckiflaunched:
    Loop, parse, listofprograms, |
    {
        ;MsgBox, %A_LoopField%
        
        loopfieldahk = %A_LoopField%.ahk

        IfWinExist, ahk_exe %A_LoopField%
        {
            ;ToolTip, %A_LoopField% nice
            IfWinNotExist %loopfieldahk%
            Run, %loopfieldahk%, projectkeyremap\
        }

        IfWinNotExist, ahk_exe %A_LoopField%
        {
            IfWinExist %loopfieldahk%
            WinClose %loopfieldahk%
        }
    }
Return

done:
Gui,  submit
Gui, destroy
WinClose %programname%.ahk
FileDelete, projectkeyremap\%programname%.ahk
FileAppend, %newhotkeys%, projectkeyremap\%programname%.ahk 
listofprograms := "" 
Loop Files, projectkeyremap\*
{
    StringReplace, Loopfilename, A_LoopFileName, .%A_LoopFileExt%, , All
    If (A_Index = 1){
        listofprograms = %listofprograms%%Loopfilename%
    }
    Else{
        listofprograms = %listofprograms%|%Loopfilename%
    }
}
Run, %loopfieldahk%, projectkeyremap\
Return

F22::
Gui, destroy
WinGet, programname, ProcessName, A
textinnewfile = #NoEnv `n#SingleInstance, Force `n#Persistent`n#If WinActive("ahk_exe %programname%") && GetKeyState("NumLock", "T")
IfNotExist projectkeyremap\%programname%.ahk
{
    FileAppend, %textinnewfile%, projectkeyremap\%programname%.ahk 
}
FileRead, A_programfile, projectkeyremap\%programname%.ahk
Gui, Add, Edit, r9 vnewhotkeys w600, %A_programfile%
Gui, add, button, x60 y140 gDelete, Delete
Gui, add, button, x10 y140 Default gdone,Done
Gui, show,,keyremap of %programname%
Return

ExitSub:
if A_ExitReason not in Logoff,Shutdown
{
    Loop, parse, listofprograms, |
    {
        closeloopfieldahk = %A_LoopField%.ahk
        WinClose %closeloopfieldahk%
    }
}
ExitApp  ; A script with an OnExit subroutine will not terminate unless the subroutine uses ExitApp.
Return
Delete:
Gui, destroy
WinClose %programname%.ahk
FileDelete, projectkeyremap\%programname%.ahk
listofprograms := "" 
Loop Files, projectkeyremap\*
{
    StringReplace, Loopfilename, A_LoopFileName, .%A_LoopFileExt%, , All
    If (A_Index = 1){
        listofprograms = %listofprograms%%Loopfilename%
    }
    Else{
        listofprograms = %listofprograms%|%Loopfilename%
    }
}
Run, %loopfieldahk%, projectkeyremap\
Return