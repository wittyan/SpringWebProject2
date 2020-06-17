<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="function"
	uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<!--
Template Name: Nekmit
Author: <a href="https://www.os-templates.com/">OS Templates</a>
Author URI: https://www.os-templates.com/
Copyright: OS-Templates.com
Licence: Free to use under our free template licence terms
Licence URI: https://www.os-templates.com/template-terms
-->
<html lang="">
<!-- To declare your language - read more here: https://www.w3.org/International/questions/qa-html-language-declarations -->
<head>
<title>자전거 정보</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="layout/styles/layout.css" rel="stylesheet" type="text/css"
	media="all">
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.5.0.min.js"></script>
<style>
</style>
</head>
<body id="top">
	<!-- ################################################################################################ -->
	<!-- ################################################################################################ -->
	<!-- ################################################################################################ -->
	<!-- Top Background Image Wrapper -->
	<div class="background"
		style="background-image: url('images/demo/backgrounds/livhead.jpg'); background-repeat: no-repeat; background-size: 100% 100%; background-position: center;">
		<div id="loginheader" class="overlay"
			style="margin-right: 60px; width: 100%; height: 50px;">
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

		<div class="bgded overlay padtop">
			<!-- ################################################################################################ -->
			<!-- ################################################################################################ -->
			<!-- ################################################################################################ -->
			<header id="header" class="hoc clear"
				style="margin-top: 0px; padding-top: 0px">
				<div id="logo" class="fl_left"">
					<!-- ################################################################################################ -->
					<h1>
						<a href="index.jsp" style="font-family: 맑은 고딕;">자전거 정보</a>
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
			<!-- ################################################################################################ -->
			<!-- ################################################################################################ -->
			<!-- ################################################################################################ -->
			<div id="pageintro" class="hoc clear">
				<!-- ################################################################################################ -->
				<article>
					<h3 class="heading">자전거 정보</h3>
					<p>전국 주요도시 자전거에 대하여 알아보세요.</p>
					<p>자전거는 교통체증 및 대기오염 문제를 해결하며 건강을 통하여 삶의 질을 높여줍니다.</p>
					<footer>
						<ul class="nospace inline pushright">
							<li><a class="btn" href="#">대여소 조회하기</a></li>
						</ul>
					</footer>
				</article>
				<!-- ################################################################################################ -->
			</div>
			<!-- ################################################################################################ -->
		</div>
	</div>
	<div class="wrapper row3">
		<main class="hoc container clear"> <!-- main body --> <!-- ################################################################################################ -->
		<section id="services">
			<div class="sectiontitle">
				<p class="nospace font-xs"></p>
				<h6 class="heading">Information & Service</h6>
			</div>
			<ul class="nospace group grid-3">
				<li class="one_third">
					<article>
						<a href="./pages/gallery.jsp"><i class="fas fa-spray-can"></i></a>
						<h6 class="heading">자전거 갤러리</h6>
						<p>회원들과 함께 사진을 공유하세요.</p>
						<footer>
							<a href="#">More Details &raquo;</a>
						</footer>
					</article>
				</li>
				<li class="one_third">
					<article>
						<a href="#"><i class="fas fa-user-secret"></i></a>
						<h6 class="heading">전국 자전거 대여소 현황</h6>
						<p>전국에 위치한 자전거 대여소를 확인하세요.</p>
						<footer>
							<a href="#">More Details &raquo;</a>
						</footer>
					</article>
				</li>
				<li class="one_third">
					<article>
						<a href="#"><i class="fas fa-couch"></i></a>
						<h6 class="heading">커뮤니티</h6>
						<p>공통 관심사를 가진 여러 회원들과 함께 정보를 나누고 공유하세요.</p>
						<footer>
							<a href="#">More Details &raquo;</a>
						</footer>
					</article>
				</li>
				<li class="one_third">
					<article>
						<a href="http://cycling.or.kr/"><i class="fas fa-crow"></i></a>
						<h6 class="heading">대한 자전거 연맹</h6>
						<p>대한 자전거 연맹에서는 연맹은 올림픽의 꿈을 위한 엘리트 육성 인프라 구축사업과 동호인 자전거 활성화
							사업을 적극 추진하며, 엘리트와 동호인, 두 개의 축이 하나가 되는 진정한 국민적 인기스포츠로 성장할 수 있도록
							최선을 다하고 있습니다.</p>
						<footer>
							<a href="#">More Details &raquo;</a>
						</footer>
					</article>
				</li>
				<li class="one_third">
					<article>
						<a href="http://www.kmtb.or.kr/"><i
							class="fas fa-dolly-flatbed"></i></a>
						<h6 class="heading">한국산악자전거협회</h6>
						<p>산악자전거를(MOUNTAIN BIKE) 통하여 자연환경을 보존하고, 심신을 단련 시키며, MTB문화를 레져
							스포츠로 접목시켜 대중적 문화로 승화시키려 노력하고 있습니다.</p>
						<footer>
							<a href="#">More Details &raquo;</a>
						</footer>
					</article>
				</li>
				<li class="one_third">
					<article>
						<a href="#"><i class="fas fa-road"></i></a>
						<h6 class="heading">FAQ</h6>
						<p>고객들이 자주 묻는 질문입니다.</p>
						<footer>
							<a href="#">More Details &raquo;</a>
						</footer>
					</article>
				</li>
			</ul>
		</section>
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
			<p class="fl_left">Copyright &copy; 2018 - All Rights Reserved -
				Sungsu An</p>
			<p class="fl_right">Sungsu An Portfolio</p>
			<!-- ################################################################################################ -->
		</div>
	</div>
	<!-- ################################################################################################ -->
	<!-- ################################################################################################ -->
	<!-- ################################################################################################ -->
	<a id="backtotop" href="#top"><i class="fas fa-chevron-up"></i></a>
	<!-- JAVASCRIPTS -->
	<script src="layout/scripts/jquery.min.js"></script>
	<script src="layout/scripts/jquery.backtotop.js"></script>
	<script src="layout/scripts/jquery.mobilemenu.js"></script>
</body>
</html>