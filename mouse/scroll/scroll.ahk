#singleinstance force
SetTitleMatchMode, 2

;GroupAdd, tty_group, ahk_class PuTTY
;GroupAdd, tty_group, ahk_class mintty
;GroupAdd, tty_group, ahk_class Wan_WidgetWin_0

groupadd, scroll_exclusion_grp, Settings - TortoiseGit

CoordMode, Mouse, Screen
return

#IfWinNotActive ahk_group scroll_exclusion_grp
WheelUp::
	MouseGetPos, m_x, m_y, m_win
	Wingetclass, m_class, ahk_id %m_win%
	if m_class == "XLMAIN"
	{
		ComObjError(false)
		ComObjActive("Excel.Application").ActiveWindow.SmallScroll(0,1,0,0)  ; Scroll up.
		ComObjError(true)
	}
	else
	{
		hw_m_target := DllCall( "WindowFromPoint", "int", m_x, "int", m_y )
		SendMessage, 0x20A, 120 << 16, ( m_y << 16 )|m_x,, ahk_id %hw_m_target%
	}
return

WheelDown::
	MouseGetPos, m_x, m_y, m_win
	Wingetclass, m_class, ahk_id %m_win%
	if m_class == "XLMAIN"
	{
		ComObjError(false)
		ComObjActive("Excel.Application").ActiveWindow.SmallScroll(1,0,0,0)  ; Scroll down.
		ComObjError(true)
	}
	else
	{
		hw_m_target := DllCall( "WindowFromPoint", "int", m_x, "int", m_y )
		SendMessage, 0x20A, -120 << 16, ( m_y << 16 )|m_x,, ahk_id %hw_m_target%
	}
return
#if

;#If !WinActive("ahk_group scroll_exclusion_grp") and !WinActive("ahk_group tty_group")
+Wheelup::
	MouseGetPos, m_x, m_y, m_win
	Wingetclass, m_class, ahk_id %m_win%
	hw_m_target := DllCall( "WindowFromPoint", "int", m_x, "int", m_y )
	if m_class == "XLMAIN"
	{
		ComObjError(false)
		ComObjActive("Excel.Application").ActiveWindow.SmallScroll(0,0,0,1)  ; Scroll left.
		ComObjError(true)
	}
	else if m_class == "OpusApp"
	{
		ComObjActive("Word.Application").ActiveWindow.SmallScroll(0,0,0,1)  ; Scroll left.
	}
	else
	{
		SendMessage, 0x114, 0, 0, , ahk_id %hw_m_target%
	}
return

+Wheeldown::
	MouseGetPos, m_x, m_y, m_win
	Wingetclass, m_class, ahk_id %m_win%
	hw_m_target := DllCall( "WindowFromPoint", "int", m_x, "int", m_y )
	if m_class == "XLMAIN"
	{
		ComObjError(false)
		ComObjActive("Excel.Application").ActiveWindow.SmallScroll(0,0,1,0)  ; Scroll right.
		ComObjError(true)
	}
	else if m_class == "OpusApp"
	{
		ComObjActive("Word.Application").ActiveWindow.SmallScroll(0,0,1,0)  ; Scroll right.
	}
	else
	{
		SendMessage, 0x114, 1, 0, , ahk_id %hw_m_target%
	}
return
;#if
