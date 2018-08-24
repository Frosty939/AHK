#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;-----info gathering function


!c::
	WinGetTitle, winTitle, A
	
	If (InStr(winTitle,"HowDo"))
		Send ^c{<}code{>}^v{<}/code{>}
	Else
		Send !c
		
Return

$!w::
	WinGet, winP, ProcessName, A
;	MsgBox, %winP%
	If (InStr(winP,"atom.exe"))
		Send ^x{<}well{>}^v{<}/well{>}
	Else
		If A_ThisHotkey = !w
			Send !w
Return


; -------------------------Script Controls----------------------------
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