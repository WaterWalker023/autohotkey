#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

totalnumberofmp4 = 0
Loop, Files, C:\Users\tomst\Desktop\AHK\mp4 project\*.mp4, D F R
    {
        totalnumberofmp4 := totalnumberofmp4 + 1
    }

;MsgBox, %totalnumberofmp4%
Loop, Files, D:\SteamLibrary\steamapps\*.mp4, D F R
{
    filetoreplace = %A_LoopFileFullPath%

    Random, randomnumber , 1, %totalnumberofmp4%
    loopnumber = 0
    Loop, Files, C:\Users\tomst\Desktop\AHK\mp4 project\*.mp4, D F R
    {
        loopnumber := loopnumber + 1
        If (loopnumber = randomnumber)
        {
            ;ToolTip, %filetoreplace% to %A_LoopFileFullPath%, 0, 0, 2
            FileDelete, %filetoreplace%
            FileCopy, %A_LoopFileFullPath% ,%filetoreplace% , 1
        }
    }
}

;MsgBox, done
Exit