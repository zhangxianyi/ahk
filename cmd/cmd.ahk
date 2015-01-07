#IfWinActive ahk_group cmd_group
!q::
    send ^c
    send exit{Enter}
return

;!c::
;send ^{c}
;return

!v::
send !{space}{e}{p}
return

!j::
send {Down}
return

!u::
send ^u
return

!k::
send {Up}
return

!f::
send {enter}
return
#if
