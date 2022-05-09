#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


Default = !{tab}
caps = 1
capson = `ncapslockto
l = %Default%
SetCapsLockState AlwaysOff


!Insert::InputBox, l,CapsLock to keys,for shortcuts use + = shift. ^ = Ctrl. ! = Alt. # = Win `nfor Multi letter keys use { }`n, Show, 375, Height, X, Y, Locale, Timeout, %l%
$*CapsLock:: 
OutputDebug, pressed CapsLock wat %l% aanstuurde
send %l%
Return
::rlw::Donaudampfschiffahrtselektrizitätenhauptbetriebswerkbauunterbeamtengesellschaft
::rlgonk::
SendRaw Gonk, gonk! Gonk! GONK. Gonk Gonk! GONK. GONK. GONK. Gonk, gonk, gonk! GONK. GONK. Gonk! GONK. Gonk! GONK. Gonk! GONK. Gonk! Gonk! -GNK
Return

>!capslock::
Sleep, 100
ExitApp
Return