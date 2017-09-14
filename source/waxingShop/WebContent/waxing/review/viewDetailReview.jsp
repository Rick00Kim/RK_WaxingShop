<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>ReviewDetail</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="/waxingShop/assets/css/main.css" />
		<script type="text/javascript">
		$(document).ready(function(){
		    $('[data-toggle="tooltip"]').tooltip();
		});
		function deleteReply(password, reply_num){
			var tempPwd=window.prompt('Please Enter Your Reply Password','');
			if(password==tempPwd){
				alert('맞습니다');
			}else{
				alert('비밀번호가 다릅니다.');
			}
		}
		function modifyReply(password, reply_num){
			var tempPwd=window.prompt('신원 조회를 위한 비밀번호를 입력해주세요','');
			if(password==tempPwd){
				alert('맞습니다');
				var tempContent=window.prompt('새로운 내용을 입력해 주세요.','');
				alert('새로운 내용'+tempContent);
			}else{
				alert('비밀번호가 다릅니다.');
			}
		}
		function replyCheck(){
			if(!document.replyFrame.id.value){
				alert('로그인이 필요합니다.');
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

				<div id="main">
					<section id="banner" class="style5">
							<span class="image">
								<img src="/waxingShop/images/temp03.jpg" alt="" />
							</span>
							<div class="inner" style="border:dotted black 7px; background:rgb(92, 128, 219); opacity:0.8; border-radius:4em;">
								<div class="row" style="margin-top:3%; margin-bottom:3%;">
									<section class="7u 12u$(small)">
										<header align="center" style="margin-top:2%;">
											<h3>${board.title }</h3>
											<p align="right" style="margin-right:4%;">${board.userid } - ${board.writedate }</p>
										</header>
										<img src="/waxingShop/images/${board.fileName }" alt="" style="width:80%; border-radius:3em; margin-left:10%;">
										<div class="content" style=" width:95%; margin-left:10%;">
											<p>${board.content }</p>
										</div>
									</section>
									<section class="5u 12u$(small)" >
										<h3>Reply</h3>
										<div style="height:380pt;">
											<section class="row"style="font-size:19px; height:40px;">
												<div class="3u 12u$(small)"style=" height:40px;">
													<p>작성자</p>
												</div>
												<div class="5u 12u$(small)" style="height:40px;">
													<p>내용</p>
												</div>
												<div class="4u 12u$(small)" style="height:40px;">
													<p>작성일</p>
												</div>
											</section>
											<!--반복 시작-->
											<c:forEach var="temp" items="${reply }">
											<a href="#" onclick="return modifyReply('1234','2');" data-toggle="tooltip" title="Reply 수정을 원하시면 클릭하십시오.">
												<section class="row" style="font-size:18px; height:40px;">
												<div class="3u 12u$(small)"style="height:40px;">
													<p>${temp.userid }</p>
												</div>
												<div class="5u 12u$(small)" style="height:40px;">
													<p>${temp.rep_content }</p>
												</div>
												<div class="3u 12u$(small)" style="height:40px;">
													<p>${temp.replydate }</p>
												</div>
											</section></a>
											</c:forEach>
											<!--반복 끝-->
										</div>
										<hr>
										<footer>
											<form action="/waxingShop/addReply.do" method="post" class="row" name="replyFrame"style="margin:4px;">
												<input type="hidden" name="ref_board_num" value="${board.board_num }">
												<input type="text" class = "button fit" name="id" value="${loginUser.id }" style="width:8em; margin-right:9px; float : left;" readonly>
												<input type="text" class = "button fit" name="content" style="width:15em; margin-right:10px; margin-left:14px;">
												<input type="submit" class ="button special small" onclick="return replyCheck();"value="Add" style="height:30pt; float:right;">
											</form>
										</footer>
									</section>
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
