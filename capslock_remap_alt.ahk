Persistent
SetCapsLockState "AlwaysOff"

; Capslock + neio (ctrl + left, Down, up, ctrl + right)

Capslock & SC024::SendInput "{Blind}{Left}"

Capslock & SC025::SendInput "{Blind}{Down}"

Capslock & SC026::SendInput "{Blind}{Up}"

Capslock & SC027::SendInput "{Blind}{Right}"

; Capslock + ' (context menu)

Capslock & SC028::SendInput "{AppsKey}"

; Capslock + luy; (left, home, end, right)

Capslock & SC016::SendInput "{Blind}{Home}"

Capslock & SC017::SendInput "{Blind}^{Left}"

Capslock & SC018::SendInput "{Blind}^{Right}"

Capslock & SC019::SendInput "{Blind}{End}"

; Capslock + ,. (5x Down, 5x up)

Capslock & SC033::SendInput "{Blind}{Down}{Down}{Down}{Down}{Down}"
Capslock & SC034::SendInput "{Blind}{Up}{Up}{Up}{Up}{Up}"

; Capslock + q (esc)

Capslock & SC010::SendInput "{Blind}{Esc}"

; Capslock + key == Ctrl + key

; Capslock + Alt

!Capslock::SendInput "{Blind}^{Alt}"

; Capslock + BS

Capslock & BS::SendInput "{Blind}^{BS}"

; Capslock + Del

Capslock & Del::SendInput "{Blind}^{Del}"

; Capslock + Enter

Capslock & Enter::SendInput "{Blind}^{Enter}"

; Capslock + Space

Capslock & Space::SendInput "{Blind}^{Space}"

; Capslock + TAB

Capslock & Tab::SendInput "{Blind}^{Tab}"

; Capslock + wfpbj []

Capslock & SC011::SendInput "{Blind}^{SC011}"

Capslock & SC012::SendInput "{Blind}^{SC012}"

Capslock & SC013::SendInput "{Blind}^{SC013}"

Capslock & SC014::SendInput "{Blind}^{SC014}"

Capslock & SC015::SendInput "{Blind}^{SC015}"

Capslock & SC01A::SendInput "{Blind}^{SC01A}"

Capslock & SC01B::SendInput "{Blind}^{SC01B}"

; Capslock + arstgm #

Capslock & SC01E::SendInput "{Blind}^{SC01E}"

Capslock & SC01F::SendInput "{Blind}^{SC01F}"

Capslock & SC020::SendInput "{Blind}^{SC020}"

Capslock & SC021::SendInput "{Blind}^{SC021}"

Capslock & SC022::SendInput "{Blind}^{SC022}"

Capslock & SC023::SendInput "{Blind}^{SC023}"

Capslock & SC02B::SendInput "{Blind}^{SC02B}"

; Capslock + zxcdv\kh /

Capslock & SC056::SendInput "{Blind}^{SC056}"

Capslock & SC02C::SendInput "{Blind}^{SC02C}"

Capslock & SC02D::SendInput "{Blind}^{SC02D}"

Capslock & SC02E::SendInput "{Blind}^{SC02E}"

Capslock & SC02F::SendInput "{Blind}^{SC02F}"

Capslock & SC030::SendInput "{Blind}^{SC030}"

Capslock & SC031::SendInput "{Blind}^{SC031}"

Capslock & SC032::SendInput "{Blind}^{SC032}"

Capslock & SC035::SendInput "{Blind}^{SC035}"
