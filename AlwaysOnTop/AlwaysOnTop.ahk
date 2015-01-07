#singleinstance force
bTop=0
!+t::
if (bTop == 0)
{
    WinSet, AlwaysOnTop, ON, A
    msg="top"
}
else
{
    WinSet, AlwaysOnTop, OFF, A
    msg="not top"
}
bTop := 1 - bTop
ToolTip, %msg%, 100,200
SetTimer, RemoveToolTip, 5000
return

RemoveToolTip:
SetTimer, RemoveToolTip, Off
ToolTip
return

