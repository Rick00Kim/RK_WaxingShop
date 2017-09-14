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
		<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
		<script type="text/javascript">
			$(document).ready(function(){
				$('#id_check').click(function(){
					var id=$('#id').val();
					$.ajax({
						url: '/waxingShop/idCheck.do',
						data : ({userid : id}),
						success : function(data){
							if(jQuery.trim(data)=='NO'){
								alert('중복된 아이디가 있습니다.');
								$('#id').val('');
								$('#id').css({border : "2px solid pink"});
								$('#id').focus();
							}else{
								alert('사용 가능한 아이디입니다.');
								$('#id').val(id);
								$('#id').css({border : ""});
								$('#h_id').val(id);
								$('#pwd').focus();
							}
						}
					});
					return false;
				});
				$('#preferCheck').click(function(){
					var cd = $("input:radio[name=prefer]:checked").val();
					alert(cd+'번 Waxer를 선택하셨습니다.');
					$('#s_prefer').val(cd);
				});
			});
			
			function joinConfirm(){
				var form=document.joinFrame;
				if(!form.id.value){
					alert('PLZ Input Your ID');
					return false;
				}
				if(!form.h_id.value){
					alert("Confirm ID_CHECK");
					return false;
				}
				if(!form.pwd.value){
					alert("Input Password");
					return false;
				}
				if(!form.name.value){
					alert("Input Name");
					return false;
				}
				if(!form.identify.value){
					alert("Input Identification Number");
					return false;
				}
				if(!form.email.value){
					alert("Input Email");
					return false;
				}
				if(!form.phone.value){
					alert("Input Phone Number");
					return false;
				}
				if(!form.s_prefer.value){
					alert("Select Prefer Waxer");
					return false;
				}
				return true;
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
				<!-- Banner -->
				<!-- Note: The "styleN" class below should match that of the header element. -->
				<div id="main">
					<section id="banner" class="style1">
							<span class="image">
								<img src="/waxingShop/images/banner6.gif" alt="" />
							</span>
							<div class="inner" style="border:dotted black 7px; background:rgb(35, 52, 111); opacity:0.95; border-radius:4em;">
								<div><h1 align="center">Join Us~!!</h1></div>
								<div class="row" style="margin:10px;">
								<div class="7u 12u$(small)">
									<section style="margin:2%;">
										<form action="/waxingShop/resisterMember.do" method="post" name="joinFrame">
											<table class="table">
												<tr>
													<th>
														<label for="#" style="font-size:20px;">ID</label>
													</th>
													<td>
														<input type="text" name="id" id="id" placeholder="Please Input Your ID" style="width:15em;">
														<input type="hidden" name="h_id" id="h_id">
													</td>
													<td>
														<button type="button special" id="id_check" style="width:70pt; height:40pt; font-size:9px;">Check</button>
													</td>
												</tr>
												<tr>
													<th>
														<label for="#" style="font-size:20px;">PW</label>
													</th>
													<td colspan="2">
														<input type="password" name="pwd" id="pwd" placeholder="Please Input Your PASSWORD"style="width:20em;">
													</td>
												</tr>
												<tr>
													<th>
														<label for="#" style="font-size:20px;">Name</label>
													</th>
													<td colspan="2">
														<input type="text" name="name" placeholder="Please Input Your Name"style="width:20em;">
													</td>
												</tr>
												<tr>
													<th>
														<label for="#" style="font-size:20px;">ID_Number</label>
													</th>
													<td colspan="2">
														<input type="text" name="identify" placeholder="Please Input Your Identification"style="width:20em;">
													</td>
												</tr>
												<tr>
													<th>
														<label for="#" style="font-size:20px;">Email</label>
													</th>
													<td colspan="2">
														<input type="text" name="email" placeholder="Please Input Your Email"style="width:20em;">
													</td>
												</tr>
												<tr>
													<th>
														<label for="#" style="font-size:20px;">Phone</label>
													</th>
													<td colspan="2">
														<input type="text" name="phone" placeholder="Please Input Your Phone"style="width:20em;">
														<input type="hidden" name="s_prefer" id= "s_prefer">
													</td>
												</tr>
											</table>
											<button class="button fit" onclick="return joinConfirm();">Let`s Join</button>
										</form>
									</section>
								</div>
								<div class="5u 12u$(small)" style="border:dotted white 3px;">
									<section>
										<h3>Prefer_Waxer</h3>
										<p>상담 또는 시술 받고자 하는 닥터를 고르세요</p>
										<div style="margin-right:10%;">
											<section class="row">
												<div class="8u 12u$(small)">
													<input type="radio" name="prefer" value="1" id="a1" ><label for="a1">Jack</label>
													<p>베테랑입니다.</p>
												</div>
												<div class="4u 12u$(small)">
													<img src="/waxingShop/images/staff01.jpg" alt="" style="height:100pt;">
												</div>
											</section>
											<section class="row" style="margin-top:15px;">
												<div class="8u 12u$(small)">
													<input type="radio" name="prefer" value="2" id="a2" ><label for="a2">Elvis</label>
													<p>베테랑입니다.</p>
												</div>
												<div class="4u 12u$(small)">
													<img src="/waxingShop/images/staff02.jpg" alt="" style="height:100pt;">
												</div>
											</section>
											<section class="row" style="margin-top:15px;">
												<div class="8u 12u$(small)">
													<input type="radio" name="prefer" value="3" id="a3" ><label for="a3">Julia</label>
													<p>베테랑입니다.</p>
												</div>
												<div class="4u 12u$(small)">
													<img src="/waxingShop/images/staff03.jpg" alt="" style="height:100pt;">
												</div>
											</section>
											</div>
											<div>
												<button type="button" class="button special fit" id="preferCheck" style="width:92%;">
													Select Prefer_Waxer
												</button>
											</div>
									</section>
									</div>
								</div>
							</div>
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
