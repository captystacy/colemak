#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

Capslock::Backspace
; Arrows
!о::send {Down}
!л::send {Up}
!р::send {Left}
!д::send {Right}

; Shift+Arrows
!+о::send +{Down}
!+л::send +{Up}
!+р::send +{Left}
!+д::send +{Right}

; Ctrl+Left, Ctrl+Right
!г::send ^{Left}
!щ::send ^{Right}

; Ctrl+Shift+Left, Ctrl+Shift+Right
!+г::send ^+{Left}
!+щ::send ^+{Right}

; Home, End
!ш::send {Home}
!з::send {End}

; Shift+Home, Shift+End
!+ш::send +{Home}
!+з::send +{End}
