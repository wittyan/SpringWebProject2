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

<style>
table tr td {
	text-align: left;
}

.contents {
	margin: 50px auto;
	width: 100%;
	height: 100%;
	text-align: center;
}

.btnGroup {
	display:inline;
	float: right;
	margin-bottom: 20px;
}

.table, tr, .th, td {
	border-top: #000;
	border: 1px solid #000;
}
tr#no th,tr#no td{
	height : 40px;
}
tr#regdate th,tr#regdate td{
	height : 40px;
}
tr#title th,tr#title td{
	height : 40px;
}
tr#writer th,tr#writer td{
	height : 40px;
}
tr#contents th,tr#contents td{
	height : 500px;
}

table tr th{
	text-aligin:center;
}
.ftr {
	border-top: 1px solid black;
}

.th {
	width: 10%;
}

/* .content th, .content td { */
/* 	height: 200px; */
/* 	line-height: 200px; */
/* } */

/* .imgFile th { */
/* 	height: 100px; */
/* 	line-height: 100px; */
/* } */

/* .imgFile img { */
/* 	display: block; */
/* 	width: 100px; */
/* 	height: 100px; */
/* } */
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
			
	<div class="contents">
		<div class="btnGroup">

			<button class="back">
				<a id="aback"
					href="communityList.do?type=qna&no=${no }&page=${pageData }">목록</a>
			</button>
			
			<button class="mod">
				<a id="aedit"
					href="qnaForm.do?type=qna&mode=modify&page=${pageData }&no=${no }">수정</a>
			</button>
			<button class="del">
				<a id="adelete" href="delete.do?type=qna&no=${no }">삭제</a>
			</button>
			
			<button class="reply">
				<a id="areply"
					href="qnaForm.do?type=qna&mode=reply&page=${pageData }&ref=${sqb.ref }&lev=${sqb.lev}&pnum=${sqb.qno}&step=${sqb.step}">답글</a>
			</button>
			
		</div>
		<div>

			<table class="table" id="title">
				<tr class="ftr" id="title">
					<th class="th" >제목</th>
					<td></td>
				</tr>
				<tr class="ftr" id="no">
					<th class="th" >글번호</th>
					<td></td>
				</tr>
				<tr class="ftr" id="regdate">
					<th class="th" >작성일</th>
					<td></td>
				</tr>
				<tr class="ftr" id="writer">
					<th class="th" >작성자</th>
					<td></td>
				</tr>
				<tr class="content" id="contents">
					<th class="th">내용</th>
					<td></td>
				</tr>
				<tr class="imgFile" id="file">
					<th class="th">첨부파일</th>
					<td><img alt=""
						src="/uploadFolder/noimg.jpg"></td>
				</tr>
			</table>
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
