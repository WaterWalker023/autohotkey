#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%
SetTitleMatchMode, 2
DetectHiddenWindows, On
OnExit("ExitFunc")
Run, C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe,,Show, PID 
SetKeyDelay 20

AppsKey::
InputBox, terminalInputBox, , Tom's Terminal,
Process, Exist, %PID%
If (!ErrorLevel)
    Run, C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe,,Show, PID 
WinWait, ahk_pid %PID%
ControlSendRaw,,%terminalInputBox%, ahk_exe powershell.exe
ControlSend,, +{\} clip{Enter} , ahk_exe powershell.exe
Clipboard := ""
ControlSend,,Start-Sleep -Milliseconds 2000 {Enter}echo error +{\} clip {Enter}, ahk_exe powershell.exe
ClipWait,
tooltip, %clipboard%, 0, 0,
Return

ExitFunc(ExitReason, ExitCode)
{
    if ExitReason not in Logoff,Shutdown
    {
        ControlSend,,Exit {enter}, ahk_exe powershell.exe
        return
    }
}

