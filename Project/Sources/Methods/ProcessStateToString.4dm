//%attributes = {"invisible":true}
// ----------------------------------------------------
// Nom utilisateur (OS) : fmainguene
// Date et heure : 27/04/17, 15:44:34
// ----------------------------------------------------
// Méthode : ProcessStateToString
// Description
// Return the label of the process state
// Paramètres
// $1 -> longint : state of the process
// ----------------------------------------------------

#DECLARE($state : Integer)->$label : Text

Case of 
	: ($state=-1)
		$label:="Aborted"
	: ($state=1)
		$label:="Delayed"
	: ($state=-100)
		$label:="Does not exist"
	: ($state=0)
		$label:="Executing"
	: ($state=6)
		$label:="Hidden modal dialog"
	: ($state=5)
		$label:="Paused"
	: ($state=3)
		$label:="Waiting for input output"
	: ($state=4)
		$label:="Waiting for internal flag"
	: ($state=2)
		$label:="Waiting for user event"
	Else 
		$label:="??"
End case