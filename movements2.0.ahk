#Requires AutoHotkey v2.0

SetCapsLockState('AlwaysOff')

$Space::SendInput GetKeyState('CapsLock', 'P') ? '' : '{Space}'

CapsLock::SendInput '{BackSpace}'

; CapsLock::KeyWait('CapsLock'), SendInput(KeyWait('CapsLock', 'DT.3') ? '{Escape}' : '{BackSpace}')

^CapsLock::SendInput '^{BackSpace}'

!CapsLock::SendInput '{Delete}'

CapsLock & Enter::SendInput GetKeyState('Space', 'P') ? '^+{Enter}' : GetKeyState('Alt', 'P') ? '^!{Enter}' : '!{Enter}'

CapsLock & NumpadEnter::SendInput GetKeyState('Space', 'P') ? '^+{NumpadEnter}' : GetKeyState('Alt', 'P') ? '^!{NumpadEnter}' : '!{Enter}'

CapsLock & Insert::SendInput GetKeyState('Space', 'P') ? '^+{Insert}' : GetKeyState('Alt', 'P') ? '^!{Insert}' : '!{Insert}'

CapsLock & Tab::SendInput GetKeyState('Space', 'P') ? '^+{Tab}' : GetKeyState('Alt', 'P') ? '^!{Tab}' : '^{Tab}'

; FIRST ROW

; Q
CapsLock & SC010::SendInput GetKeyState('Space', 'P') ? '^+{SC010}' : GetKeyState('Alt', 'P') ? '^!{SC010}' : '{SC001}'

; W
CapsLock & SC011::SendInput GetKeyState('Space', 'P') ? '^+{SC011}' : GetKeyState('Alt', 'P') ? '^!{SC011}' : '^{SC011}'

; F
CapsLock & SC012::SendInput GetKeyState('Space', 'P') ? '^+{SC012}' : GetKeyState('Alt', 'P') ? '^!{SC012}' : '^{SC012}'

; P
CapsLock & SC013::SendInput GetKeyState('Space', 'P') ? '^+{SC013}' : GetKeyState('Alt', 'P') ? '^!{SC013}' : '^{SC013}'

; G
CapsLock & SC014::SendInput GetKeyState('Space', 'P') ? '^+{SC014}' : GetKeyState('Alt', 'P') ? '^!{SC014}' : '^{SC014}'

; J
CapsLock & SC015::SendInput GetKeyState('Space', 'P') ? '^+{Home}' : GetKeyState('Alt', 'P') ? '^!{SC015}' : '^{Home}'

; L
CapsLock & SC016::SendInput GetKeyState('Space', 'P') ? '+{Home}' : GetKeyState('Alt', 'P') ? '^!{SC016}' : '{Home}'

; U
CapsLock & SC017::SendInput GetKeyState('Space', 'P') ? '^+{Left}' : GetKeyState('Alt', 'P') ? '^!{SC017}' : '^{Left}'

; Y
CapsLock & SC018::SendInput GetKeyState('Space', 'P') ? '^+{Right}' : GetKeyState('Alt', 'P') ? '^!{SC018}' : '^{Right}'

; :
CapsLock & SC019::SendInput GetKeyState('Space', 'P') ? '+{End}' : GetKeyState('Alt', 'P') ? '^!{SC019}' : '{End}'

; {
CapsLock & SC01A::SendInput GetKeyState('Space', 'P') ? '^+{End}' : GetKeyState('Alt', 'P') ? '^!{SC01A}' : '^{End}'

; }
CapsLock & SC01B::SendInput GetKeyState('Space', 'P') ? '^+{SC01B}' : GetKeyState('Alt', 'P') ? '^!{SC01B}' : '^{SC01B}'

; SECOND ROW

; A
CapsLock & SC01E::SendInput GetKeyState('Space', 'P') ? '^+{SC01E}' : GetKeyState('Alt', 'P') ? '^!{SC01E}' : '^{SC01E}'

; R
CapsLock & SC01F::SendInput GetKeyState('Space', 'P') ? '^+{SC01F}' : GetKeyState('Alt', 'P') ? '^!{SC01F}' : '^{SC01F}'

; S
CapsLock & SC020::SendInput GetKeyState('Space', 'P') ? '^+{SC020}' : GetKeyState('Alt', 'P') ? '^!{SC020}' : '^{SC020}'

