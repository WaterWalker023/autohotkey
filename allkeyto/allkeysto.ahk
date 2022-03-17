#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

aDefault = a 
bDefault = b
cDefault = c
dDefault = d
eDefault = e
fDefault = f
gDefault = g
hDefault = h
iDefault = i
jDefault = j
kDefault = k
lDefault = l
mDefault = m
nDefault = n
oDefault = o
pDefault = p
qDefault = q
rDefault = r
sDefault = s
tDefault = t
uDefault = u
vDefault = v
wDefault = w
xDefault = x
yDefault = y
zDefault = z

Mya = %aDefault%
Myb = %bDefault%
Myc = %cDefault%
Myd = %dDefault%
Mye = %eDefault%
Myf = %fDefault%
Myg = %gDefault%
Myh = %hDefault%
Myi = %iDefault%
Myj = %jDefault%
Myk = %kDefault%
Myl = %lDefault%
Mym = %mDefault%
Myn = %nDefault%
Myo = %oDefault%
Myp = %pDefault%
Myq = %qDefault%
Myr = %rDefault%
Mys = %sDefault%
Myt = %tDefault%
Myu = %uDefault%
Myv = %vDefault%
Myw = %wDefault%
Myx = %xDefault%
Myy = %yDefault%
Myz = %zDefault%


Insert & a::
InputBox, Mya,map keyboard to...,for shortcuts use + = shift. ^ = Ctrl. ! = Alt. # = Win `nfor Multi letter keys use { } `nselected key: a, Show, 375, Height, X, Y, Locale, Timeout, %Mya%
    If (Mya = "")
    Mya = %aDefault%
    Return
Return
$*a::
Send {Blind}{%Mya% Down}
KeyWait, a
send {Blind}{%Mya% Up}
Return

Myb = %bDefault%
Insert & b::
InputBox, Myb,map keyboard to...,for shortcuts use + = shift. ^ = Ctrl. ! = Alt. # = Win `nfor Multi letter keys use { } `nselected key: b, Show, 375, Height, X, Y, Locale, Timeout, %Myb%
    If (Myb = "")
    Myb = %bDefault%
    Return
Return
$*b::
Send {Blind}{%Myb% Down}
KeyWait, b
send {Blind}{%Myb% Up}
Return

Myc = %cDefault%
Insert & c::
InputBox, Myc,map keyboard to...,for shortcuts use + = shift. ^ = Ctrl. ! = Alt. # = Win `nfor Multi letter keys use { } `nselected key: c, Show, 375, Height, X, Y, Locale, Timeout, %Myc%
    If (Myc = "")
    Myc = %cDefault%
    Return
Return
$*c::
Send {Blind}{%Myc% Down}
KeyWait, c
send {Blind}{%Myc% Up}
Return

Myd = %dDefault%
Insert & d::
InputBox, Myd,map keyboard to...,for shortcuts use + = shift. ^ = Ctrl. ! = Alt. # = Win `nfor Multi letter keys use { } `nselected key: d, Show, 375, Height, X, Y, Locale, Timeout, %Myd%
    If (Myd = "")
    Myd = %dDefault%
    Return
Return
$*d::
Send {Blind}{%Myd% Down}
KeyWait, d
send {Blind}{%Myd% Up}
Return

Mye = %eDefault%
Insert & e::
InputBox, Mye,map keyboard to...,for shortcuts use + = shift. ^ = Ctrl. ! = Alt. # = Win `nfor Multi letter keys use { } `nselected key: e, Show, 375, Height, X, Y, Locale, Timeout, %Mye%
    If (Mye = "")
    Mye = %eDefault%
    Return
Return
$*e::
Send {Blind}{%Mye% Down}
KeyWait, e
send {Blind}{%Mye% Up}
Return

Myf = %fDefault%
Insert & f::
InputBox, Myf,map keyboard to...,for shortcuts use + = shift. ^ = Ctrl. ! = Alt. # = Win `nfor Multi letter keys use { } `nselected key: f, Show, 375, Height, X, Y, Locale, Timeout, %Myf%
    If (Myf = "")
    Myf = %fDefault%
    Return
Return
$*f::
Send {Blind}{%Myf% Down}
KeyWait, f
send {Blind}{%Myf% Up}
Return

Myg = %gDefault%
Insert & g::
InputBox, Myg,map keyboard to...,for shortcuts use + = shift. ^ = Ctrl. ! = Alt. # = Win `nfor Multi letter keys use { } `nselected key: g, Show, 375, Height, X, Y, Locale, Timeout, %Myg%
    If (Myg = "")
    Myg = %gDefault%
    Return
Return
$*g::
Send {Blind}{%Myg% Down}
KeyWait, g
send {Blind}{%Myg% Up}
Return

