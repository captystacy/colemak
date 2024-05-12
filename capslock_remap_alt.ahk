; COLEMAK VERSION

; Autohotkey Capslock Remapping Script 
; Danik
; More info at http://danikgames.com/blog/?p=714
; danikgames.com
; 
; Functionality:
; - Deactivates capslock for normal (accidental) use.
; - Hold Capslock and drag anywhere in a window to move it (not just the title bar).
; - Access the following functions when pressing Capslock: 
;     Cursor keys           - N, E, I, U
;     Enter                 - Space
;     Home, PgDn, PgUp, End - L, Y, J, H
;     Backspace and Del     - K, M
;
;     Insert                - B
;     Select all            - A
;     Cut, copy, paste      - R, S, F
;     Close tab, window     - W, F
;     Esc                   - P
;     Next, previous tab    - Tab, Q
;     Undo, redo            - , and .
; - Numpad at the right hand resting position when holding Ctrl+Shift+Alt (using keys m,.neiluy and spacebar)
;  
; To use capslock as you normally would, you can press WinKey + Capslock


; This script is mostly assembled from modified versions of the following awesome scripts:
;
; # Home Row Computing by Gustavo Duarte: http://duartes.org/gustavo/blog/post/home-row-computing for 
; Changes: 
; - Does not need register remapping of AppsKey using SharpKeys.
; - Uses normal cursor key layout 
; - Added more hotkeys for insert, undo, redo etc.




#Persistent
SetCapsLockState, AlwaysOff



; Capslock + neiu (left, down, up, right)

Capslock & n::Send {Blind}{Left DownTemp}
Capslock & n up::Send {Blind}{Left Up}

Capslock & e::Send {Blind}{Down DownTemp}
Capslock & e up::Send {Blind}{Down Up}

Capslock & u::Send {Blind}{Up DownTemp}
Capslock & u up::Send {Blind}{Up Up}

Capslock & i::Send {Blind}{Right DownTemp}
Capslock & i up::Send {Blind}{Right Up}


; Capslock + lyhj (pgdown, pgup, home, end)

Capslock & l::SendInput {Blind}{Home Down}
Capslock & l up::SendInput {Blind}{Home Up}

Capslock & y::SendInput {Blind}{End Down}
Capslock & y up::SendInput {Blind}{End Up}

Capslock & j::SendInput {Blind}{PgUp Down}
Capslock & j up::SendInput {Blind}{PgUp Up}

Capslock & h::SendInput {Blind}{PgDn Down}
Capslock & h up::SendInput {Blind}{PgDn Up}


; Capslock + arst (select all, cut-copy-paste)

Capslock & a::SendInput {Ctrl Down}{a Down}
Capslock & a up::SendInput {Ctrl Up}{a Up}

Capslock & r::SendInput {Ctrl Down}{x Down}
Capslock & r up::SendInput {Ctrl Up}{x Up}

Capslock & s::SendInput {Ctrl Down}{c Down}
Capslock & s up::SendInput {Ctrl Up}{c Up}

Capslock & t::SendInput {Ctrl Down}{v Down}
Capslock & t up::SendInput {Ctrl Up}{v Up}


; Capslock + wfp (close tab or window, press esc)

Capslock & w::SendInput {Ctrl down}{F4}{Ctrl up}
Capslock & f::SendInput {Alt down}{F4}{Alt up}
Capslock & p::SendInput {Blind}{Esc Down}


; Capslock + km (insert, backspace, del)

Capslock & b::SendInput {Blind}{Insert Down}
Capslock & m::SendInput {Blind}{Del Down}
Capslock & k::SendInput {Blind}{BS Down}
Capslock & BS::SendInput {Blind}{BS Down}


; Make Capslock & Enter equivalent to Control+Enter
Capslock & Enter::SendInput {Ctrl down}{Enter}{Ctrl up}


; Make Capslock & Alt Equivalent to Control+Alt
!Capslock::SendInput {Ctrl down}{Alt Down}
!Capslock up::SendInput {Ctrl up}{Alt up}


; Capslock + TAB/q (prev/next tab)

Capslock & q::SendInput {Ctrl Down}{Tab Down}
Capslock & q up::SendInput {Ctrl Up}{Tab Up}
Capslock & Tab::SendInput {Ctrl Down}{Shift Down}{Tab Down}
Capslock & Tab up::SendInput {Ctrl Up}{Shift Up}{Tab Up}

; Capslock + ,/. (undo/redo)

Capslock & ,::SendInput {Ctrl Down}{z Down}
Capslock & , up::SendInput {Ctrl Up}{z Up}
Capslock & .::SendInput {Ctrl Down}{Z Down}
Capslock & . up::SendInput {Ctrl Up}{Z Up}


; Make Capslock+Space -> Enter
Capslock & Space::SendInput {Enter Down}
