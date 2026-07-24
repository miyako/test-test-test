//%attributes = {"invisible":true,"publishedWeb":true}
#DECLARE($path : Text)
var $activities : Object
var $process : Object
ARRAY OBJECT:C1221($processes; 0)
var $l_processes; $i : Integer

var $tmp_process : Object
ARRAY OBJECT:C1221($returned_processes; 0)

If (Application type:C494=4)  // 4D server mode
	$activities:=GetProcessActivityOnServer
Else   // 4D standalone mode
	$activities:=Process activity:C1495
End if 

OB GET ARRAY:C1229($activities; "processes"; $processes)

$l_processes:=Size of array:C274($processes)

For ($i; 1; $l_processes)
	$tmp_process:=New object:C1471
	
	$process:=$processes{$i}
	
	If (GetProperty($process; "name").value#"")
		// process name
		$tmp_process.name:=GetProperty($process; "name").value
		//Session
		If (GetProperty($process; "sessionID"; "text").value#"")
			$tmp_process.session:=GetSessionName($activities; GetProperty($process; "sessionID"; "text").value)
		Else 
			$tmp_process.session:="-"  //Session
		End if 
		//Type
		$tmp_process.type:=ProcessTypeToString(GetProperty($process; "type"; "number").value)
		//Num
		$tmp_process.num:=GetProperty($process; "number"; "number").value
		//State
		$tmp_process.state:=ProcessStateToString(GetProperty($process; "state"; "number").value)
		//CPU time
		$tmp_process.cpuTime:=Time string:C180(GetProperty($process; "cpuTime"; "number").value)
		//Activity
		$tmp_process.cpuUsage:=Round:C94(GetProperty($process; "cpuUsage"; "number").value*100; 0)
		//Session ID
		$tmp_process.sessionID:=GetProperty($process; "sessionID"; "text").value
		
		APPEND TO ARRAY:C911($returned_processes; $tmp_process)
	End if 
End for 

WEB SEND TEXT:C677(JSON Stringify array:C1228($returned_processes; *); "application/json")