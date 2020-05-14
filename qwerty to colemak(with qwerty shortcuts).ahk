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

;----------- TOGGLE COLEMARK-QWERTY WITH RIGHT ALT KEY

*RAlt::
Suspend, Permit
Suspend, toggle
Hotkey, *Ctrl, toggle
Hotkey, *Ctrl up, toggle
return

;----------- SWITCHING TO NORMAL RUSSIAN WITH USELESS KEY WIN(left)(DONT COMPRESS!!!)

*LWin::
Suspend, Permit
Suspend, toggle
Hotkey, *Ctrl, toggle
Hotkey, *Ctrl up, toggle

V++
M:=mod(V,2)
if M=1
   SetDefaultKeyboard(0x0419) ; Russian
else
   SetDefaultKeyboard(0x0409) ; english-US
return

SetDefaultKeyboard(LocaleID){
	Global
	SPI_SETDEFAULTINPUTLANG := 0x005A
	SPIF_SENDWININICHANGE := 2
	Lan := DllCall("LoadKeyboardLayout", "Str", Format("{:08x}", LocaleID), "Int", 0)
	VarSetCapacity(Lan%LocaleID%, 4, 0)
	NumPut(LocaleID, Lan%LocaleID%)
	DllCall("SystemParametersInfo", "UInt", SPI_SETDEFAULTINPUTLANG, "UInt", 0, "UPtr", &Lan%LocaleID%, "UInt", SPIF_SENDWININICHANGE)
	WinGet, windows, List
	Loop %windows% {
		PostMessage 0x50, 0, %Lan%, , % "ahk_id " windows%A_Index%
	}
}

;END CODE
