//%attributes = {"invisible":true}
// ----------------------------------------------------
// Nom utilisateur (OS) : fmainguene
// Date et heure : 27/04/17, 15:45:54
// ----------------------------------------------------
// Méthode : ProcessTypeToString
// Description
// return the label of the process type
// Paramètres
// $1 -> longint : type of process
// ----------------------------------------------------

var $processType : Integer

$processType:=$1

Case of 
	: $processType=Apple event manager:K36:4
		$0:="Apple event manager"
	: $processType=Backup process:K36:24
		$0:="Backup process"
	: $processType=Cache manager:K36:7
		$0:="Cache manager"
	: $processType=Client manager process:K36:31
		$0:="Client manager process"
	: $processType=Created from execution dialog:K36:14
		$0:="Created from execution dialog"
	: $processType=Created from menu command:K36:13
		$0:="Created from menu command"
	: $processType=Design process:K36:9
		$0:="Design process"
	: $processType=Event manager:K36:3
		$0:="Event manager"
	: $processType=Execute on client process:K36:19
		$0:="Execute on client process"
	: $processType=Execute on server process:K36:12
		$0:="Execute on server process"
	: $processType=External task:K36:2
		$0:="External task"
	: $processType=Indexing process:K36:6
		$0:="Indexing process"
	: $processType=Internal 4D server process:K36:23
		$0:="Internal 4D server process"
	: $processType=Internal timer process:K36:29
		$0:="Internal timer process"
	: $processType=Log file process:K36:25
		$0:="Log file process"
	: $processType=Main process:K36:10
		$0:="Main process"
	: $processType=Method editor macro process:K36:22
		$0:="Method editor macro process"
	: $processType=Monitor process:K36:30
		$0:="Monitor process"
	: $processType=MSC process:K36:27
		$0:="MSC process"
	: $processType=None:K36:11
		$0:="None"
	: $processType=On exit process:K36:21
		$0:="On exit process"
	: $processType=Other 4D process:K36:1
		$0:="Other 4D process"
	: $processType=Other user process:K36:15
		$0:="Other user process"
	: $processType=Restore process:K36:26
		$0:="Restore Process"
	: $processType=Serial port manager:K36:5
		$0:="Serial Port Manager"
	: $processType=Server interface process:K36:20
		$0:="Server interface process"
	: $processType=SQL Method execution process:K36:28
		$0:="SQL Method execution process"
	: $processType=Web process on 4D remote:K36:17
		$0:="Web process on 4D remote"
	: $processType=Web process with no context:K36:8
		$0:="Web process with no context"
	: $processType=Web server process:K36:18
		$0:="Web server process"
	: $processType=Worker process:K36:32
		$0:="Worker process"
	: $processType=Other internal process:K36:33
		$0:="Other"
	: $processType=Worker pool in use:K36:34
		$0:="WorkerPool in use"
	: $processType=Worker pool spare:K36:35
		$0:="WorkerPool Spare"
	: $processType=ServerNet Listener:K36:36
		$0:="ServerNetListener"
	: $processType=ServerNet Session manager:K36:37
		$0:="ServerNetSessionManager"
	: $processType=DB4D Index builder:K36:38
		$0:="DB4D IndexBuilder"
	: $processType=DB4D Flush cache:K36:39
		$0:="DB4D FlushCache"
	: $processType=DB4D Garbage collector:K36:40
		$0:="DB4D GarbageCollector"
	: $processType=DB4D Worker pool user:K36:41
		$0:="DB4D WorkerPool User"
	: $processType=DB4D Cron:K36:42
		$0:="DB4D Cron"
	: $processType=DB4D Mirror:K36:43
		$0:="DB4D Mirror"
	: $processType=DB4D Listener:K36:44
		$0:="DB4D Listener"
	: $processType=DB4D Worker pool user:K36:41
		$0:="SQL WorkerPool Server"
	: $processType=SQL Net Session manager:K36:46
		$0:="SQL NetSessionManager"
	: $processType=SQL Listener:K36:47
		$0:="SQL Listener"
	: $processType=HTTP Worker pool server:K36:48
		$0:="HTTP WorkerPool Server"
	: $processType=HTTP Listener:K36:49
		$0:="HTTP Listener"
	: $processType=Logger process:K36:50
		$0:="Logger"
	: $processType=Compiler process:K36:51
		$0:="Compiler process"
	Else 
		$0:="??"
		
End case 