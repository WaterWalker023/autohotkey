#NoEnv 
#SingleInstance, Force 
#Persistent
#If WinActive("ahk_exe Autohotkey.exe") && GetKeyState("NumLock", "T") && robloxmenu = "Show"
    Enter::Gosub, close

    #If WinActive("ahk_exe RobloxPlayerBeta.exe") && GetKeyState("NumLock", "T")
    ^AppsKey::
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