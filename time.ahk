#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

::updatetm::
Send, Update %A_YYYY%%A_MM%%A_DD%%A_Hour%%A_min%
