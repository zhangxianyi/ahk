#singleinstance force

GroupAdd, view_group, ahk_class Afx:00400000:b:00010011:00000006:000105CA
;GroupAdd, view_group, ahk_class classFoxitReader
;GroupAdd, view_group, ahk_class AcrobatSDIWindow
; GroupAdd, chrome_group, ahk_class Chrome_WidgetWin_0
GroupAdd, chrome_group, ahk_class Chrome_WidgetWin_1

#IfWinActive ahk_class AcrobatSDIWindow
^4::
return
!;::
	send ^{f}
return
#if

#IfWinActive ahk_group view_group
space::
h::
l::
j::
k::
-::
=::
q::
d::
g::
,::
.::
ControlGetFocus, which_control, A
; If (InStr(which_control, "Edit") or InStr(which_control, "FoxitReaderPopupWindowClass1"))
If InStr(which_control, "Edit")
{
    send {%A_ThisHotkey%}
    return
}
else
{
    if(A_ThisHotkey = "space")
    {
	send {pgdn}
    }
    else if(A_ThisHotkey = ".")
    {
	send ^{tab}
	return
    }
    else if(A_ThisHotkey = ",")
    {
	send ^+{tab}
	return
    }
    else if(A_ThisHotkey = "q" or A_ThisHotkey = "d")
    {
	send ^{w}
    }
    else if(A_ThisHotkey = "g")
    {
	    if WinActive("ahk_class AcrobatSDIWindow")
	    {
		    send +^{N}
	    }
	    else
	    {
		    send ^{g}
	    }
    }
    else if(A_ThisHotkey = "h")
    {
	    if WinActive("ahk_class AcrobatSDIWindow")
	    {
		    send {left}
	    }
	    else
	    {
		    SendMessage, 0x114, 0, 0, %which_control%, A
	    }
    }
    else if(A_ThisHotkey = "l")
    {
	    if WinActive("ahk_class AcrobatSDIWindow")
	    {
		    send {right}
	    }
	    else
	    {
		    SendMessage, 0x114, 1, 0, %which_control%, A
	    }
    }
    else if(A_ThisHotkey = "k")
    {
	    if WinActive("ahk_class AcrobatSDIWindow")
	    {
		    send {up}
	    }
	    else
	    {
		    SendMessage, 0x115, 0, 0, %which_control%, A
	    }
    }
    else if(A_ThisHotkey = "j")
    {
	    if WinActive("ahk_class AcrobatSDIWindow")
	    {
		    send {down}
	    }
	    else
	    {
		    SendMessage, 0x115, 1, 0, %which_control%, A
	    }
    }
    else if(A_ThisHotkey = "-")
    {
	send ^{-}
    }
    else if(A_ThisHotkey = "=")
    {
	send ^{=}
    }
    return
}

;up::
;ControlGetFocus, which_control, A
;SendMessage, 0x115, 0, 0, %which_control%, A
;return

;down::
;ControlGetFocus, which_control, A
;SendMessage, 0x115, 1, 0, %which_control%, A
;return
#if

#If WinActive("ahk_group view_group") or WinActive("ahk_group chrome_group")
!f::
if WinActive("Developer Tools -")
{
	send {enter}
	return
}
else
{
	ControlGetFocus, which_control, A
	If InStr(which_control, "Edit")
	{
		send {enter}
	}
	else
	{
		send {pgdn}
	}
}
return

!j::
send {down}
return

!k::
send {up}
return

!v::
if WinActive("Developer Tools -")
{
	send ^{v}
	return
}
ControlGetFocus, which_control, A
If InStr(which_control, "Edit")
{
	send ^{v}
}
else
{
	send {pgup}
}
return

!g::
	if WinActive("ahk_class AcrobatSDIWindow")
	{
		send +^{N}
	}
	else
	{
		send ^{g}
	}
return

#wheelup::
~Rbutton & WheelUp::
!h::
send ^+{tab}
return

#wheeldown::
~Rbutton & WheelDown::
!l::
send ^{tab}
return

!=::
send ^{=}
return

!-::
send ^{-}
return

;!w::
;send ^{home}
;return

;!x::
;send ^{end}
;return

!q::
send ^{w}
return

#if
