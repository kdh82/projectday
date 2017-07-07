function checkInputEmpty($obj){
	var count = 0;
	
	$obj.echo(function(i, element){
		if($(element).val() == ""){
			var $next = $(element).next(".error");
			$next.css("display","block");
			count++;
		}
	})
			if(count > 0 ){
				return false;
			}
		return true;
}