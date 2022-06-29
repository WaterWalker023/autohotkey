#SingleInstance off
InputBox, timer,timer,time in sec, Show, width, Height, X, Y, Locale, Timeout, niks
If (%timer% = niks){
    MsgBox, %timer%
    exitapp
}
Else{
over = %timer%
Loop, %timer%{
    sleep 1000
    over --
}
SoundPlay, C:\Users\Tomst\OneDrive\Bureaublad\ahk\imperial_march.mp3
MsgBox, %timer%s are over
SoundPlay, Nonexistent.mp3
ExitApp
}

>^Numpad7::MsgBox, %over%
