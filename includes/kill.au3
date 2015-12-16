#cs ----------------------------------------------------------------------------

 AutoIt Version: 3.3.12.0
 Author:         Marvin Baral

 Script Function:
	library tp provide kill-functions

#ce ----------------------------------------------------------------------------
#include <Date.au3>

Func _Kill($processName, $showMsgBox = True, $delay = 5000)
   If ProcessExists($processName) Then
	  ProcessClose($processName)
	  sleep($delay) ;Wait for process to die and then check whether he still lives
	  If Not ProcessExists($processName) Then
		 If $showMsgBox Then MsgBox(0, "Success", $processName&" was succesfully closed.")EndIf
		 Return True
	  Else
		 If $showMsgBox Then MsgBox(0+16, "Fail", $processName&" wasn't closed.")EndIf
		 Return False
	  EndIf
   Else
	  If $showMsgBox Then MsgBox(0+16, "Fail", $processName&" doesn't exist.")EndIf
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