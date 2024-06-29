#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%
;ComObjCreate("SAPI.SpVoice").Speak("Welcome aboard captain, All systems are online")



Gui, Show, NA
George := ComObjCreate("SAPI.SpVoice")

George.Voice = George.GetVoices().Item(1)

;George.Voice := "Microsoft Mary"
;voice := "Microsoft George Desktop - English (United States)"
;SpVoice.Voice := SpVoice.GetVoices.Item(voice)
;s.SetVoice(1)
Return

pause::
InputBox, search , hello there,, Width, Height, X, Y, Locale, Timeout,
speak = opening the wikipedia page on %search%
;tooltip, %speak%
StringReplace, search, search, " ", _, All
StringUpper, search, search , T
Run, https://en.wikipedia.org/wiki/%search%

;ComObjCreate("SAPI.SpVoice").Speak(speak)
George.Speak(speak)

Return
