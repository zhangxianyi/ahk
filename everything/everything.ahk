#ifwinactive ahk_class EVERYTHING
!c::
	send ^c
	return

; Esc::
	; return

!v::
	send ^v
	return

!z::
	send ^z
	return

!1::
	send !1
	Msgbox, %clipboard%
	return

!2::
	send !2
	Msgbox, %clipboard%
	return

!3::
	send !2
	StringReplace,clipboard,clipboard,C:,/media/c
	StringReplace,clipboard,clipboard,D:,/media/d
	StringReplace,clipboard,clipboard,E:,/media/e
	StringReplace,clipboard,clipboard,\,/,all
	StringReplace,clipboard,clipboard,%A_Space%, \%A_Space%, all
	Msgbox, %clipboard%
	return

!4::
	send !1
	StringReplace,clipboard,clipboard,C:,/media/c
	StringReplace,clipboard,clipboard,D:,/media/d
	StringReplace,clipboard,clipboard,E:,/media/e
	StringReplace,clipboard,clipboard,\,/,all
	StringReplace,clipboard,clipboard,%A_Space%, \%A_Space%, all
	Msgbox, %clipboard%
	return

#if
