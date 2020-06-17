 
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en">
<head>
<title>자전거 정보</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
  <script type="text/javascript" src="https://code.jquery.com/jquery-3.5.0.min.js"></script>
  <script type="text/javascript" src="../script/member.js"></script>
<link href="../layout/styles/layout.css" rel="stylesheet" type="text/css" media="all">
<style type="text/css">
@import url(https://fonts.googleapis.com/css?family=Roboto:300);

	.login-page {
	  width: 360px;
	  padding: 8% 0 0;
	  margin: auto;
	}
	.loginform {
	  position: relative;
	  z-index: 1;
	  background: #FFFFFF;
	  max-width: 360px;
	  margin: 0 auto 100px;
	  padding: 45px;
	  text-align: center;
	  box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);
	}
	.loginform input {
	  font-family: "Roboto", sans-serif;
	  outline: 0;
	  background: #f2f2f2;
	  width: 100%;
	  border: 0;
	  margin: 0 0 15px;
	  padding: 15px;
	  box-sizing: border-box;
	  font-size: 14px;
	}
	
	.loginform button:hover,.form button:active,.form button:focus {
	  background: #43A047;
	}
	.loginform .message {
	  margin: 15px 0 0;
	  color: #b3b3b3;
	  font-size: 12px;
	}
	.loginform .message a {
	  color: #4CAF50;
	  text-decoration: none;
	}
	.loginform .register-form {
	  display: none;
	}
	.container:before, .container:after {
	  content: "";
	  display: block;
	  clear: both;
	}
  </style>
  <%
  if(request.getParameter("check")!=null){
  out.println("<script>alert('아이디, 패스워드정보가 맞지 않습니다.');</script>");
  }
  %>
</head>
<body id="top">
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->

<!-- End Top Background Image Wrapper -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->

<div class="wrapper row3">

  <main class="hoc container clear" > 
    <!-- main body -->
    <!-- ################################################################################################ -->
  
    <!-- ################################################################################################ -->
    <!-- ################################################################################################ -->
    <div style= "margin:0 auto; "> 
      <!-- ################################################################################################ -->
      
        <h2 style="text-align:center; font-family:굴림; font-size:50px" >로그인</h2>
        <h6 style="text-align:center; font-family:굴림; margin:5px" >홈페이지를 방문해주셔서 감사합니다.</h6>
		<h6 style="text-align:center; font-family:굴림; margin:0px">로그인하시면 보다 편리하게 서비스 이용이 가능합니다.</h6>
        <div class="login-page">
		  <div class="loginform">
		    <form action = "passwordCheck.jsp" method="post" class="login-form" name ="loginfrm" >
		      <input type="text" name="id" placeholder="아이디"/>
		      <input type="password" name = "password" placeholder="패스워드"/>
		      <button class ="btn" type = "button" id="loginButton">login</button>
		      
		      <p class="message"><a href="signup.jsp">회원가입</a></p>
		    </form>
		  </div>
		</div>
      </div>
      <!-- ################################################################################################ -->
    </div>
    <!-- ################################################################################################ -->
    <!-- / main body -->
    
  </main>
  
<br>
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<div class="wrapper">
  <div id="copyright" class="hoc clear row"> 
    <!-- ################################################################################################ -->
    <p class="fl_left">Copyright &copy; 2018 - All Rights Reserved - Sungsu An </p>
    <p class="fl_right">Sungsu An Portfolio</p>
    <!-- ################################################################################################ -->
  </div>
</div>
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- JAVASCRIPTS -->
<script src="../layout/scripts/jquery.min.js"></script>
<script src="../layout/scripts/jquery.backtotop.js"></script>
<script src="../layout/scripts/jquery.mobilemenu.js"></script>
</body>
</html>