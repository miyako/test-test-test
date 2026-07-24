//%attributes = {"invisible":true}
// ----------------------------------------------------
// Nom utilisateur (OS) : fmainguene
// Date et heure : 27/04/17, 15:43:14
// ----------------------------------------------------
// M師hode : ProcessTypeToPicture
// Description
// Return the picture of the process type
// Param春res
// $1 -> longint : process type 
// ----------------------------------------------------

C_LONGINT:C283($processType; $1)

$processType:=$1

Case of 
		
	: $processType=1
		$0:=OB Get:C1224(ProcessPictures; "Application_server")
	: $processType=2
		$0:=OB Get:C1224(ProcessPictures; "SQL_Server")
	: $processType=3
		$0:=OB Get:C1224(ProcessPictures; "DB4D_Server")
	: $processType=4
		$0:=OB Get:C1224(ProcessPictures; "Web_Server")
	: $processType=5
		$0:=OB Get:C1224(ProcessPictures; "SOAP_Server")
	: $processType=6
		$0:=OB Get:C1224(ProcessPictures; "Protected_4D_client_process")
	: $processType=7
		$0:=OB Get:C1224(ProcessPictures; "Main_4D_client_process")
	: $processType=8
		$0:=OB Get:C1224(ProcessPictures; "4D_client_base_process")
	: $processType=9
		$0:=OB Get:C1224(ProcessPictures; "Spare_process")
	: $processType=10
		$0:=OB Get:C1224(ProcessPictures; "SQL_server_worker_process")
	: $processType=13
		$0:=OB Get:C1224(ProcessPictures; "HTTP_server_worker_process")
	: $processType=21
		$0:=OB Get:C1224(ProcessPictures; "4D_client_process")
	: $processType=22
		$0:=OB Get:C1224(ProcessPictures; "Stored_procedure")
	: $processType=23
		$0:=OB Get:C1224(ProcessPictures; "Web_method")
	: $processType=24
		$0:=OB Get:C1224(ProcessPictures; "SOAP_method")
	: $processType=25
		$0:=OB Get:C1224(ProcessPictures; "Logger")
	: $processType=26
		$0:=OB Get:C1224(ProcessPictures; "TCP_connection_listener")
	: $processType=27
		$0:=OB Get:C1224(ProcessPictures; "TCP_session_manager")
	: $processType=28
		$0:=OB Get:C1224(ProcessPictures; "Other_process")
	: $processType=29
		$0:=OB Get:C1224(ProcessPictures; "Worker_process_cooperative")
	: $processType=31
		$0:=OB Get:C1224(ProcessPictures; "4D_client_process_preemptive")
	: $processType=32
		$0:=OB Get:C1224(ProcessPictures; "Stored_procedure_preemptive")
	: $processType=33
		$0:=OB Get:C1224(ProcessPictures; "Web_method_preemptive")
	: $processType=39
		$0:=OB Get:C1224(ProcessPictures; "Worker_process_preemptive")
	Else 
		$0:=OB Get:C1224(ProcessPictures; "unknown")
		
End case 