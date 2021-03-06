<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="function"
	uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>

<html lang="">
<!-- To declare your language - read more here: https://www.w3.org/International/questions/qa-html-language-declarations -->
<head>
<title>커뮤니티</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.5.0.min.js"></script>
<script type="text/javascript" src="../script/board.js">
	
</script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link href="../layout/styles/layout.css" rel="stylesheet"
	type="text/css" media="all">
<style type="text/css">
  table tr th{
 	  text-align:center;
  }
  table tr td:not(.title){
 	  text-align:center;
  }
  
</style>
</head>
<body id="top">
	<!-- ################################################################################################ -->
	<!-- ################################################################################################ -->
	<!-- ################################################################################################ -->
	<!-- Top Background Image Wrapper -->
	<div class="bgded overlay"
		style="background-image: url('../images/demo/backgrounds/bicycleboard.jpg'); background-repeat: no-repeat; background-size: 100% 130%;">
		<!-- ################################################################################################ -->
		<!-- ################################################################################################ -->
		<!-- ################################################################################################ -->
		<div id="loginheader" class=""
			style="margin-right: 60px; margin-top: 0px; width: 100%; height: 50px;">
			<nav id="mainav" class="fl_right">
				<c:choose>
					<c:when test="${id eq null}">
						<li><a href="/login.do">로그인</a></li>
					</c:when>
					<c:otherwise>
						<li><a href="/logout.do">로그아웃</a></li>
					</c:otherwise>
				</c:choose>
				<li><a href="/signup.do">회원가입</a></li>
				<li><a href="#">마이페이지</a></li>
			</nav>
		</div>
		<!-- ################################################################################################ -->
		<!-- ################################################################################################ -->
		<!-- ################################################################################################ -->
		<header id="header" class="hoc clear">
			<div id="logo" class="fl_left">
				<!-- ################################################################################################ -->
				<h1>
					<a href="../index.jsp" style="font-family: 맑은 고딕;">자전거 정보</a>
				</h1>
				<!-- ################################################################################################ -->
			</div>
			<nav id="mainav" class="fl_right">
				<!-- ################################################################################################ -->

				<li><a href="/mapinfo.do">전국 대여소 조회</a></li>
				<li><a href="#">자전거 길</a></li>
				<li><a href="#">중고장터</a></li>
				<li><a href="/gallery.do">자전거 갤러리</a></li>
				<li><a href="/community.do">커뮤니티</a></li>
				<li><a href="#">FAQ</a></li>
				</ul>
				<!-- ################################################################################################ -->
			</nav>
		</header>

		<div id="breadcrumb" class="hoc clear">

			<ul>
				<li><a href="#">Home</a></li>
				<li><a href="#">Lorem</a></li>
				<li><a href="#">Ipsum</a></li>
				<li><a href="#">Dolor</a></li>
			</ul>

		</div>

	</div>

	<!-- End Top Background Image Wrapper -->
	<!-- ################################################################################################ -->
	<!-- ################################################################################################ -->
	<!-- ################################################################################################ -->

	<div class="wrapper row3">
		<main class="hoc container clear"> <!-- main body --> <!-- ################################################################################################ -->
		<div class="sidebar one_quarter first">
			<!-- ################################################################################################ -->
			<h6>커뮤니티</h6>
			<nav class="sdb_holder">
				<ul>
					<li><a id="freeBoard" href="javascript:;">자유 게시판</a></li>

					<li><a href="#">중고 거래</a></li>
				</ul>
			</nav>
			<div class="sdb_holder">
				<h6>Lorem ipsum dolor</h6>
				<address>
					Full Name<br> Address Line 1<br> Address Line 2<br>
					Town/City<br> Postcode/Zip<br> <br> Tel: xxxx xxxx
					xxxxxx<br> Email: <a href="#">contact@domain.com</a>
				</address>
			</div>
			<div class="sdb_holder">
				<article>
					<h6>Lorem ipsum dolor</h6>
					<p>Nuncsed sed conseque a at quismodo tris mauristibus sed
						habiturpiscinia sed.</p>
					<ul>
						<li><a href="#">Lorem ipsum dolor sit</a></li>
						<li>Etiam vel sapien et</li>
						<li><a href="#">Etiam vel sapien et</a></li>
					</ul>
					<p>Nuncsed sed conseque a at quismodo tris mauristibus sed
						habiturpiscinia sed. Condimentumsantincidunt dui mattis magna
						intesque purus orci augue lor nibh.</p>
					<p class="more">
						<a href="#">Continue Reading &raquo;</a>
					</p>
				</article>
			</div>
			<!-- ################################################################################################ -->
		</div>
		<!-- ################################################################################################ -->
		<!-- ################################################################################################ -->

		<div id="contents" class="content three_quarter">
			<!-- ################################################################################################ -->
			<div id="freebrdcontents">
				<table class="table table-hover">
					<thead>
					<colgroup>

							<col width="30px">
							<col width="200px">
							<col width="50px">
							<col width="50px">
							<col width="30px">

						</colgroup>
						<tr>
							<th>번호</th>
							<th>제목</th>
							<th>작성자</th>
							<th>날짜</th>
							<th>조회수</th>
						</tr>
					</thead>
					<tbody>
					<c:if test="${list ne null}">
						<c:forEach var="i" items="${list }">
							<tr>
								<td>${i.no     }</td>
								<td class="title">${i.title  }</td>
								<td>${i.writer }</td>
								<td>${i.regdate   }</td>
								<td>${i.hit    }</td>
							</tr>
						</c:forEach>
					</c:if>
					</tbody>
				</table>
				<hr />
				<a href ="/write.do?page=${pageBean.currentPage }" class="btn btn-default pull-right">글쓰기</a>

				<div class="text-center">
					<ul class="pagination">
						<c:choose>
							<c:when test="${pageBean.currentPage<pageBean.endPage}">
								<li><a href="/community.do?page=${pageBean.currentPage - 1}">&lt;</a></li>
							</c:when>
							<c:otherwise>							
								<li><a href="#">&lt;</a></li>
							</c:otherwise>
						</c:choose>
						<c:forEach var="i" begin="${pageBean.startPage }" end="${pageBean.endPage }">
							<c:choose>
								<c:when test="${i eq pageBean.currentPage}">
									<li><a href="#"><font color="red">${i }</font></a></li>
								</c:when>
								<c:otherwise>
									<li><a href="/community.do?page=${i}">${i }</a></li>									
								</c:otherwise>
							</c:choose>
						</c:forEach>
						<c:choose>
							<c:when test="${pageBean.currentPage<pageBean.endPage}">
								<li><a href="/community.do?page=${pageBean.currentPage + 1}">&gt;</a></li>
							</c:when>
								<c:otherwise>							
								<li><a href="#">&gt;</a></li>
							</c:otherwise>
						</c:choose>
					</ul>
				</div>
			</div>

			<!-- ################################################################################################ -->
		</div>
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
			<p class="fl_left">
				Copyright &copy; 2018 - All Rights Reserved - Sungsu An<a href="#">Domain
					Name</a>
			</p>

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