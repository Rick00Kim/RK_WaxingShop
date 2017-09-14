<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>About Waxing - KWS</title>
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

				<!-- Banner -->
				<!-- Note: The "styleN" class below should match that of the header element. -->
					<section id="banner" class="style2">
						<div class="inner">
							<span class="image">
								<img src="/waxingShop/images/tile001.jpg" alt="" />
							</span>
							<header class="major">
								<h1>About Waxing?</h1>
							</header>
							<div class="content">
								<p style="font-size:20px;">왁싱 문화에 생소한 분들을 위해 <br />
									왁싱에 대한 간단한 설명페이지입니다.</p>
							</div>
						</div>
					</section>

				<!-- Main -->
					<div id="main">

						<!-- One -->
							<section id="one">
								<div class="inner">
									<header class="major">
										<h2>왁싱에 대한 편견과 오해</h2>
									</header>
									<p>동양권 문화적 정서에서 바라본 Waxing에 대한 인식은 좋지 않습니다.<br/>
										한국이라는 나라에 Waxing에 문화가 들어 온 이래 많은 시간이 지났지만 타국에 비해 그 확산도는 기대에 미치지 못하고 있습니다.
										하지만 최근 Waxing에 대한 인식이 점차 좋아지게 됨에 따라 왁싱을 하는 젊은 세대가 늘고 있는 추세입니다.
										저희 꾸루루 WaxingShop은 이 문화적 움직임에 기다리지 않고 발 뻗고 나서서 새로운 문화를 즐기도록 노력 할 예정입니다.
										과거 사회적 정서에 얾매이지 않고 새로운 문화에 한걸음 다가갈 수 있도록 노력하겠습니다.</p>
								</div>
							</section>

						<!-- Two -->
							<section id="two" class="spotlights">
								<section>
									<a href="./comment01.jsp" class="image">
										<img src="/waxingShop/images/tile001.jpg" alt="" data-position="center" />
									</a>
									<div class="content">
										<div class="inner">
											<header class="major">
												<h3>왁싱을 하는 주 계층</h3>
											</header>
											<p>모델이나 왁싱을 본래부터 해 오던 특수 목적의 직업군만이 왁싱을 했지만, 최근에는 그 계층이 확산 되고 있다.</p>
											<ul class="actions">
												<li><a href="./comment01.jsp" class="button special fit">자세히</a></li>
											</ul>
										</div>
									</div>
								</section>
								<section>
									<a href="./comment02.jsp" class="image">
										<img src="/waxingShop/images/temp01.jpg" alt="" data-position="center" />
									</a>
									<div class="content">
										<div class="inner">
											<header class="major">
												<h3>왁싱을 했을때의 좋은점</h3>
											</header>
											<p>성감도 증진, 청결 유지, 여성 염증 감소 등 왁싱에 대해 알아보자</p>
											<ul class="actions">
												<li><a href="./comment02.jsp" class="button special fit">자세히</a></li>
											</ul>
										</div>
									</div>
								</section>
								<section>
									<a href="./comment03.jsp" class="image">
										<img src="/waxingShop/images/temp02.jpg" alt="" data-position="center" />
									</a>
									<div class="content">
										<div class="inner">
											<header class="major">
												<h3>남자의 왁싱</h3>
											</header>
											<p>남녀 성비가 여성쪽이 높았던 인식을 부수고 최근 증가하고 있는 남성의 왁싱에 대해 자세히 알아 보자</p>
											<ul class="actions">
												<li><a href="./comment03.jsp" class="button special fit">자세히</a></li>
											</ul>
										</div>
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
