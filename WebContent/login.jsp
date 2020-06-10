<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link rel="canonical" href="https://getbootstrap.com/docs/4.0/examples/sign-in/">
<link href="../../dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap" rel="stylesheet">
<link href="signin.css" rel="stylesheet">
<title>Login</title>
<style>
html,
body {
  height: 100%;
}

.text-center {
  display: -ms-flexbox;
  display: -webkit-box;
  display: flex;
  -ms-flex-align: center;
  -ms-flex-pack: center;
  -webkit-box-align: center;
  align-items: center;
  -webkit-box-pack: center;
  justify-content: center;
  padding-top: 40px;
  padding-bottom: 40px;
  background-color: #f5f5f5;
}

.form-signin {
  width: 100%;
  max-width: 330px;
  padding: 15px;
  margin: 0 auto;
}
.form-signin .checkbox {
  font-weight: 400;
}
.form-signin .form-control {
  position: relative;
  box-sizing: border-box;
  height: auto;
  padding: 10px;
  font-size: 16px;
}
.form-signin .form-control:focus {
  z-index: 2;
}
.form-signin input[type="text"] {
  margin-bottom: -1px;
  border-bottom-right-radius: 0;
  border-bottom-left-radius: 0;
}
.form-signin input[type="password"] {
  margin-bottom: 10px;
  border-top-left-radius: 0;
  border-top-right-radius: 0;
}
.name {
	font-family: 'Do Hyeon', sans-serif;
	color: rgb(0,123,255);
}
</style>
</head>


<body>

<jsp:include page="menu.jsp" />
<div class="text-center">
    <form class="form-signin" name="LoginForm" action="LoginAction.do" method="post">
	<h1 class="name">단 배 달</h1>
      <h1 class="h3 mb-3 font-weight-normal">로그인</h1>
      <input type="text" id="inputEmail" name="userID" class="form-control" placeholder="아이디를 입력하세요.">
      <input type="password" id="inputPassword" name="userPW" class="form-control" placeholder="비밀번호를 입력하세요.">
      <div class="checkbox mb-3">
        <label>
          
        </label>
      </div>
      <input type="submit" class="btn btn-outline-primary" value="로그인">
      
    </form>
  
</div>
</body>

</html>