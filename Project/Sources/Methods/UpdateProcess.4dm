//%attributes = {"invisible":true}
ARRAY TEXT:C222($column2; 0)  // process name
ARRAY TEXT:C222($column3; 0)  //Session
ARRAY TEXT:C222($column4; 0)  //Type
ARRAY LONGINT:C221($column5; 0)  //Num
ARRAY TEXT:C222($column6; 0)  //State
ARRAY TEXT:C222($column7; 0)  //CPU time
ARRAY REAL:C219($column8; 0)  //Activity
ARRAY TEXT:C222($column9; 0)  //Session ID

var $activities : Object
var $process : Object
ARRAY OBJECT:C1221($processes; 0)
var $l_processes; $i : Integer

If (Application type:C494=4)  // 4D server mode
	$activities:=GetProcessActivityOnServer
Else   // 4D standalone mode
	$activities:=Process activity:C1495
End if 

OB GET ARRAY:C1229($activities; "processes"; $processes)

$l_processes:=Size of array:C274($processes)

For ($i; 1; $l_processes)
	
	$process:=$processes{$i}
	
	If (GetProperty($process; "name").value#"")
		// process name
		APPEND TO ARRAY:C911($column2; GetProperty($process; "name").value)
		//Session
		If (GetProperty($process; "sessionID"; "text").value#"")
			APPEND TO ARRAY:C911($column3; GetSessionName($activities; GetProperty($process; "sessionID"; "text").value))
		Else 
			APPEND TO ARRAY:C911($column3; "-")  //Session
		End if 
		//Type
		APPEND TO ARRAY:C911($column4; ProcessTypeToString(GetProperty($process; "type"; "number").value))
		//Num
		APPEND TO ARRAY:C911($column5; GetProperty($process; "number"; "number").value)
		//State
		APPEND TO ARRAY:C911($column6; ProcessStateToString(GetProperty($process; "state"; "number").value))
		//CPU time
		APPEND TO ARRAY:C911($column7; Time string:C180(GetProperty($process; "cpuTime"; "number").value))
		//Activity
		APPEND TO ARRAY:C911($column8; Round:C94(GetProperty($process; "cpuUsage"; "number").value*100; 0))
		//Session ID
		APPEND TO ARRAY:C911($column9; GetProperty($process; "sessionID"; "text").value)
	End if 
	
End for 

// display of processes info
COPY ARRAY:C226($column2; (OBJECT Get pointer:C1124(Object named:K67:5; "P_ProcessName"))->)
COPY ARRAY:C226($column3; (OBJECT Get pointer:C1124(Object named:K67:5; "P_Session"))->)
COPY ARRAY:C226($column4; (OBJECT Get pointer:C1124(Object named:K67:5; "P_Type"))->)
COPY ARRAY:C226($column5; (OBJECT Get pointer:C1124(Object named:K67:5; "P_Num"))->)
COPY ARRAY:C226($column6; (OBJECT Get pointer:C1124(Object named:K67:5; "P_State"))->)
COPY ARRAY:C226($column7; (OBJECT Get pointer:C1124(Object named:K67:5; "P_CPUTime"))->)
COPY ARRAY:C226($column8; (OBJECT Get pointer:C1124(Object named:K67:5; "P_Activity"))->)
COPY ARRAY:C226($column9; (OBJECT Get pointer:C1124(Object named:K67:5; "P_SessionID"))->)