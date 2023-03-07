#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%
DetectHiddenWindows, On
Run, C:\Users\tomst\Desktop\Programs\luamacros\LuaMacros.exe -r "C:\Users\tomst\Desktop\AHK\macrokeyboardv3\macrokeyboard.lua",,,luamacros
OnExit("ExitFunc")
notopen = 1
while (notopen = 1)
{
    IfWinActive, ahk_exe LuaMacros.exe
    {
        notopen = 0
        send #{down}
    }
}


F24::
FileRead, macro, macrokeyboard.txt
OutputDebug, %macro%
if macro = r 
{
    while WinExist("ahk_exe LuaMacros.exe"){
        WinClose ahk_exe LuaMacros.exe
    }
    Reload
} 
else if macro = Space
{
    TrayTip, macrokeyboard, macrokeyboard is running, 1, 16
}
else if macro = alt ;remove tooltips
{
    ToolTip,
}
else if macro = l ;always on top
{
    send #^t 
}
else if macro = k ;color picker
{
    send #+c
}
else if macro = m ;highlight mouse clicks
{
    send #+h
}
else if macro = n ;Text Extractor 
{
    send #+t
}
else if macro = period ; toggle mic
{
    send +#a
}
else if macro = j ; highlight mouse posison
{ 
    send #!p
}
else if macro = delete ; play unity
{ 
    send ^p
}
else if macro = end ; pause unity
{ 
    send ^!p
}
else if macro = pagedown ; build unity
{
    send ^b
}
else if macro = up
{ 
    ;SoundSet, 0,,, 12
    SoundSet, 100,,, 12
    ToolTip, 50
}
else if macro = Down
{ 
    SoundSet, 0,,, 12
    ToolTip, mute
}
else if macro = b ; type tomsteijger@hotmail.com
{ 
    send tomsteijger@hotmail.com
}
else if macro = c ; dupe item
{
    send ^c
    send, {Right}
    send ^v
}
else if macro = y ; 
{
    run C:\Users\tomst\AppData\Local\Programs\Microsoft VS Code\Code.exe C:\Users\tomst\Desktop\AHK\macrokeyboardv3\macrokeyboard.ahk
}
else if macro = o ; make note
{
    run C:\Users\tomst\Desktop\notes
}
Else if macro = d ; open powershell
{
    WinGet, powershellopenprogramworking, ProcessPath , % "ahk_id" winActive("A")
    SplitPath, powershellopenprogramworking,, powershellopenprogramworkingdir
    run C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe, %powershellopenprogramworkingdir%
}
Else if macro = f ; open firefox
{
    IfWinExist, ahk_exe firefox.exe
    {
        WinActivate ahk_exe firefox.exe
    }
    else
    {
        run C:\Program Files\Mozilla Firefox\firefox.exe
    }
}
else 
{
    ToolTip, %macro% is not used
}
Return
Launch_Mail::
while WinExist("ahk_exe LuaMacros.exe"){
    WinClose ahk_exe LuaMacros.exe
}
Reload
Return
;ToolTip, %macro%
ExitFunc(ExitReason, ExitCode)
{
    WinClose ahk_exe LuaMacros.exe
}

/*
space: test if keyboard is running
l: always on top
period: mute mic



*/