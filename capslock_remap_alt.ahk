#Persistent
SetCapsLockState, AlwaysOff

; Capslock + neio (ctrl + left, down, up, ctrl + right)

Capslock & SC024::Send {Blind}{Left DownTemp}
Capslock & SC024 up::Send {Blind}{Left Up}

Capslock & SC025::Send {Blind}{Down DownTemp}
Capslock & SC025 up::Send {Blind}{Down Up}

Capslock & SC026::Send {Blind}{Up DownTemp}
Capslock & SC026 up::Send {Blind}{Up Up}

Capslock & SC027::Send {Blind}{Right DownTemp}
Capslock & SC027 up::Send {Blind}{Right Up}

; Capslock + ' (context menu)

Capslock & SC028::Send {AppsKey}

; Capslock + luy; (left, home, end, right)

Capslock & SC016::SendInput {Blind}{Home Down}
Capslock & SC016 up::SendInput {Blind}{Home Up}

Capslock & SC017::SendInput {Blind}{Ctrl Down}{Left Down}
Capslock & SC017 up::SendInput {Blind}{Ctrl Up}{Left Up}

Capslock & SC018::SendInput {Blind}{Ctrl Down}{Right Down}
Capslock & SC018 up::SendInput {Blind}{Ctrl Up}{Right Up}

Capslock & SC019::SendInput {Blind}{End Down}
Capslock & SC019 up::SendInput {Blind}{End Up}

; Capslock + ,.

Capslock & SC033::SendInput {Blind}{Down}{Down}{Down}{Down}{Down}

Capslock & SC034::SendInput {Blind}{Up}{Up}{Up}{Up}{Up}

; Capslock + q (esc)

Capslock & SC010::SendInput {Blind}{Esc Down}

; Capslock + key == Ctrl + key

; Capslock + Alt

!Capslock::SendInput {Ctrl down}{Alt Down}
!Capslock up::SendInput {Ctrl up}{Alt up}

; Capslock + BS

Capslock & BS::SendInput {Ctrl down}{BS down}
Capslock & BS up::SendInput {Ctrl up}{BS up}

; Capslock + Del

Capslock & Del::SendInput {Ctrl down}{Del down}
Capslock & Del up::SendInput {Ctrl up}{Del up}

; Capslock + Enter

Capslock & Enter::SendInput {Ctrl down}{Enter Down}
Capslock & Enter up::SendInput {Ctrl Up}{Enter Up}

; Capslock + Space

Capslock & Space::SendInput {Ctrl Down}{Space Down}
Capslock & Space up::SendInput {Ctrl Up}{Space Up}

; Capslock + TAB

Capslock & Tab::SendInput {Ctrl Down}{Shift Down}{Tab Down}
Capslock & Tab up::SendInput {Ctrl Up}{Shift Up}{Tab Up}

; Capslock + wfpgj []

Capslock & SC011::SendInput {Blind}{Ctrl Down}{SC011 Down}
Capslock & SC011 up::SendInput {Blind}{Ctrl Up}{SC011 Up}

Capslock & SC012::SendInput {Blind}{Ctrl Down}{SC012 Down}
Capslock & SC012 up::SendInput {Blind}{Ctrl Up}{SC012 Up}

Capslock & SC013::SendInput {Blind}{Ctrl Down}{SC013 Down}
Capslock & SC013 up::SendInput {Blind}{Ctrl Up}{SC013 Up}

Capslock & SC014::SendInput {Blind}{Ctrl Down}{SC014 Down}
Capslock & SC014 up::SendInput {Blind}{Ctrl Up}{SC014 Up}

Capslock & SC015::SendInput {Blind}{Ctrl Down}{SC015 Down}
Capslock & SC015 up::SendInput {Blind}{Ctrl Up}{SC015 Up}

Capslock & SC01A::SendInput {Blind}{Ctrl Down}{SC01A Down}
Capslock & SC01A up::SendInput {Blind}{Ctrl Up}{SC01A Up}

Capslock & SC01B::SendInput {Blind}{Ctrl Down}{SC01B Down}
Capslock & SC01B up::SendInput {Blind}{Ctrl Up}{SC01B Up}

; Capslock + arstdh \

Capslock & SC01E::SendInput {Blind}{Ctrl Down}{SC01E Down}
Capslock & SC01E up::SendInput {Blind}{Ctrl Up}{SC01E Up}

Capslock & SC01F::SendInput {Blind}{Ctrl Down}{SC01F Down}
Capslock & SC01F up::SendInput {Blind}{Ctrl Up}{SC01F Up}

Capslock & SC020::SendInput {Blind}{Ctrl Down}{SC020 Down}
Capslock & SC020 up::SendInput {Blind}{Ctrl Up}{SC020 Up}

Capslock & SC021::SendInput {Blind}{Ctrl Down}{SC021 Down}
Capslock & SC021 up::SendInput {Blind}{Ctrl Up}{SC021 Up}

Capslock & SC022::SendInput {Blind}{Ctrl Down}{SC022 Down}
Capslock & SC022 up::SendInput {Blind}{Ctrl Up}{SC022 Up}

Capslock & SC023::SendInput {Blind}{Ctrl Down}{SC023 Down}
Capslock & SC023 up::SendInput {Blind}{Ctrl Up}{SC023 Up}

Capslock & SC02B::SendInput {Blind}{Ctrl Down}{SC02B Down}
Capslock & SC02B up::SendInput {Blind}{Ctrl Up}{SC02B Up}

; Capslock + zxcvbkm /

Capslock & SC02C::SendInput {Blind}{Ctrl Down}{SC02C Down}
Capslock & SC02C up::SendInput {Blind}{Ctrl Up}{SC02C Up}

Capslock & SC02D::SendInput {Blind}{Ctrl Down}{SC02D Down}
Capslock & SC02D up::SendInput {Blind}{Ctrl Up}{SC02D Up}

Capslock & SC02E::SendInput {Blind}{Ctrl Down}{SC02E Down}
Capslock & SC02E up::SendInput {Blind}{Ctrl Up}{SC02E Up}

Capslock & SC02F::SendInput {Blind}{Ctrl Down}{SC02F Down}
Capslock & SC02F up::SendInput {Blind}{Ctrl Up}{SC02F Up}

Capslock & SC030::SendInput {Blind}{Ctrl Down}{SC030 Down}
Capslock & SC030 up::SendInput {Blind}{Ctrl Up}{SC030 Up}

Capslock & SC031::SendInput {Blind}{Ctrl Down}{SC031 Down}
Capslock & SC031 up::SendInput {Blind}{Ctrl Up}{SC031 Up}

Capslock & SC032::SendInput {Blind}{Ctrl Down}{SC032 Down}
Capslock & SC032 up::SendInput {Blind}{Ctrl Up}{SC032 Up}

Capslock & SC035::SendInput {Blind}{Ctrl Down}{SC035 Down}
Capslock & SC035 up::SendInput {Blind}{Ctrl Up}{SC035 Up}
