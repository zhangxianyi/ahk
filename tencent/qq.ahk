#singleinstance force
SetTitleMatchMode, 2

#IfWinActive ahk_class TXGuiFoundation
!,::
send ^+{tab}
return

!.::
send ^{tab}
return

!wheeldown::
!m::
!n::
!x::
if winactive("QQ2013")
{
    send !{9}
}
else
{
    WinMinimize, A
}
return

!v::
send ^v
return

Rbutton & wheelup::
send ^+{tab}
return

Rbutton & wheeldown::
send ^{tab}
return
