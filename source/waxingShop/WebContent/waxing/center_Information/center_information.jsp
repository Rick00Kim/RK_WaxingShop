<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>Center Information - KWS</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="/waxingShop/assets/css/main.css" />
	</head>
	<body>

		<!-- Wrapper -->
			<div id="wrapper">
				<!-- Header -->
					<div id="wrapper">
				<!-- Header -->
					<header id="header" class="alt">
						<a href="/waxingShop/waxing/main.jsp" class="logo"><strong>Kururu</strong> <span>waxingShop</span></a>
						<nav>
							<c:if test="${!empty loginUser }">
								Welcome &nbsp;<u>${loginUser.name }</u>&nbsp;&copy;&nbsp;
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
							<li><a href="/waxingShop/surgerylist.do">Surgery Information</a></li>
						<c:if test="${!empty loginUser }">
							<li><a href="/waxingShop/waxing/reserve/reservationList.jsp">Reservation</a></li>
						</c:if>
							<li><a href="/waxingShop/reviewlist.do">Review Waxing</a></li>
						<c:if test="${!empty loginUser }">
							<li><a href="/waxingShop/waxing/member/memberInfo.jsp">My page</a></li>
						</c:if>
						</ul>
						<ul class="actions vertical">
							<li><a href="/waxingShop/waxing/aboutWaxing/aboutWaxing.jsp" class="button special fit">About Waxing?</a></li>
							<c:if test="${empty loginUser }">
								<li><a href="/waxingShop/waxing/member/loginForm.jsp" class="button fit">Log In</a></li>
							</c:if>
							<c:if test="${!empty loginUser }">
								<li><a href="/waxingShop/logout.do" class="button fit">Log Out</a></li>
							</c:if>
						</ul>
					</nav>

				<!-- Main -->
					<div id="main">

						<!-- One -->
							<section id="one">
								<div class="inner">
									<header class="major">
										<h1>센터 및 시설 소개</h1>
									</header>
									<section id="two" class="spotlights">
										<section>
											<a href="#;" class="image">
												<img src="/waxingShop/images/infor1.jpg" alt="" data-position="center center"/>
											</a>
											<div class="content">
												<div class="inner">
													<header class="major">
														<h3>센터 입구</h3>
													</header>
													<p>매장에 입장 시, 가장 먼저 고객님을 반기는 카운터가 준비되어 있으며
														보다 안락한 분위기를 연출하기 위해 노력하고 있습니다.</p>
												</div>
											</div>
										</section>
										<section>
											<a href="#;" class="image">
												<img src="/waxingShop/images/infor2.jpg" alt="" data-position="center center" />
											</a>
											<div class="content">
												<div class="inner">
													<header class="major">
														<h3>고객 편의 시설</h3>
													</header>
														<p>시술을 기다리는 과정에서 지루하지 않도록 커피, 간식, 잡지 등을
															제공하고 있습니다. </p>
												</div>
											</div>
										</section>
										<section>
											<a href="#;" class="image">
												<img src="/waxingShop/images/infor3.jpg" alt="" data-position="center center" />
											</a>
											<div class="content">
												<div class="inner">
													<header class="major">
														<h3>시술 장소</h3>
													</header>
													<p>꾸루루 왁싱샵은 고객님이 불쾌해 하지 않도록 국내 최고 시술 환경을 조성하고 있습니다.</p>
												</div>
											</div>
										</section>
										<section>
											<a href="#;" class="image">
												<img src="/waxingShop/images/infor4.jpg" alt="" data-position="center center" />
											</a>
											<div class="content">
												<div class="inner">
													<header class="major">
														<h3>샤워실</h3>
													</header>
													<p>브라질리언 왁싱 시술 이후에는 시술 부위가 민감한 상태가 되어집니다.
														그에 따라 고객님에게 보다 안전하고 쾌적한 환경의 샤워실을 제공합니다.</p>
												</div>
											</div>
										</section>
								</div>
							</section>
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
