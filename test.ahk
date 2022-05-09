#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

q::
Random, , 500
Random, OutputVar , 0, 10
ToolTip, %OutputVar%