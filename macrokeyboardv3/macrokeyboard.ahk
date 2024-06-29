#SingleInstance, Force
;#NoTrayIcon
SendMode Input
SetWorkingDir, %A_ScriptDir%
isdubblekey = 0
null := ""
DetectHiddenWindows, On
Run, C:\Users\tomst\Desktop\Programs\luamacros\LuaMacros.exe -r "C:\Users\tomst\Desktop\AHK\macrokeyboardv3\macrokeyboard.lua",,,luamacros

FileRead, forcereloadkey, forcereloadkey.txt

Hotkey Launch_Mail, reload

OnExit("ExitFunc")

secondkeys := ["~NumpadEnter up", "~NumpadHome up", "~NumpadUp up", "~NumpadPgup up","~NumpadLeft up","~NumpadRight up","~NumpadEnd up", "~numpaddown up", "~NumpadPgdn up","~numpadins up","~NumpadDel up", "~RShift up", "~RControl up", "~RAlt up"]
For k, v in secondkeys
{
    Hotkey %V%, setdubblekey
}

Return

setdubblekey:
    isdubblekey = 1
    SetTimer, waitrest, 250
Return

F24::
    FileRead, macro, macrokeyboard.txt
    FileRead, usedkeyboard, thekeyboard.txt
    OutputDebug, %macro%

    If (macro = "numLock")
        SetNumLockState % !GetKeyState("NumLock", "T")
    If (macro = "CapsLock")
        SetCapsLockState % !GetKeyState("CapsLock", "T")

    If (isdubblekey)
    {
        macro := "Second" + macro
        isdubblekey = 0
    }
    typefucntion := ""
    FileReadLine, typefucntion, keyboard/%usedkeyboard%/%macro%.txt, 1
    If (typefucntion = null)
    {
        ToolTip, %macro% on keyboard %usedkeyboard% is not used
        Return
    }
    Gosub, %typefucntion%

    lastkey = %macro%
    lastkeyboard = %usedkeyboard%
Return

waitrest:
    restisdubblekey(isdubblekey)
    SetTimer, waitrest, off
Return

restisdubblekey(ByRef isdubblekey)
{
    isdubblekey = 0
}

ExitFunc(ExitReason, ExitCode)
{
    WinClose ahk_exe LuaMacros.exe
}

send:
senddelay := ""
FileReadLine, senddelay, keyboard/%usedkeyboard%/%macro%.txt, 3
senddelay := varcheck(senddelay)

enteronrlineend := ""
FileReadLine, enteronrlineend, keyboard/%usedkeyboard%/%macro%.txt, 4
enteronrlineend := varcheck(enteronrlineend)

Loop, read, keyboard/%usedkeyboard%/%macro%.txt
{
    If (A_Index < 5)
    {
        Continue
    }
    sendkeys := ""
    sendkeys = %A_LoopReadLine%

    sendkeys := varcheck(sendkeys)
    Send, %sendkeys%
    If (enteronrlineend == 1)
    {
        send {Enter}
    }
    sleep senddelay
}
Return

toggle:
    toggle0 := ""
    toggle1 := ""

    FileReadLine, toggle0, keyboard/%usedkeyboard%/%macro%.txt, 3
    FileReadLine, toggle1, keyboard/%usedkeyboard%/%macro%.txt, 4
    IfNotExist, togglestatus/%usedkeyboard%/%macro%.txt
    {
        FileAppend, 0, togglestatus/%usedkeyboard%/%macro%.txt
    }
    FileReadLine, togglestatus, togglestatus/%usedkeyboard%/%macro%.txt, 1
    If (togglestatus = 1)
    {
        send, %toggle0%
        FileDelete, togglestatus/%usedkeyboard%/%macro%.txt
        FileAppend, 0, togglestatus/%usedkeyboard%/%macro%.txt
    }
    Else
    {
        send, %toggle1%
        FileDelete, togglestatus/%usedkeyboard%/%macro%.txt
        FileAppend, 1, togglestatus/%usedkeyboard%/%macro%.txt
    }
Return

run:
openprogram := ""
workingdir := ""
minmaxhide := ""
FileReadLine, openprogram, keyboard/%usedkeyboard%/%macro%.txt, 3
FileReadLine, workingdir, keyboard/%usedkeyboard%/%macro%.txt, 4
FileReadLine, minmaxhide, keyboard/%usedkeyboard%/%macro%.txt, 5
openprogram := varcheck(openprogram)
minmaxhide := varcheck(minmaxhide)
workingdir := varcheck(workingdir)