Myh = %hDefault%
Insert & h::
InputBox, Myh,map keyboard to...,for shortcuts use + = shift. ^ = Ctrl. ! = Alt. # = Win `nfor Multi letter keys use { } `nselected key: h, Show, 375, Height, X, Y, Locale, Timeout, %Myh%
    If (Myh = "")
    Myh = %hDefault%
    Return
Return
$*h::
Send {Blind}{%Myh% Down}
KeyWait, h
send {Blind}{%Myh% Up}
Return

Myi = %iDefault%
Insert & i::
InputBox, Myi,map keyboard to...,for shortcuts use + = shift. ^ = Ctrl. ! = Alt. # = Win `nfor Multi letter keys use { } `nselected key: i, Show, 375, Height, X, Y, Locale, Timeout, %Myi%
    If (Myi = "")
    Myi = %iDefault%
    Return
Return
$*i::
Send {Blind}{%Myi% Down}
KeyWait, i
send {Blind}{%Myi% Up}
Return

Myj = %jDefault%
Insert & j::
InputBox, Myj,map keyboard to...,for shortcuts use + = shift. ^ = Ctrl. ! = Alt. # = Win `nfor Multi letter keys use { } `nselected key: j, Show, 375, Height, X, Y, Locale, Timeout, %Myj%
    If (Myj = "")
    Myj = %jDefault%
    Return
Return
$*j::
Send {Blind}{%Myj% Down}
KeyWait, j
send {Blind}{%Myj% Up}
Return

Myk = %kDefault%
Insert & k::
InputBox, Myk,map keyboard to...,for shortcuts use + = shift. ^ = Ctrl. ! = Alt. # = Win `nfor Multi letter keys use { } `nselected key: k, Show, 375, Height, X, Y, Locale, Timeout, %Myk%
    If (Myk = "")
    Myk = %kDefault%
    Return
Return
$*k::
Send {Blind}{%Myk% Down}
KeyWait, k
send {Blind}{%Myk% Up}
Return

Myl = %lDefault%
Insert & l::
InputBox, Myl,map keyboard to...,for shortcuts use + = shift. ^ = Ctrl. ! = Alt. # = Win `nfor Multi letter keys use { } `nselected key: l, Show, 375, Height, X, Y, Locale, Timeout, %Myl%
    If (Myl = "")
    Myl = %lDefault%
    Return
Return
$*l::
Send {Blind}{%Myl% Down}
KeyWait, l
send {Blind}{%Myl% Up}
Return

Mym = %mDefault%
Insert & m::
InputBox, Mym,map keyboard to...,for shortcuts use + = shift. ^ = Ctrl. ! = Alt. # = Win `nfor Multi letter keys use { } `nselected key: m, Show, 375, Height, X, Y, Locale, Timeout, %Mym%
    If (Mym = "")
    Mym = %mDefault%
    Return
Return
$*m::
Send {Blind}{%Mym% Down}
KeyWait, m
send {Blind}{%Mym% Up}
Return

Myn = %nDefault%
Insert & n::
InputBox, Myn,map keyboard to...,for shortcuts use + = shift. ^ = Ctrl. ! = Alt. # = Win `nfor Multi letter keys use { } `nselected key: n, Show, 375, Height, X, Y, Locale, Timeout, %Myn%
    If (Myn = "")
    Myn = %nDefault%
    Return
Return
$*n::
Send {Blind}{%Myn% Down}
KeyWait, n
send {Blind}{%Myn% Up}
Return

Myo = %oDefault%
Insert & o::
InputBox, Myo,map keyboard to...,for shortcuts use + = shift. ^ = Ctrl. ! = Alt. # = Win `nfor Multi letter keys use { } `nselected key: o, Show, 375, Height, X, Y, Locale, Timeout, %Myo%
    If (Myo = "")
    Myo = %oDefault%
    Return
Return
$*o::
Send {Blind}{%Myo% Down}
KeyWait, o
send {Blind}{%Myo% Up}
Return

Myp = %pDefault%
Insert & p::
InputBox, Myp,map keyboard to...,for shortcuts use + = shift. ^ = Ctrl. ! = Alt. # = Win `nfor Multi letter keys use { } `nselected key: p, Show, 375, Height, X, Y, Locale, Timeout, %Myp%
    If (Myp = "")
    Myp = %pDefault%
    Return
Return
$*p::
Send {Blind}{%Myp% Down}
KeyWait, p
send {Blind}{%Myp% Up}
Return

Myq = %qDefault%
Insert & q::
InputBox, Myq,map keyboard to...,for shortcuts use + = shift. ^ = Ctrl. ! = Alt. # = Win `nfor Multi letter keys use { } `nselected key: q, Show, 375, Height, X, Y, Locale, Timeout, %Myq%
    If (Myq = "")
    Myq = %qDefault%
    Return
