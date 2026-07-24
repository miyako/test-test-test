//%attributes = {"invisible":true}
C_OBJECT:C1216(obj)
C_LONGINT:C283(index)
C_COLLECTION:C1488($processes)
C_COLLECTION:C1488($sessions)
obj:=Process activity:C1495
If (OB Is defined:C1231(obj; "processes"))
	$processes:=obj.processes
End if 
If (OB Is defined:C1231(obj; "sessions"))
	$sessions:=obj.sessions
End if 
index:=0

C_TEXT:C284($input; $output)

$input:=$input+"<h1>Processes List</h1><table border=\"1\"cellpadding=\"0\"cellspacing=\"5\"width=\"675\">"
$input:=$input+"<tr><th>Number</th><th>Name</th><th>State</th><th>CPU Usage</th><th>CPU Time</th></tr>"
$input:=$input+"<!--#4dloop (index<$processes.length) -->"
$input:=$input+"<tr><td><!--#4dtext String:c10($processes[index].number) --></td>"
$input:=$input+"<td><!--#4dtext $processes[index].name --></td>"
$input:=$input+"<td><!--#4dtext String:c10($processes[index].state) --></td>"
$input:=$input+"<td><!--#4dtext String:c10($processes[index].cpuUsage) --></td>"
$input:=$input+"<td><!--#4dtext String:c10($processes[index].cpuTime) --></td></tr>"
$input:=$input+"<!--#4dcode index:=index+1 -->"
$input:=$input+"<!--#endloop-->"

PROCESS 4D TAGS:C816($input; $output)