C_OBJECT:C1216(OSPictures)

Case of 
	: (Form event code:C388=On Load:K2:1)
		InitInfo
		OSPictures:=InitPicturesHostType
		SET TIMER:C645(120)
	: (Form event code:C388=On Timer:K2:25)
		If (FORM Get current page:C276=2)
			UpdateUsers
		End if 
		If (FORM Get current page:C276=3)
			UpdateProcess
		End if 
		
End case 