; T
CapsLock & SC021::SendInput GetKeyState('Space', 'P') ? '^+{SC021}' : GetKeyState('Alt', 'P') ? '^!{SC021}' : '^{SC021}'

; D
CapsLock & SC022::SendInput GetKeyState('Space', 'P') ? '^+{SC022}' : GetKeyState('Alt', 'P') ? '^!{SC022}' : '^{SC022}'

; H
CapsLock & SC023::SendInput GetKeyState('Space', 'P') ? '^+{SC023}' : GetKeyState('Alt', 'P') ? '^!{SC023}' : '^{SC023}'

; N
CapsLock & SC024::SendInput GetKeyState('Space', 'P') ? '+{Left}' : GetKeyState('Alt', 'P') ? '^!{SC024}' : '{Left}'

; E
CapsLock & SC025::SendInput GetKeyState('Space', 'P') ? '+{Down}' : GetKeyState('Alt', 'P') ? '^!{SC025}' : '{Down}'

; I
CapsLock & SC026::SendInput GetKeyState('Space', 'P') ? '+{Up}' : GetKeyState('Alt', 'P') ? '^!{SC026}' : '{Up}'

; O
CapsLock & SC027::SendInput GetKeyState('Space', 'P') ? '+{Right}' : GetKeyState('Alt', 'P') ? '^!{SC027}' : '{Right}'

; "
CapsLock & SC028::SendInput GetKeyState('Space', 'P') ? '^+{SC028}' : GetKeyState('Alt', 'P') ? '^!{SC028}' : '{AppsKey}'

; THIRD ROW

; Z
CapsLock & SC02C::SendInput GetKeyState('Space', 'P') ? '^+{SC02C}' : GetKeyState('Alt', 'P') ? '^!{SC02C}' : '^{SC02C}'

; X
CapsLock & SC02D::SendInput GetKeyState('Space', 'P') ? '^+{SC02D}' : GetKeyState('Alt', 'P') ? '^!{SC02D}' : '^{SC02D}'

; C
CapsLock & SC02E::SendInput GetKeyState('Space', 'P') ? '^+{SC02E}' : GetKeyState('Alt', 'P') ? '^!{SC02E}' : '^{SC02E}'

; V
CapsLock & SC02F::SendInput GetKeyState('Space', 'P') ? '^+{SC02F}' : GetKeyState('Alt', 'P') ? '^!{SC02F}' : '^{SC02F}'

; B
CapsLock & SC030::SendInput GetKeyState('Space', 'P') ? '^+{SC030}' : GetKeyState('Alt', 'P') ? '^!{SC030}' : '^{SC030}'

; K
CapsLock & SC031::SendInput GetKeyState('Space', 'P') ? '^+{SC031}' : GetKeyState('Alt', 'P') ? '^!{SC031}' : '^{SC031}'

; M
CapsLock & SC032::SendInput GetKeyState('Space', 'P') ? '^+{SC032}' : GetKeyState('Alt', 'P') ? '^!{SC032}' : '^{SC032}'

; ,
CapsLock & SC033::SendInput GetKeyState('Space', 'P') ? '^{Down}^{Down}^{Down}^{Down}^{Down}' : GetKeyState('Alt', 'P') ? '{PgDn}' :'{Down}{Down}{Down}{Down}{Down}' 

; .
CapsLock & SC034::SendInput GetKeyState('Space', 'P') ? '^{Up}^{Up}^{Up}^{Up}^{Up}' : GetKeyState('Alt', 'P') ? '{PgUp}' : '{Up}{Up}{Up}{Up}{Up}' 

; /
CapsLock & SC035::SendInput GetKeyState('Space', 'P') ? '^+{SC035}' : GetKeyState('Alt', 'P') ? '^!{SC035}' : '^{SC035}'

; NUMBERS ROW

