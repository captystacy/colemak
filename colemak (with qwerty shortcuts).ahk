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

Capslock::Backspace
;----------- RELEASE KEYS FROM REMAP WHEN MODIFIER DOWN

*LCtrl::
SetKeyDelay -1
Send {Blind}{Ctrl DownTemp}
Suspend On
return

*LCtrl up::
Suspend Off
SetKeyDelay -1
Send {Blind}{Ctrl Up}
return

*LWin::
SetKeyDelay -1
Send {Blind}{LWin DownTemp}
Suspend On
return

*LWin up::
Suspend Off
SetKeyDelay -1
Send {Blind}{LWin Up}
return

;----------- TOGGLE COLEMARK-QWERTY WITH RIGHT ALT KEY

*RAlt::
Suspend, Permit
Suspend, toggle
Hotkey, *LCtrl, toggle
Hotkey, *LCtrl up, toggle
return

;----------- SWITCHING TO NORMAL NATIVE WITH LALT & LSHIFT

LAlt & LShift::
Suspend, Permit
Suspend, toggle
Hotkey, *LCtrl, toggle
Hotkey, *LCtrl up, toggle
PostMessage, 0x50, 2, 0,, A ; 0x50 is WM_INPUTLANGCHANGEREQUEST
return

!j::send {Down}
!k::send {Up}
!h::send {Left}
!l::send {Right}

!u::send ^{Left}
!o::send ^{Right}

+!u::send ^+{Left}
+!o::send ^+{Right}
