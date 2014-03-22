
; ---------------------------------------------------------
GroupAdd, chm_group, ahk_class HH Parent
GroupAdd, cmd_group, ahk_class ConsoleWindowClass

; ---------------------------------------------------------
groupadd, alt_v_paste, ahk_class #32770
groupadd, alt_v_paste, ahk_class TTOTAL_CMD
; groupadd, alt_v_paste, ahk_class Chrome_WidgetWin_1

groupadd, alt_n_acception, ahk_class si_Frame
groupadd, alt_n_acception, ahk_class MediaPlayerClassicW
groupadd, alt_n_acception, ahk_class CMPlayerMPCW
groupadd, alt_n_acception, ahk_class Tencent_Downloader_Main_Window
groupadd, alt_n_acception, ahk_class PuTTY

; ---------------------------------------------------------
groupadd, alt_m_exclusion, ahk_class PuTTY
groupadd, alt_m_exclusion, ahk_class Volume Control
groupadd, alt_m_exclusion, ahk_class MediaPlayerClassicW
groupadd, alt_m_exclusion, ahk_class #32770
groupadd, alt_m_exclusion, ahk_class TXGuiFoundation

; ---------------------------------------------------------
groupadd, alt_x_exclusion, ahk_class TPrefsDialog.UnicodeClass
groupadd, alt_x_exclusion, ahk_class TViewForm.UnicodeClass
groupadd, alt_x_exclusion, ahk_class MediaPlayerClassicW
groupadd, alt_x_exclusion, ahk_class Vim
groupadd, alt_x_exclusion, ahk_class MozillaWindowClass
groupadd, alt_x_exclusion, ahk_class OpusApp
groupadd, alt_x_exclusion, ahk_class si_Frame

groupadd, alt_x_inclusion, DownThemAll!
groupadd, alt_x_inclusion, ahk_class classFoxitReader
groupadd, alt_x_inclusion, ahk_class Chrome_WidgetWin_1

; ---------------------------------------------------------
groupadd, alt_q_inclusion,  - DownThemAll!
groupadd, alt_q_exclusion, ahk_class EVERYTHING
groupadd, alt_q_exclusion, ahk_class TTOTAL_CMD
groupadd, alt_q_exclusion, Fiddler Web Debugger
groupadd, alt_q_exclusion, ahk_class Wan_WidgetWin_0
groupadd, alt_q_exclusion, ahk_class si_Frame
groupadd, alt_q_exclusion, Source Insight
groupadd, alt_q_exclusion, ahk_class Vim
groupadd, alt_q_exclusion, ahk_class MozillaWindowClass
groupadd, alt_q_exclusion, ahk_class OpusApp
groupadd, alt_q_exclusion, ahk_class ConsoleWindowClass
groupadd, alt_q_exclusion, ahk_class AcrobatSDIWindow
groupadd, alt_q_exclusion, ahk_class PuTTY
groupadd, alt_q_exclusion, ahk_class VMUIFrame
groupadd, alt_q_exclusion, ahk_class VMPlayerFrame

; ---------------------------------------------------------
; GroupAdd, jk_altfv_group, ahk_class FBReader
; GroupAdd, jk_altfv_group, ahk_class MiKTeX_yap
; GroupAdd, jk_altfv_group, ahk_class ShImgVw:CPreviewWnd
SetTitleMatchMode, 2
GroupAdd, jk_altfv_group,- WinDjView
GroupAdd, jk_altfv_group,foobar2000 v
GroupAdd, jk_altfv_group,ahk_class AcrobatSDIWindow
GroupAdd, jk_altfv_group,ahk_class classFoxitReader
GroupAdd, jk_altfv_group,ahk_class HH Parent

GroupAdd, tty_group, ahk_class PuTTY
GroupAdd, tty_group, ahk_class mintty
GroupAdd, tty_group, ahk_class Wan_WidgetWin_0

; groupadd, alt_c_inclusion, ahk_class HH Parent
GroupAdd, alt_c_inclusion, ahk_class Afx:00400000:b:00010011:00000006:000105CA
GroupAdd, alt_c_inclusion, ahk_class Chrome_WidgetWin_1
GroupAdd, alt_c_inclusion, ahk_class AcrobatSDIWindow

GroupAdd, ms_window_group, ahk_class CabinetWClass
GroupAdd, ms_window_group, ahk_class FM

