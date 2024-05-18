#Persistent
SetCapsLockState, AlwaysOff

; Capslock + neio (ctrl + left, down, up, ctrl + right)

Capslock & SC024::SendInput {Blind}{Ctrl Down}{Left Down}
Capslock & SC024 up::SendInput {Blind}{Ctrl Up}{Left Up}

Capslock & SC025::Send {Blind}{Down DownTemp}
Capslock & SC025 up::Send {Blind}{Down Up}

Capslock & SC026::Send {Blind}{Up DownTemp}
Capslock & SC026 up::Send {Blind}{Up Up}

Capslock & SC027::SendInput {Blind}{Ctrl Down}{Right Down}
Capslock & SC027 up::SendInput {Blind}{Ctrl Up}{Right Up}

; Capslock + ' (context menu)
Capslock & SC028::Send {AppsKey}

; Capslock + luy; (left, home, end, right)

Capslock & SC016::Send {Blind}{Left Down}
Capslock & SC016 up::Send {Blind}{Left Up}

Capslock & SC017::SendInput {Blind}{Home Down}
Capslock & SC017 up::SendInput {Blind}{Home Up}

Capslock & SC018::SendInput {Blind}{End Down}
Capslock & SC018 up::SendInput {Blind}{End Up}

Capslock & SC019::Send {Blind}{Right DownTemp}
Capslock & SC019 up::Send {Blind}{Right Up}

; Capslock + w (esc)

Capslock & SC011::SendInput {Blind}{Esc Down}

; Capslock + km, (insert, backspace, del)

Capslock & SC032::SendInput {Blind}{Ctrl Down}{BS Down}
Capslock & SC032 up::SendInput {Blind}{Ctrl Up}{BS Up}
Capslock & SC033::SendInput {Blind}{Ctrl Down}{Del Down}
Capslock & SC033 up::SendInput {Blind}{Ctrl Up}{Del Up}

; Capslock + ./ (undo/redo)

Capslock & SC034::SendInput {Ctrl Down}{SC02C Down}
Capslock & SC034 up::SendInput {Ctrl Up}{SC02C Up}
Capslock & SC035::SendInput {Ctrl Down}{Shift Down}{SC02C Down}
Capslock & SC035 up::SendInput {Ctrl Up}{Shift Up}{SC02C Up}

; Make Capslock & Enter equivalent to Control+Enter
Capslock & Enter::SendInput {Ctrl down}{Enter}{Ctrl up}

; Make Capslock+Space -> Enter
Capslock & Space::SendInput {Enter Down}

; Make Capslock & Alt Equivalent to Control+Alt
!Capslock::SendInput {Ctrl down}{Alt Down}
!Capslock up::SendInput {Ctrl up}{Alt up}

; Capslock + TAB/q (prev/next tab)

Capslock & q::SendInput {Ctrl Down}{Tab Down}
Capslock & q up::SendInput {Ctrl Up}{Tab Up}
Capslock & Tab::SendInput {Ctrl Down}{Shift Down}{Tab Down}
Capslock & Tab up::SendInput {Ctrl Up}{Shift Up}{Tab Up}

; Capslock + key == Ctrl + key
; Capslock + fpgj

Capslock & SC012::SendInput {Blind}{Ctrl Down}{SC012 Down}
Capslock & SC012 up::SendInput {Blind}{Ctrl Up}{SC012 Up}

Capslock & SC013::SendInput {Blind}{Ctrl Down}{SC013 Down}
Capslock & SC013 up::SendInput {Blind}{Ctrl Up}{SC013 Up}

Capslock & SC014::SendInput {Blind}{Ctrl Down}{SC014 Down}
Capslock & SC014 up::SendInput {Blind}{Ctrl Up}{SC014 Up}

Capslock & SC015::SendInput {Blind}{Ctrl Down}{SC015 Down}
Capslock & SC015 up::SendInput {Blind}{Ctrl Up}{SC015 Up}

; Capslock + arstdh

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

; Capslock + zxcvbk

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
