#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn   ; Enable warnings to assist with detecting common errors.
#SingleInstance force   ; Determines whether a script is allowed to run again when it is already running.

SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
;===============================================================================
;========== No Man's Sky =======================================================
;===============================================================================

;-----info gathering function
	relInfo() ;gets info relative to window 
		{
			global ;makes all variables global
			
			CoordMode, Mouse, Relative
			MouseGetPos, relXpos, relYpos, id
		}
	absInfo() ;gets absolute info
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

;================================================
;===== Switching Numpad and Normal Numbers=======
$1::
	info() ;pulling in active window info
;-----checking for NMS
	If (InStr(class,"UnityWndClass"))
		Send {Numpad1}
	Else
		Send 1
Return		

$2::
	info() ;pulling in active window info
;-----checking for NMS
	If (InStr(class,"UnityWndClass"))
		Send {Numpad2}
	Else
		Send 2
Return

$3::
	info() ;pulling in active window info
;-----checking for NMS
	If (InStr(class,"UnityWndClass"))
		Send {Numpad3}
	Else
		Send 3
Return

$4::
	info() ;pulling in active window info
;-----checking for NMS
	If (InStr(class,"UnityWndClass"))
		Send {Numpad4}
	Else
		Send 4
Return

$5::
	info() ;pulling in active window info
;-----checking for NMS
	If (InStr(class,"UnityWndClass"))
		Send {Numpad5}
	Else
		Send 5
Return

$6::
	info() ;pulling in active window info
;-----checking for NMS
	If (InStr(class,"UnityWndClass"))
		Send {Numpad6}
	Else
		Send 6
Return

$7::
	info() ;pulling in active window info
;-----checking for NMS
	If (InStr(class,"UnityWndClass"))
		Send {Numpad7}
	Else
		Send 7
Return

$8::
	info() ;pulling in active window info
;-----checking for NMS
	If (InStr(class,"UnityWndClass"))
		Send {Numpad8}
	Else
		Send 8
Return

$9::
	info() ;pulling in active window info
;-----checking for NMS
	If (InStr(class,"UnityWndClass"))
		Send {Numpad9}
	Else
		Send 9
ReturN


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
