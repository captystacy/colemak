#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

CapsLock::send {Backspace}

; Ctrl+Backspace
^CapsLock::send ^{Backspace}

!CapsLock::send {Delete}

; Arrows
!SC025::send {Down}
!SC026::send {Up}
!SC024::send {Left}
!SC027::send {Right}

; Shift+Arrows
!+SC025::send +{Down}
!+SC026::send +{Up}
!+SC024::send +{Left}
!+SC027::send +{Right}

; Ctrl+Left, Ctrl+Right
!SC017::send ^{Left}
!SC018::send ^{Right}

; Ctrl+Shift+Left, Ctrl+Shift+Right
!+SC017::send ^+{Left}
!+SC018::send ^+{Right}

; Home, End
!SC016::send {Home}
!SC019::send {End}

; Shift+Home, Shift+End
!+SC016::send +{Home}
!+SC019::send +{End}

; Ctrl+Home, Ctrl+End
!SC015::send ^{Home}
!SC01A::send ^{End}

; Ctrl+Shift+Home, Ctrl+Shift+End
!+SC015::send ^+{Home}
!+SC01A::send ^+{End}
