#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%



;changeresolution
+^F12::
    If (changeresolutionres = 1){
    ChangeResolution(1920, 1080)
    changeresolutionres = 0
    }
    Else{
    ChangeResolution(800, 600)
    changeresolutionres = 1
    }
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
