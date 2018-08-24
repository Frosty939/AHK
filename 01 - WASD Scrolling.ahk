#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

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



;reassigning the arrow keys, and using space for 'next turn'

	a::left
	s::down
	d::right
	w::up
	XButton1::NumpadSub
	XButton2::NumpadAdd
	Space::Enter

;end of script