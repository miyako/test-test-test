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

#DECLARE($obj : Object; $parameter : Text; $defaultType : Text)->$result : Object

$result:=New object:C1471

If ($defaultType="")
	$defaultType:="text"
End if 

If ($obj[$parameter]#Null:C1517)
	$result.value:=$obj[$parameter]
Else 
	// creation of the default result
	Case of 
		: ($defaultType="bool")
			$result.value:=False:C215
		: $defaultType="number"
			$result.value:=0
		Else 
			$result.value:=""
	End case 
End if 
