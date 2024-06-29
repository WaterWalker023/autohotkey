#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%



F8::
PixelSearch, cX, cY, 0, 0, %A_ScreenWidth%, %A_ScreenHeight%, 146B2F,,
ToolTip, %cX% %cY%
MouseMove, %cX%, %cY%