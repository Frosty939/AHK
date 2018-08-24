#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.





!LButton::		;opens the terminal when connecting via console cable
	CoordMode, Mouse, Screen	;sets the getpos to use absolute pos
	MouseGetPos, absXpos, absYpos, id
	WinGetTitle, title, ahk_id %id%
	
	If (InStr(title, "Cisco Packet Tracer"))
	{
		SetDefaultMouseSpeed, 0 ; makes mouse travel instantly
		
		Send {LButton}
		Sleep 200
		MouseMove, 429, 130 	0
		Send {LButton} 			;opens terminal
		Sleep 200				;waits for next thing to complete
		MouseMove, 774, 275
		Send {LButton} 			;opens console
		
	}
Return	


NumpadEnter::
	CoordMode, Mouse, Screen
	MouseGetPos, absXpos, absYpos
	MsgBox X=%absXpos%    Y=%absYpos%
Return


; --------------------------------------------------------------------
; -------------------------Script Controls----------------------------
; --------------------------------------------------------------------
^!Numpad0::   ;reloads script, displays tooltip
      ;TrayTip   ,-Reloading-, %A_ScriptName%, 2, 16
      ;sleep 2000
      ;HideTrayTip ()
    Reload
  Return
!NumpadSub::  ;kills script, displays tooltip
    ;TrayTip , Attempting to -KILL-, %A_ScriptName%, 3 , 16
    ;sleep (2500)
    ;HideTrayTip ()
    ExitApp
  Return
^Numpad0::num=0 ;reset Extension to beginning of script
; --------------------------------------------------------------------
; --------------------------------------------------------------------