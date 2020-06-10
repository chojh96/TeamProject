<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="dto.*" %>
<%@ page import="java.net.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>Cart</title>
<style>
.container {
	padding-top:100px;
	padding:20px;
}

</style>
</head>
<body>
<%
	ArrayList<MenuBean> menu = (ArrayList<MenuBean>)session.getAttribute("menuList");
	int sum = 0;
	System.out.println(menu);
%>

<jsp:include page="menu.jsp" />

	<%  if(menu == null) { %>
	<div class="container">
	<center><font color="#0000000">장바구니가 비었습니다.</font></center>
	</div>
	<% } else {  %>
	<div class="container">
		<table class="table table-bordered" style="text-align:center; font-family: 'Do Hyeon', sans-serif;">
		<thead>
			<tr>
				<th scope="col"></th>
				<th scope="col"> </th>
				<th scope="col">메뉴</th>
				<th scope="col">가격</th>
			</tr>
		</thead>
		<tbody>
		<% 
			for(int i=0;i<menu.size();i++) {
		%> 
			<tr>
				<th width=100 height=120 style="font-size:15pt;"><%=i+1 %> </th>
				<td width=120 height=120 ><img src="resources/menu/<%=menu.get(i).getStoreid()%>/<%=menu.get(i).getId()%>.png" width=100 height=100></td>
				<td style="font-size:12pt;"><%=menu.get(i).getName() %></td>
				<td style="font-size:12pt;"><%=menu.get(i).getValue() %>원</td>
			</tr>
		<%
			sum += menu.get(i).getValue();
		} %>
		<tr>
		<th scope="row"  width=100 height=70 style="font-size:15pt;"> 총 금액</th>
		<td colspan="3" style="font-size:20pt; valign:middle;"><%=sum %>원</td>
		</tr>
		</tbody>
		</table>
		
	</div>
	
	<div class="container">
		<a href="CartDeleteAction.do" class ="btn  btn-outline-primary" role="button">장바구니 비우기 &raquo;</a>
	</div>
	<%
	} %>
	


</body>
</html>