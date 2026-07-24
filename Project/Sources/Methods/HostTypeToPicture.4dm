//%attributes = {"invisible":true}

// ----------------------------------------------------
// Nom utilisateur (OS) : fmainguene
// Date et heure : 26/04/17, 15:47:03
// ----------------------------------------------------
// Méthode : HostTypeToPicture
// Description
// return the logo according to host type 
// Paramètres
// $1 -> string : host type
// ----------------------------------------------------

#DECLARE($hostType : Text)->$picture : Picture

Case of 
	: ($hostType="windows")
		$picture:=OSPictures.windows
	: ($hostType="mac")
		$picture:=OSPictures.mac
	: ($hostType="browser")
		$picture:=OSPictures.browser
	Else 
		$picture:=OSPictures.unknown
End case 
