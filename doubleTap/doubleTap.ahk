#singleinstance force

DoubleTap(key,TimeVar=300) 
{
	If (A_ThisHotkey==A_PriorHotkey && A_TimeSincePriorHotkey < TimeVar)
	Send %key%
	else
	Send {%A_ThisHotkey%}
	return
}


#ifwinactive ahk_class si_Frame
Lbutton::DoubleTap("^=")
#if
