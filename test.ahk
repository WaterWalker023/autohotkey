#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%
#MaxHotkeysPerInterval 2000
up = 0
down = 0
left = 0
Right = 0


WheelUp::
up++
ToolTip, up:%up%, X, Y,
Return
WheelDown::
down++
ToolTip, down:%down%, X, Y,
Return
WheelLeft:: 
left++
ToolTip, left:%left%, X, Y,
Return
WheelRight:: 
Right++
ToolTip, Right:%Right%, X, Y,
Return

q::
up = 0
down = 0
left = 0
Right = 0
Return


/*

*/
