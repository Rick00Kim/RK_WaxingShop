<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
	<head>
		<title>Surgery List - KWS</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="/waxingShop/assets/css/main.css" />
		<script type="text/javascript">
			function goToPage(userid){
				if(userid==''){
					alert('로그인 먼저 해주세요.');
					location.href='/waxingShop/waxing/member/loginForm.jsp';
				}else{
					alert('시술페이지로');
				}
			}
		</script>
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
							<c:forEach var="temp" items="${man }">
							<section style="background-color: #a1c2a2; border-radius:2em;">
								<div class="image" style="margin:5%;">
									<img src="/waxingShop/images/man_${temp.name }.jpg" style="border-radius:1em;" height="200" alt=""/>
								</div>
								<div class="content">
									<div class="inner">
										<header class="major">
											<h5>${temp.name } &nbsp; ${temp.kinds }</h5>
										</header>
										<p>${temp.sur_content }</p><br>
											<strong>${temp.price }원</strong>
										<ul class="actions">
											<li><a href="javascript:goToPage('${loginUser.id }');" class="button small">예약하기</a></li>
										</ul>
									</div>
								</div>
							</section>
							<br>
							</c:forEach>
						</div>
						<div class="6u 12u$(small) spotlights">
							<header class="major">
								<h3>Woman Surgery</h3>
							</header>
							<c:forEach var="temp" items="${woman }">
							<section style="background-color: #3B51FF; border-radius:2em;">
								<div class="image" style="margin:5%;">
									<img src="/waxingShop/images/woman_${temp.name }.jpg" style="border-radius:1em;" height="200" alt=""/>
								</div>
								<div class="content">
									<div class="inner">
										<header class="major">
											<h5>${temp.name } &nbsp; ${temp.kinds }</h5>
										</header>
										<p>${temp.sur_content }</p><br>
											<strong>${temp.price }원</strong>
										<ul class="actions">
											<li><a href="javascript:goToPage('${loginUser.id }');" class="button small">예약하기</a></li>
										</ul>
									</div>
								</div>
							</section>
							<br>
							</c:forEach>
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
