#SingleInstance, force
DetectHiddenWindows, On
SetTitleMatchMode, 2 

>!r::
Reload
Return

Break::F23
ScrollLock::F22


#\::
Send \
Return

>!c::
ifWinNotExist, 2clipboards.ahk
    Run, C:\Users\Tomst\OneDrive\Bureaublad\ahk\2clipboards.ahk
Return

>!CapsLock::
ifWinNotExist, capslockto.ahk
    Run, C:\Users\Tomst\OneDrive\Bureaublad\ahk\capslockto.ahk
Return

>!w::
ifWinNotExist, wasdtoarrows.ahk
    Run, C:\Users\Tomst\OneDrive\Bureaublad\ahk\wasdtoarrows.ahk
Return

>!a::
ifWinNotExist, autocorrection.ahk
    Run, C:\Users\Tomst\OneDrive\Bureaublad\ahk\autocorrection.ahk
Return

>^e::
ifWinNotExist, Entry Point.ahk
    Run, C:\Users\Tomst\OneDrive\Bureaublad\ahk\Entry Point.ahk
Return

>^s::
ifWinNotExist, starscape.ahk
    Run, C:\Users\Tomst\OneDrive\Bureaublad\ahk\starscape.ahk
Return

Numpad7::
ifWinNotExist, timer.ahk
Run, C:\Users\Tomst\OneDrive\Bureaublad\ahk\timer.ahk
Return

Numpad4::
send {w Down}
Return

Numpad5::
send {LShift Down}
Return
