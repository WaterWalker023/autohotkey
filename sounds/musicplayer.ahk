#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%
randomcounter = 0
commandparmiter1 = %1%*
commandparmiter2 = %2%*
menuisopen = 0
secondenter = 0
null := ""
DetectHiddenWindows, On
OnExit("ExitFunc")
#Persistent
AutoTrim, Off

If (commandparmiter1 == "*")
{
    FileReadLine, Default, Default.txt, 1
    commandparmiter1 = %Default%*
}
If (commandparmiter2 == "*")
{
    FileReadLine, Default2, Default.txt, 2
    commandparmiter2 = %Default2%*
}

playplaylist(commandparmiter1, 0)

tooltipupdate:
    listofnummers = %currendstring%
    groupmessage = 0
    loop Files, %commandparmiter1%
    {
        If (A_LoopFileName != "desktop.ini")
        {
            If (InStr(A_LoopFileName, currendstring))
            {
                If (groupmessage = 0)
                {
                    listofnummers = %listofnummers% `n`nPlaylist
                    groupmessage = 1
                }
                currentnummer := StrReplace( A_LoopFileName, A_LoopFileExt, "")
                currentnummer := StrReplace( currentnummer, ".", "")
                listofnummers = %listofnummers% `n%currentnummer%
            }
        }

    }
    
    groupmessage = 0
    loop Files, %commandparmiter2%
    {
        If (A_LoopFileName != "desktop.ini")
        {
            If (InStr(A_LoopFileName, currendstring))
            {
                If (groupmessage = 0)
                {
                    listofnummers = %listofnummers% `n`nNot in playlist
                    groupmessage = 1
                }
                currentnummer := StrReplace( A_LoopFileName, A_LoopFileExt, "")
                currentnummer := StrReplace( currentnummer, ".", "")
                listofnummers = %listofnummers% `n%currentnummer%
            }
        }

    }
    ToolTip,%listofnummers%, -1000000, -100000 ,1
return

findandplaymusic(musicinput, commandparmiter1, commandparmiter2)
{
    loop Files, %commandparmiter1%
    {
        If (A_LoopFileName != "desktop.ini")
        {
            isnummer := InStr(A_LoopFileName, musicinput)
            If (isnummer != 0)
            {
                playmusic(A_LoopFileFullPath)
                Return
            }
        }
    }
    loop Files, %commandparmiter2%
    {
        If (A_LoopFileName != "desktop.ini")
        {
            isnummer := InStr(A_LoopFileName, musicinput)
            If (isnummer != 0)
            {
                playmusic(A_LoopFileFullPath)
                Return
            }
        }
    }
}

playmusic(numbertoplay)
{
    loop Files, %numbertoplay%
    {
        currentnummer := StrReplace( A_LoopFileName, A_LoopFileExt, "")
        currentnummer := StrReplace( currentnummer, ".", "")
        currentnummer := StrReplace( currentnummer, "-", " ")
    }

    ToolTip, %currentnummer%, -1000000, 100000 ,2
    FileDelete, currentlyplaying.txt
    FileAppend, %currentnummer%, currentlyplaying.txt
    RunWait, Autohotkey.exe C:\Users\tomst\Desktop\AHK\sounds\bettersoundplay.ahk "%numbertoplay%" 0,,Hide`
}

playplaylist(commandparmiter1, randomcounter)
{
    loop Files, %commandparmiter1%
    {
        If (A_LoopFileName != "desktop.ini")
        {
            Random, randomnumber , 1, 60
            randomcounter++
            If (randomnumber = 1)
            {
                playmusic(A_LoopFileFullPath)
                randomcounter = 0
            }
        }
    }
    playplaylist(commandparmiter1, randomcounter)
}

MsgBox, how?
ExitApp

ExitFunc(ExitReason, ExitCode)
{
    FileDelete, currentlyplaying.txt
    FileAppend, , currentlyplaying.txt
    Run, C:\Users\tomst\Desktop\AHK\sounds\bettersoundplay.ahk
}

mulittimer:
    SetTimer, mulittimer , Delete
    findandplaymusic(currendstring, commandparmiter1, commandparmiter2)
Return

#If, menuisopen = 0
    f12::
        currendstring := ""
        SetTimer, tooltipupdate, 100
        menuisopen = 1
    Return

#If, menuisopen = 1
    a::
    b::
    c::
    d::
    e::
    f::
    g::
    h::
    i::
    j::
    k::
    l::
    m::
    n::
    o::
    p::
    q::
    r::
    s::
    t::
    u::
    v::
    w::
    x::
    y::
    z::
    -::
    1::
    2::
    3::
    4::
    5::
    6::
    7::
    8::
    9::
    0::
        currendstring = %currendstring%%A_ThisHotkey%
    Return

    space::
        currendstring = %currendstring%%A_Space%
    Return

    ~LButton::
    ~MButton::
    ~RButton::
    f12::
    Esc::
        menuisopen = 0
        SetTimer, tooltipupdate , Off
        tooltip ,,,1
        currendstring := ""
    Return

    BackSpace::
        currendstring := SubStr(currendstring,1, StrLen(currendstring) - 1)
    Return

    Enter::
        menuisopen = 0
        SetTimer, tooltipupdate , Off
        tooltip ,,,1
        SetTimer, mulittimer, 100
    Return

    /*
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
        */