<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>Login For Kururu WaxingShop</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="/waxingShop/assets/css/main.css" />
		<script type="text/javascript">
			function userCheck(){
				if(!document.frame.userid.value){
					alert('먼저 로그인을 해주세요');
					location.href='/waxingShop/waxing/member/loginForm.jsp';
					return false;
				}else{
					return true;
				}
			}
		</script>
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
				<div id="main">
					<section id="banner" class="style5">
							<span class="image">
								<img src="/waxingShop/images/banner4.gif" alt="" />
							</span>
							<div class="inner" style="border:dotted black 7px; background:rgb(99, 83, 199); opacity:0.95; border-radius:4em;">
								<div><h2 align="center">Write Review!!</h2></div>
									<section align="center" style="margin-left:10%;">
										<form action="/waxingShop/insertreview.do" method="post" enctype="multipart/form-data" name="frame">
											<input type="hidden" name="userid" value="${loginUser.id }">
											<div class="row">
												<div style="width:20%;">
													<h3 style="margin-right:2em;">Title</h3>
												</div>
												<div style="width:70%;">
													<input type="text" name="title" style="width:28em; border:solid 1px;">
												</div>
											</div>

											<div class="row">
												<div style="width:20%;">
													<h3 style="margin-right:2em; float:left;">Content</h3>
												</div>
												<div style="width:70%;">
													<textarea rows="9" name="content" style="width:70%; resize:none; border:solid 1px;"></textarea>
												</div>
											</div>

											<div class="row" style="margin-top:10px;">
												<div style="width:20%;">
													<h3 style="margin-right:2em; float:left;">Upload File</h3>
												</div>
												<div style="width:40%;">
													<input type="file" name="upload_file" style="width:20em;">
												</div>
											</div>

											<div class="row" style="margin-top:10px;">
												<div style="width:40%;">
													<input type="submit" value="Write" class="button special fit" onclick="return userCheck();">
												</div>
												<div style="width:40%;">
													<button type="button" class="button fit" >Cancel</button>
												</div>
											</div>
										</form>
									</section>
							</div>
					</section>
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