#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%
ToolTip, started lua
Sleep, 1000
Loop
{
    ToolTip,
    sleep 10000
}

/*


*/

F20 & esc::
ToolTip, %A_ThisHotkey%
Return

F20 & F1::
SetWorkingDir C:\Users\
run C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe
SetWorkingDir, %A_ScriptDir%
Return

F20 & F2::
run C:\Program Files\AutoHotkey\AutoHotkey.exe
Return

F20 & F3::
run C:\Users\Tomst\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\System Tools\Control Panel
Return

F20 & F4::
run C:\WINDOWS\system32\Taskmgr.exe
Return

F20 & F5::
run C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Accessories\System Tools\Character Map
Return

F20 & F6::
Run, C:\Program Files\AutoHotkey\WindowSpy.ahk
Return

F20 & F7::
run C:\Users\Tomst\OneDrive - Mediacollege Amsterdam\Bureaublad\programma's\Microsoft Teams
Return

F20 & F8::
run %windir%\system32\control.exe /name Microsoft.AdministrativeTools
Return

F20 & F9::
run C:\Program Files\Mozilla Firefox\firefox.exe
Return

F20 & F10::
send #d
Return

F20 & F11::
Shutdown, 0
Return

F20 & F12::
run C:\Windows\System32\calc.exe
Return

