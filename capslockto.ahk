#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir C:\Users\  ; Ensures a consistent starting directory.

Default = !{tab}
caps = 1
l = %Default%
SetCapsLockState AlwaysOff


!^Insert::
!Insert::
InputBox, l,CapsLock to keys,for shortcuts use + = shift. ^ = Ctrl. ! = Alt. # = Win `nfor Multi letter keys use { }`n, Show, 375, Height, X, Y, Locale, Timeout, %l%
Return


$*CapsLock::
SetCapsLockState AlwaysOff 
OutputDebug, pressed CapsLock wat %l% aanstuurde
send %l%
Return

    
