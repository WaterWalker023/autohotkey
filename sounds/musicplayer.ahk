#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%
randomcounter = 0
commandparmiter1 = %1%*
null := ""
DetectHiddenWindows, On
OnExit("ExitFunc")
#Persistent

;MsgBox, %commandparmiter1% + 1,
If (commandparmiter1 == "*")
{
    FileReadLine, Default, Default.txt, 1
    commandparmiter1 = %Default%*
}

While, True
    {
    loop Files, %commandparmiter1%
    ;Loop Files, C:\Users\tomst\Desktop\AHK\sounds\playlist\*
    {
        If (A_LoopFileName != "desktop.ini")
        {
            Random, randomnumber , 1, 60
            randomcounter++
            ToolTip,(%randomcounter%), -1000000, 100000 ,
            If (randomnumber = 1)
            {
                currentnummer := StrReplace( A_LoopFileName, A_LoopFileExt, "")
                currentnummer := StrReplace( currentnummer, ".", "")
                currentnummer := StrReplace( currentnummer, "-", " ")
                ToolTip, %currentnummer% (%randomcounter%), -1000000, 100000 ,
                FileDelete, currentlyplaying.txt
                FileAppend, %currentnummer%, currentlyplaying.txt
                RunWait, Autohotkey.exe C:\Users\tomst\Desktop\AHK\sounds\bettersoundplay.ahk "%A_LoopFileFullPath%" 0,,Hide`

                randomcounter = 0
            }
        }
    }
}
MsgBox, how?

ExitFunc(ExitReason, ExitCode)
{
    FileDelete, currentlyplaying.txt
    FileAppend, , currentlyplaying.txt
    Run, C:\Users\tomst\Desktop\AHK\sounds\bettersoundplay.ahk
}

/*
#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%
randomcounter = 0
nummers := []

    While, True
    {
        if (nummers.Count() = 0)
            {
                Loop Files, C:\Users\tomst\Desktop\AHK\sounds\playlist\*
                {
                    nummers.Push(A_LoopFileFullPath)
                }
            }
            ArrayCount := 0
            Loop, Read, %A_WinDir%\system.ini
            {
                ArrayCount += 1
                ; Array%ArrayCount% := A_LoopReadLine
                Array[ArrayCount] := A_LoopReadLine
            }
        Loop Files, C:\Users\tomst\Desktop\AHK\sounds\playlist\*
        {
            Random, randomnumber , 1, nummers.Count
            ToolTip, %randomnumber%, 0, 100000 ,

            currentnummer := StrReplace( A_LoopFileName, A_LoopFileExt, "")
            currentnummer := StrReplace( currentnummer, ".", "")

            ;ToolTip, %currentnummer%, 0, 100000 ,

            SoundPlay, nummers[randomnumber], 1
        }
    }

    */