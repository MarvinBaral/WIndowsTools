#include-once
#include "includes/kill.au3"

$nameProcess = "GWX.exe"
$nameWindowProcess = "GWXE.exe"

$success1 = _WaitToKill($nameProcess, 10)
$success2 = _WaitToKill($nameWindowProcess, 1)

If Not ($success1 Or $success2) Then
   MsgBox(0, "Timeout", '"' & @scriptname & """ timeouted without killing something.")
EndIf