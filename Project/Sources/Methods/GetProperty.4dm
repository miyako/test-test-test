//%attributes = {"invisible":true}
// ----------------------------------------------------
// Nom utilisateur (OS) : fmainguene
// Date et heure : 26/04/17, 14:22:04
// ----------------------------------------------------
// Méthode : GetProperty
// Description
// Verify the existing of the property in the object.
// if not exist return default value
// if exist return the value of the property asked
// Paramètres
// $1 -> Object to use for the search
// $2 -> Property of the object to search
// $3 -> default type ("bool","number" or "text" for the return value (by default : C_Text)
// ----------------------------------------------------

C_OBJECT:C1216($obj; $1; $0)
C_TEXT:C284($parameter; $2)
C_TEXT:C284($defaultType; $3)

$0:=New object:C1471
$obj:=$1
$parameter:=$2

If (Count parameters:C259=3)
	$defaultType:=$3
Else 
	$defaultType:="text"
End if 

If ($obj[$parameter]#Null:C1517)
	$0.value:=$obj[$parameter]
Else 
	// creation of the default result
	Case of 
		: ($defaultType="bool")
			$0.value:=False:C215
		: $defaultType="number"
			$0.value:=0
		Else 
			$0.value:=""
	End case 
End if 