Return
$*q::
Send {Blind}{%Myq% Down}
KeyWait, q
send {Blind}{%Myq% Up}
Return

Myr = %rDefault%
Insert & r::
InputBox, Myr,map keyboard to...,for shortcuts use + = shift. ^ = Ctrl. ! = Alt. # = Win `nfor Multi letter keys use { } `nselected key: r, Show, 375, Height, X, Y, Locale, Timeout, %Myr%
    If (Myr = "")
    Myr = %rDefault%
    Return
Return
$*r::
Send {Blind}{%Myr% Down}
KeyWait, r
send {Blind}{%Myr% Up}
Return

Mys = %sDefault%
Insert & s::
InputBox, Mys,map keyboard to...,for shortcuts use + = shift. ^ = Ctrl. ! = Alt. # = Win `nfor Multi letter keys use { } `nselected key: s, Show, 375, Height, X, Y, Locale, Timeout, %Mys%
    If (Mys = "")
    Mys = %sDefault%
    Return
Return
$*s::
Send {Blind}{%Mys% Down}
KeyWait, s
send {Blind}{%Mys% Up}
Return

Myt = %tDefault%
Insert & t::
InputBox, Myt,map keyboard to...,for shortcuts use + = shift. ^ = Ctrl. ! = Alt. # = Win `nfor Multi letter keys use { } `nselected key: t, Show, 375, Height, X, Y, Locale, Timeout, %Myt%
    If (Myt = "")
    Myt = %tDefault%
    Return
Return
$*t::
Send {Blind}{%Myt% Down}
KeyWait, t
send {Blind}{%Myt% Up}
Return

Myu = %uDefault%
Insert & u::
InputBox, Myu,map keyboard to...,for shortcuts use + = shift. ^ = Ctrl. ! = Alt. # = Win `nfor Multi letter keys use { } `nselected key: u, Show, 375, Height, X, Y, Locale, Timeout, %Myu%
    If (Myu = "")
    Myu = %uDefault%
    Return
Return
$*u::
Send {Blind}{%Myu% Down}
KeyWait, u
send {Blind}{%Myu% Up}
Return

Myv = %vDefault%
Insert & v::
InputBox, Myv,map keyboard to...,for shortcuts use + = shift. ^ = Ctrl. ! = Alt. # = Win `nfor Multi letter keys use { } `nselected key: v, Show, 375, Height, X, Y, Locale, Timeout, %Myv%
    If (Myv = "")
    Myv = %vDefault%
    Return
Return
$*v::
Send {Blind}{%Myv% Down}
KeyWait, v
send {Blind}{%Myv% Up}
Return

Myw = %wDefault%
Insert & w::
InputBox, Myw,map keyboard to...,for shortcuts use + = shift. ^ = Ctrl. ! = Alt. # = Win `nfor Multi letter keys use { } `nselected key: w, Show, 375, Height, X, Y, Locale, Timeout, %Myw%
    If (Myw = "")
    Myw = %wDefault%
    Return
Return
$*w::
Send {Blind}{%Myw% Down}
KeyWait, w
send {Blind}{%Myw% Up}
Return

Myx = %xDefault%
Insert & x::
InputBox, Myx,map keyboard to...,for shortcuts use + = shift. ^ = Ctrl. ! = Alt. # = Win `nfor Multi letter keys use { } `nselected key: x, Show, 375, Height, X, Y, Locale, Timeout, %Myx%
    If (Myx = "")
    Myx = %xDefault%
    Return
Return
$*x::
Send {Blind}{%Myx% Down}
KeyWait, x
send {Blind}{%Myx% Up}
Return

Myy = %yDefault%
Insert & y::
InputBox, Myy,map keyboard to...,for shortcuts use + = shift. ^ = Ctrl. ! = Alt. # = Win `nfor Multi letter keys use { } `nselected key: y, Show, 375, Height, X, Y, Locale, Timeout, %Myy%
    If (Myy = "")
    Myy = %yDefault%
    Return
Return
$*y::
Send {Blind}{%Myy% Down}
KeyWait, y
send {Blind}{%Myy% Up}
Return

Myz = %zDefault%
Insert & z::
InputBox, Myz,map keyboard to...,for shortcuts use + = shift. ^ = Ctrl. ! = Alt. # = Win `nfor Multi letter keys use { } `nselected key: z, Show, 375, Height, X, Y, Locale, Timeout, %Myz%
    If (Myz = "")
    Myz = %zDefault%
    Return
Return
$*z::
Send {Blind}{%Myz% Down}
KeyWait, z
send {Blind}{%Myz% Up}
Return

