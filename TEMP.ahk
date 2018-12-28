#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; ------------------------- Stuff.. ---------------------------- 
Numpad0::
	send ^v{home}{del}{end}{backspace}
return

; -------------------------------------------------------------


/*; -------------------------Loot Crates---------------------------- 
Numpad0::
	Click, 642, 583
	Sleep 500
	Click, 1112, 801
Return

NumpadDot::
	Click, 642, 583
	Sleep 500
	Click, 1107, 705
Return
	*/
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
	
	
/*; -------------------------Collection Pos Info----------------------------
NumpadEnter::
	info()

	CoordMode, Mouse, Screen
	MouseGetPos, absXpos, absYpos
	;MsgBox 
	
	CoordMode, Mouse, Relative
	MouseGetPos, relXpos, relYpos
	MsgBox Relative X=%relXpos%    Relatvie Y=%relYpos%`nScreen X=%absXpos%    Screen Y=%absYpos%`nWindow Class=%class%
Return
*/
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
