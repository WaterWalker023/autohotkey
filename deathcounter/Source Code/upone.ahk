SetWorkingDir %A_ScriptDir%

FileRead, currendnumber, deathcounter.txt

If (currendnumber == "")
{
    currendnumber = 0
}
currendnumber++


FileDelete, deathcounter.txt
FileAppend, %currendnumber%, deathcounter.txt