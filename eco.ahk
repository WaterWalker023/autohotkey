#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

SetTimer, sendeco , 300

sendeco:
SendRaw, p!work

Return