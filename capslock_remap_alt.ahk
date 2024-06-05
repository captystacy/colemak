#Persistent
SetCapsLockState, AlwaysOff

; Capslock + neio (ctrl + left, DownTemp, up, ctrl + right)

Capslock & SC024::Send {Blind}{Left DownTemp}
Capslock & SC024 up::Send {Blind}{Left Up}{Ctrl Up}

Capslock & SC025::Send {Blind}{Down DownTemp}
Capslock & SC025 up::Send {Blind}{DownTemp Up}{Ctrl Up}

Capslock & SC026::Send {Blind}{Up DownTemp}
Capslock & SC026 up::Send {Blind}{Up Up}{Ctrl Up}

Capslock & SC027::Send {Blind}{Right DownTemp}
Capslock & SC027 up::Send {Blind}{Right Up}{Ctrl Up}

; Capslock + ' (context menu)

Capslock & SC028::Send {AppsKey}{Ctrl up}

; Capslock + luy; (left, home, end, right)

Capslock & SC016::SendInput {Blind}{Home DownTemp}
Capslock & SC016 up::SendInput {Blind}{Ctrl Up}{Home Up}

Capslock & SC017::SendInput {Blind}{Ctrl DownTemp}{Left DownTemp}
Capslock & SC017 up::SendInput {Blind}{Ctrl Up}{Left Up}

Capslock & SC018::SendInput {Blind}{Ctrl DownTemp}{Right DownTemp}
Capslock & SC018 up::SendInput {Blind}{Ctrl Up}{Right Up}

Capslock & SC019::SendInput {Blind}{End DownTemp}
Capslock & SC019 up::SendInput {Blind}{Ctrl up}{End Up}

; Capslock + ,. (5x DownTemp, 5x up)

Capslock & SC033::SendInput {Blind}{Down}{Down}{Down}{Down}{Down}{Ctrl up}
Capslock & SC034::SendInput {Blind}{Up}{Up}{Up}{Up}{Up}{Ctrl up}

; Capslock + q (esc)

Capslock & SC010::SendInput {Blind}{Esc DownTemp}{Ctrl up}

; Capslock + key == Ctrl + key

; Capslock + Alt

!Capslock::SendInput {Blind}{Ctrl DownTemp}{Alt DownTemp}
!Capslock up::SendInput {Blind}{Ctrl up}{Alt up}

; Capslock + BS

Capslock & BS::SendInput {Blind}{Ctrl DownTemp}{BS DownTemp}
Capslock & BS up::SendInput {Blind}{Ctrl up}{BS Up}

; Capslock + Del

Capslock & Del::SendInput {Blind}{Ctrl DownTemp}{Del DownTemp}
Capslock & Del up::SendInput {Blind}{Ctrl Up}{Del Up}

; Capslock + Enter

Capslock & Enter::SendInput {Blind}{Ctrl DownTemp}{Enter DownTemp}
Capslock & Enter up::SendInput {Blind}{Ctrl Up}{Enter Up}

; Capslock + Space

Capslock & Space::SendInput {Blind}{Ctrl DownTemp}{Space DownTemp}
Capslock & Space up::SendInput {Blind}{Ctrl Up}{Space Up}

; Capslock + TAB

Capslock & Tab::SendInput {Blind}{Ctrl DownTemp}{Tab DownTemp}
Capslock & Tab up::SendInput {Blind}{Ctrl Up}{Tab Up}

; Capslock + wfpbj []

Capslock & SC011::SendInput {Blind}{Ctrl DownTemp}{SC011 DownTemp}
Capslock & SC011 up::SendInput {Blind}{Ctrl Up}{SC011 Up}

Capslock & SC012::SendInput {Blind}{Ctrl DownTemp}{SC012 DownTemp}
Capslock & SC012 up::SendInput {Blind}{Ctrl Up}{SC012 Up}

Capslock & SC013::SendInput {Blind}{Ctrl DownTemp}{SC013 DownTemp}
Capslock & SC013 up::SendInput {Blind}{Ctrl Up}{SC013 Up}

