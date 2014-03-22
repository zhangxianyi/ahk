SetTitleMatchMode, 2

#ifWinActive ahk_class MozillaWindowClass
!z::
send ^{z}
return

!1::
send +{home}
return

!2::
send +{end}
return

!q::
send ^{w}
return

!v::
If WinActive("Add URL(s)") or WinActive("Add Downloads") or WinActive("Ìí¼ÓÏÂÔØ")
{
	send ^v
}
else
{
	send !v
}
return

!n::
send ^t
return
#if
