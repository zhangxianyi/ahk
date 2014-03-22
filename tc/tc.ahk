#singleinstance force

#IfWinActive ahk_class TTOTAL_CMD
^1::
send ^1
clipboard = %clipboard%\
return

MButton::
send {bs}
return

+RButton::
send {Appskey}
return

;~^q::
;send {tab}
;return

;!g::
;^g::
;WinGet sf_aControls, ControlList
;Loop Parse, sf_aControls, `n
;{
    ;StringLeft sf_sTemp, A_LoopField, 6
    ;if (sf_sTemp = "TPanel")
    ;{
	;ControlGetPos Cx,Cy,Cw,Ch, %A_LoopField%
	;if (Cw < 16)
	;{
	    ;ControlClick %A_LoopField%, A,,RIGHT
	    ;Break
	;}
    ;}
;}
;Return
#if
