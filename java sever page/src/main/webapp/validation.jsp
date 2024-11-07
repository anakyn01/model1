<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css">
<title>validation</title>
</head>
<body>
<script type="text/javascript">
function checkLogin(){
	var form = document.loginForm//도큐먼트에서 form에 name값을 준걸 확인
	if (form.id.value == ""){//네임값이 id인 필드가 비워져 있다면
		alert("아이디를 입력해 주세요!!");
	    form.id.focus();//비워진 필드를 가르킴
	    return false;		
	} else if (form.password.value==""){//그리고 만약에 패스워드 필드가 비워져 있다면
		alert("비밀번호를 입력하세요 !!")
	    form.password.focus();//비워진 필드를 가르킴
	    return false;
	}
	//조건이 충족됨 그러면 전송
	form.submit();
}
</script>
<div class="container">
<div class="row">
<div class="col-md-12">
<h1>입력 유효성 검사</h1>
<form name="loginForm" action="validation02_process.jsp" method="post">
<p>아이디 : <input type="text" name="id">
<p>비밀번호 : <input type="password" name="password">
<input type="button" value="전송" onclick="checkLogin()">

</form>
</div>
</div>
</div>
</body>
</html>