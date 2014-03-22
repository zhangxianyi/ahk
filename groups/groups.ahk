#IfWinNotActive ahk_group alt_m_exclusion
!m::
WinGetPos, X, Y, width, , A
if (X < 0 or Y < 0)
{
    WinRestore, A
}
else
{
    WinMaximize, A
}
return
#if

#If (WinActive("ahk_group alt_x_inclusion") || not(WinActive("ahk_group alt_x_exclusion")))
!x::
WinMinimize, A
return
#if

#If Not WinActive("ahk_group alt_q_exclusion") or WinActive("ahk_group alt_q_inclusion")
!q::
send !{F4}
;Winclose
return
#if

#IfWinActive ahk_group jk_altfv_group
j::
ControlGetFocus, which_control, A
IfInString, which_control, Edit
{
    send j
    return
}
else
{
    send {Down}
    return
}

k::
ControlGetFocus, which_control, A
IfInString, which_control, Edit
{
    send k
    return
}
else
{
    send {Up}
    return
}

!l::
send {F6}
return

!h::
send {F6}
return

!f::
send {Pgdn}
return

!v::
send {Pgup}
return
#if

#IfWinActive ahk_group alt_v_paste
!v::
send ^{v}
return
#if

#IfWinActive ahk_group alt_n_acception
!n:: 
WinMinimize, A
return
#if

#IfWinActive ahk_group alt_c_inclusion
!c:: 
;Msgbox
send ^c
return
#if