F20 & `::
ToolTip, %A_ThisHotkey%
Return

F20 & '::
ToolTip, %A_ThisHotkey%
Return

F20 & Enter::
ToolTip, %A_ThisHotkey%
Return

F20 & 1::
ToolTip, %A_ThisHotkey%
Return

F20 & 2::
ToolTip, %A_ThisHotkey%
Return

F20 & 3::
ToolTip, %A_ThisHotkey%
Return

F20 & 4::
ToolTip, %A_ThisHotkey%
Return

F20 & 5::
ToolTip, %A_ThisHotkey%
Return

F20 & 6::
ToolTip, %A_ThisHotkey%
Return

F20 & 7::
ToolTip, %A_ThisHotkey%
Return

F20 & 8::
ToolTip, %A_ThisHotkey%
Return

F20 & 9::
ToolTip, %A_ThisHotkey%
Return

F20 & 0::
ToolTip, %A_ThisHotkey%
Return

F20 & -::
ToolTip, %A_ThisHotkey%
Return

F20 & =::
ToolTip, %A_ThisHotkey%
Return

F20 & BackSpace::
ToolTip, %A_ThisHotkey%
Return

F20 & Ins::
ToolTip, %A_ThisHotkey%
Return

F20 & Home::
ToolTip, %A_ThisHotkey%
Return

F20 & PgUp::
ToolTip, %A_ThisHotkey%
Return

F20 & NumpadDiv::
ToolTip, %A_ThisHotkey%
Return

F20 & NumpadMult::
ToolTip, %A_ThisHotkey%
Return

F20 & NumpadSub::
ToolTip, %A_ThisHotkey%
Return

F20 & Tab::
ToolTip, %A_ThisHotkey%
Return

F20 & [::
ToolTip, %A_ThisHotkey%
Return

F20 & ]::
ToolTip, %A_ThisHotkey%
Return

F20 & \::
ToolTip, %A_ThisHotkey%
Return

F20 & Del::
ToolTip, %A_ThisHotkey%
Return

F20 & End::
ToolTip, %A_ThisHotkey%
Return

F20 & PgDn::
ToolTip, %A_ThisHotkey%
Return

F20 & Numpad7::
ToolTip, %A_ThisHotkey%
Return

F20 & Numpad8::
ToolTip, %A_ThisHotkey%
Return

F20 & Numpad9::
ToolTip, %A_ThisHotkey%
Return

F20 & NumpadAdd::
ToolTip, %A_ThisHotkey%
Return

F20 & NumpadHome::
ToolTip, %A_ThisHotkey%
Return

F20 & NumpadUp::
ToolTip, %A_ThisHotkey%
Return

F20 & NumpadPgup::
ToolTip, %A_ThisHotkey%
Return

F20 & Numpad4::
ToolTip, %A_ThisHotkey%
Return

F20 & Numpad5::
ToolTip, %A_ThisHotkey%
Return

F20 & Numpad6::
ToolTip, %A_ThisHotkey%
Return

F20 & NumpadLeft::
ToolTip, %A_ThisHotkey%
Return

F20 & NumpadClear::
ToolTip, %A_ThisHotkey%
Return

F20 & NumpadRight::
ToolTip, %A_ThisHotkey%
Return

F20 & ,::
ToolTip, %A_ThisHotkey%
Return

F20 & .::
ToolTip, %A_ThisHotkey%
Return

NumLock::
SetNumLockState % !GetKeyState("NumLock", "T")
Return

F20 & /::
ToolTip, %A_ThisHotkey%
Return

F20 & Up::
ToolTip, %A_ThisHotkey%
Return

F20 & Numpad1::
Run, C:\Users\Tomst\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Steam\Steam
Return

F20 & Numpad2::
ToolTip, %A_ThisHotkey%
Return

F20 & Numpad3::
ToolTip, %A_ThisHotkey%
Return

;F20 & NumpadEnter::
;werkt niet
;Return

F20 & NumpadEnd::
ToolTip, %A_ThisHotkey%
Return

F20 & NumpadDown::
ToolTip, %A_ThisHotkey%
Return

F20 & NumpadPgdn::
ToolTip, %A_ThisHotkey%
Return

F20 & Space::
send {Media_Play_Pause}
Return

AppsKey::
Run, C:\Users\Tomst\OneDrive - Mediacollege Amsterdam\Bureaublad\ahk\Lua\macrokeys.lua
Return

F20 & Right::
ToolTip, %A_ThisHotkey%
Return

F20 & Down::
ToolTip, %A_ThisHotkey%
Return

F20 & Left::
ToolTip, %A_ThisHotkey%
Return

F20 & Numpad0::
Run, C:\Users\Tomst\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Discord Inc\Discord
Return

F20 & NumpadDot::
ToolTip, %A_ThisHotkey%
Return

F20 & NumpadIns::
ToolTip, %A_ThisHotkey%
Return

F20 & NumpadDel::
ToolTip, %A_ThisHotkey%
Return

F20 & a::
ToolTip, %A_ThisHotkey%
Return

F20 & b::
ToolTip, %A_ThisHotkey%
Return

F20 & c::
ToolTip, %A_ThisHotkey%
Return

F20 & d::
ToolTip, %A_ThisHotkey%
Return

F20 & e::
ToolTip, %A_ThisHotkey%
Return

F20 & f::
ToolTip, %A_ThisHotkey%
Return

F20 & g::
ToolTip, %A_ThisHotkey%
Return

F20 & h::
ToolTip, %A_ThisHotkey%
Return

F20 & i::
ToolTip, %A_ThisHotkey%
Return

F20 & j::
ToolTip, %A_ThisHotkey%
Return

F20 & k::
ToolTip, %A_ThisHotkey%
Return

F20 & l::
ToolTip, %A_ThisHotkey%
Return

F20 & m::
ToolTip, %A_ThisHotkey%
Return

F20 & n::
ToolTip, %A_ThisHotkey%
Return

F20 & o::
ToolTip, %A_ThisHotkey%
Return

F20 & p::
ToolTip, %A_ThisHotkey%
Return

F20 & q::
ToolTip, %A_ThisHotkey%
Return

F20 & r::
Reload
Return

F20 & s::
ToolTip, %A_ThisHotkey%
Return

F20 & t::
ToolTip, %A_ThisHotkey%
Return

F20 & u::
ToolTip, %A_ThisHotkey%
Return

F20 & v::
ToolTip, %A_ThisHotkey%
Return

F20 & w::
ToolTip, %A_ThisHotkey%
Return

F20 & x::
ToolTip, %A_ThisHotkey%
Return

F20 & y::
ToolTip, %A_ThisHotkey%
Return

F20 & z::
ToolTip, %A_ThisHotkey%
Return
