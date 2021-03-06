
; Easy Access to Favorite Folders -- by Savage
; http://www.autohotkey.com
; When you click the middle mouse button while certain types of
; windows are active, this script displays a menu of your favorite
; folders.  Upon selecting a favorite, the script will instantly
; switch to that folder within the active window.  The following
; window types are supported: 1) Standard file-open or file-save
; dialogs; 2) Explorer windows; 3) Console (command prompt) windows.
; The menu can also be optionally shown for unsupported window
; types, in which case the chosen favorite will be opened as a new
; Explorer window.

; Note: In Windows Explorer, if "View > Toolbars > Address Bar" is
; not enabled, the menu will not be shown if the hotkey chosen below
; has a tilde.  If it does have a tilde, the menu will be shown
; but the favorite will be opened in a new Explorer window rather
; than switching the active Explorer window to that folder.

; CONFIG: CHOOSE YOUR HOTKEY
; If your mouse has more than 3 buttons, you could try using
; XButton1 (the 4th) or XButton2 (the 5th) instead of MButton.
; You could also use a modified mouse button (such as ^MButton) or
; a keyboard hotkey.  In the case of MButton, the tilde (~) prefix
; is used so that MButton's normal functionality is not lost when
; you click in other window types, such as a browser.  The presence
; of a tilde tells the script to avoid showing the menu for
; unsupported window types.  In other words, if there is no tilde,
; the hotkey will always display the menu; and upon selecting a
; favorite while an unsupported window type is active, a new
; Explorer window will be opened to display the contents of that
; folder.
; f_Hotkey = ~MButton
; f_Hotkey2 = +LButton

; CONFIG: CHOOSE YOUR FAVORITES
; Update the special commented section below to list your favorite
; folders.  Specify the name of the menu item first, followed by a
; semicolon, followed by the name of the actual path of the favorite.
; Use a blank line to create a separator line.

/*
ITEMS IN FAVORITES MENU <-- Do not change this string.
nop;
si.ahk;D:\skill\autohotkey\scenes\si\si.ahk
EasyWindowDrag.ahk;D:\skill\Apps\AutoHotkey\scripts\EasyWindowDrag\EasyWindowDrag_(KDE).ahk
FavoriteFolders;D:\skill\autohotkey\scenes\FavoriteFolders\myFavoriteFolders.ahk
gsnova;D:\skill\network\proxy\Google.App.Engine\snova\gsnova-0.22.0\gsnova.exe
MouseGestureL;D:\skill\Apps\AutoHotkey\scripts\mouse\gesture\MouseGestureL\v130\MouseGestureL\MouseGestureL.ahk
scroll;D:\skill\Apps\AutoHotkey\scripts\mouse\scroll\scroll.ahk
ahk.bat;D:\skill\Apps\AutoHotkey\ahk.bat
*/
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;winactive;D:\skill\autohotkey\scenes\WinActive\WinActive.ahk
;0kill.skype;taskkill /f /im skype.exe
;1kill.qq;taskkill /f /im qq.exe
;Desktop      ; %A_Desktop%
;taskmgr;taskmgr
;Favorites    ; %A_Desktop%\..\Favorites
;My Documents ; %A_MyDocuments%
;msys;D:\skill\Apps\MinGW\msys\1.0\msys.bat
;codeblocks;D:\skill\Apps\codeblocks\CB_20130412_rev8982_win32\codeblocks.exe
;vc9;"C:\WINDOWS\system32\cmd.exe" /k ""C:\Program Files\Microsoft Visual Studio 9.0\VC\vcvarsall.bat"" x86

; END OF CONFIGURATION SECTION
; Do not make changes below this point unless you want to change
; the basic functionality of the script.

; #SingleInstance  ; Needed since the hotkey is dynamically created.
#singleinstance force

; Hotkey, %f_Hotkey%, f_DisplayMenu

;----Read the configuration file.
f_AtStartingPos = n
f_MenuItemCount = 0
Loop, Read, %A_ScriptFullPath%
{
	if f_FileExt <> Exe
	{
		; Since the menu items are being read directly from this
		; script, skip over all lines until the starting line is
		; arrived at.
		if f_AtStartingPos = n
		{
			IfInString, A_LoopReadLine, ITEMS IN FAVORITES MENU
				f_AtStartingPos = y
			continue  ; Start a new loop iteration.
		}
		; Otherwise, the closing comment symbol marks the end of the list.
		if A_LoopReadLine = */
			break  ; terminate the loop
	}
	; Menu separator lines must also be counted to be compatible
	; with A_ThisMenuItemPos:
	f_MenuItemCount++
	if A_LoopReadLine =  ; Blank indicates a separator line.
		Menu, Favorites, Add
	else
	{
		StringSplit, f_line, A_LoopReadLine, `;
		f_line1 = %f_line1%  ; Trim leading and trailing spaces.
		f_line2 = %f_line2%  ; Trim leading and trailing spaces.
		; Resolve any references to variables within either field, and
		; create a new array element containing the path of this favorite:
		Transform, f_path%f_MenuItemCount%, deref, %f_line2%
		Transform, f_line1, deref, %f_line1%
		Menu, Favorites, Add, %f_line1%, f_OpenFavorite
	}
}
return  ;----End of auto-execute section.


;----Open the selected favorite
f_OpenFavorite:
; Fetch the array element that corresponds to the selected menu item:
StringTrimLeft, f_path, f_path%A_ThisMenuItemPos%, 0
if f_path =
	return
; Since the above didn't return, one of the following is true:
; 1) It's an unsupported window type but f_AlwaysShowMenu is y (yes).
; 2) It's a supported type but it lacks an Edit1 control to facilitate the custom
;    action, so instead do the default action below.
; Run, Explorer %f_path%  ; Might work on more systems without double quotes.
Run, %f_path%  ; Might work on more systems without double quotes.
return


;----Display the menu
;for totalcmd. we exclude this keys because we need the right context menu.
#IfWinNotActive, ahk_class TTOTAL_CMD
+RButton::
Menu, Favorites, show
return
#if
