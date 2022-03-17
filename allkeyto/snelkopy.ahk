My- = %-Default%
Insert & -::
InputBox, My-,map keyboard to...,for shortcuts use + = shift. ^ = Ctrl. ! = Alt. # = Win `nfor Multi letter keys use { } `nselected key: -, Show, 375, Height, X, Y, Locale, Timeout, %My-%
    If (My- = "")
    My- = %-Default%
    Return
Return
$*-::
Send {Blind}{%My-% Down}
KeyWait, -
send {Blind}{%My-% Up}
Return

