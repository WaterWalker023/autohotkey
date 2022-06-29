#SingleInstance, Force
SendMode Input
SetWorkingDir C:\Users\

send #g
sleep 100
send #g

Loop{
    sleep 1000
    IfWinExist, ahk_exe Project64.exe
    {
        IfWinNotExist project64.ahk
            Run, C:\Users\Tomst\OneDrive - Mediacollege Amsterdam\Bureaublad\ahk\project64.ahk
    }
    
    IfWinNotExist, ahk_exe Project64.exe
    {
        IfWinExist project64.ahk
            WinClose project64.ahk
    }
}
Return
::starttypen::
IfWinNotExist autocorrection.ahk
    Run, C:\Users\Tomst\OneDrive - Mediacollege Amsterdam\Bureaublad\ahk\autocorrection.ahk
Return


;powershell
    AppsKey::run C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe

;rlgonk
    ::rlgonk::
    SendRaw Gonk, gonk! Gonk! GONK. Gonk Gonk! GONK. GONK. GONK. Gonk, gonk, gonk! GONK. GONK. Gonk! GONK. Gonk! GONK. Gonk! GONK. Gonk! Gonk! -GNK
    Return

;Donaudampfschiffahrtselektrizitätenhauptbetriebswerkbauunterbeamtengesellschaft
    ::rlw::Donaudampfschiffahrtselektrizitätenhauptbetriebswerkbauunterbeamtengesellschaft

#IfWinActive ahk_exe devenv.exe
::!!!::
Clipboard = using System;`nusing System.Collections.Generic;`nusing System.IO;`n`nnamespace Files`n{`n`tinternal class Program`n`t{`n`t`tstatic void Main(string[] args)`n`t`t{`n`n`t`t}`n`t}`n}
Send, ^v
Return

#IfWinActive
^!n::SetNumLockState % !GetKeyState("NumLock", "T") 

^#M::run https://www.youtube.com/watch?v=H0YDbhBNJfY ;Megalovania
^#A::run https://www.youtube.com/watch?v=nf30qQzw7rk&list=PLpW44f0GlyyUXtvITPyHbRZCxS5OZIJFc&index=1 ;subnautica