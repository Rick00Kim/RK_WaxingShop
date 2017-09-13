<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
	<head>
		<title>Surgery List</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="/waxingShop/assets/css/main.css" />
	</head>
	<body>

		<!-- Wrapper -->
			<div id="wrapper">
				<!-- Header -->
				<header id="header" class="alt">
						<a href="/waxingShop/waxing/main.jsp" class="logo"><strong>Kururu</strong> <span>waxingShop</span></a>
						<nav>
							<c:if test="${!empty loginUser }">
								<a href="#"><label for="userName">Welcome ${loginUser.name }</label></a>&nbsp;&copy;&nbsp;
							</c:if>
							<c:if test="${empty loginUser }">
								<a href="/waxingShop/waxing/member/loginForm.jsp"><font size="4px">Login</font></a>&nbsp;&copy;&nbsp;
							</c:if>
							<a href="#menu">Menu</a>
						</nav>
					</header>

				<!-- Menu -->
					<nav id="menu">
						<ul class="links">
							<li><a href="/waxingShop/waxing/main.jsp">Home</a></li>
							<li><a href="/waxingShop/waxing/center_Information/center_information.jsp">Center Information</a></li>
							<li><a href="/waxingShop/waxing/surgery/surgeryList.jsp">Surgery Information</a></li>
							<li><a href="/waxingShop/waxing/reserve/reservationList.jsp">Reservation</a></li>
							<li><a href="/waxingShop/waxing/review/reviewList.jsp">Review Waxing</a></li>
							<li><a href="/waxingShop/waxing/member/memberInfo.jsp">My page</a></li>
						</ul>
						<ul class="actions vertical">
							<li><a href="/waxingShop/waxing/aboutWaxing/aboutWaxing.jsp" class="button special fit">About Waxing?</a></li>
							<li><a href="/waxingShop/waxing/member/loginForm.jsp" class="button fit">Log In</a></li>
						</ul>
					</nav>

				<!-- Main -->
				<div id="main" class="alt">
					<!-- One -->
					<section id="one">
						<div class="inner">
							<header class="major">
								<h1>꾸루루 왁싱샵 시술 내용</h1>
							</header>
						<!--Menu List Start-->
						<div class="row" >
						<div class="6u 12u$(small) spotlights">
							<header class="major">
								<h3>Man Surgery</h3>
							</header>
							<section style="background-color: #c1a2a2; ">
								<div class="image">
									<img src="/waxingShop/images/man_AllNude.jpg" height="200" alt="" data-position="center"/>
								</div>
								<div class="content">
									<div class="inner">
										<header class="major">
											<h5>man_AllNude</h5>
										</header>
										<p></p>
										<ul class="actions">
											<li><a href="generic.html" class="button small">예약하기</a></li>
										</ul>
									</div>
								</div>
							</section>
							<br>
							<section style="background-color: #6e3c3c; ">
								<div class="image">
									<img src="/waxingShop/images/man_Strip.jpg" height="200"  alt="" data-position="center" />
								</div>
								<div class="content">
									<div class="inner">
										<header class="major">
											<h5>man_Strip</h5>
										</header>
										<p></p>
										<ul class="actions">
											<li><a href="generic.html" class="button small">예약하기</a></li>
										</ul>
									</div>
								</div>
							</section>
						</div>
						<div class="6u 12u$(small) spotlights">
							<header class="major">
								<h3>Woman Surgery</h3>
							</header>
							<section style="background-color: #cf9260; ">
								<div class="image">
									<img src="/waxingShop/images/woman_AllNude.jpg" height="200"  alt="" data-position="center center" />
								</div>
								<div class="content">
									<div class="inner">
										<header class="major">
											<h5>woman_AllNude</h5>
										</header>
										<p></p>
										<ul class="actions">
											<li><a href="generic.html" class="button small">예약하기</a></li>
										</ul>
									</div>
								</div>
							</section>
							<br>
							<section style="background-color: #aca471; " >
								<div class="image">
									<img src="/waxingShop/images/woman_Strip.jpg" height="200"  alt="" data-position="center" />
								</div>
								<div class="content">
									<div class="inner">
										<header class="major">
											<h5>woman_Strip</h5>
										</header>
										<p></p>
										<ul class="actions">
											<li><a href="generic.html" class="button small">예약하기</a></li>
										</ul>
									</div>
								</div>
							</section>
						</div>
					</div>
						</div>
					</section>
				</div>
				<!-- Footer -->
				<footer id="footer">
					<div class="inner">
						<ul class="icons">
							<li><a href="https://www.facebook.com/GuruGuruMon" class="icon alt fa-facebook"><span class="label">Facebook</span></a></li>
							<li><a href="https://github.com/Rick00Kim" class="icon alt fa-github"><span class="label">GitHub</span></a></li>
							<li><a href="#" class="icon alt fa-linkedin"><span class="label">LinkedIn</span></a></li>
						</ul>
						<ul class="copyright">
							<li>&copy; Kururu WaxingShop Made by Rick</li><li>Design: <a href="https://html5up.net">HTML5 UP</a></li>
						</ul>
					</div>
				</footer>

			</div>

		<!-- Scripts -->
			<script src="/waxingShop/assets/js/jquery.min.js"></script>
			<script src="/waxingShop/assets/js/jquery.scrolly.min.js"></script>
			<script src="/waxingShop/assets/js/jquery.scrollex.min.js"></script>
			<script src="/waxingShop/assets/js/skel.min.js"></script>
			<script src="/waxingShop/assets/js/util.js"></script>
			<script src="/waxingShop/assets/js/main.js"></script>

	</body>
</html>
