#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


#IfWinActive, Audacity
	!d::
	!1::
	!2::
	!3::
	!4::
	!5::
			msgbox not while Audacity active
return
	

	
#IfWinActive
	!d::
	FormatTime, CurrentDateTime,, (MM.dd.yy)
	SendInput %CurrentDateTime%
return



#IfWinActive
	!1::
	Send, ttnov101775
return



#IfWinActive
	!2::
	Send, UTTboyer
return



#IfWinActive
	!3::
	Send, jax.grandstream.com/sguzman/
return



#IfWinActive
	!4::
	Send, lspbx02.50tel.com/pbx/autoprovision/
return
	
	
	
#IfWinActive
	!5::
	Send, 50telsupport16
return



	:*:admin1::admin`tUTT50tel`n
return



	:*:wboyer1::wboyer`tUTT50tel`n
return



	:*:wboyer2::wboyer`tUTTboyer`n
return	



	!`::
	Send, 159fert`%9&661
return