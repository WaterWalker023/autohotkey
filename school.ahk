#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

$!f4::MsgBox, OH NO `n`n anyway
$^w::MsgBox, OH NO `n`n anyway

$!F5::!f4
$!q::^w
