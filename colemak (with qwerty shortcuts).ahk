;START CODE

SendMode Input
#NoEnv
Menu, Tray, Icon, main.cpl, 8

;----------- REMAP TO COLEMARK

e::f
r::p
t::g
y::j
u::l
i::u
o::y
p::;

s::r
d::s
f::t
g::d
h::h
j::n
k::e
l::i
SC027::o

n::k
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

;----------- TOGGLE COLEMARK-QWERTY WITH RIGHT ALT KEY

*RAlt::
Suspend, Permit
Suspend, toggle
Hotkey, *Ctrl, toggle
Hotkey, *Ctrl up, toggle
return

;----------- SWITCHING TO NORMAL NATIVE WITH LWIN

*LWin::
Suspend, Permit
Suspend, toggle
Hotkey, *Ctrl, toggle
Hotkey, *Ctrl up, toggle
PostMessage, 0x50, 2, 0,, A ; 0x50 is WM_INPUTLANGCHANGEREQUEST
return

;END CODE
