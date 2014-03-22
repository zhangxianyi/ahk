#singleinstance force
bTop=0
!+t::
if (bTop == 0)
{
    ; WinSet, Transparent, 200, A
    ; WinSet, TransColor, white, 50, A
    ; WinSet, TransColor, 00FF00 150, A
    WinSet, AlwaysOnTop, ON, A
    ; WinSet, Style, -0xC00000, A ; remove title bar
    msg="top"
}
else
{
    ; WinSet, Transparent, OFF, A
    ; WinSet, TransColor, OFF, A
    WinSet, AlwaysOnTop, OFF, A
    ; WinSet, Style, +0xC00000, A ; add title bar
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

