#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

Capslock::Backspace
; Arrows
!л::send {Down}
!д::send {Up}
!о::send {Left}
!ж::send {Right}

; Shift+Arrows
!+л::send +{Down}
!+д::send +{Up}
!+о::send +{Left}
!+ж::send +{Right}

; Ctrl+Left, Ctrl+Right
!ш::send ^{Left}
!щ::send ^{Right}

; Ctrl+Shift+Left, Ctrl+Shift+Right
!+ш::send ^+{Left}
!+щ::send ^+{Right}

; Home, End
!г::send {Home}
!з::send {End}

; Shift+Home, Shift+End
!+г::send +{Home}
!+з::send +{End}
