;START CODE

SendMode Input
#NoEnv
Menu, Tray, Icon, main.cpl, 8

;----------- REMAP TO COLEMARK

Capslock::Backspace
#if GetKeyboardLayout() = "0x4090409" ;eng layout
	$e::f
	$r::p
	$t::g
	$y::j
	$u::l
	$i::u
	$o::y
	$p::;
	$s::r
	$d::s
	$f::t
	$g::d
	$h::h
	$j::n
	$k::e
	$l::i
	$;::o
	$n::k
;#if GetKeyboardLayout() = "0x4190419" ;rus layout
#if

GetKeyboardLayout() 
{
	SetFormat, Integer, H
	languageCode := DllCall("GetKeyboardLayout", Int,DllCall("GetWindowThreadProcessId", int,WinActive("A"), Int,0))
	SetFormat, Integer, D
	Return languageCode
}

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

*RWin::
SetKeyDelay -1
Send {Blind}{LWin DownTemp}
Suspend On
return

*RWin up::
Suspend Off
SetKeyDelay -1
Send {Blind}{LWin Up}
return

;----------- TOGGLE COLEMARK-QWERTY WITH HOME KEY

*Home::
Suspend, Permit
Suspend, toggle
return

;----------- IT IS DONE TO DISABLE ALT AS AN INDEPENDENT KEY (ANNOYING ALT WHO IS ALWAYS FOCUS MAIN BAR AND SAVE HOTKEYS WITH ALT)

LAlt::Return

LAlt & LShift::
ChangeLanguage()
return

LShift & LAlt::
ChangeLanguage()
return

ChangeLanguage()
{
PostMessage, 0x50, 2, 0,, A ; 0x50 is WM_INPUTLANGCHANGEREQUEST
Return
}

;----------- ARROW MOVES WITH ALT DOWN

!j::send {Down}
!k::send {Up}
!h::send {Left}
!l::send {Right}

!u::send ^{Left}
!o::send ^{Right}

!i::send +^{Left}
!p::send +^{Right}
