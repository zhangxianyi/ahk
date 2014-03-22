#singleinstance force

#ifwinactive ahk_class SUMATRA_PDF_FRAME

F4::
	send {f12}
	return

!c::
	send ^{c}
	return

!v::
	send {pgup}
	return

!f::
	send {pgdn}
	return

!;::	
	send ^{f}
	return
