#NoEnv
#SingleInstance, Force
SendMode, Input
SetBatchLines, -1
SetWorkingDir, %A_ScriptDir%

Gui, Add, TreeView, vMyTree ImageList%ImageListID%
Loop Files, T:\ROM\*, R
{
    StringReplace, Loopfilename, A_LoopFileName, .%A_LoopFileExt%, , All
    P1 := TV_Add(Loopfilename)
}
Gui, add, button, gclose vdone, Done 
TV_Modify(0, "Sort")
Gui +Resize
Gui, Add, StatusBar
Gui, Show, Maximize, CGL  ; Show the window and its TreeView.
GuiControl, Move, MyTree, % "H" . (A_GuiHeight - 80) 
GuiControl, Move, MyTree, % "W" . (A_GuiWidth - 10)
GuiControl, Move, done, % "Y" . (A_GuiHeight - 60)

return

close:
TV_GetText(selectedgame, TV_GetSelection())
Loop Files, T:\ROM\*, R 
{
    ToolTip, %A_LoopFileName%
    StringReplace, games, A_LoopFileName, .%A_LoopFileExt%, , All
    if(selectedgame = games)
    {
        Run, %A_LoopFilePath%
        Break
    }
}
GuiControlGet, FocusedControl, FocusV
Gui,  submit
Gui, destroy
ToolTip, %test%
Sleep, 1500
ToolTip, 
ExitApp
Return

GuiClose:
ExitApp
GuiSize:
if A_EventInfo = 1
return
GuiControl, Move, MyTree, % "H" . (A_GuiHeight - 80) 
GuiControl, Move, MyTree, % "W" . (A_GuiWidth - 10)
GuiControl, Move, done, % "Y" . (A_GuiHeight - 60)