If (workingdir = null)
{
    workingdir = C:\Users\%A_UserName%\
}

run, %openprogram%,%workingdir%,%minmaxhide%
Return

reload:
while WinExist("ahk_exe LuaMacros.exe"){
    WinClose ahk_exe LuaMacros.exe
}
Reload
Return

website:
openprogram := ""
FileReadLine, openprogram, keyboard/%usedkeyboard%/%macro%.txt, 3
openprogram := varcheck(openprogram)

run, %openprogram%
Return

tooltip:
showtooltip := ""
FileReadLine, showtooltip, keyboard/%usedkeyboard%/%macro%.txt, 3
showtooltip := varcheck(showtooltip)
ToolTip, %showtooltip%
Return

Shutdown:
shutdowncode := ""
FileReadLine, shutdowncode, keyboard/%usedkeyboard%/%macro%.txt, 3
FileReadLine, confirmtooltip, keyboard/%usedkeyboard%/%macro%.txt, 4
shutdowncode := varcheck(shutdowncode)
If (lastkey = macro)
{
    If (lastkeyboard = usedkeyboard)
    {
        Shutdown, %shutdowncode%
    }
}
ToolTip, %confirmtooltip%
Return

toggleapp:
    openapp := ""
    theapptorun := ""
    FileReadLine, openapp, keyboard/%usedkeyboard%/%macro%.txt, 3
    FileReadLine, theapptorun, keyboard/%usedkeyboard%/%macro%.txt, 4
    openapp := varcheck(openapp)
    theapptorun := varcheck(theapptorun)

    IfWinNotExist, %openapp%
    {
        Run, %theapptorun%
    }

    IfWinExist, %openapp%
    {
        WinClose %openapp%
    }
Return

runappontaskbar:
    appname := ""
    sendkeyifactive := ""
    nummerofapptorun := ""

    FileReadLine, appname, keyboard/%usedkeyboard%/%macro%.txt, 3
    FileReadLine, sendkeyifactive, keyboard/%usedkeyboard%/%macro%.txt, 4
    FileReadLine, nummerofapptorun, keyboard/%usedkeyboard%/%macro%.txt, 5

    appname := varcheck(appname)
    sendkeyifactive := varcheck(sendkeyifactive)
    nummerofapptorun := varcheck(nummerofapptorun)

    If (sendkeyifactive != null)
    {
        IfWinActive, ahk_exe %appname%.exe,
        {
            send %sendkeyifactive%
        }
    }
    IfWinNotActive, ahk_exe %appname%.exe,
    {
        send #%nummerofapptorun%
    }
Return

togglesend:

Return

checkluamacros:
    IfWinNotExist, ahk_pid %luamacros%
        ExitApp
Return


