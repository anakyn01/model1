<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css">
<title>자수체크</title>
</head>
<body>
<script type="text/javascript">
function checkLogin(){
	var form = document.loginForm;
	
	if (form.id.value.length < 8 || form.id.value.length > 20){
		alert("아이디는 8~20자 이내로 입력 가능 하십니다");
	    form.id.select();
	    return;
	}

	if (form.passwd.value.length < 8){
		alert("비밀번호는 8자 이상으로 입력해야 합니다!")
		form.passwd.select();
		return;
	}
	form.submit();
}

</script>
<div class="container">
<div class="row">
<div class="col-md-12">
<h1>글자수 제한 체크</h1>
<form name="loginForm" action="v03_process.jsp" method="post">
<p>아이디 : <input type="text" name="id">
<p>비밀번호 : <input type="password" name="passwd">
<p><input type="button" value="전송" onclick="checkLogin()">

</form>
</div>
</div>
</div>
</body>
</html>