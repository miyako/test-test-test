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

C_LONGINT:C283($state; $1)

$state:=$1
Case of 
	: $state=-1
		$0:="Aborted"
	: $state=1
		$0:="Delayed"
	: $state=-100
		$0:="Does not exist"
	: $state=0
		$0:="Executing"
	: $state=6
		$0:="Hidden modal dialog"
	: $state=5
		$0:="Paused"
	: $state=3
		$0:="Waiting for input output"
	: $state=4
		$0:="Waiting for internal flag"
	: $state=2
		$0:="Waiting for user event"
	Else 
		$0:="??"
End case 