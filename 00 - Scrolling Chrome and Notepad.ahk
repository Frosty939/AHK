#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn   ; Enable warnings to assist with detecting common errors.
#SingleInstance force   ; Determines whether a script is allowed to run again when it is already running.
#UseHook Off    ; Using the keyboard hook is usually preferred for hotkeys - but here we only need the mouse hook.
#InstallMouseHook
#MaxHotkeysPerInterval 1000 ; Avoids warning messages for high speed wheel users.

SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
Menu, Tray, Tip, Mousewheel tab scroll for Chrome and Notepad++

/*; -------------------------Script Controls----------------------------
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
*/
;-----info gathering function
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


WheelUp::
WheelDown::
;-----info gathering

info()

;-----checking main screen and one custom screen for chrome
    If (absYpos < 33 and InStr(class,"Chrome_WidgetWin") or absXpos < 0 and absYpos < 250 and InStr(class,"Chrome_WidgetWin"))	;checks main screen for chrome
		{
			IfWinNotActive ahk_id %id%
				WinActivate ahk_id %id%
			If A_ThisHotkey = WheelUp
				Send ^{PgUp}
			Else
				Send ^{PgDn}
		}
;-----checking for notepad++ and scrolling
	If (InStr(class,"Notepad++"))
		{
			IfWinNotActive ahk_id %id%
				WinActivate ahk_id %id%
				info()
				
			If (relYpos > 77 and relYpos < 107)
				{
					If A_ThisHotkey = WheelUp
						Send ^{PgUp}
					Else
						Send ^{PgDn}
				}
			Else
				{
					If A_ThisHotkey = WheelUp
						Send {WheelUp}
					Else
						Send {WheelDown}
				}
		}

		
;-----checking main screen and one custom screen for chrome
    If (absYpos < 33 and InStr(class,"MozillaWindowClass"))	;checks main screen for firefox
		{
			IfWinNotActive ahk_id %id%
				WinActivate ahk_id %id%
			If A_ThisHotkey = WheelUp
				Send ^{PgUp}
			Else
				Send ^{PgDn}
		}		
	

	
;-----sending normal scroll action	
    Else
    {
        If A_ThisHotkey = WheelUp
            Send {WheelUp}
        Else
            Send {WheelDown}
    }
Return

;------------Testing for active window class------------------------
/*
NumpadEnter::
	;CoordMode, Mouse, Screen
	MouseGetPos, absXpos, absYpos, id
	WinGetClass, class, ahk_id %id%	
	WinGetClass, class, A
	
	if (InStr(class, "MozillaWindowClass"))
	{
		MsgBox, The active window's class is "%class%".
	}
	else
	{
		MsgBox You failed, but this is the class: %class%
	}
Return	*/