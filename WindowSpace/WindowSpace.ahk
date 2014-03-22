#singleinstance force
; no require D:\skill\autohotkey\scenes\all\all.ahk
veroffset = 5
leftoffset = 51

;GroupAdd, ctrl_tab_group_exclusion, ahk_class si_Frame
;GroupAdd, ctrl_tab_group_exclusion, ahk_class Wan_WidgetWin_0
;GroupAdd, ctrl_tab_group_exclusion, ahk_class TXGuiFoundation
;GroupAdd, ctrl_tab_group_exclusion, ahk_class Vim
;GroupAdd, ctrl_tab_group_exclusion, ahk_class Chrome_WidgetWin_1
;GroupAdd, ctrl_tab_group_exclusion, ahk_class classFoxitReader
;GroupAdd, ctrl_tab_group_exclusion, ahk_class MozillaWindowClass
;GroupAdd, ctrl_tab_group_exclusion, ahk_class #32770
;GroupAdd, ctrl_tab_group_exclusion, ahk_class IEFrame

; ---------------------------------------------------------
; Move to the screen edge
; Win + Arrow Keys
#Left::
WinGetPos, X, Y, W, , A
if (X == (A_ScreenWidth - W))
{
    WinMove, A,,(A_ScreenWidth - W)/2, Y
}
else
{
    WinMove, A,, leftoffset, Y
}

return

#Right::
WinGetPos, X, Y, W, H, A
if (X < (A_ScreenWidth - W)/2 - 10)
{
    WinMove, A,,(A_ScreenWidth - W)/2, Y
}
else
{
    WinMove, A,,(A_ScreenWidth - W), Y
}
return

#Up::
WinGetPos, X, Y, W, H, A
if (Y == (A_ScreenHeight - H - veroffset))
{
    WinMove, A, ,X, (A_ScreenHeight - H)/2
}
else
{
    WinMove, A, ,X, 0
}
return

#Down::
WinGetPos, X, Y, W, H, A
if (Y == 0)
{
    WinMove, A,,X, (A_ScreenHeight - H)/2
}
else
{
    WinMove, A,,X, (A_ScreenHeight - H - veroffset)
}
return

; ---------------------------------------------------------
; Move window
; Win + Ctrl + Arrow Keys

^#Left::
WinGetPos, X, , , ,A
WinMove, A, ,(X-20)
return

^#Right::
WinGetPos, X, , , ,A
WinMove, A, ,(X+20)
return

^#Up::
WinGetPos, ,Y , , ,A
WinMove, A, , ,(Y-20)
return

^#Down::
WinGetPos, ,Y , , ,A
WinMove, A, , ,(Y+20)
return

; ---------------------------------------------------------
; Resize to the screen edge
^!#Left::
WinGetPos, X, Y, W, ,A
WinMove, A, , 0, Y, x + W
return

^!#Right::
WinGetPos, X, Y, W, , A
WinMove, A, , , , A_ScreenWidth - X
return

^!#Up::
WinGetPos, X, Y, , H, A
WinMove, A, , X, 0, , Y + H
return

^!#Down::
WinGetPos, , Y, , H, A
WinMove, A, , , , , A_ScreenHeight - 30 - Y
return

; ---------------------------------------------------------
; Resize
!#Left::
WinGetPos, , ,W , ,A
WinMove, A, , , ,(W-20)
return

!#Right::
WinGetPos, , ,W , ,A
WinMove, A, , , ,(W+20)
return

!#Up::
WinGetPos, , , ,H ,A
WinMove, A, , , , ,(H-20)
return

!#Down::
WinGetPos, , , ,H ,A
WinMove, A, , , , ,(H+20)
return

;#IfWinNotActive ahk_group ctrl_tab_group_exclusion
;^Tab::
;WinGetClass, ac, A
;WinGet, icount, COUNT, ahk_class %ac%
;if(icount == 1)
;{
    ;return
;}
;WinSet, Bottom, , A
;WinActivate, ahk_class %ac%
;return

;^+Tab::
;WinGetClass, ac, A
;WinActivateBottom, ahk_class %ac%
;return
;#if
