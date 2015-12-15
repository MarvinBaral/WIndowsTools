#cs ----------------------------------------------------------------------------

 AutoIt Version: 3.3.12.0
 Author:         Marvin Baral

 Script Function:
	library tp provide kill-functions

#ce ----------------------------------------------------------------------------
#include <Date.au3>

Func _Kill($processName)
   If ProcessExists($processName) Then
	  ProcessClose($processName)
	  sleep(3000) ;Wait for process to die and then check whether he still lives
	  If Not ProcessExists($processName) Then
		 MsgBox(0, "Success", $processName&" was succesfully closed.")
		 Return True
	  Else
		 MsgBox(0+16, "Fail", $processName&" wasn't closed.")
		 Return False
	  EndIf
   Else
	  MsgBox(0+16, "Fail", $processName&" doesn't exist.")
	  Return False
   EndIf
EndFunc

Func _WaitToKill($nameProcess, $timeoutInMinutes = 30)
   $timeStart = _NowCalc()
   Do
	  sleep(10)
	  If(ProcessExists($nameProcess)) Then
		 Return _Kill($nameProcess)
	  EndIf
	  Sleep(1500)
	  $timeNow = _NowCalc()
   Until _DateDiff("n", $timeStart, $timeNow) >= $timeoutInMinutes
EndFunc