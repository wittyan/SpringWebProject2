
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="function"
	uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>

<html lang="">
<!-- To declare your language - read more here: https://www.w3.org/International/questions/qa-html-language-declarations -->
<head>
<title>Ŀ�´�Ƽ</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.5.0.min.js"></script>
<script type="text/javascript" src="/script/board.js">
</script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link href="../layout/styles/layout.css" rel="stylesheet"
	type="text/css" media="all">
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
						<li><a href="/login.do">�α���</a></li>
					</c:when>
					<c:otherwise>
						<li><a href="/logout.do">�α׾ƿ�</a></li>
					</c:otherwise>
				</c:choose>
				<li><a href="/signup.do">ȸ������</a></li>
				<li><a href="#">����������</a></li>
			</nav>
		</div>
		<!-- ################################################################################################ -->
		<!-- ################################################################################################ -->
		<!-- ################################################################################################ -->
		<header id="header" class="hoc clear">
			<div id="logo" class="fl_left">
				<!-- ################################################################################################ -->
				<h1>
					<a href="../index.jsp" style="font-family: ���� ���;">������ ����</a>
				</h1>
				<!-- ################################################################################################ -->
			</div>
			<nav id="mainav" class="fl_right">
				<!-- ################################################################################################ -->

				<li><a href="/mapinfo.do">���� �뿩�� ��ȸ</a></li>
				<li><a href="#">������ ��</a></li>
				<li><a href="#">�߰�����</a></li>
				<li><a href="/gallery.do">������ ������</a></li>
				<li><a href="/community.do">Ŀ�´�Ƽ</a></li>
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
			<h6>Ŀ�´�Ƽ</h6>
			<nav class="sdb_holder">
				<ul>
					<li><a id="freeBoard" href="javascript:;">���� �Խ���</a></li>

					<li><a href="#">�߰� �ŷ�</a></li>
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
			<div id="qnaRegi">
				<h1 align="center"
					style="font-weight: bold; size: 50px; margin-top: 50px;">�۾���</h1>
				<form action="insert.do?page=${param.page }" name="qnaFrm" method="POST"
					enctype="multipart/form-data" accept-charset="utf-8">
					<table>
						<colgroup>

							<col width="100px">

						</colgroup>
						<tbody>
							<tr>
								<td><label>����</label></td>
								<td><input type="text" name="title"
									value="${sqb ne null ? sqb.qtitle: ''}" size="70" ></td>
							</tr>
						
							<tr>
								<td><label>����</label></td>
								<td><textarea id="txtarea" name="contents" rows="10" cols="70">${sqb ne null ? sqb.qcontents: ''}</textarea>
								</td>
							</tr>
							<tr>
								<td><label>÷������</label></td>
								<td><input type="text" size="20" readonly="readonly"
									name="fileField" value="${sqb ne null ? seb.qfilename: ''}"
									disabled="disabled"> <input type="file" name="file">
								</td>
							</tr>
						</tbody>
					</table>

					<%--     			<input type="hidden" name="no" value="${mode eq 'modify'?sqb.qno:''}"> --%>
					
					<a id="regbtn" class="btn btn-default pull-right">����ϱ�</a>
					<a href="/community.do?${param.page }"class="btn btn-default pull-left">�������</a>
				</form>
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

</body>
</html>