; `
CapsLock & SC029::SendInput GetKeyState('Space', 'P') ? '^+{SC029}' : GetKeyState('Alt', 'P') ? '^!{SC029}' : '^{SC029}'

; 1
CapsLock & SC002::SendInput GetKeyState('Space', 'P') ? '^+{SC002}' : GetKeyState('Alt', 'P') ? '^!{SC002}' : '^{SC002}'

; 2
CapsLock & SC003::SendInput GetKeyState('Space', 'P') ? '^+{SC003}' : GetKeyState('Alt', 'P') ? '^!{SC003}' : '^{SC003}'

; 3
CapsLock & SC004::SendInput GetKeyState('Space', 'P') ? '^+{SC004}' : GetKeyState('Alt', 'P') ? '^!{SC004}' : '^{SC004}'

; 4
CapsLock & SC005::SendInput GetKeyState('Space', 'P') ? '^+{SC005}' : GetKeyState('Alt', 'P') ? '^!{SC005}' : '^{SC005}'

; 5
CapsLock & SC006::SendInput GetKeyState('Space', 'P') ? '^+{SC006}' : GetKeyState('Alt', 'P') ? '^!{SC006}' : '^{SC006}'

; 6
CapsLock & SC007::SendInput GetKeyState('Space', 'P') ? '^+{SC007}' : GetKeyState('Alt', 'P') ? '^!{SC007}' : '^{SC007}'

; 7
CapsLock & SC008::SendInput GetKeyState('Space', 'P') ? '^+{SC008}' : GetKeyState('Alt', 'P') ? '^!{SC008}' : '^{SC008}'

; 8
CapsLock & SC009::SendInput GetKeyState('Space', 'P') ? '^+{SC009}' : GetKeyState('Alt', 'P') ? '^!{SC009}' : '^{SC009}'

; 9
CapsLock & SC00A::SendInput GetKeyState('Space', 'P') ? '^+{SC00A}' : GetKeyState('Alt', 'P') ? '^!{SC00A}' : '^{SC00A}'

; 0
CapsLock & SC00B::SendInput GetKeyState('Space', 'P') ? '^+{SC00B}' : GetKeyState('Alt', 'P') ? '^!{SC00B}' : '^{SC00B}'

; -
CapsLock & SC00C::SendInput GetKeyState('Space', 'P') ? '^+{SC00C}' : GetKeyState('Alt', 'P') ? '^!{SC00C}' : '^{SC00C}'

; =
CapsLock & SC00D::SendInput GetKeyState('Space', 'P') ? '^+{SC00D}' : GetKeyState('Alt', 'P') ? '^!{SC00D}' : '^{SC00D}'

; F ROW

CapsLock & F1::SendInput GetKeyState('Space', 'P') ? '{Media_Prev}' : GetKeyState('Alt', 'P') ? '^!{SCO3B}' : '^{Volume_Down}'

CapsLock & F2::SendInput GetKeyState('Space', 'P') ? '{Media_Next}' : GetKeyState('Alt', 'P') ? '^!{SCO3C}' : '^{Volume_Up}'

CapsLock & F3::SendInput GetKeyState('Space', 'P') ? '^+{F3}' : GetKeyState('Alt', 'P') ? '^!{F3}' : '{Media_Play_Pause}'

CapsLock & F4::SendInput GetKeyState('Space', 'P') ? '^+{F4}' : GetKeyState('Alt', 'P') ? '^!{F4}' : '^{F4}'

CapsLock & F5::SendInput GetKeyState('Space', 'P') ? '^+{F5}' : GetKeyState('Alt', 'P') ? '^!{F5}' : '^{F5}'

CapsLock & F6::SendInput GetKeyState('Space', 'P') ? '^+{F6}' : GetKeyState('Alt', 'P') ? '^!{F6}' : '^{F6}'

CapsLock & F7::SendInput GetKeyState('Space', 'P') ? '^+{F7}' : GetKeyState('Alt', 'P') ? '^!{F7}' : '^{F7}'

CapsLock & F8::SendInput GetKeyState('Space', 'P') ? '^+{F8}' : GetKeyState('Alt', 'P') ? '^!{F8}' : '^{F8}'

CapsLock & F9::SendInput GetKeyState('Space', 'P') ? '^+{F9}' : GetKeyState('Alt', 'P') ? '^!{F9}' : '^{F9}'

CapsLock & F10::SendInput GetKeyState('Space', 'P') ? '^+{F10}' : GetKeyState('Alt', 'P') ? '^!{F10}' : '^{F10}'

CapsLock & F11::SendInput GetKeyState('Space', 'P') ? '^+{F11}' : GetKeyState('Alt', 'P') ? '^!{F11}' : '^{F11}'

CapsLock & F12::SendInput GetKeyState('Space', 'P') ? '^+{F12}' : GetKeyState('Alt', 'P') ? '^!{F12}' : '^{F12}'