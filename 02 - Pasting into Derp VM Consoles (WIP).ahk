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

;-----global variable
global vmPaste

;copies into the vmPaste variable
!c::
	send ^c
	vmPaste := clipboard
		
Return
	
;-----allows for pasting into derpy vm consoles	
!v::
	sleep (2000)
	SetKeyDelay, 50, 50 ; Adjust the speed of character sending here. 30, 30 is faster than 50, 50, but is also less reliable since the window may not respond to faster keystrokes. The number is in milliseconds (1/1000 of a second).
	Loop, Read, %vmPaste% ; This loops through each line of the file number.txt located in the main folder of drive C, executing the below command lines each time it loops through a line. Check the file name and path here and adjust accordingly. Remember: It is currently resolving to a file named numbers.txt located in the main folder of drive C.
	  {
		Send {RAW}%A_LoopReadLine% ; This will send the current line contents one character at a time.
		;Send `r`n ; This will send the "enter" keypress after each line.
	  }
	send %vmPaste%
		
Return
	

;||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||	
;end of script
;||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||