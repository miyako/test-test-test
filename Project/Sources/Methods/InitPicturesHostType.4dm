//%attributes = {"executedOnServer":true}
// ----------------------------------------------------
// Nom utilisateur (OS) : fmainguene
// Date et heure : 27/04/17, 16:23:46
// ----------------------------------------------------
// Méthode : InitPicturesHostType
// Description
// Initialisation of the picture list for the host type
//
// Paramètres
// ----------------------------------------------------

C_OBJECT:C1216($osPictures)
C_PICTURE:C286($tmp)

$osPictures:=New object:C1471

$resourcePath:=Get 4D folder:C485(Current resources folder:K5:16)+"Images\\"

READ PICTURE FILE:C678($resourcePath+"Logo_Win.png"; $tmp; *)
$osPictures.windows:=$tmp

READ PICTURE FILE:C678($resourcePath+"Logo_Mac.png"; $tmp; *)
$osPictures.mac:=$tmp

READ PICTURE FILE:C678($resourcePath+"Logo_Web.png"; $tmp; *)
$osPictures.browser:=$tmp

READ PICTURE FILE:C678($resourcePath+"Logo_unknown.png"; $tmp; *)
$osPictures.unknown:=$tmp

$0:=$osPictures
