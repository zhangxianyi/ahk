#singleinstance force

#ifwinactive ahk_class SUMATRA_PDF_FRAME
h::
	send {left}
	return

l::
	send {right}
	return

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

#if
