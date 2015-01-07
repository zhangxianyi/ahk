#singleinstance force
b_dbclick_jump:=1

DoubleTap(key,TimeVar=300) 
{
	If (A_ThisHotkey==A_PriorHotkey && A_TimeSincePriorHotkey < TimeVar)
	Send %key%
	else
	Send {%A_ThisHotkey%}
	return
}


#ifwinactive ahk_class si_Frame
!f10::
b_dbclick_jump := !b_dbclick_jump
if(b_dbclick_jump)
Msgbox, double_click_jump is on
else
Msgbox, double_click_jump is off
return

~Lbutton::
if(b_dbclick_jump)
{
	DoubleTap("^=")
}
else
{
	send {Lbutton}
}
return
#if
