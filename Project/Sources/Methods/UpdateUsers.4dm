//%attributes = {"invisible":true}
ARRAY PICTURE:C279($column1; 0)  // Icon
ARRAY TEXT:C222($column2; 0)  // 4D user
ARRAY TEXT:C222($column3; 0)  //Machine name
ARRAY TEXT:C222($column4; 0)  //Session name
ARRAY TEXT:C222($column5; 0)  //IP Adress
ARRAY TEXT:C222($column6; 0)  //Login date
ARRAY TEXT:C222($column7; 0)  //CPU Time
ARRAY REAL:C219($column8; 0)  //Activity


var $activities : Object
var $session : Object
ARRAY OBJECT:C1221($sessions; 0)
var $l_sessions; $i : Integer

If (Application type:C494=4)
	$activities:=GetProcessActivityOnServer
	
	CpuActivitiesCalc($activities)
	
	OB GET ARRAY:C1229($activities; "sessions"; $sessions)
	
	$l_sessions:=Size of array:C274($sessions)
	
	For ($i; 1; $l_sessions)
		
		$session:=$sessions{$i}
		
		// Icon
		APPEND TO ARRAY:C911($column1; HostTypeToPicture(GetProperty($session; "hostType").value))
		// 4D user
		APPEND TO ARRAY:C911($column2; GetProperty($session; "userName").value)
		//Machine name
		APPEND TO ARRAY:C911($column3; GetProperty($session; "machineName").value)
		//Session name
		APPEND TO ARRAY:C911($column4; GetProperty($session; "systemUserName").value)
		//IP Adress
		APPEND TO ARRAY:C911($column5; GetProperty($session; "IPAddress").value)
		//Login date
		APPEND TO ARRAY:C911($column6; String:C10(Date:C102(GetProperty($session; "creationDateTime").value))+" "+String:C10(Time:C179(GetProperty($session; "creationDateTime").value)))
		//CPU time
		APPEND TO ARRAY:C911($column7; Time string:C180(GetProperty($session; "cpuTime"; "number").value))
		//Activity
		APPEND TO ARRAY:C911($column8; Round:C94(GetProperty($session; "cpuUsage"; "number").value*100; 0))
		
	End for 
	
	// display of processes info
	COPY ARRAY:C226($column1; (OBJECT Get pointer:C1124(Object named:K67:5; "U_Icon"))->)
	COPY ARRAY:C226($column2; (OBJECT Get pointer:C1124(Object named:K67:5; "U_user"))->)
	COPY ARRAY:C226($column3; (OBJECT Get pointer:C1124(Object named:K67:5; "U_MachineName"))->)
	COPY ARRAY:C226($column4; (OBJECT Get pointer:C1124(Object named:K67:5; "U_SessionName"))->)
	COPY ARRAY:C226($column5; (OBJECT Get pointer:C1124(Object named:K67:5; "U_IPAddress"))->)
	COPY ARRAY:C226($column6; (OBJECT Get pointer:C1124(Object named:K67:5; "U_LoginDate"))->)
	COPY ARRAY:C226($column7; (OBJECT Get pointer:C1124(Object named:K67:5; "U_CPUTime"))->)
	COPY ARRAY:C226($column8; (OBJECT Get pointer:C1124(Object named:K67:5; "U_Activity"))->)
	
Else 
	// display of error message
	OBJECT SET VISIBLE:C603(*; "Text2"; True:C214)
End if 
