#include-once
#include "includes/kill.au3"

TraySetToolTip('"' & @ScriptName & """ killed GWX.exe 0 times") ;https://www.autoitscript.com/forum/topic/67132-change-the-text-on-tray-icon/
$nameProcess = "GWX.exe"
$nameWindowProcess = "GWXUX.exe"
$kills = 0

Local $success[2]

$continue = True
While $continue
   $success[0] = _Kill($nameProcess, False)
   $success[1] = _Kill($nameWindowProcess, False)
   If $success[0] Then
	  $kills++
	  TraySetToolTip('"' & @ScriptName & """ killed GWX.exe " & $kills & "times")
   EndIf

   sleep(10000) ;we do not want to use significant CPU-time
WEnd