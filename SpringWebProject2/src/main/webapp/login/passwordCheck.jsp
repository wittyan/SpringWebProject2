<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<%

	session.setMaxInactiveInterval(20*60);

	String id = request.getParameter("id");
	String password =request.getParameter("password");
	
	if(AppleDao.idCheckProcess(id, password)){
		session.setAttribute("id", id);
		System.out.println("loginsuccess");
		response.sendRedirect("../index.jsp");
	}else{
		System.out.println("loginfail");
		response.sendRedirect("login.jsp?check=false");
	}
%>
<body>

</body>
</html>