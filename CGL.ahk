#NoEnv
#SingleInstance, Force
SendMode, Input
SetBatchLines, -1
SetWorkingDir, %A_ScriptDir%

Gui, Add, TreeView, vMyTree W790 H550 ImageList%ImageListID% Background1E1E1E cC0C0C0 
Loop Files, D:\ROM\*, R
{
    StringReplace, Loopfilename, A_LoopFileName, .%A_LoopFileExt%, , All
    If (Loopfilename != "CGL")
    {
        P1 := TV_Add(Loopfilename)
    }
}
Gui, Color, 1E1E1E
Gui, add, button,  Default gclose vdone,Start Game 
TV_Modify(0, "Sort")
Gui +Resize
Gui, Show, W800 H600, CGL ; Show the window and its TreeView.
return

close:
TV_GetText(selectedgame, TV_GetSelection())
Loop Files, D:\ROM\*, R
{
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
ExitApp
Return

GuiClose:
ExitApp
GuiSize:
if A_EventInfo = 1
return
GuiControl, Move, MyTree, % "H" . (A_GuiHeight - 50) 
GuiControl, Move, MyTree, % "W" . (A_GuiWidth - 10)
GuiControl, Move, done, % "Y" . (A_GuiHeight - 30)
GuiControl, Move, done, % "W" . (A_GuiWidth - 30)

