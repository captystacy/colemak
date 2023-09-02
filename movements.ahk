#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

SetCapsLockState, AlwaysOff

CapsLock::BackSpace

CapsLock & CapsLock::^BackSpace

!CapsLock::SendInput {Delete}

CapsLock & Enter::SendInput !{Enter}

CapsLock & NumpadEnter::SendInput !{Enter}

CapsLock & Insert::SendInput !{Insert}

; Q
CapsLock & SC010::SendInput, % GetKeyState("Space", "P") ? "^+{SC010}" : "{SC001}"

; W
CapsLock & SC011::SendInput, % GetKeyState("Space", "P") ? "^+{SC011}" : "^{SC011}"

; F
CapsLock & SC012::SendInput, % GetKeyState("Space", "P") ? "^+{SC012}" : "^{SC012}"

; P
CapsLock & SC013::SendInput, % GetKeyState("Space", "P") ? "^+{SC013}" : "^{SC013}"

; G
CapsLock & SC014::SendInput, % GetKeyState("Space", "P") ? "^+{SC014}" : "^{SC014}"

; H
CapsLock & SC023::SendInput, % GetKeyState("Space", "P") ? "^+{SC023}" : "^{SC023}"

; A
CapsLock & SC01E::SendInput, % GetKeyState("Space", "P") ? "^+{SC01E}" : "^{SC01E}"

; R
CapsLock & SC01F::SendInput, % GetKeyState("Space", "P") ? "^+{SC01F}" : "^{SC01F}"

; S
CapsLock & SC020::SendInput, % GetKeyState("Space", "P") ? "^+{SC020}" : "^{SC020}"

; T
CapsLock & SC021::SendInput, % GetKeyState("Space", "P") ? "^+{SC021}" : "^{SC021}"

; D
CapsLock & SC022::SendInput, % GetKeyState("Space", "P") ? "^+{SC022}" : "^{SC022}"

; Z
CapsLock & SC02C::SendInput, % GetKeyState("Space", "P") ? "^+{SC02C}" : "^{SC02C}"

; X
CapsLock & SC02D::SendInput, % GetKeyState("Space", "P") ? "^+{SC02D}" : "^{SC02D}"

; C
CapsLock & SC02E::SendInput, % GetKeyState("Space", "P") ? "^+{SC02E}" : "^{SC02E}"

; V
CapsLock & SC02F::SendInput, % GetKeyState("Space", "P") ? "^+{SC02F}" : "^{SC02F}"

; B
CapsLock & SC030::SendInput, % GetKeyState("Space", "P") ? "^+{SC030}" : GetKeyState("Alt", "P") ? "^!{SC030}" : "^{SC030}"

; K
CapsLock & SC031::SendInput, % GetKeyState("Space", "P") ? "^+{SC031}" : "^{SC031}"

; M
CapsLock & SC032::SendInput, % GetKeyState("Space", "P") ? "^+{SC032}" : GetKeyState("Alt", "P") ? "^!{SC032}" : "^{SC032}"

; -
CapsLock & SC00C::SendInput, % GetKeyState("Space", "P") ? "^+{SC00C}" : "^{SC00C}"

; TAB
CapsLock & Tab::SendInput, % GetKeyState("Space", "P") ? "^+{Tab}" : "^{Tab}"

; ,
CapsLock & SC033::SendInput, % GetKeyState("Space", "P") ? "^{Down}^{Down}^{Down}^{Down}^{Down}" : GetKeyState("Alt", "P") ? "{PgDn}" :"{Down}{Down}{Down}{Down}{Down}" 

; .
CapsLock & SC034::SendInput, % GetKeyState("Space", "P") ? "^{Up}^{Up}^{Up}^{Up}^{Up}" : GetKeyState("Alt", "P") ? "{PgUp}" : "{Up}{Up}{Up}{Up}{Up}" 

; /
CapsLock & SC035::SendInput, % GetKeyState("Space", "P") ? "^+{SC035}" : GetKeyState("Alt", "P") ? "^!{SC035}" : "^{SC035}"

; '
CapsLock & SC028::SendInput, % GetKeyState("Space", "P") ? "^+{SC028}" : "{AppsKey}"

; `
CapsLock & SC029::SendInput, % GetKeyState("Space", "P") ? "^+{SC029}" : "^{SC029}"

; 7
CapsLock & SC008::SendInput, % GetKeyState("Space", "P") ? "^+{SC008}" : "^{SC008}"

; 8
CapsLock & SC009::SendInput, % GetKeyState("Space", "P") ? "^+{SC009}" : "^{SC009}"

; 9
CapsLock & SC00A::SendInput, % GetKeyState("Space", "P") ? "^+{SC00A}" : "^{SC00A}"

; 0
CapsLock & SC00B::SendInput, % GetKeyState("Space", "P") ? "^+{SC00B}" : "^{SC00B}"

; Arrows, Shift+Arrows
CapsLock & SC024::SendInput, % GetKeyState("Space", "P") ? "+{Left}" : GetKeyState("Alt", "P") ? "^!{SC024}" : "{Left}"
CapsLock & SC025::SendInput, % GetKeyState("Space", "P") ? "+{Down}" : GetKeyState("Alt", "P") ? "^!{SC025}" : "{Down}"
CapsLock & SC026::SendInput, % GetKeyState("Space", "P") ? "+{Up}" : GetKeyState("Alt", "P") ? "^!{SC026}" : "{Up}"
CapsLock & SC027::SendInput, % GetKeyState("Space", "P") ? "+{Right}" : GetKeyState("Alt", "P") ? "^!{SC027}" : "{Right}"

; N => Left
CapsLock & SC017::SendInput, % GetKeyState("Space", "P") ? "^+{Left}" : GetKeyState("Alt", "P") ? "^!{SC017}" : "^{Left}"

; O => Right
CapsLock & SC018::SendInput, % GetKeyState("Space", "P") ? "^+{Right}" : GetKeyState("Alt", "P") ? "^!{SC018}" : "^{Right}"

; L => Home
CapsLock & SC016::SendInput, % GetKeyState("Space", "P") ? "+{Home}" : GetKeyState("Alt", "P") ? "^!{SC016}" : "{Home}"

; : => End
CapsLock & SC019::SendInput, % GetKeyState("Space", "P") ? "+{End}" : GetKeyState("Alt", "P") ? "^!{SC019}" : "{End}"

; J => Ctrl + Home
CapsLock & SC015::SendInput, % GetKeyState("Space", "P") ? "^+{Home}" : GetKeyState("Alt", "P") ? "^!{SC015}" : "^{Home}"

; { => Ctrl + End
CapsLock & SC01A::SendInput, % GetKeyState("Space", "P") ? "^+{End}" : GetKeyState("Alt", "P") ? "^!{SC01A}" : "^{End}"

$Space::SendInput, % GetKeyState("CapsLock", "P") ? return : "{Space}"

; Volume
CapsLock & F1::SendInput, % GetKeyState("Space", "P") ? "{Media_Prev}" : "^{Volume_Down}"
CapsLock & F2::SendInput, % GetKeyState("Space", "P") ? "{Media_Next}" : "^{Volume_Up}"
CapsLock & F3::Media_Play_Pause
CapsLock & F4::SendInput, % GetKeyState("Space", "P") ? "^+{F4}" : "^{F4}"