#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%
SetTimer, copy, 1000
Return
copy:
Loop, Files, D:\stupid launchers\riotgames\Riot Games\VALORANT\live\ShooterGame\Content\Movies\Menu\*.mp4
{
    MsgBox, %A_LoopFileName%
    FileDelete, D:\stupid launchers\riotgames\Riot Games\VALORANT\live\ShooterGame\Content\Movies\Menu\%A_LoopFileName%.mp4
    FileCopy, D:\stupid launchers\riotgames\diggydiggyhole.mp4 ,D:\stupid launchers\riotgames\Riot Games\VALORANT\live\ShooterGame\Content\Movies\Menu\%A_LoopFileName% , 1
}
Return