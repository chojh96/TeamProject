<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Dan Delivery Store List</title>
<style>
.storecard {
	float: left;
	margin-left: 100px;
}

.storecard-img-top {
	width: 20vw;
	height: 11vw;
}


</style>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
	%>
	<jsp:include page="menu.jsp" />

	<div class="jumbotron" >
		<div class="container" >
			<h1 class="display-4" >가게 리스트</h1>
		</div>
	</div>

<div class="container">
	<c:forEach var="st" items="${sList}">
		<table class="table table-hover">
			<tr>
			<td align="center" style="vertical-align: middle; horizontal-align: middle;">
				<div class="storecard">
					<a href="MenuListViewAction.do?storeid=${st.getId()}"> <img
						class="storecard-img-top"
						src="resources/${st.getCategory()}/${st.getId()}.png">
					</a>
				</div>
			</td>
			
			<td align="center" width="530" align ="left" style="vertical-align: middle;">
				<h2 class="storecard-title" style="text-align:left">${st.getName()}</h2>
				<h5 class="storecard-title" style="text-align:left">주소 : ${st.getAddress()}</h5>
				<h5 class="storecard-title" style="text-align:left">전화번호 : ${st.getPhone()}</h5>
			</td>
			</tr>
		</table>

	</c:forEach>
</div>
	<jsp:include page="footer.jsp" />
</body>
</html>