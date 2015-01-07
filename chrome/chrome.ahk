#singleinstance force
#g::
!+g::
SetTitleMatchMode, 1
If Not WinExist("Developer Tools -") and Not WinExist("ahk_class Chrome_WidgetWin_1") 
{
	MsgBox, 0x104, , Do you want to run chrome? (Press YES or NO)
	IfMsgBox No
	return
	run, "C:\Program Files\Google\Chrome\Application\chrome.exe"
	return
}
If Not WinExist("Developer Tools -") 
{
	ifWinActive, ahk_class Chrome_WidgetWin_1
	WinMinimize, A
	else
	WinActivate, ahk_class Chrome_WidgetWin_1
}
else
{
	ifWinActive, Developer Tools -
	WinMinimize, A
	else
	WinActivate, Developer Tools -
}
return
#IfWinActive "Developer Tools -"
!f::
send {end}
send {enter}
return
^u::
!u::
	send ^{a}
	send {del}
return
!l::
	send {right}
return
!h::
	send {left}
return
!v::
send ^{v}
return
!i::
send {home}
return
!a::
send {end}
return
!d::
send {del}
return
^wheelup::
send ^{+}
return
^wheeldown::
send ^{-}
return
!w::
	send {backspace}
return
#if
