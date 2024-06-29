SendMode Input
SetWorkingDir, %A_ScriptDir%

SelectItem = %1%
fileemulater := {nds:"DS", 3ds:"3DS", gb:"GameBoy", gba:"GameBoy", md:"Genesis", z64:"N64", nes:"NES", cue:"PS2", sfc:"SNES", nsp:"Switch", xci:"Switch", wbfs:"Wii & gamecube", ciso:"Wii & gamecube", wad:"Wii & gamecube", wux:"Wii U"}

If (SelectItem = "")
{
    FileSelectFile, SelectItem
}


SplitPath, SelectItem,OutFileName,OutDir,OutExtension,OutDrive,
selectedgame := fileemulater[OutExtension]


If (selectedgame = "")
{
    treeview()
}
Else
{
    msgbox, %SelectItem%, D:\emulators\ROM\%selectedgame%
    FileMove, %SelectItem%, D:\emulators\ROM\%selectedgame%
}

ExitApp
Return

close:
TV_GetText(selectedgame, TV_GetSelection())
Gui,  submit
Gui, destroy
msgbox, %SelectItem%, D:\emulators\ROM\%selectedgame%
FileMove, %SelectItem%, D:\emulators\ROM\%selectedgame%
Sleep, 1500
ToolTip, 
ExitApp
Return

Cancel:
ExitApp
Return


treeview()
{
Gui, Add, TreeView, h250 
Loop, Files, D:\emulators\ROM\* , D
{
    ;MsgBox, %A_LoopFileName%
    P1 := TV_Add(A_LoopFileName)
}

Gui, add, button, gclose, Done 
Gui, add, button, gCancel, Cancel 
Gui, Show, AutoSize
Return
}
