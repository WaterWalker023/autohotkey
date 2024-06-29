#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%
null := ""

InputBox, UserInput,Number, how long to shutdown., , x, y
If (UserInput = null)
{
    Return
}
ToolTip, shutting down, 0, 0,
time := UserInput * 60000
Sleep, %time%
shutdown 1