Capslock & SC014::SendInput {Blind}{Ctrl DownTemp}{SC014 DownTemp}
Capslock & SC014 up::SendInput {Blind}{Ctrl Up}{SC014 Up}

Capslock & SC015::SendInput {Blind}{Ctrl DownTemp}{SC015 DownTemp}
Capslock & SC015 up::SendInput {Blind}{Ctrl Up}{SC015 Up}

Capslock & SC01A::SendInput {Blind}{Ctrl DownTemp}{SC01A DownTemp}
Capslock & SC01A up::SendInput {Blind}{Ctrl Up}{SC01A Up}

Capslock & SC01B::SendInput {Blind}{Ctrl DownTemp}{SC01B DownTemp}
Capslock & SC01B up::SendInput {Blind}{Ctrl Up}{SC01B Up}

; Capslock + arstgm #

Capslock & SC01E::SendInput {Blind}{Ctrl DownTemp}{SC01E DownTemp}
Capslock & SC01E up::SendInput {Blind}{Ctrl Up}{SC01E Up}

Capslock & SC01F::SendInput {Blind}{Ctrl DownTemp}{SC01F DownTemp}
Capslock & SC01F up::SendInput {Blind}{Ctrl Up}{SC01F Up}

Capslock & SC020::SendInput {Blind}{Ctrl DownTemp}{SC020 DownTemp}
Capslock & SC020 up::SendInput {Blind}{Ctrl Up}{SC020 Up}

Capslock & SC021::SendInput {Blind}{Ctrl DownTemp}{SC021 DownTemp}
Capslock & SC021 up::SendInput {Blind}{Ctrl Up}{SC021 Up}

Capslock & SC022::SendInput {Blind}{Ctrl DownTemp}{SC022 DownTemp}
Capslock & SC022 up::SendInput {Blind}{Ctrl Up}{SC022 Up}

Capslock & SC023::SendInput {Blind}{Ctrl DownTemp}{SC023 DownTemp}
Capslock & SC023 up::SendInput {Blind}{Ctrl Up}{SC023 Up}

Capslock & SC02B::SendInput {Blind}{Ctrl DownTemp}{SC02B DownTemp}
Capslock & SC02B up::SendInput {Blind}{Ctrl Up}{SC02B Up}

; Capslock + zxcdv\kh /

Capslock & SC056::SendInput {Blind}{Ctrl DownTemp}{SC056 DownTemp}
Capslock & SC056 up::SendInput {Blind}{Ctrl Up}{SC056 Up}

Capslock & SC02C::SendInput {Blind}{Ctrl DownTemp}{SC02C DownTemp}
Capslock & SC02C up::SendInput {Blind}{Ctrl Up}{SC02C Up}

Capslock & SC02D::SendInput {Blind}{Ctrl DownTemp}{SC02D DownTemp}
Capslock & SC02D up::SendInput {Blind}{Ctrl Up}{SC02D Up}

Capslock & SC02E::SendInput {Blind}{Ctrl DownTemp}{SC02E DownTemp}
Capslock & SC02E up::SendInput {Blind}{Ctrl Up}{SC02E Up}

Capslock & SC02F::SendInput {Blind}{Ctrl DownTemp}{SC02F DownTemp}
Capslock & SC02F up::SendInput {Blind}{Ctrl Up}{SC02F Up}

Capslock & SC030::SendInput {Blind}{Ctrl DownTemp}{SC030 DownTemp}
Capslock & SC030 up::SendInput {Blind}{Ctrl Up}{SC030 Up}

Capslock & SC031::SendInput {Blind}{Ctrl DownTemp}{SC031 DownTemp}
Capslock & SC031 up::SendInput {Blind}{Ctrl Up}{SC031 Up}

Capslock & SC032::SendInput {Blind}{Ctrl DownTemp}{SC032 DownTemp}
Capslock & SC032 up::SendInput {Blind}{Ctrl Up}{SC032 Up}

Capslock & SC035::SendInput {Blind}{Ctrl DownTemp}{SC035 DownTemp}
Capslock & SC035 up::SendInput {Blind}{Ctrl Up}{SC035 Up}
