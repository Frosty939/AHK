#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #IfWinActive, ahk_exe ShooterGame.exe
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

SetTimer FKey, 500
SetTimer Click, 20

LControl::CToggle := !CToggle

Click:
If (!CToggle)
Return
click
return

MButton::Send % "{w " . ( GetKeyState("w") ? "Up}" : "Down}" )

; XButton1::Send % "{Click " . ( GetKeyState("LButton") ? "Up}" : "Down}" )

; XButton2::FToggle := !FToggle

FKey:
If (!FToggle)
Return
Send f
return
