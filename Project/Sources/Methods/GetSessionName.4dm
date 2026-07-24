//%attributes = {"invisible":true}
// ----------------------------------------------------
// Nom utilisateur (OS) : fmainguene
// Date et heure : 26/04/17, 14:17:18
// ----------------------------------------------------
// Méthode : GetSessionName
// Description
// return the name of the session according to the sessionID passed in parameter
// Paramètres
// $1 -> object array containing session information
// $2 -> string containing the session ID searched
// ----------------------------------------------------

ARRAY OBJECT:C1221($sessions; 0)
C_TEXT:C284($sessionID; $2)

OB GET ARRAY:C1229($1; "sessions"; $sessions)
$sessionID:=$2

$l_sessions:=Size of array:C274($sessions)

// default value
$0:="-"

For ($i; 1; $l_sessions)
	
	// verify of the session ID
	If $sessions{$i}.ID=$sessionID
		// return the session name
		$0:=$sessions{$i}.systemUserName
		$i:=$l_sessions+1
	End if 
	
End for 