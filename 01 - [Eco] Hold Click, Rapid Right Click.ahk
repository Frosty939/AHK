#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; -------------------------Window Info Gathering---------------------------- 
	relInfo()
		{
			global ;makes all variables global

			CoordMode, Mouse, Relative
			MouseGetPos, relXpos, relYpos, id
		}
	absInfo()
		{
			global ;makes all variables global

			CoordMode, Mouse, Screen
			MouseGetPos, absXpos, absYpos, id
		}

	info()
		{
			global ;makes all variables called, or made, global

			relInfo()
			absInfo()
			WinGetClass, class, ahk_id %id%
		}
;================================================================================

SetTimer Click, 20

$F1::
	info()
	
	If (InStr(class,"UnityWndClass"))
		{
			Send % "{Click " . ( GetKeyState("LButton") ? "Up}" : "Down}" )
		}
	Else
		Send {F1}
Return

$F4::CToggle := !CToggle
	info()
	
	If (InStr(class,"UnityWndClass"))
		{
			Click:
				If (!CToggle)
			Return
				click, right
			Return
		}
	Else
		Send {F4}
Return
; -------------------------Script Controls----------------------------
^!Numpad0::   ;reloads script, displays tooltip
      TrayTip   ,-Reloading-, %A_ScriptName%, 2, 16
      sleep 2000
      HideTrayTip ()
    Reload
  Return
!NumpadSub::  ;kills script, displays tooltip
    TrayTip , Attempting to -KILL-, %A_ScriptName%, 3 , 16
    sleep (2500)
    HideTrayTip ()
    ExitApp
  Return
^Numpad0::num=0 ;reset Extension to beginning of script
; --------------------------------------------------------------------
; --------------------------------------------------------------------

