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
<title>������ ����</title>
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

		<div class="bgded overlay padtop">
			<!-- ################################################################################################ -->
			<!-- ################################################################################################ -->
			<!-- ################################################################################################ -->
			<header id="header" class="hoc clear"
				style="margin-top: 0px; padding-top: 0px">
				<div id="logo" class="fl_left"">
					<!-- ################################################################################################ -->
					<h1>
						<a href="index.jsp" style="font-family: ���� ���;">������ ����</a>
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
			<!-- ################################################################################################ -->
			<!-- ################################################################################################ -->
			<!-- ################################################################################################ -->
			<div id="pageintro" class="hoc clear">
				<!-- ################################################################################################ -->
				<article>
					<h3 class="heading">������ ����</h3>
					<p>���� �ֿ䵵�� �����ſ� ���Ͽ� �˾ƺ�����.</p>
					<p>�����Ŵ� ����ü�� �� ������ ������ �ذ��ϸ� �ǰ��� ���Ͽ� ���� ���� �����ݴϴ�.</p>
					<footer>
						<ul class="nospace inline pushright">
							<li><a class="btn" href="#">�뿩�� ��ȸ�ϱ�</a></li>
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
						<h6 class="heading">������ ������</h6>
						<p>ȸ����� �Բ� ������ �����ϼ���.</p>
						<footer>
							<a href="#">More Details &raquo;</a>
						</footer>
					</article>
				</li>
				<li class="one_third">
					<article>
						<a href="#"><i class="fas fa-user-secret"></i></a>
						<h6 class="heading">���� ������ �뿩�� ��Ȳ</h6>
						<p>������ ��ġ�� ������ �뿩�Ҹ� Ȯ���ϼ���.</p>
						<footer>
							<a href="#">More Details &raquo;</a>
						</footer>
					</article>
				</li>
				<li class="one_third">
					<article>
						<a href="#"><i class="fas fa-couch"></i></a>
						<h6 class="heading">Ŀ�´�Ƽ</h6>
						<p>���� ���ɻ縦 ���� ���� ȸ����� �Բ� ������ ������ �����ϼ���.</p>
						<footer>
							<a href="#">More Details &raquo;</a>
						</footer>
					</article>
				</li>
				<li class="one_third">
					<article>
						<a href="http://cycling.or.kr/"><i class="fas fa-crow"></i></a>
						<h6 class="heading">���� ������ ����</h6>
						<p>���� ������ ���Ϳ����� ������ �ø����� ���� ���� ����Ʈ ���� ������ �������� ��ȣ�� ������ Ȱ��ȭ
							����� ���� �����ϸ�, ����Ʈ�� ��ȣ��, �� ���� ���� �ϳ��� �Ǵ� ������ ������ �α⽺������ ������ �� �ֵ���
							�ּ��� ���ϰ� �ֽ��ϴ�.</p>
						<footer>
							<a href="#">More Details &raquo;</a>
						</footer>
					</article>
				</li>
				<li class="one_third">
					<article>
						<a href="http://www.kmtb.or.kr/"><i
							class="fas fa-dolly-flatbed"></i></a>
						<h6 class="heading">�ѱ������������ȸ</h6>
						<p>��������Ÿ�(MOUNTAIN BIKE) ���Ͽ� �ڿ�ȯ���� �����ϰ�, �ɽ��� �ܷ� ��Ű��, MTB��ȭ�� ����
							�������� ������� ������ ��ȭ�� ��ȭ��Ű�� ����ϰ� �ֽ��ϴ�.</p>
						<footer>
							<a href="#">More Details &raquo;</a>
						</footer>
					</article>
				</li>
				<li class="one_third">
					<article>
						<a href="#"><i class="fas fa-road"></i></a>
						<h6 class="heading">FAQ</h6>
						<p>������ ���� ���� �����Դϴ�.</p>
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