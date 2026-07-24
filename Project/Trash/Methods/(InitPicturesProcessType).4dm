//%attributes = {"invisible":true,"executedOnServer":true}
// ----------------------------------------------------
// Nom utilisateur (OS) : fmainguene
// Date et heure : 27/04/17, 16:24:41
// ----------------------------------------------------
// M師hode : InitPicturesProcessType
// Description
// Initialisation of the picture list for the process type
//
// Param春res
// ----------------------------------------------------

C_OBJECT:C1216($pictures)
C_PICTURE:C286($tmp)

$resourcePath:=Get 4D folder:C485(Current resources folder:K5:16)+"Images\\"

READ PICTURE FILE:C678($resourcePath+"ProcessType1.tif"; $tmp; *)
OB SET:C1220($pictures; "Application_server"; $tmp)

READ PICTURE FILE:C678($resourcePath+"ProcessType2.tif"; $tmp; *)
OB SET:C1220($pictures; "SQL_Server"; $tmp)

READ PICTURE FILE:C678($resourcePath+"ProcessType3.tif"; $tmp; *)
OB SET:C1220($pictures; "DB4D_Server"; $tmp)

READ PICTURE FILE:C678($resourcePath+"ProcessType4.tif"; $tmp; *)
OB SET:C1220($pictures; "Web_Server"; $tmp)

READ PICTURE FILE:C678($resourcePath+"ProcessType5.tif"; $tmp; *)
OB SET:C1220($pictures; "SOAP_Server"; $tmp)

READ PICTURE FILE:C678($resourcePath+"ProcessType6.tif"; $tmp; *)
OB SET:C1220($pictures; "Protected_4D_client_process"; $tmp)

READ PICTURE FILE:C678($resourcePath+"ProcessType7.tif"; $tmp; *)
OB SET:C1220($pictures; "Main_4D_client_process"; $tmp)

READ PICTURE FILE:C678($resourcePath+"ProcessType8.tif"; $tmp; *)
OB SET:C1220($pictures; "4D_client_base_process"; $tmp)

READ PICTURE FILE:C678($resourcePath+"ProcessType9.tif"; $tmp; *)
OB SET:C1220($pictures; "Spare_process"; $tmp)

READ PICTURE FILE:C678($resourcePath+"ProcessType10.tif"; $tmp; *)
OB SET:C1220($pictures; "SQL_server_worker_process"; $tmp)

READ PICTURE FILE:C678($resourcePath+"ProcessType13.tif"; $tmp; *)
OB SET:C1220($pictures; "HTTP_server_worker_process"; $tmp)

READ PICTURE FILE:C678($resourcePath+"ProcessType21.tif"; $tmp; *)
OB SET:C1220($pictures; "4D_client_process"; $tmp)

READ PICTURE FILE:C678($resourcePath+"ProcessType22.tif"; $tmp; *)
OB SET:C1220($pictures; "Stored_procedure"; $tmp)

READ PICTURE FILE:C678($resourcePath+"ProcessType23.tif"; $tmp; *)
OB SET:C1220($pictures; "Web_method"; $tmp)

READ PICTURE FILE:C678($resourcePath+"ProcessType24.tif"; $tmp; *)
OB SET:C1220($pictures; "SOAP_method"; $tmp)

READ PICTURE FILE:C678($resourcePath+"ProcessType25.tif"; $tmp; *)
OB SET:C1220($pictures; "Logger"; $tmp)

READ PICTURE FILE:C678($resourcePath+"ProcessType26.tif"; $tmp; *)
OB SET:C1220($pictures; "TCP_connection_listener"; $tmp)

READ PICTURE FILE:C678($resourcePath+"ProcessType27.tif"; $tmp; *)
OB SET:C1220($pictures; "TCP_session_manager"; $tmp)

READ PICTURE FILE:C678($resourcePath+"ProcessType28.tif"; $tmp; *)
OB SET:C1220($pictures; "Other_process"; $tmp)

READ PICTURE FILE:C678($resourcePath+"ProcessType29.tif"; $tmp; *)
OB SET:C1220($pictures; "Worker_process_cooperative"; $tmp)

READ PICTURE FILE:C678($resourcePath+"ProcessType31.tif"; $tmp; *)
OB SET:C1220($pictures; "4D_client_process_preemptive"; $tmp)

READ PICTURE FILE:C678($resourcePath+"ProcessType32.tif"; $tmp; *)
OB SET:C1220($pictures; "Stored_procedure_preemptive"; $tmp)

READ PICTURE FILE:C678($resourcePath+"ProcessType33.tif"; $tmp; *)
OB SET:C1220($pictures; "Web_method_preemptive"; $tmp)

READ PICTURE FILE:C678($resourcePath+"ProcessType39.tif"; $tmp; *)
OB SET:C1220($pictures; "Worker_process_preemptive"; $tmp)

READ PICTURE FILE:C678($resourcePath+"Logo_unknown.png"; $tmp; *)
OB SET:C1220($pictures; "unknown"; $tmp)

$0:=$pictures
