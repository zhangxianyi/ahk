#o::
sleep 1000
; SendMessage, 0x112, 0xF140, 0,, Program Manager  ; 0x112 is WM_SYSCOMMAND, and 0xF140 is SC_SCREENSAVE.
SendMessage, 0x112, 0xF170, 2,, Program Manager  ; 0x112 is WM_SYSCOMMAND, and 0xF140 is SC_SCREENSAVE.
return

^!r::
winset, AlwaysOnTop, Toggle, A
return

^space::#space
return
