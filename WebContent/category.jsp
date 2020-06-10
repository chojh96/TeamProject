<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Category</title>
</head>
<link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap" rel="stylesheet">
<style>
h1, h5 {
	font-family: 'Do Hyeon', sans-serif;
}

.container {
	padding-top:50px;
	padding:20px;
}
.card {
	float : left;
	margin-left : 50px;
}

.card-img-top{
	width: 100%;
	height: 13vw;
}

.footer{ 
	position: fixed;  
	<%-- 이부분이 하단에 고정되는 부분 --%>
  	left: 50px; 
 	bottom: 0px; 
 	height: 50px; 
 	width: 100%; 
 	background: white;
 	}
</style>

<body>

<div class="container">
	<div class="card" style="width: 13rem;">
  		<a href="ListViewAction.do?category=wholefood" >
  			<img class="card-img-top" src="resources/wholefood.jpg" alt="WholeFood">
  		</a>
 	    <div class="card-body">
  			<hr>
    		<h5 class="card-title" style="text-align:center;">전체보기</h5>
  		</div>
  	</div>
  	
  	<div class="card" style="width: 13rem;">
  		<a href="ListViewAction.do?category=chicken">
  			<img class="card-img-top" src="resources/chicken.png" alt="Chicken">
  		</a>
 	    <div class="card-body">
  			<hr>
    		<h5 class="card-title" style="text-align:center;">치킨</h5>
  		</div>
 	</div>
 	
 	<div class="card" style="width: 13rem;">
  		<a href="ListViewAction.do?category=pizza">
  			<img class="card-img-top" src="resources/pizza.png" alt="Pizza">
  		</a>
 	    <div class="card-body">
  			<hr>
    		<h5 class="card-title" style="text-align:center;">피자</h5>
  		</div>
 	</div>
 	
 	<div class="card" style="width: 13rem;">
  		<a href="ListViewAction.do?category=chinese">
  			<img class="card-img-top" src="resources/chinese.png" alt="chinese">
  		</a>
 	    <div class="card-body">
  			<hr>
    		<h5 class="card-title" style="text-align:center;">중식</h5>
  		</div>
 	</div>
</div>

<div class="container">
	<div class="card" style="width: 13rem; margin-top:50px;">
  		<a href="ListViewAction.do?category=korean">
  			<img class="card-img-top" src="resources/korean.jpg" alt="Korean">
  		</a>
 	    <div class="card-body">
  			<hr>
    		<h5 class="card-title" style="text-align:center;">한식</h5>
  		</div>
  	</div>
  	
  	<div class="card" style="width: 13rem; margin-top:50px;">
  		<a href="ListViewAction.do?category=japanese">
  			<img class="card-img-top" src="resources/sushi.png" alt="Sushi">
  		</a>
 	    <div class="card-body">
  			<hr>
    		<h5 class="card-title" style="text-align:center;">일식</h5>
  		</div>
  	</div>
  	
  	<div class="card" style="width: 13rem; margin-top:50px;">
  		<a href="ListViewAction.do?category=jokbal">
  			<img class="card-img-top" src="resources/jokbal.png" alt="Jokbal">
  		</a>
 	    <div class="card-body">
  			<hr>
    		<h5 class="card-title" style="text-align:center;">족발/보쌈</h5>
  		</div>
  	</div>
  	
  	<div class="card" style="width: 13rem; margin-top:50px; margin-bottom:50px;">
  		<a href="ListViewAction.do?category=yasik">
  			<img class="card-img-top" src="resources/dakbal.png" alt="Dakbal">
  		</a>
 	    <div class="card-body">
  			<hr>
    		<h5 class="card-title" style="text-align:center;">야식</h5>
  		</div>
  	</div>
</div>
</body>


</html>