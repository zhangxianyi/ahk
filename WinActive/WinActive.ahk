#singleinstance force
;D:\skill\Apps\AutoHotkey\AU3_Spy.exe
myWinActive(which_window, target="", bDetectHiddenWindows=0, TitleMatchMode=3, bAsk=0, focus="")
{
    SetTitleMatchMode, %TitleMatchMode%
    if(%bDetectHiddenWindows% == 1)
    {
	DetectHiddenWindows, on
    }
    else
    {
	DetectHiddenWindows, off
    }
    IfWinNotExist, %which_window%
    {
	if(target <> "")
	{
	    if(bAsk == 1)
	    {
		MsgBox, 0x104, , Do you want to run %target%? (Press YES or NO)
		IfMsgBox No
		{
		    clipboard = % target
		    return
		}
	    }
	    run, %target%
	}
	else
	{
	    Msgbox, "tell me what to run"
	}
	return
    }
    Else IfWinNotActive, %which_window%
    {
	WinActivate
	WinWaitActive
	if (focus <> "")
	{
	    Controlfocus, %focus%
	}
    }
    Else
    {
	WinMinimize, A
    }
    Return
}

!+y::
myWinActive("ahk_class FlashMail MainForm", "C:\Apps\Netease\网易闪电邮\Start.exe", 0, 3, 1)
return

!+u::
WinGetClass, ac, A
clipboard = ahk_class %ac%
MsgBox 0, ahk_class, ahk_class %ac%
return

!+c::
myWinActive("ahk_class HH Parent")
return

!+d::
myWinActive("ahk_class SUMATRA_PDF_FRAME", "D:\skill\Apps\SumatraPDF\SumatraPDF.exe", 0, 3, 1)
return


^+m::
myWinActive("安全删除硬件", "RunDll32.exe shell32.dll,Control_RunDLL hotplug.dll")
return

!+l::
!+a::
#a::
myWinActive("ahk_class Vim", "D:\skill\Apps\Vim\vim74\gvim.exe")
return

!+w::
;myWinActive("ahk_class OpusApp", "c:\Program Files\Microsoft Office\OFFICE12\WINWORD.EXE /n", 0, 3, 1)
myWinActive("ahk_class OpusApp", "c:\Program Files (x86)\Microsoft Office\OFFICE12\WINWORD.EXE /n", 0, 3, 1)
return

!+e::
myWinActive("ahk_class XLMAIN", "c:\Program Files\Microsoft Office\OFFICE12\EXCEL.EXE")
return

!+r::
!+x::
;myWinActive("ahk_class VMPlayerFrame", "d:\skill\Apps\VMware Player\vmplayer.exe", 0, 3, 1)
myWinActive("Oracle VM VirtualBox", "D:\skill\Apps\Oracle\VirtualBox\VirtualBox.exe",0, 2, 1)
return

!+i::
!+s::
myWinActive("ahk_class si_Frame", "d:\skill\apps\insight3\insight3.exe -s", 0, 3, 1)
return

!+n::
;run c:\Program Files (x86)\Tencent\QQ\Bin\QQScLauncher.exe/ uin:20558641 /quicklunch:5B1458DA75D730A9BA62F98E32AE2B2BC0D93882B7121D9683E1E46F0B20A3154BA21A4694799C15
run "C:\Program Files (x86)\Tencent\QQ\Bin\QQScLauncher.exe" /uin:20558641 /quicklunch:BFC979419B71FBED317030AE29D1CE437B8E295F9FBA01689F7A4A67A26B6ABF6B7A225BCF933CA6
;myWinActive("ahk_class TXGuiFoundation", "c:\Program Files (x86)\Tencent\QQ\Bin\QQ.exe", 0, 3, 1)
return

!+p::
;myWinActive("ahk_class Wan_WidgetWin_0", "D:\skill\Apps\putty\putty_nd3.1\putty.exe -load centos6.5",0, 3, 0, "WintabPage")
;myWinActive("ahk_class PuTTY", "d:\skill\Apps\putty\PUTTY.EXE -load centos6.5 -l afj -i C:\Users\zxy\Documents\lenovo.ppk",0, 3, 1, "")
myWinActive("ahk_class PuTTY", "d:\skill\Apps\putty\PUTTY.EXE -load f20 -l afj -i C:\Users\zxy\Documents\lenovo.ppk",0, 3, 1, "")
return

!+]::
myWinActive("ahk_class WindowsForms10.Window.8.app.0.1ca0192_r16_ad1", "D:\skill\Apps\Fiddler2\Fiddler.exe", 0, 3, 1)
return

!+h::
;!+p::
;myWinActive("ahk_class ConsoleWindowClass", "cmd.exe")
;myWinActive("ahk_class VirtualConsoleClass", "d:\skill\Apps\ConEmuPack.141017\ConEmu64.exe")
;myWinActive("ahk_class VirtualConsoleClass", "d:\skill\Apps\ConEmuPack.141025\ConEmu64.exe")
myWinActive("ahk_class VirtualConsoleClass", "d:\skill\Apps\ConEmuPack.141025\ConEmu64.exe /cmd cmd.exe -new_console:a")
return

!+m::
;myWinActive("ahk_class MediaPlayerClassicW", "c:\Program Files\K-Lite Codec Pack\Media Player Classic\mpc-hc.exe")
myWinActive("ahk_class MediaPlayerClassicW", "C:\Program Files\MPC-HC\mpc-hc64.exe")
return


!+f::
#l::
myWinActive("ahk_class MozillaWindowClass", "d:\skill\Apps\Mozilla Firefox\firefox.exe", 0, 3, 1)
;myWinActive("ahk_class MozillaWindowClass", "C:\Program Files (x86)\Mozilla Firefox\firefox.exe", 0, 3, 1)
;myWinActive("ahk_class MozillaWindowClass", "D:\skill\Apps\Waterfox\waterfox.exe", 0, 3, 1)
return


!+[::
myWinActive("ahk_class IEFrame", "c:/Program Files/Internet Explorer/iexplore.exe", 0, 3, 1)
return

#z::
myWinActive("ahk_class TTOTAL_CMD", "D:\skill\Apps\totalcmd\TOTALCMD64.EXE")
return

#q::
myWinActive("ahk_class EVERYTHING", "d:\skill\Apps\Everything\Everything.exe")
return

!+q::
myWinActive("ahk_class gdkWindowToplevel", "d:\skill\Apps\Wireshark\Wireshark.exe",0, 3, 1)
;myWinActive("Oracle VM VirtualBox", "D:\skill\Apps\Oracle\VirtualBox\VirtualBox.exe",0, 2, 1)
return

!+v::
myWinActive("ahk_class Qt5QWindowIcon", "D:\skill\Apps\Calibre2\ebook-viewer.exe", 0, 3, 1)
return

!+b::
myWinActive("ahk_class TViewForm.UnicodeClass", "D:\skill\Apps\Beyond Compare 3\BCompare.exe", 0, 3, 1)
return

!+j::
myWinActive("金山词霸", "D:\skill\Apps\Kingsoft\PowerWordDict\XDict.exe",0, 2, 1)
return
