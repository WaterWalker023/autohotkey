#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%
#Persistent

FileReadLine, uponekey, defaultkeys.txt, 2
FileReadLine, resetkey, defaultkeys.txt, 4

MsgBox, %file%


Hotkey, %uponekey% , Upone
Hotkey, %resetkey% , Reset

Return

Upone:
FileRead, currendnumber, deathcounter.txt

If (currendnumber == "")
{
    currendnumber = 0
}
currendnumber++


FileDelete, deathcounter.txt
FileAppend, %currendnumber%, deathcounter.txt

Return

Reset:
FileDelete, deathcounter.txt
FileAppend, , deathcounter.txt
Return