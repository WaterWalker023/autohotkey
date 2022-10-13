#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

;scipt start up
    send #g
    sleep 100
    send {Esc}
    MsgBox, 4, , turn on panicshutdown? `nShift + Win + Delete
    IfMsgBox, Yes
    {
        Run, C:\Users\Tomst\OneDrive - Mediacollege Amsterdam\Bureaublad\ahk\Shutdown.ahk
    }
Return

;Always

;changeresolution
    +^!F12::
    If (changeresolutionres = 1){
    ChangeResolution(1920, 1200)
    changeresolutionres = 0
    }
    Else{
    ChangeResolution(800, 600)
    changeresolutionres = 1
    }
    Return
    +^F12::
    If (changeresolutionres = 1){
    ChangeResolution(1920, 1080)
    changeresolutionres = 0
    }
    Else{
    ChangeResolution(800, 600)
    changeresolutionres = 1
    }
    Return
    ChangeResolution(Screen_Width := 3240, Screen_Height := 2160, Color_Depth := 32)
    {
        VarSetCapacity(Device_Mode,156,0)
        NumPut(156,Device_Mode,36) 
        DllCall( "EnumDisplaySettingsA", UInt,0, UInt,-1, UInt,&Device_Mode )
        NumPut(0x5c0000,Device_Mode,40) 
        NumPut(Color_Depth,Device_Mode,104)
        NumPut(Screen_Width,Device_Mode,108)
        NumPut(Screen_Height,Device_Mode,112)
        Return DllCall( "ChangeDisplaySettingsA", UInt,&Device_Mode, UInt,0 )
    }
Return

;school
    $!f4::Run, C:\Users\Tomst\OneDrive - Mediacollege Amsterdam\Bureaublad\ahk\sounds\Rick Astley - Never Gonna Give You Up (Official Music Video).mp4
    $!F5::!f4
Return

;normal hotkeys
    >^n::
    SetNumLockState % !GetKeyState("NumLock", "T") 
    if GetKeyState("NumLock", "T")
    {
        ToolTip, numlock aan
        Sleep, 1000
        tooltip
    }
    Else
    {
        ToolTip, numlock uit
        Sleep, 1000
        tooltip
    }
    ::updatenuber::
    Send, %A_YYYY%%A_MM%%A_DD%%A_Hour%%A_min%%A_Sec%
    Return
Return

;program specific

;roblox
    #If WinActive("ahk_exe Autohotkey.exe") && GetKeyState("NumLock", "T") && robloxmenu = "Show"
    Enter::Gosub, close

    #If WinActive("ahk_exe RobloxPlayerBeta.exe") && GetKeyState("NumLock", "T")
    AppsKey::
    robloxmenu = Show
    Gui, Add, ListBox, r5 vrobloxgame, entry point|Jailbreak|Murder Mystery 2|Starscape|Arsenal
    Gui, add, button, gclose, Done 
    Gui, Show
    Return
    F7::send {RControl down}+{F7} {RControl up}

    close:
    robloxmenu = Destroy
    Gui,  submit
    Gui, destroy
    ToolTip, %robloxgame%
    Sleep, 1500
    ToolTip, 
    Return

    #If WinActive("ahk_exe RobloxPlayerBeta.exe") && GetKeyState("NumLock", "T") && robloxgame = "entry point"
    tab::i
    CapsLock::b
    RCtrl::Tab
    F18::1
    F19::v
    LAlt::4
    MButton::m
    $F7::^+F7
    t::h
    y::j
    ~`::Send, 67

    #If WinActive("ahk_exe RobloxPlayerBeta.exe") && GetKeyState("NumLock", "T") && robloxgame = "Jailbreak"
    LControl::c
    CapsLock::BackSpace
    RCtrl::Tab
    LAlt::4

    #If WinActive("ahk_exe RobloxPlayerBeta.exe") && GetKeyState("NumLock", "T") && robloxgame = "Murder Mystery 2"
    MButton::
    m::
    SetTimer, MurderMysterytimer, 100
    If (sit = 1){
    SetTimer, MurderMysterytimer, Off
    sit = 0
    Return
    }
    Else{
    sit = 1
    SetTimer, MurderMysterytimer, on
    }
    Return

    MurderMysterytimer:
    Send, 2
    sleep 100
    send 3
    Return

    f18::1
    f19::1

    #If WinActive("ahk_exe RobloxPlayerBeta.exe") && GetKeyState("NumLock", "T") && robloxgame = "Starscape"
    Tab::i
    c::m
    z::n
    #If WinActive("ahk_exe RobloxPlayerBeta.exe") && GetKeyState("NumLock", "T") && robloxgame = "Arsenal"
    F19::q
    F18::q
Return

;project64
    #If WinActive("ahk_exe Project64.exe") && GetKeyState("NumLock", "T")
    Insert::
    keyslist := ["r", "f", "u", "o", "w", "s", "a", "d", "i", "k", "j", "l", "Shift", "Space", "enter", "Alt", "q", "e"]
    for n, key in keyslist
    {
    Send, {%key% Down}
    sleep 100
    Send, {%key% up}
    sleep 100
    }
Return

;Visual Studio
    #IfWinActive ahk_exe devenv.exe
    ::!!!::
    Clipboard = using System;`nusing System.Collections.Generic;`nusing System.IO;`n`nnamespace Files`n{`n`tinternal class Program`n`t{`n`t`tstatic void Main(string[] args)`n`t`t{`n`n`t`t}`n`t}`n}
    Send, ^v
    Return
    ::[SF]::
    Send, [SerializeField]
    return
Return

;ExitFunc
    ExitFunc(ExitReason, ExitCode)
    {
        if ExitReason not in Logoff,Shutdown
        {
            If changeresolutionres = 0
            ChangeResolution(1920, 1080)
            return
        }
    }
