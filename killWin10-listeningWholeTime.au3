#include-once
#include "includes/kill.au3"

$nameProcess = "GWX.exe"
$nameWindowProcess = "GWXUX.exe"
$kills = 0

Local $success[2]

$continue = True
While $continue
   $success[0] = _Kill($nameProcess, False)
   $success[1] = _Kill($nameWindowProcess, False)
   sleep(10000) ;we do not want to use significant CPU-time
WEnd