$(function(){
				
		$("#loginButton").click(function(){
			var lfrm = loginfrm;
	
			var id = lfrm.id.value;
			var password = lfrm.password.value;
			
			if(!id || !password){
				alert('입력 하세요.')
				id.value = '';
				password.value = '';
				id.focus();
			}else{
				lfrm.submit();
			}
			
		});
		
		$("#buttonMain").click(function(){
			document.location.href = "../index.jsp"
		});
		$("#join-submit").click(function(){
			
			var rfrm = document.rfrm;
			
			var id = rfrm.id.value;
			var password = rfrm.password.value;
			var email = rfrm.email.value;
			var passwordCheck = rfrm.passwordCheck.value;
			var phoneNumber = rfrm.phoneNumber.value; 
			var nickName = rfrm.nickName.value;
			var year = rfrm.year.value;
			var month = rfrm.month.value;
			var day = rfrm.month.day;
			
			if(password!=passwordCheck){
				alert('패스워드가 일치하지 않습니다.');
			}
			else if(!id||!password||!email||!passwordCheck||!phoneNumber||!nickName){
				alert('입력 되지 않았습니다.');
			}else if(id.length>15){
				alert('아이디는 14자 이하만 가능합니다');
			}else if(password.length>15){
				alert('패스워드는 14자 이하만 가능합니다')
			}else if(nickName.length>15){
				alert('닉네임은 14자 이하만 가능합니다')
			}
			else{
				rfrm.submit();
			}
		});
	});

