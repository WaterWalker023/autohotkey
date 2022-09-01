#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%
SetTitleMatchMode, 2
DetectHiddenWindows, On

AppsKey::
InputBox, terminalInputBox, , Tom's Terminal,
IfWinNotExist, ahk_exe powershell.exe,
    Run, C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe,,Minimize, PID 
WinWait, ahk_pid %PID%  ; Wait for it to appear.
ControlSendraw,, %terminalInputBox%, ahk_exe powershell.exe
ControlSend,, | clip{Enter} , ahk_exe powershell.exe
Clipboard := "" 
sleep 100
;ControlSend,,echo error | clip {Enter} Exit {enter}, ahk_exe powershell.exe
ClipWait,
ToolTip, %clipboard%, 0, 0,

ExitFunc(ExitReason, ExitCode)
{
    if ExitReason not in Logoff,Shutdown
    {
        ControlSend,,Exit {enter}, ahk_exe powershell.exe
        return
    }
}