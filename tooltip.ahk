#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%
snuf = snuf

m::
ToolTip, %snuf%, X, Y, WhichToolTip
Return

n::
InputBox, snuf,zet tooltip, Show, 375, Height, X, Y, Locale, Timeout, %snuf%
Return