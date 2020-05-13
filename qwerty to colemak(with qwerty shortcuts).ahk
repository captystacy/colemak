;START CODE

SendMode Input
#NoEnv
Menu, Tray, Icon, main.cpl, 8

;----------- REMAP TO COLEMARK

;q::' ;no change
;w::, ;no change
e::f
r::p
t::g
y::j
u::l
i::u
o::y
p::;
;[::/ ;no change
;]::= ;no change
;\::\ ;no change

;a::a ;no change
s::r
d::s
f::t
g::d
h::h
j::n
k::e
l::i
SC027::o
;SC028::- ;no change

;z::z ;no change
;x::q ;no change
;c::j ;no change
;v::k ;no change
;b::x ;no change
n::k
;m::m ;no change
;,::w ;no change
;.::v ;no change
;/::z ;no change
CapsLock::Backspace

;----------- RELEASE KEYS FROM REMAP WHEN MODIFIER DOWN

*Ctrl::
SetKeyDelay -1
Send {Blind}{Ctrl DownTemp}
Suspend On
return
*Ctrl up::
Suspend Off
SetKeyDelay -1
Send {Blind}{Ctrl Up}
return

*Alt::
SetKeyDelay -1
Send {Blind}{Alt DownTemp}
Suspend On
return
*Alt up::
Suspend Off
SetKeyDelay -1
Send {Blind}{Alt Up}
return

;----------- TOGGLE COLEMARK-QWERTY WITH RIGHT ALT KEY

*RAlt::
Suspend, Permit
Suspend, toggle
Hotkey, *Ctrl, toggle
Hotkey, *Ctrl up, toggle
Hotkey, *Alt, toggle
Hotkey, *Alt up, toggle
return

;----------- SWITCHING TO NORMAL RUSSIAN WITH USELESS KEY WIN(left)(DONT COMPRESS!!!)

*LWin::
Suspend, Permit
Suspend, toggle
Hotkey, *Ctrl, toggle
Hotkey, *Ctrl up, toggle
Hotkey, *Alt, toggle
Hotkey, *Alt up, toggle

INPUTLANGCHANGE_FORWARD := 0x2
WM_INPUTLANGCHANGEREQUEST := 0x0050
WinGet, windows, List
Loop % windows {
  PostMessage WM_INPUTLANGCHANGEREQUEST, INPUTLANGCHANGE_FORWARD, % Lan, , % "ahk_id " windows%A_Index%
}
return

;END CODE
