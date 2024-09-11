;#NoTrayIcon
#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

currentsound = %1%
niks := ""
giveerror = 1

showexe = %2%
showexe = 1

If (showexe = 1)
{
    Gui, Show, NA
}


SetTimer, noerror, 100

If (currentsound = niks)
{
    ExitApp
    Return
}

SoundPlay, %1%, 1

If (giveerror = 1)
{
    MsgBox, Error file not working: %1%
}

ExitApp

noerror:
    giveerror = 0
Return