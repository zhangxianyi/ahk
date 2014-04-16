#singleinstance force

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
    ; IfWinNotExist不能识别systray中的window
    IfWinNotExist, %which_window%
    {
	; Msgbox, %which_window%
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
;myWinActive("Muttator", "D:\skill\Apps\Mozilla Thunderbird\thunderbird.exe")
return

!+u::
; myWinActive("ahk_class AU3Reveal", "c:\Apps\AutoHotkey\AU3_Spy.exe")
WinGetClass, ac, A
clipboard = ahk_class %ac%
MsgBox 0, ahk_class, ahk_class %ac%
return

!+c::
; myWinActive("ahk_class wxWindowClassNR", "D:\skill\Apps\codeblocks\CB_20130907_rev9295_win32\codeblocks.exe")
myWinActive("ahk_class HH Parent")
return

!+d::
;!+s::
;myWinActive("ahk_class classFoxitReader", "D:\skill\Apps\foxit Software\Foxit Reader\Foxit Reader.exe", 0, 3, 1)
myWinActive("ahk_class SUMATRA_PDF_FRAME", "D:\skill\Apps\SumatraPDF\SumatraPDF.exe", 0, 3, 1)
return

;!+d::
;myWinActive("ahk_class AcrobatSDIWindow", "D:\skill\Apps\Adobe\Reader 11.0\Reader\AcroRd32.exe", 0, 3, 1)
;; send {esc}
;return

^+m::
myWinActive("安全删除硬件", "RunDll32.exe shell32.dll,Control_RunDLL hotplug.dll")
return

!+l::
!+a::
#a::
;myWinActive("ahk_class Vim", "d:\PortableApps\vim\vim74\gvim.exe")
myWinActive("ahk_class Vim", "d:\PortableApps\vim\vim73\gvim.exe")
return

!+w::
myWinActive("ahk_class OpusApp", "c:\Program Files\Microsoft Office\OFFICE12\WINWORD.EXE /n", 0, 3, 1)
return

!+e::
myWinActive("ahk_class XLMAIN", "c:\Program Files\Microsoft Office\OFFICE12\EXCEL.EXE")
return

!+r::
myWinActive("ahk_class VMPlayerFrame", "d:\skill\Apps\VMware Player\vmplayer.exe", 0, 3, 1)
return

!+i::
!+s::
myWinActive("ahk_class si_Frame", "d:\skill\apps\insight3\insight3.exe -s", 0, 3, 1)
return

!+n::
run D:\skill\Apps\Tencent\Bin\QQScLauncher.exe /uin:20558641 /quicklunch:5B1458DA75D730A9BA62F98E32AE2B2BC0D93882B7121D9683E1E46F0B20A3154BA21A4694799C15
return

!+p::
; myWinActive("ahk_class PuTTY", "D:\skill\Apps\putty\putty6.0_nd1.17\putty.exe -load f13-192.168.1.105 -l afj -pw afj ")
myWinActive("ahk_class Wan_WidgetWin_0", "D:\skill\Apps\putty\putty_nd3.1\putty.exe -load f13-192.168.1.105 -l afj -pw afj ",0, 3, 0, "WintabPage")
return

!+]::
myWinActive("ahk_class WindowsForms10.Window.8.app.0.1ca0192_r16_ad1", "D:\skill\Apps\Fiddler2\Fiddler.exe", 0, 3, 1)
return

!+h::
myWinActive("ahk_class ConsoleWindowClass", "cmd.exe")
return

!+m::
myWinActive("ahk_class MediaPlayerClassicW", "c:\Program Files\K-Lite Codec Pack\Media Player Classic\mpc-hc.exe")
return

;!+s::
;myWinActive("ahk_class tSkMainForm", "D:\skill\Apps\Skype\Phone\Skype.exe", 0, 3, 1)
;; myWinActive(" - Repository Browser", "D:/skill/Apps/TortoiseSVN/bin/TortoiseProc.exe /command:repobrowser /path:svn://localhost /closeonend:0", 2)
;return

!+f::
#i::
;!+i::
; myWinActive("ahk_class MozillaWindowClass", "C:\Program Files\Mozilla Firefox\firefox.exe")
myWinActive("ahk_class MozillaWindowClass", "d:\skill\Apps\Firefox\firefox.exe", 0, 3, 1)
;myWinActive("Vimperator", "d:\skill\Apps\Firefox\firefox.exe", 0, 2, 1)
return

;#g::
;!+g::
;!+q::
;;myWinActive("ahk_class Chrome_WidgetWin_1", "C:\Program Files\Google\Chrome\Application\chrome.exe", 0, 3, 1)
;myWinActive("Developer Tools -", "C:\Program Files\Google\Chrome\Application\chrome.exe", 0, 1, 1)
;; myWinActive("ahk_class Chrome_WidgetWin_1", "C:\Program Files\Google\Chrome\Application\chrome.exe -enable-easy-off-store-extension-install")
;return

!+[::
myWinActive("ahk_class IEFrame", "c:/Program Files/Internet Explorer/iexplore.exe", 0, 3, 1)
return

#z::
myWinActive("ahk_class TTOTAL_CMD", "D:\skill\Apps\totalcmd\TOTALCMD.EXE")
return

#q::
myWinActive("ahk_class EVERYTHING", "D:\skill\Apps\Everything\Everything.exe")
return

!+q::
myWinActive("ahk_class gdkWindowToplevel", "d:\skill\Apps\Wireshark\Wireshark.exe",0, 3, 1)
return

!+b::
myWinActive("ahk_class TViewForm.UnicodeClass", "D:\skill\Apps\Beyond Compare 3\BCompare.exe", 0, 3, 1)
return

!+x:: ;dict
!+j::
myWinActive("金山词霸", "D:\skill\Apps\Kingsoft\PowerWordDict\XDict.exe",0, 2, 1)
; myWinActive("ahk_class QWidget", "D:\skill\Apps\Calibre\ebook-viewer.exe")
return
