<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Insert title here</title>
		<link rel="stylesheet" href="/waxingShop/css/animate.min.css">
		<style>
			body{
			margin:50px;
			background:#2980b9;
			font-family: sans-serif;
			text-align:center;
			}
			a.button{
				background:#e74c3c;
				color:white;
				padding:20px;
				text-decoration:none;
				diplay:inline-block;
				font-size:50px;
				border-radius:10px;
			}
		</style>
	</head>
	<body>
		<a href="#" class="button">HELLO!</a>
		
		<input type="text" name="firstName" >
		
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>		
		<script>
			var animatedName='animated flipInY';
			$(function(){
				$('a.button').on('click',function(){
					$('a').addClass(animatedName).on('webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend',
					function(){
						$(this).removeClass(animatedName);
					});
				});
			});
		</script>
	</body>
</html>