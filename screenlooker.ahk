#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%
#Persistent
SetTimer, ImageSearch, 100
return
nineen = -1


ImageSearch:
ImageSearch, FoundX, FoundY, 0, 0, 1920, 1080, C:\Users\Tomst\OneDrive - Mediacollege Amsterdam\Bureaublad\ahk\fotos\test.png
if (FoundX)
{
    ToolTip, X %FoundX% Y %FoundY%
}

    
Return

