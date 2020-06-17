<%@page import="java.util.ArrayList"%>
<%@page import="an.com.model.MemberBean"%>
<%@page import="an.com.dao.AppleDao"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="EUC-KR">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>ȸ������</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.0.min.js"></script>
<script type="text/javascript" src="../script/member.js"></script>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<link href="../layout/styles/layout.css" rel="stylesheet" type="text/css" media="all">





</head>

<body id="top">
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- Top Background Image Wrapper -->

<!-- End Top Background Image Wrapper -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->

<div class="wrapper row3">
  <main class="hoc container clear"> 
    <!-- main body -->
    <!-- ################################################################################################ -->
   <article class="">
		<div class="">
			<div class="col-md-6 col-md-offset-3">
				<h3 align="center">ȸ������</h3>
			</div>
		</div>
		<div class="col-sm-6 col-md-offset-3">
			<form role="form" name = "rfrm" method ="post" action="signupProcess.jsp">
				<div class="form-group">
					<label for="inputName">ID</label> <input type="text"
						class="form-control" name="id" id="inputName" placeholder="���̵� �Է��� �ּ���">
				</div>
				<div class="form-group">
					<label for="inputtelNO">�г���</label> <input type="tel"
						class="form-control" name = "nickName" id="inputtelNO" placeholder="�г����� �Է��� �ּ���">
				</div>
				<div class="form-group">
					<label for="InputEmail">�̸��� �ּ�</label> <input type="email"
						class="form-control" name = "email" id="InputEmail" placeholder="�̸��� �ּҸ� �Է����ּ���">
				</div>
				<div class="form-group">
					<label for="inputPassword">��й�ȣ</label> <input type="password"
						class="form-control" name = "password" id="inputPassword" placeholder="��й�ȣ�� �Է����ּ���">
				</div>
				<div class="form-group">
					<label for="inputPasswordCheck">��й�ȣ Ȯ��</label> <input
						type="password" name = "passwordCheck" class="form-control" id="inputPasswordCheck"
						placeholder="��й�ȣ Ȯ���� ���� �ٽ��ѹ� �Է� �� �ּ���">
				</div>
				<div class="form-group">
					<label for="inputMobile">�޴��� ��ȣ</label> <input type="tel"
						class="form-control" name = "phoneNumber" id="inputMobile" placeholder="�޴�����ȣ�� �Է��� �ּ���">
				</div>
	   		<li class="form-inline">
	   			<label for="inputbirthdate">�������</label>
	   			<select name="year" id="" class="form-control">
	   				<option value="empty">�⵵</option>
	   			<% for (int i=2000;i>1900;i--){ %>
	   				<option value="<%=i%>"><%=i %></option>
	   				<%} %>
	   			</select>
	   			<select name="month" id="" class="form-control">
	   				<option value="empty">��</option>
	   				<% for (int i=1;i<=12;i++){ %>
	   				<option value="<%=i%>"><%=i %></option>
	   				<%} %>
	   			</select>
	   			<select name="day" id="" class="form-control">
	   				<%
	   					for(int i=1;i<=31;i++){
	   				%>
	   				<option value="<%=i %>"><%=i %></option>
	   				<%
	   					}
	   				%>
	   			</select>

	   		</li>
				<br>
				
				<div class="form-group text-center">
					<button type="button" id="join-submit" class="btn btn-primary">
						ȸ������<i class="fa fa-check spaceLeft"></i>
					</button>
					<button type="button" id="buttonMain" class="btn btn-warning">
						����������<i class="fa fa-times spaceLeft"></i>
					</button>
				</div>
			</form>
		</div>

	</article>
    <!-- ################################################################################################ -->
    <!-- / main body -->
    <div class="clear"></div>
  </main>
</div>

<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<div class="wrapper row5">
  <div id="copyright" class="hoc clear"> 
    <!-- ################################################################################################ -->
       <p class="fl_left">Copyright &copy; 2018 - All Rights Reserved - Sungsu An </p>
    <p class="fl_right">Sungsu An Portfolio</p>
    <!-- ################################################################################################ -->
  </div>
</div>
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<a id="backtotop" href="#top"><i class="fas fa-chevron-up"></i></a>
<!-- JAVASCRIPTS -->
<script src="../layout/scripts/jquery.min.js"></script>
<script src="../layout/scripts/jquery.backtotop.js"></script>
<script src="../layout/scripts/jquery.mobilemenu.js"></script>
</body>
</html>

