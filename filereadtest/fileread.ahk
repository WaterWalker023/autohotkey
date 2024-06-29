#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

FileReadLine, OutputVar, 0/test.txt, 1

MsgBox, %OutputVar%

gosub %OutputVar%

Return

nonsens:
FileReadLine, OutputVarline2, 0/test.txt, 2
send, %OutputVarline2%

Return
