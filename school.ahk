#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%
#Persistent  ; Prevent the script from exiting automatically.
OnExit("ExitFunc")

$!f4::Run, C:\Users\Tomst\OneDrive - Mediacollege Amsterdam\Bureaublad\ahk\sounds\Rick Astley - Never Gonna Give You Up (Official Music Video).mp4
$!F5::!f4


; MsgBox, OH NO `n`n anyway
ExitFunc(ExitReason, ExitCode)
{
    if ExitReason not in Logoff,Shutdown
    {
        MsgBox, 4, , Are you sure you want to exit?
        IfMsgBox, Yes
            return 1  
    }

}
