<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>Find Password</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="/waxingShop/assets/css/main.css" />
	</head>
	<body>
		<!-- Wrapper -->
			<div id="wrapper">
				<!-- Header -->
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
				<div id="main">
					<section id="banner" class="style2" >
							<span class="image">
								<img src="/waxingShop/images/banner5.gif" alt="" />
							</span>
							<div class="inner row">
							<div class="4u 12u$(small)">
								<header class="major">
									<h1>Forget Password</h1>
								</header>
								<div class="content">
									<p style="font-size:20px">정보찾기</p>
								</div>
							</div>
						<div class="4u$ 12u$(small)" style="background-color:rgb(61, 102, 110); opacity:0.9;margin:2%; margin-left:20%; border-radius:3em;">
							<section style="margin:10%;">
								<h2>ID 찾기</h2>
								<form action="/waxingShop/login.do" method="post">
									<label for="#">ID</label>
									<input type="text" name="userid"></br>
									<label for="#">PASSWORD</label>
									<input type="password" name="userpwd" ><br>
									<a href="#">Sorry, Forget My Password</a><br><hr>
									<input type="submit" value="Login" >&nbsp;&nbsp;&nbsp;
									<input type="button" class="button special" value="Join" onclick="location.href='/waxingShop/waxing/member/memberJoinForm.jsp'">
								</form>
							</section>
							<section style="margin:10%;">
								<h2>PWD 찾기</h2>
								<form action="/waxingShop/login.do" method="post">
									<label for="#">ID</label>
									<input type="text" name="userid">
									<label for="#">NAME</label>
									<input type="text" name="name">
									<input type="submit" value="Login" >&nbsp;&nbsp;&nbsp;
									<input type="button" class="button special" value="Join" onclick="location.href='/waxingShop/waxing/member/memberJoinForm.jsp'">
								</form>
							</section>
						</div>
					</div>
					</section>
			</div>
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