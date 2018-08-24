#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn   ; Enable warnings to assist with detecting common errors.
#SingleInstance force   ; Determines whether a script is allowed to run again when it is already running.
#UseHook Off    ; Using the keyboard hook is usually preferred for hotkeys - but here we only need the mouse hook.
#InstallMouseHook
#MaxHotkeysPerInterval 1000 ; Avoids warning messages for high speed wheel users.

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
;===== Opening Log ==============================
$F4::
	info() ;pulling in active window info
;-----checking for NMS
	If (InStr(class,"GLFW30"))
		Send p
	Else
		Send {F4}
Return
;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
;================================================
;===== Fixing Scroll Direction ==================
$WheelUp::
	info() ;pulling in active window info
;-----checking for NMS
	If (InStr(class,"GLFW30"))
		Send {WheelDown}
	Else
		Send {WheelUp}	
Return


$WheelDown::
	info() ;pulling in active window info
;-----checking for NMS
	If (InStr(class,"GLFW30"))
		Send {WheelUp}
	Else
		Send {WheelDown}	
Return
;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
;================================================
;===== Toggle Left Click ========================
$~F5::
	info() ;pulling in active window info
;-----Checking for NMS
	If (InStr(class,"GLFW30"))
		Click % GetKeyState("LButton") ? "Up" : "Down"
	Else
		Send {F5}
Return
;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\










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
