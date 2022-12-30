#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

SetCapsLockState, AlwaysOff

CapsLock::
KeyWait, CapsLock
IF A_ThisHotkey = CapsLock
	SendInput, {BackSpace}
Return

!CapsLock::SendInput {Delete}

CapsLock & Enter::SendInput !{Enter}

CapsLock & NumpadEnter::SendInput !{Enter}

CapsLock & Insert::SendInput !{Insert}

CapsLock & SC033::SendInput {PgDn}
CapsLock & SC034::SendInput {PgUp}

; ctrl + q, ctrl + shift + q
CapsLock & SC010::SendInput, % GetKeyState("Space", "P") ? "^+{SC010}" : "^{SC010}"

; ctrl + w, ctrl + shift + w
CapsLock & SC011::SendInput, % GetKeyState("Space", "P") ? "^+{SC011}" : "^{SC011}"

; ctrl + f, ctrl + shift + f
CapsLock & SC012::SendInput, % GetKeyState("Space", "P") ? "^+{SC012}" : "^{SC012}"

; ctrl + p, ctrl + shift + p
CapsLock & SC013::SendInput, % GetKeyState("Space", "P") ? "^+{SC013}" : "^{SC013}"

; ctrl + g, ctrl + shift + g
CapsLock & SC014::SendInput, % GetKeyState("Space", "P") ? "^+{SC014}" : "^{SC014}"

; ctrl + h, ctrl + shift + h
CapsLock & SC023::SendInput, % GetKeyState("Space", "P") ? "^+{SC023}" : "^{SC023}"

; ctrl + a, ctrl + shift + a
CapsLock & SC01E::SendInput, % GetKeyState("Space", "P") ? "^+{SC01E}" : "^{SC01E}"

; ctrl + r, ctrl + shift + r
CapsLock & SC01F::SendInput, % GetKeyState("Space", "P") ? "^+{SC01F}" : "^{SC01F}"

; ctrl + s, ctrl + shift + s
CapsLock & SC020::SendInput, % GetKeyState("Space", "P") ? "^+{SC020}" : "^{SC020}"

; ctrl + t, ctrl + shift + t
CapsLock & SC021::SendInput, % GetKeyState("Space", "P") ? "^+{SC021}" : "^{SC021}"

; ctrl + d, ctrl + shift + d
CapsLock & SC022::SendInput, % GetKeyState("Space", "P") ? "^+{SC022}" : "^{SC022}"

; ctrl + z, ctrl + shift + z
CapsLock & SC02C::SendInput, % GetKeyState("Space", "P") ? "^+{SC02C}" : "^{SC02C}"

; ctrl + x, ctrl + shift + x
CapsLock & SC02D::SendInput, % GetKeyState("Space", "P") ? "^+{SC02D}" : "^{SC02D}"

; ctrl + c, ctrl + shift + c
CapsLock & SC02E::SendInput, % GetKeyState("Space", "P") ? "^+{SC02E}" : "^{SC02E}"

; ctrl + v, ctrl + shift + v
CapsLock & SC02F::SendInput, % GetKeyState("Space", "P") ? "^+{SC02F}" : "^{SC02F}"

; ctrl + b, ctrl + shift + b
CapsLock & SC030::SendInput, % GetKeyState("Space", "P") ? "^+{SC030}" : "^{SC030}"

; ctrl + k, ctrl + shift + k
CapsLock & SC031::SendInput, % GetKeyState("Space", "P") ? "^+{SC031}" : "^{SC031}"

; ctrl + -, ctrl + shift + -
CapsLock & SC00C::SendInput, % GetKeyState("Space", "P") ? "^+{SC00C}" : "^{SC00C}"

; ctrl + tab, ctrl + shift + tab
CapsLock & Tab::SendInput, % GetKeyState("Space", "P") ? "^+{Tab}" : "^{Tab}"

; ctrl + F4, ctrl + shift + F4
CapsLock & F4::SendInput, % GetKeyState("Space", "P") ? "^+{F4}" : "^{F4}"

; Arrows, Shift+Arrows
CapsLock & SC024::SendInput, % GetKeyState("Space", "P") ? "+{Left}" : "{Left}"
CapsLock & SC025::SendInput, % GetKeyState("Space", "P") ? "+{Down}" : "{Down}"
CapsLock & SC026::SendInput, % GetKeyState("Space", "P") ? "+{Up}" : "{Up}"
CapsLock & SC027::SendInput, % GetKeyState("Space", "P") ? "+{Right}" : "{Right}"

; Ctrl+Left, Ctrl+Right, Ctrl+Shift+Left, Ctrl+Shift+Right
CapsLock & SC017::SendInput, % GetKeyState("Space", "P") ? "^+{Left}" : "^{Left}"
CapsLock & SC018::SendInput, % GetKeyState("Space", "P") ? "^+{Right}" : "^{Right}"

; Home, End, Shift+Home, Shift+End
CapsLock & SC016::SendInput, % GetKeyState("Space", "P") ? "+{Home}" : "{Home}"
CapsLock & SC019::SendInput, % GetKeyState("Space", "P") ? "+{End}" : "{End}"

; Ctrl+Home, Ctrl+End, Ctrl+Shift+Home, Ctrl+Shift+End
CapsLock & SC015::SendInput, % GetKeyState("Space", "P") ? "^+{Home}" : "^{Home}"
CapsLock & SC01A::SendInput, % GetKeyState("Space", "P") ? "^+{End}" : "^{End}"

$Space::SendInput, % GetKeyState("CapsLock", "P") ? return : "{Space}"

; Volume
CapsLock & F1::SendInput, % GetKeyState("Space", "P") ? "{Media_Prev}" : "^{Volume_Down}"
CapsLock & F2::SendInput, % GetKeyState("Space", "P") ? "{Media_Next}" : "^{Volume_Up}"
CapsLock & F3::Media_Play_Pause