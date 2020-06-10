<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap" rel="stylesheet">
<title>Menu</title>

<style>
form {
	margin: 0 auto;
}

h1 , a{
	font-family: 'Do Hyeon', sans-serif;
}
</style>
</head>
<body>

<%
	String userID = (String)session.getAttribute("userID");
	String userPW = (String)session.getAttribute("userPW");
%>

	<nav class="navbar navbar-dark bg-primary">

		<div class="container">

			<div class="navbar-header">
				<a href="index.jsp" class="navbar-brand"><h1>단 배 달</h1> </a>
			</div>
			
			<%  if(userID == null && userPW == null) { %>
			<div>
				<p><a href="login.jsp" class="btn btn-outline-light" role="button"> 로그인 &raquo;</a>
				<p><a href="signup.jsp" class="btn btn-outline-light" role="button"> 회원가입 &raquo;</a>
			</div>
			<% } else { %>
			<h1><font color="#fffffff">Welcome ${userID }!</font></h1>
			<div>
			<p><a href="LogoutAction.do" class ="btn btn-outline-light" role="button">로그아웃 &raquo;</a>
			<p><a href="cart.jsp" class ="btn btn-outline-light" role="button">장바구니 &raquo;</a>
			</div>
			<% } %>	

			
			
		</div>
	</nav>
</body>
</html>