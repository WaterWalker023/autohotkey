; hotkeys gebruikt
    ; #\ for \
    ; \ & i for on autohotkey scripts
    ; F23 for Break
    ; F24 for ScrollLock
    ; \ & Insert for capslockto
    ; \ & capslock for disable CapsLockto
    ; capslock for start capslockto
    ; \ & a for start autocorrection
    ; \ & s for autocorrection
    ; \ & d for autocorrection
    ; \ & f for autocorrection

; Default
    #SingleInstance force
    Default = !{tab}
    caps = 1
    capson = `ncapslockto
    autocorrectionon = `nautocorrection
    l = %Default%
    standardon = 0
    Break::F23
    ScrollLock::F22
    #\::\

; capslockto
    \ & Insert::InputBox, l,CapsLock to keys,for shortcuts use + = shift. ^ = Ctrl. ! = Alt. # = Win `nfor Multi letter keys use { }`n, Show, 375, Height, X, Y, Locale, Timeout, %l%
    $*CapsLock:: send %l%
    \ & capslock::
    If (caps = 1){
        Hotkey, $*capslock, off
        Hotkey, \ & Insert, off
        caps = 0
        capson =
        updatestandaard(standardon, capson, autocorrectionon)
        }
    Else{
        Hotkey, $*capslock, on
        Hotkey, \ & Insert, On
        caps = 1
        capson = `ncapslockto
        updatestandaard(standardon, capson, autocorrectionon)
        }
    Return

; autocorrection
    \ & s::
    Send {up}
    Sleep, 10
    send {enter}
    Return

    \ & d::
    Send {up}
    Sleep, 10
    Send {Right}
    Sleep, 10
    send {enter}
    Return

    \ & f::
    Send {up}
    Sleep, 10
    Send {Right}
    Sleep, 10
    Send {Right}
    Sleep, 10
    send {enter}
    Return

    \ & a::
    If (autocorrectionison = 1){
        Hotkey, \ & s, off
        Hotkey, \ & d, off
        Hotkey, \ & f, off
        autocorrectionison = 0
        autocorrectionon = `nautocorrection
        updatestandaard(standardon, capson, autocorrectionon)
        }
    Else{
        Hotkey, \ & s, on
        Hotkey, \ & d, on
        Hotkey, \ & f, on
        autocorrectionison = 1
        autocorrectionon = 
        updatestandaard(standardon, capson, autocorrectionon)
        }
    Return


; standard
    \ & i::
    If (standardon = 0){
    ToolTip, running:`nstandaard%capson%%autocorrectionon%, 0, 0,
    standardon = 1
    }
    Else{
        ToolTip, , 0, 0,
        standardon = 0
    }
    Return


; Functions
    updatestandaard(standardon, capson, autocorrectionon){
        If (standardon = 1){
        ToolTip, running:`nstandaard%capson%%autocorrectionon%, 0, 0,
        }

    }

; admin commands
    updatestandaard(standardon, capson, autocorrectionon)
;

 
