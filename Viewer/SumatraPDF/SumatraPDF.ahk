#singleinstance force

#ifwinactive ahk_class SUMATRA_PDF_FRAME
h::
	MouseGetPos, m_x, m_y, m_win
	Wingetclass, m_class, ahk_id %m_win%
	hw_m_target := DllCall( "WindowFromPoint", "int", m_x, "int", m_y )
	SendMessage, 0x114, 0, 0, , ahk_id %hw_m_target%
	return

l::
	MouseGetPos, m_x, m_y, m_win
	Wingetclass, m_class, ahk_id %m_win%
	hw_m_target := DllCall( "WindowFromPoint", "int", m_x, "int", m_y )
	SendMessage, 0x114, 1, 0, , ahk_id %hw_m_target%
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