varcheck(string)
{
    WinGet, openprogramworking, ProcessPath , % "ahk_id" winActive("A")
    SplitPath, openprogramworking,openprogram, openprogramdir,, openprogramname, openprogramdrive

    FileRead, macro, macrokeyboard.txt
    FileRead, usedkeyboard, thekeyboard.txt

    StringtoReplace := "%Clipboard%"
    StringReplacewith = %Clipboard%
    StringReplace, string, string, %StringtoReplace% , %StringReplacewith%, All

    StringtoReplace := "%Open Program%"
    StringReplacewith = %openprogram%
    StringReplace, string, string, %StringtoReplace% , %StringReplacewith%, All

    StringtoReplace := "%Open Program Dir%"
    StringReplacewith = %openprogramdir%
    StringReplace, string, string, %StringtoReplace% , %StringReplacewith%, All

    StringtoReplace := "%Open Program Name%"
    StringReplacewith = %openprogramname%
    StringReplace, string, string, %StringtoReplace% , %StringReplacewith%, All

    StringtoReplace := "%Open Program Drive%"
    StringReplacewith = %openprogramdrive%
    StringReplace, string, string, %StringtoReplace% , %StringReplacewith%, All

    ;time
    If (True)
    {

        StringtoReplace := "%YYYY%"
        StringReplacewith = %A_YYYY%
        StringReplace, string, string, %StringtoReplace% , %StringReplacewith%, All

        StringtoReplace := "%MM%"
        StringReplacewith = %A_MM%
        StringReplace, string, string, %StringtoReplace% , %StringReplacewith%, All

        StringtoReplace := "%DD%"
        StringReplacewith = %A_DD%
        StringReplace, string, string, %StringtoReplace% , %StringReplacewith%, All

        StringtoReplace := "%MMMM%"
        StringReplacewith = %A_MMMM%
        StringReplace, string, string, %StringtoReplace% , %StringReplacewith%, All

        StringtoReplace := "%MMM%"
        StringReplacewith = %A_MMM%
        StringReplace, string, string, %StringtoReplace% , %StringReplacewith%, All

        StringtoReplace := "%DDDD%"
        StringReplacewith = %A_DDDD%
        StringReplace, string, string, %StringtoReplace% , %StringReplacewith%, All

        StringtoReplace := "%DDD%"
        StringReplacewith = %A_DDD%
        StringReplace, string, string, %StringtoReplace% , %StringReplacewith%, All

        StringtoReplace := "%WDay%"
        StringReplacewith = %A_WDay%
        StringReplace, string, string, %StringtoReplace% , %StringReplacewith%, All

        StringtoReplace := "%YDay%"
        StringReplacewith = %A_YDay%
        StringReplace, string, string, %StringtoReplace% , %StringReplacewith%, All

        StringtoReplace := "%YWeek%"
        StringReplacewith = %A_YWeek%
        StringReplace, string, string, %StringtoReplace% , %StringReplacewith%, All

        StringtoReplace := "%Hour%"
        StringReplacewith = %A_Hour%
        StringReplace, string, string, %StringtoReplace% , %StringReplacewith%, All

        StringtoReplace := "%Min%"
        StringReplacewith = %A_Min%
        StringReplace, string, string, %StringtoReplace% , %StringReplacewith%, All

        StringtoReplace := "%Sec%"
        StringReplacewith = %A_Sec%
        StringReplace, string, string, %StringtoReplace% , %StringReplacewith%, All

        StringtoReplace := "%MSec%"
        StringReplacewith = %A_MSec%
        StringReplace, string, string, %StringtoReplace% , %StringReplacewith%, All

        StringtoReplace := "%Now%"
        StringReplacewith = %A_Now%
        StringReplace, string, string, %StringtoReplace% , %StringReplacewith%, All

        StringtoReplace := "%NowUTC%"
        StringReplacewith = %A_NowUTC%
        StringReplace, string, string, %StringtoReplace% , %StringReplacewith%, All

        StringtoReplace := "%TickCount%"
        StringReplacewith = %A_TickCount%
        StringReplace, string, string, %StringtoReplace% , %StringReplacewith%, All
    }

    StringtoReplace := "%Hotkey%"
    StringReplacewith = %macro%
    StringReplace, string, string, %StringtoReplace% , %StringReplacewith%, All

    StringtoReplace := "%Keyboard Name%"
    StringReplacewith = %usedkeyboard%
    StringReplace, string, string, %StringtoReplace% , %StringReplacewith%, All

    StringtoReplace := "%Temp Dir%"
    StringReplacewith = %A_Temp%
    StringReplace, string, string, %StringtoReplace% , %StringReplacewith%, All

    StringtoReplace := "%Computer Name%"
    StringReplacewith = %A_ComputerName%
    StringReplace, string, string, %StringtoReplace% , %StringReplacewith%, All

    StringtoReplace := "%ProgramFiles%"
    StringReplacewith = %A_ProgramFiles%
    StringReplace, string, string, %StringtoReplace% , %StringReplacewith%, All

    StringtoReplace := "%Desktop%"
    StringReplacewith = %A_Desktop%
    StringReplace, string, string, %StringtoReplace% , %StringReplacewith%, All

    StringtoReplace := "%StartMenu%"
    StringReplacewith = %A_StartMenu%
    StringReplace, string, string, %StringtoReplace% , %StringReplacewith%, All

    StringtoReplace := "%StartMenu Common%"
    StringReplacewith = %A_StartMenuCommon%
    StringReplace, string, string, %StringtoReplace% , %StringReplacewith%, All

    StringtoReplace := "%My Documents%"
    StringReplacewith = %A_MyDocuments%
    StringReplace, string, string, %StringtoReplace% , %StringReplacewith%, All

    StringtoReplace := "%True%"
    StringReplacewith = %True%
    StringReplace, string, string, %StringtoReplace% , %StringReplacewith%, All

    StringtoReplace := "%False%"
    StringReplacewith = %False%
    StringReplace, string, string, %StringtoReplace% , %StringReplacewith%, All

    Return string
}