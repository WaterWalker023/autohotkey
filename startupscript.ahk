#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

send #m
run C:\Program Files\TeamViewer\TeamViewer.exe,,Minimize
WinWait ahk_exe TeamViewer.exe,
WinClose, ahk_exe TeamViewer.exe,