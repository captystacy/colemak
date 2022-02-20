#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

Capslock::Backspace

!о::send {Down}
!л::send {Up}
!р::send {Left}
!д::send {Right}

!г::send ^{Left}
!щ::send ^{Right}

!ш::send +^{Left}
!з::send +^{Right}

!ь::send {Home}
!ю::send {End}

!б::send +{Home}
!.::send +{End}