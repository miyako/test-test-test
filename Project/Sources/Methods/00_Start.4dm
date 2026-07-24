//%attributes = {}
#DECLARE($params : Object)

var $splashWindowTitle : Text
var $i; $window : Integer
$splashWindowTitle:=""

If (Count parameters=0)
	ARRAY LONGINT($windows; 0)
	WINDOW LIST($windows)
	
	For ($i; 1; Size of array($windows))
		$window:=$windows{$i}
		If ((Window process($window)=1) && (Get window title($window)=$splashWindowTitle))
			var $x; $y; $bottom; $right : Integer
			GET WINDOW RECT($x; $y; $bottom; $right; $window)
			CALL FORM($window; Formula(SET WINDOW RECT($x; $y; $bottom; $right; $window)))
			return 
		End if 
	End for 
	
	CALL WORKER(1; Current method name; {})
Else 
	SET MENU BAR(1)
	
	var $options : Object
	$options:=New object
	$options.quit:=False
	$window:=Open form window("HDI"; Plain form window; Horizontally centered; Vertically centered)
	SET WINDOW TITLE($splashWindowTitle; $window)
	DIALOG("HDI"; $options; *)
End if 
