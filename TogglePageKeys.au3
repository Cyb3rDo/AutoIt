#cs ----------------------------------------------------------------------------

 File:  TogglePageKeys.au3
 AutoIt Version: 3.3
 Author:         Monika Morrow

 Script Function:
   This script will toggle the functionality of the "Page Up" and "Page Down" keys
   Press "Esc" to terminate script, "Pause" to toggle on/off state of Page Keys

#ce ----------------------------------------------------------------------------

Global $Paused
HotKeySet("{PAUSE}", "TogglePause")
HotKeySet("{ESC}",   "Terminate")
HotKeySet("{PGDN}",  "NonOp")
HotKeySet("{PGUP}",  "NonOp")

;;;; Body of program ;;;;
While 1
   Sleep(100)
WEnd
;;;;;;;;

Func NonOp()
   Sleep(1)
EndFunc   ;==>NonOp

Func TogglePause()
   $Paused = Not $Paused
   If $Paused Then
	  HotKeySet("{PGDN}")
	  HotKeySet("{PGUP}")
   Else
	  HotKeySet("{PGDN}",  "NonOp")
	  HotKeySet("{PGUP}",  "NonOp")
   EndIf
EndFunc   ;==>TogglePause

Func Terminate()
    Exit 0
EndFunc   ;==>Terminate