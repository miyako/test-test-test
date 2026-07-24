//%attributes = {"invisible":true}
// ----------------------------------------------------
// Nom utilisateur (OS) : fmainguene
// Date et heure : 26/04/17, 14:04:28
// ----------------------------------------------------
// Méthode : CpuActivitiesCalc
// Description
// Calculation of process time and activity for each user
// Add 2 new properties to session objects :  cpuTime and cpuUsage
// Paramètres
// $1 -> Object create by Get process activity
// ----------------------------------------------------

#DECLARE($activities : Object)

ARRAY OBJECT:C1221($processes; 0)
ARRAY OBJECT:C1221($sessions; 0)
var $l_processes; $l_sessions; $s; $p : Integer
var $sessionID : Text
var $cpuTime; $cpuUsage : Real

OB GET ARRAY:C1229($activities; "processes"; $processes)
OB GET ARRAY:C1229($activities; "sessions"; $sessions)

$l_processes:=Size of array:C274($processes)
$l_sessions:=Size of array:C274($sessions)

For ($s; 1; $l_sessions)
	
	$cpuTime:=0
	$cpuUsage:=0
	// search the users in the session array
	If ($sessions{$s}.type="remote")
		$sessionID:=$sessions{$s}.ID
		
		For ($p; 1; $l_processes)
			// search the process bind to the user
			If ($processes{$p}.sessionID#Null:C1517)
				If ($processes{$p}.sessionID=$sessionID)
					// calcultation of the cpu time total for the user
					$cpuTime:=$cpuTime+$processes{$p}.cpuTime
					// calcultation of the cpu usage total for the user
					$cpuUsage:=$cpuUsage+$processes{$p}.cpuUsage
				End if 
			End if 
			
		End for 
		
		// add the new property cpuTime on the session object
		$sessions{$s}.cpuTime:=$cpuTime
		
		// add the new property cpuUsage on the session object
		$sessions{$s}.cpuUsage:=$cpuUsage
	End if 
	
End for 