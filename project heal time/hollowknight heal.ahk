#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

;ImageSearch, OutputVarX, OutputVarY, 0, 0, A_ScreenWidth, A_ScreenHeight, plsheal.PNG

m::
ToolTip, test
PixelSearch, OutputVarX, OutputVarY,  264, 79, 898, 137, 0X35211F 
MouseMove, OutputVarX, OutputVarY

Return

o::
MouseGetPos OutputVarX, OutputVarY,
PixelGetColor, OutputVar,  OutputVarX, OutputVarY
ToolTip, %OutputVar%, 

