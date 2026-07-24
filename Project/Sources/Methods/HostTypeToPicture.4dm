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

C_TEXT:C284($hostType; $1)
C_PICTURE:C286($0)

$resourcePath:=Get 4D folder:C485(Current resources folder:K5:16)+"Images\\"

$hostType:=$1

Case of 
	: $hostType="windows"
		$0:=OSPictures.windows
	: $hostType="mac"
		$0:=OSPictures.mac
	: $hostType="browser"
		$0:=OSPictures.browser
	Else 
		$0:=OSPictures.unknown
End case 
