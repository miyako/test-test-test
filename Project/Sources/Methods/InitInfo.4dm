//%attributes = {"invisible":true}
// ----------------------------------------------------
// Nom utilisateur (OS) : fmainguene
// Date et heure : 27/04/17, 16:23:30
// ----------------------------------------------------
// M師hode : InitInfo
// Description
//   // read the presentation message in the DB
//
// Param春res
// ----------------------------------------------------

var $json : Collection
$json:=JSON Parse:C1218(File:C1566(Localized document path:C1105("SAMPLES.json"); fk platform path:K87:2).getText())

var $SAMPLE : Object
$SAMPLE:=$json.query("ID == :1"; 1).first()

TextInfo:=$SAMPLE.Label