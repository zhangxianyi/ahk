#IfWinActive ahk_class ConsoleWindowClass
!q::
    send ^c
    send exit{Enter}
    return
#if

;!q::
;ifWinActive, python
;{
    ;send ^{c}exit(){Enter}
;}
;ifWinActive, wxwidget
;{
    ;send !{F4}
;}
;else {
    ;send ^c
    ;send exit{Enter}
;}
;return

;!c::
;send ^{c}
;return

;!v::
;send !{space}{e}{p}
;return

;!j::
;send {Down}
;return

;!u::
;send ^u
;return

;!k::
;send {Up}
;return

;!b::
;ifwinactive, MINGW32
;{
    ;send !b
;}
;else
;{
    ;send ^{left}
;}
;return

;!f::
;send {enter}
;return

;^l::
;ifwinactive, MINGW32
;{
    ;send ^l
;}
;else
;{
    ;send ^{c}
    ;send cls{Enter}
;}
;return
