#IfWinactive ahk_class Vim
#wheelup::
^wheelup::
send !{+}
return

+wheelup::
send zh
return

+wheeldown::
send zl
return

#wheeldown::
^wheeldown::
send !{_}
return

^1::
send 1gt
return

^2::
send 2gt
return

!Esc::
send ^{w}{o}
return

^3::
send 3gt
return

#if
