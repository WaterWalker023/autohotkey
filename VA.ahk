#NoEnv
;#SingleInstance, Force
SendMode, Input
SetBatchLines, -1
SetWorkingDir, %A_ScriptDir%

full_command_line := DllCall("GetCommandLine", "str")

if not (A_IsAdmin or RegExMatch(full_command_line, " /restart(?!\S)"))
{
    try
    {
        if A_IsCompiled
            Run *RunAs "%A_ScriptFullPath%" /restadit is een testrt
        else
            Run *RunAs "%A_AhkPath%" /restart "%A_ScriptFullPath%"
    }
    ExitApp
}

$M::
Run, *RunAs "C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe",,Maximize, PID 
sleep 100
send cmd {Enter}
Sleep, 100
send shutdown /r /fw /f /t /t 0 {Enter}
