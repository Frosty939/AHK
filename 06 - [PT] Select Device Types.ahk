#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


$1::	;NETWORK DEVICES
MouseGetPos, absXpos, absYpos, id
WinGetTitle, title, ahk_id %id%
	If (InStr(title, "Cisco Packet Tracer"))	;NETWORK DEVICES
	{
		SetDefaultMouseSpeed, 0 		; makes mouse travel instantly
		
		CoordMode, Mouse, Screen		; sets getPos to screen based
		MouseGetPos, StartX, StartY 	; gets your beginning mouse pos
		CoordMode, Mouse, Relative		; sets the mouse to check relative to active window
		MouseMove, 23, 933				; moves mouse to correct button 
		Click					  		; clicks button
		CoordMode, Mouse, Screen		; sets it back to screen mode, in case mouse wasn't in window
		MouseMove, StartX, StartY 		; sends mouse back to starting pos
	}
	else Send 1
Return
	
	
$2::	;END DEVICES
MouseGetPos, absXpos, absYpos, id
WinGetTitle, title, ahk_id %id%
	If (InStr(title, "Cisco Packet Tracer"))	;END DEVICES
	{
		SetDefaultMouseSpeed, 0 		; makes mouse travel instantly
		
		CoordMode, Mouse, Screen		; sets getPos to screen based
		MouseGetPos, StartX, StartY 	; gets your beginning mouse pos
		CoordMode, Mouse, Relative		; sets the mouse to check relative to active window
		MouseMove, 52, 929				; moves mouse to correct button 
		Click					  		; clicks button
		CoordMode, Mouse, Screen		; sets it back to screen mode, in case mouse wasn't in window
		MouseMove, StartX, StartY 		; sends mouse back to starting pos
	}
	else Send 2
Return


$3::	;COMPONENTS
MouseGetPos, absXpos, absYpos, id
WinGetTitle, title, ahk_id %id%
	If (InStr(title, "Cisco Packet Tracer"))	;COMPONENTS
	{
		SetDefaultMouseSpeed, 0 		; makes mouse travel instantly
		
		CoordMode, Mouse, Screen		; sets getPos to screen based
		MouseGetPos, StartX, StartY 	; gets your beginning mouse pos
		CoordMode, Mouse, Relative		; sets the mouse to check relative to active window
		MouseMove, 84, 933				; moves mouse to correct button 
		Click					  		; clicks button
		CoordMode, Mouse, Screen		; sets it back to screen mode, in case mouse wasn't in window
		MouseMove, StartX, StartY 		; sends mouse back to starting pos
	}
	else Send 3
Return


$4::	;CONNECTIONS
MouseGetPos, absXpos, absYpos, id
WinGetTitle, title, ahk_id %id%
	If (InStr(title, "Cisco Packet Tracer"))	;CONNECTIONS
	{
		SetDefaultMouseSpeed, 0 		; makes mouse travel instantly
		
		CoordMode, Mouse, Screen		; sets getPos to screen based
		MouseGetPos, StartX, StartY 	; gets your beginning mouse pos
		CoordMode, Mouse, Relative		; sets the mouse to check relative to active window
		MouseMove, 117, 933				; moves mouse to correct button 
		Click					  		; clicks button
		CoordMode, Mouse, Screen		; sets it back to screen mode, in case mouse wasn't in window
		MouseMove, StartX, StartY 		; sends mouse back to starting pos
	}
	else Send 4
Return


$5::	;MISC
MouseGetPos, absXpos, absYpos, id
WinGetTitle, title, ahk_id %id%
	If (InStr(title, "Cisco Packet Tracer"))	;MISC
	{
		SetDefaultMouseSpeed, 0 		; makes mouse travel instantly
		
		CoordMode, Mouse, Screen		; sets getPos to screen based
		MouseGetPos, StartX, StartY 	; gets your beginning mouse pos
		CoordMode, Mouse, Relative		; sets the mouse to check relative to active window
		MouseMove, 149, 933				; moves mouse to correct button 
		Click					  		; clicks button
		CoordMode, Mouse, Screen		; sets it back to screen mode, in case mouse wasn't in window
		MouseMove, StartX, StartY 		; sends mouse back to starting pos
	}
	else Send 5
Return


$6::	;MULTIUSER CONNECTIONS 
MouseGetPos, absXpos, absYpos, id
WinGetTitle, title, ahk_id %id%
	If (InStr(title, "Cisco Packet Tracer"))	;MULTIUSER CONNECTIONS 
	{
		SetDefaultMouseSpeed, 0 		; makes mouse travel instantly
		
		CoordMode, Mouse, Screen		; sets getPos to screen based
		MouseGetPos, StartX, StartY 	; gets your beginning mouse pos
		CoordMode, Mouse, Relative		; sets the mouse to check relative to active window
		MouseMove, 181, 933				; moves mouse to correct button 
		Click					  		; clicks button
		CoordMode, Mouse, Screen		; sets it back to screen mode, in case mouse wasn't in window
		MouseMove, StartX, StartY 		; sends mouse back to starting pos
	}
	else Send 6
Return
	
	

	
	
	
; -------------------------Collection Pos Info----------------------------
NumpadEnter::
	CoordMode, Mouse, Screen
	MouseGetPos, absXpos, absYpos
	;MsgBox 
	
	CoordMode, Mouse, Relative
	MouseGetPos, relXpos, relYpos
	MsgBox Relative X=%relXpos%    Relatvie Y=%relYpos%`nScreen X=%absXpos%    Screen Y=%absYpos%
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
