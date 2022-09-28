
;------------------------------------------------------------------------------
; CHANGELOG:
;
; Aug 08 2021: Modified for general usage
; Aug 05 2021: Added AutoCorrect module and adjusted settings
; Apr 10 2021: Basic functionality created by Ean Newton
; Sep 13 2007: Added more misspellings.
;              Added fix for -ign -> -ing that ignores words like "sign".
;              Added word beginnings/endings sections to cover more options.
;              Added auto-accents section for words like fiancÃ©e, naÃ¯ve, etc.
; Feb 28 2007: Added other common misspellings based on MS Word AutoCorrect.
;              Added optional auto-correction of 2 consecutive capital letters.
; Sep 24 2006: Initial release by Jim Biancolo (http://www.biancolo.com)
;
; INTRODUCTION
;
; This is a collection of AutoHotKey scripts that I have either found to be
; useful or else created myself to address certain frequent tasks. It has
; been developed independintly from 10ZiG and is intended solely
; for personal use by Ean Newton.
;
; CONTENTS
;
; HotStrings
; HotKeys
;		Open Word file as template
;		XTerm
; 		AlwaysOnTop
; AutoCorrect
; ini Settings
;------------------------------------------------------------------------------
; Settings
;------------------------------------------------------------------------------
;============================== Start Auto-Execution Section ==============================
; Always run as admin
if not A_IsAdmin
{
Run *RunAs "%A_ScriptFullPath%" ; Requires v1.0.92.01+
ExitApp
}

; Keeps script permanently running
#Persistent

; Determines how fast a script will run (affects CPU utilization).
; The value -1 means the script will run at it's max speed possible.
SetBatchLines, -1

; Avoids checking empty variables to see if they are environment variables.
; Recommended for performance and compatibility with future AutoHotkey releases.
#NoEnv

; Ensures that there is only a single instance of this script running.
#SingleInstance, Force

; Makes a script unconditionally use its own folder as its working directory.
; Ensures a consistent starting directory.
SetWorkingDir %A_ScriptDir%

; sets title matching to search for "containing" instead of "exact"
SetTitleMatchMode, 2

GroupAdd, saveReload, %A_ScriptName%

return

;============================== Global Variables ==============================
; UserInitials = EN

FormatTime, fd,, dddd MM/dd/yyyy
FormatTime, d,, ddd MMM d/yyyy

; return
;============================== Save Reload / Quick Stop ==============================
; #IfWinActive, ahk_group saveReload

; Use Control+S to save your script and reload it at the same time.
; ~^s::
; TrayTip, Reloading updated script, %A_ScriptName%
; SetTimer, RemoveTrayTip, 1500
; Sleep, 1750
; Reload
; return

; Removes any popped up tray tips.
; RemoveTrayTip:
; SetTimer, RemoveTrayTip, Off
; TrayTip
; return

; Hard exit that just closes the script
; #^Esc::
; ExitApp


; #IfWinActive
;============================== Main Script ==============================
;------------------------------------------------------------------------------

;------------------------------------------------------------------------------
; Frequent HotStrings
;------------------------------------------------------------------------------
; CONTENTS
;
; #help -- Display list of other HotStrings
; #fd -- Long form datetime
; #d -- Short form datetime
; #div -- Line divider
;------------------------------------------------------------------------------
::#help::
MsgBox, 0, Help,
(
HotStrings:
	#d -==[ %d% ]==- <Enter Enter>
	#fd -========================-
			%fd%
	-========================- <Enter Enter>
	#div -========================- <Enter>
	#help Show this window

HotKeys:
	Ctrl + Shift + Space: Toggle active window as always on top
	Shift + F1: Copy code to recolor xterm (disabled by default)
	Win + Shift + E: Open Word file as new template (disabled by default)
)
return
