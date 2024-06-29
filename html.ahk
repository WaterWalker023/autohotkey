#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

; Maak een COM-object voor het Shell.Explorer ActiveX-besturingselement
WB := ComObjCreate("Shell.Explorer")

; Zet de foutmeldingen uit
WB.Silent := true

; Maak de GUI en toon het ActiveX-besturingselement
Gui, Add, ActiveX, vWB w800 h600, Shell.Explorer
Gui, Show, w800 h600, HTML Viewer

; Vervang "pad\naar\je\bestand.html" met het daadwerkelijke pad naar je HTML-bestand
WB.Navigate("C:\Users\tomst\NCGL\index.html")

Return


Return
; Wait for the GUI to close
GuiClose:
GuiEscape:
    Gui, Destroy
    ExitApp

return