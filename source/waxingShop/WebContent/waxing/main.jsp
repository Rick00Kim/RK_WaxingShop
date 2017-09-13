<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>KURURU WAXINGSHOP</title>
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
							<li><a href="/waxingShop/waxing/surgery/surgeryList.jsp">Surgery Information</a></li>
						<c:if test="${!empty loginUser }">
							<li><a href="/waxingShop/waxing/reserve/reservationList.jsp">Reservation</a></li>
						</c:if>
							<li><a href="/waxingShop/waxing/review/reviewList.jsp">Review Waxing</a></li>
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
					<section id="banner" class="major">
						<div class="inner">
							<header class="major">
								<h1>Welcome To Kururu WaxingShop</h1>
							</header>
							<div class="content">
								<p>전 세계 곳곳에 체인점을 가지고 있는 세계 최대 규모 왁싱 샵<br />
								꾸루루 왁싱샵입니다. 정성을 다해 모시겠습니다.</p>
								<ul class="actions">
									<li><a href="#one" class="button next scrolly">시작하기</a></li>
								</ul>
							</div>
						</div>
							<span class="image">
								<img src="/waxingShop/images/banner7.gif" alt="" />
							</span>

					</section>
				<!-- Main -->
					<div id="main">
						<!-- One -->
							<section id="one" class="tiles">
								<article>
									<span class="image">
										<img src="/waxingShop/images/tile01.jpg" alt="" />
									</span>
									<header class="major">
										<h3><a href="/waxingShop/waxing/aboutWaxing/aboutWaxing.jsp" class="link">About Waxing?</a></h3>
										<p>왁싱을 했을때의 좋은 점</p>
									</header>
								</article>
								<article>
									<span class="image">
										<img src="/waxingShop/images/tile02.jpg" alt="" />
									</span>
									<header class="major">
										<h3><a href="/waxingShop/waxing/center_Information/center_information.jsp" class="link">센터 소개</a></h3>
										<p>센터의 소개 및 이용 방법을 알려드립니다.</p>
									</header>
								</article>
								<article>
									<span class="image">
										<img src="/waxingShop/images/tile03.jpg" alt="" />
									</span>
									<header class="major">
										<h3><a href="/waxingShop/waxing/surgery/surgeryList.jsp" class="link">시술 예약</a></h3>
										<p>시술 목록확인 및 시술 예약을 도와 드립니다.</p>
									</header>
								</article>
								<article>
									<span class="image">
										<img src="/waxingShop/images/tile04.jpg" alt="" />
									</span>
									<header class="major">
										<h3><a href="/waxingShop/waxing/reserve/reservationList.jsp" class="link">예약 현황</a></h3>
										<p>회원님의 현재까지 받은 시술 내역 및 예약현황입니다.</p>
									</header>
								</article>
								<article>
									<span class="image">
										<img src="/waxingShop/images/tile05.jpg" alt="" />
									</span>
									<header class="major">
										<h3><a href="/waxingShop/waxing/review/reviewList.jsp" class="link">이용 후기</a></h3>
										<p>고객님들의 시술 후기입니다.</p>
									</header>
								</article>
								<article>
									<span class="image">
										<img src="/waxingShop/images/tile06.jpg" alt="" />
									</span>
									<header class="major">
										<h3><a href="/waxingShop/waxing/member/memberInfo.jsp" class="link">My Page</a></h3>
										<p>회원님의 정보를 수정, 삭제 그리고 샵의 이용 내역입니다.</p>
									</header>
								</article>
								<c:if test="${!empty adminUser }">
								<article>
									<span class="image">
										<img src="/waxingShop/images/tile07.jpg" alt="" />
									</span>
									<header class="major">
										<h3><a href="stastic_company.html" class="link">매출관리</a></h3>
										<p>운영자 전용 메뉴입니다.</p>
									</header>
								</article>
								<article>
									<span class="image">
										<img src="/waxingShop/images/tile08.jpg" alt="" />
									</span>
									<header class="major">
										<h3><a href="landing.html" class="link">관리 페이지</a></h3>
										<p>회원정보, 메뉴 등 홈페이지의 관리를 위한 페이지입니다.</p>
									</header>
								</article>
								</c:if>
							</section>

						<!-- Two -->
							<section id="two">
								<div class="inner">
									<header class="major">
										<h2>꾸루루 왁싱샵만의 장점</h2>
									</header>
									<p>꾸루루 왁싱샵은 항상 회원님의 편의를 생각하고 Waxing 입문자에게는 철저히 비밀 유지와 처음 시도하는 부담감 없이 원할히 시술 받을 수 있도록 도와드립니다.<br/>
										그리고, 회원님의 철저한 관리와 다양한 서비스를 제공하고자 노력하겠습니다.   감사합니다.</p>
									<c:if test="${empty loginUser }">
										<ul class="actions">
											<li><a href="/waxingShop/waxing/member/loginForm.jsp" class="button next">로그인 하기</a></li>
										</ul>
										<ul class="actions">
											<li><a href="/waxingShop/waxing/surgery/surgeryList.jsp" class="button next">회원가입 하기</a></li>
										</ul>
									</c:if>
								</div>
							</section>
					</div>

				<!-- Contact -->
					<section id="contact">
						<div class="inner">
							<section>
								<h1>1:1 Comment</h1>
								<h5>궁금하신 점이 있으시면 메세지를 보내주십시오.</h5>
								<form method="post" action="#">
									<div class="field half first">
										<label for="name">Name</label>
										<input type="text" name="name" id="name" />
									</div>
									<div class="field half">
										<label for="email">Email</label>
										<input type="text" name="email" id="email" />
									</div>
									<div class="field">
										<label for="message">Message</label>
										<textarea name="message" id="message" rows="6"></textarea>
									</div>
									<ul class="actions">
										<li><input type="submit" value="Send Message" class="special" /></li>
										<li><input type="reset" value="Clear" /></li>
									</ul>
								</form>
							</section>
							<section class="split">
								<section>
									<div class="contact-method">
										<span class="icon alt fa-envelope"></span>
										<h3>Email</h3>
										<a href="#">dreamx119@gmail.com</a>
									</div>
								</section>
								<section>
									<div class="contact-method">
										<span class="icon alt fa-phone"></span>
										<h3>Phone</h3>
										<span>010-8546-9119</span>
									</div>
								</section>
								<section>
									<div class="contact-method">
										<span class="icon alt fa-home"></span>
										<h3>Address</h3>
										<span>계룡로 825 동화빌딩 5F<br />
										대전광역시 중구 <br />
										Republic of Korea</span>
									</div>
								</section>
							</section>
						</div>
					</section>

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
