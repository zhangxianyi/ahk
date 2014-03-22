#c::
Drive, Eject
; If the command completed quickly, the tray was probably already ejected.
; In that case, retract it:
if A_TimeSinceThisHotkey < 1000  ; Adjust this time if needed.
    Drive, Eject,, 1
return
