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
<title>Sign up Member</title>

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
  margin-bottom: 10px;
  border-bottom-right-radius: 0;
  border-bottom-left-radius: 0;
}
.form-signin .inputPassword {
  margin-bottom: -1px;
  border-top-left-radius: 0;
  border-top-right-radius: 0;
}

.form-signin .inputPasswordConfirmation {
  margin-bottom: 10px;
  border-bottom-right-radius: 0;
  border-bottom-left-radius: 0;
}

#inputName {
  margin-top: 10px;
  border-bottom-right-radius: 0;
  border-bottom-left-radius: 0;
}
.name {
	font-family: 'Do Hyeon', sans-serif;
	color: rgb(0,123,255);
}
</style>
</head>
<body>
<jsp:include page="menu.jsp" />
<script type="text/javascript">
	function checkForm() {
		if(!document.member.memberId.value) {
		alert("���̵� �Է��ϼ���.");
		return false;
			}
		
		if(!document.member.memberPassword.value) {
			alert("��й�ȣ�� �Է��ϼ���.");
			return false;
			}
		
		if(document.member.memberPassword.value != document.member.memberPasswordConfirmation.value) {
			alert("��й�ȣ�� �����ϰ� �Է��ϼ���.");
			return false;
			}
		}
</script>

<div class="text-center">
    <form class="form-signin" name="member" action="JoinMemberAction.do" method="post" onsubmit="return checkForm()" accept-charset="utf-8">
	<h1 class="name">�� �� ��</h1>
      <h2 class="h3 mb-3 font-weight-normal">ȸ������</h2>
      <input type="text" id="inputId" name="memberId" class="form-control" placeholder="���̵�">
      <input type="password" id="inputPassword" name="memberPassword" class="form-control" placeholder="��й�ȣ">
      <input type="password" id="inputPasswordConfirmation" name="memberPasswordConfirmation" class="form-control" placeholder="��й�ȣ Ȯ��">
      <input type="text" id="inputName" name="memberName" class="form-control" placeholder="�̸�">
      <input type="text" id="inputAddress" name="memberAddress" class="form-control" placeholder="�ּ�">
      <input type="text" id="inputPhone" name="memberPhone" class="form-control" placeholder="�ڵ�����ȣ">
      <div class="checkbox mb-3">
        <label>
          
        </label>
      </div>
      <button class="btn btn-lg btn-primary btn-block" type="submit" value="����">ȸ������</button>
      
    </form>
  
</div>

</body>
</html>