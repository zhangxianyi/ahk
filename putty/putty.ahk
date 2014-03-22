#IfWinActive ahk_group tty_group

!r::
	send ^{r}
return

!m::
WinGetPos, , , W, H, A
if(W >= A_ScreenWidth or H >= A_ScreenHeight)
{
    WinRestore, A
}
else
{
    WinMaximize, A
    WinMove, A,,50, 0
}
return

;NumpadEnter::Enter

!j::
send {down}
return

!k::
send {up}
return

!u::
send ^{u}
return

!f::
; send `;{enter}
send `{enter}
return

!v::
send +{Ins}
return

!Enter::
WinGetPos, X, Y, , , A
if (X < 0 and X=Y)
{
    WinRestore, A
}
else
{
    WinMaximize, A
}
return

!q::
WinGetTitle, mytitle, A
IfInString, mytitle, PuTTY (inactive)
{
    send !{F4}
}
else
{
    send exit
}
return

!8::
send *{space}
return

+wheeldown::
	send {down}
return

+wheelup::
	send {up}
return

wheelup::
	send +{pgup}
return

wheeldown::
	send +{pgdn}
return

#if
