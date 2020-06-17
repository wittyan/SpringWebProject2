<%@page import="an.com.model.MemberBean"%>
<%@page import="an.com.dao.AppleDao"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	String id = request.getParameter("id");
	String password = request.getParameter("password");
	String email = request.getParameter("email");
	String phoneNumber = request.getParameter("phoneNumber"); 
	String nickName = request.getParameter("nickName");
	String year = request.getParameter("year");
	String month = request.getParameter("month");
	String day = request.getParameter("day");
	
	String birthDate = year+"/"+month+"/"+day;
	
	MemberBean mb = new MemberBean();
	mb.setId(id);
	mb.setPassword(password);
	mb.setEmail(email);
	mb.setNickname(nickName);
	mb.setDate(birthDate);
	mb.setPnum(phoneNumber);
	
	/* 중복체크 필요 */
	AppleDao.insertMember(mb);
	
	session.setAttribute("id", id);
	response.sendRedirect("../index.jsp");
%>
</body>
</html>