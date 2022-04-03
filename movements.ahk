#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

SetCapsLockState, AlwaysOff

*CapsLock::
KeyWait, CapsLock
IF A_ThisHotkey = *CapsLock
	Send, {Backspace}
Return

!CapsLock::Send {Delete}

$Space::SendInput, % GetKeyState("CapsLock", "P") ? return : "{Space}"

; Arrows, Shift+Arrows
CapsLock & SC024::SendInput, % GetKeyState("Space", "P") ? "+{Left}" : "{Left}"
CapsLock & SC025::SendInput, % GetKeyState("Space", "P") ? "+{Down}" : "{Down}"
CapsLock & SC026::SendInput, % GetKeyState("Space", "P") ? "+{Up}" : "{Up}"
CapsLock & SC027::SendInput, % GetKeyState("Space", "P") ? "+{Right}" : "{Right}"

; Ctrl+Left, Ctrl+Right, Ctrl+Shift+Left, Ctrl+Shift+Right
CapsLock & SC017::SendInput, % GetKeyState("Space", "P") ? "^+{Left}" : "^{Left}"
CapsLock & SC018::SendInput, % GetKeyState("Space", "P") ? "^+{Right}" : "^{Right}"

; Home, End, Shift+Home, Shift+End
CapsLock & SC016::SendInput, % GetKeyState("Space", "P") ? "+{Home}" : "{Home}"
CapsLock & SC019::SendInput, % GetKeyState("Space", "P") ? "+{End}" : "{End}"

; Ctrl+Home, Ctrl+End, Ctrl+Shift+Home, Ctrl+Shift+End
CapsLock & SC015::SendInput, % GetKeyState("Space", "P") ? "^+{Home}" : "^{Home}"
CapsLock & SC01A::SendInput, % GetKeyState("Space", "P") ? "^+{End}" : "^{End}"
