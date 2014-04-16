#singleinstance force

#ifwinactive ahk_class si_Frame
b_rbutton_goback:=1
b_dbclick_jump:=1

!m::
send ^{m}
return

!f9::
b_rbutton_goback := !b_rbutton_goback
if(b_rbutton_goback)
Msgbox, right go back is on
else
Msgbox, right go back is off
return

!f10::
b_dbclick_jump := !b_dbclick_jump
if(b_dbclick_jump)
Msgbox, double_click_jump is on
else
Msgbox, double_click_jump is off
return

; !+k::
; send !+{k}
; return

+Wheeldown::
send !+]
return

+Wheelup::
send !+[
return

!f::
ControlGetFocus, OutputVar, A
if (OutputVar == "Edit1")
send {enter}
else
send !f
return

; !v::
; send ^v
; return

!s::
send ^s
return

!1::
send +{home}
return

!2::
send +{end}
return

; +Lbutton::
; send {Lbutton}
; send !{j}
; return

Rbutton::
if(b_rbutton_goback)
send !{,}
else
send {Rbutton}
return

Mbutton::
send {Lbutton}
;send !+{F8}
send +{F8}
return

+Mbutton::
send {Lbutton}
send !+{F8}
send +{F8}
return

; ~lbutton & lbutton::
; send ^{c}
; return

^Wheeldown::
send !+.
return

^Wheelup::
send !+,
return
#if

#ifwinactive Browse Project Symbols
!f::
send {enter}
return
#if

#ifwinactive Multiple Locations
!f::
send !{s}
return

!k::
!j::
send {F4}
return
#if

#ifwinactive Browse Local Symbols
!e::
!k::
send {up}
return

!d::
!j::
send {down}
return

!f::
send !j
return
#if
