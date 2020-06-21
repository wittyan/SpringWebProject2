$(function(){
	$("a#freeBoard").click(function(){
		
	});
	
	
		$("a#regbtn").click(function(event){
			
			if($("input[name=title]").val().trim().length==0
					||$("textarea[name=contents]").val().trim().length==0
			){
				alert('내용을 입력하세요');
				return false;
			}
			
					
			$("form").submit();
		});
		
});