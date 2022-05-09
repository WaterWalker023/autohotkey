#SingleInstance force
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;cmgit+/updategit+
    #IfWinActive ahk_exe Explorer.EXE
    ::updategit+::
    #IfWinActive ahk_exe cmd.exe
    ::updategit+::
    Send, update %A_YYYY%%A_MM%%A_DD%%A_Hour%%A_min%%A_Sec%
    #IfWinActive ahk_exe Explorer.EXE
    ::cmgit+::
    #IfWinActive ahk_exe cmd.exe
    ::cmgit+::
    backup = %Clipboard%
    send ^{a}
    send ^{c}
    send cmd{Enter}
    IfWinExist, ahk_exe cmd.exe
    {
        IfWinNotActive, ahk_exe cmd.exe
        {
            sleep 1000
        }
        
    }
    WinWait, ahk_exe cmd.exe,
    Send, git add . `ngit commit -m " %Clipboard%" `ngit push`ngit status`n
    send exit
    Clipboard = %backup%
    return

;chgit+
    #IfWinActive ahk_exe Explorer.EXE
    ::chgit+::
    #IfWinActive ahk_exe cmd.exe
    ::chgit+::
    backup = %Clipboard%
    Clipboard := ""
    send ^{a}
    send ^{c} {Enter}
    ClipWait, 2
    Send, git checkout %Clipboard% {Enter}
    Clipboard = %backup%
    Return

;git+
    #IfWinActive ahk_exe Explorer.EXE
    ::git+::
    #IfWinActive ahk_exe cmd.exe
    ::git+::
    MsgBox,  0, git+, this is git+ a program that adds 4 commands to be used inside file explorer and the cmd`n`n use helpgit+ to get a list of commands`nversion 1.3.2
    Return

;helpgit+
    #IfWinActive ahk_exe Explorer.EXE
    ::helpgit+::
    #IfWinActive ahk_exe cmd.exe
    ::helpgit+::
    #IfWinActive ahk_exe Explorer.EXE
    ::git+help::
    #IfWinActive ahk_exe cmd.exe
    ::git+help::
    MsgBox, all the commands:`n `n<name commit> cmgit+: this is a easy way to add, commit and push to github `n`nupdategit+: the same as cmgit+ only is the name of the commit automatic fild in `n`n<name branch> chgit+: this is easy a way to switch branch`n`n clgit+: this is a way to clone a git repository the link of the repository must be placed on your Clipboard`n`n git+: shows the info on git+ `n`nhelpgit+ shows this list
    Return

;clgit+
    #IfWinActive ahk_exe Explorer.EXE
    ::clgit+::
    #IfWinActive ahk_exe cmd.exe
    ::clgit+::
    Send git clone %Clipboard%
    Return

