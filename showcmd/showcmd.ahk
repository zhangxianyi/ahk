; Example: Press Shift+Escape to show the command line which was used
;   to launch the active window's process.  Requires XP or later.

; #IfWinNotActive ahk_class MozillaWindowClass
+Esc::
    WinGet pid, PID, A
    ; Get WMI service object.
    wmi := ComObjGet("winmgmts:")
    ; Run query to retrieve matching process(es).
    queryEnum := wmi.ExecQuery(""
        . "Select * from Win32_Process where ProcessId=" . pid)
        ._NewEnum()
    ; Get first matching process.
    if queryEnum[process]
    {
	clipboard = % process.CommandLine
        MsgBox 0, Command line, % process.CommandLine
    }
    else
        MsgBox Process not found!
    ; Free all global objects (not necessary when using local vars).
    wmi := queryEnum := process := ""
return
; Win32_Process: http://msdn.microsoft.com/en-us/library/aa394372.aspx
; #If
