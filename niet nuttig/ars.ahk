#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

array := ["one ", "two ", "three ", "milk", "test"]


::ars::
Random, kies , 1, 5
Send % array[kies]

