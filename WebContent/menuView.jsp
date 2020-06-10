<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap" rel="stylesheet">
<title>Store Menu List</title>
</head>
<style>
.menucard {
	float: left;
	margin-left: 100px;
	margin-top: 50px;
}

.menucard-img-top {
	width: 15vw;
	height: 11vw;
}

a, h5 {
	font-family: 'Do Hyeon', sans-serif;
}

</style>
<body>

	<%
		request.setCharacterEncoding("UTF-8");
	%>
	<jsp:include page="menu.jsp" />

	<div class="jumbotron">
		<div class="container">
			<h1 class="display-4">${st.getName()} 메뉴 리스트</h1>
		</div>
	</div>
<div class="container">
	<table class="table table-hover">
		
			<c:forEach var="me" items="${mList}">

				<div class="menucard">
					<%--사진 클릭했을 때 메뉴 정보 팝업창 뜨도록 하는 게 좋을 거 같아요 --%>
					
					<a href="#"> <img
						class="menucard-img-top"
						src="resources/menu/${me.getStoreid()}/${me.getId()}.png">
					</a>
					
					<div class="menucard-body">
						<hr>
						<h5 class="menucard-title" style="text-align: center;">${me.getName()}</h5>
						<hr>
						<h5 class="menucard-title" style="text-align: center;">${me.getValue()}원</h5>
						<hr>
					</div>
				</div>

			</c:forEach>
	</table>
	
	<center>
	<div>
	<form action="CartAction.do" method = "post" style="font-family: 'Do Hyeon', sans-serif;">
	<select name="choiceMenu" class="custom-select custom-select-lg mb-3" style="width:300px; margin-right:50px; ">
    	<option selected>메뉴 선택</option>
   	 	<c:forEach var="me" items="${mList}">
    		<option value ="${me.getId()}">${me.getName()}</option>
    	</c:forEach>
	</select>
	 <input type="submit" class="btn btn-outline-primary " value="장바구니 담기">
	</form>
	</div>
	</center>
</div>
	<jsp:include page="footer.jsp" />
</body>
</html>