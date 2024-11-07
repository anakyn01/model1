<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css">
<title>welcome</title>
</head>
<body>
<script type="text/javascript">
function CheckKey(){
	alert(event.keyCode);//내가 입력한 키를 보여줌
	if(!(event.keyCode >= 48 && event.keyCode <=57)){//숫자만 입력과 같지않다면
		alert("숫자만 입력 가능합니다");
	    event.returnValue=false;
	}
}
</script>
<pre>
숫자만 입력 : event.keyCode >= 48 && event.keyCode <=57 
한글만 입력 : event.keyCode >= 12592 || event.keyCode <=12687
영어만 입력 : (event.keyCode >= 65 && event.keyCode <=98) || (event.keyCode >= 97 && event.keyCode <=122)
특수문자 입력 : (event.keyCode >= 33 && event.keyCode <=47) || (event.keyCode >= 58 && event.keyCode <=64)
|| (event.keyCode >= 91 && event.keyCode <=96) || (event.keyCode >= 123 && event.keyCode <=126)
</pre>
<div class="container">
<div class="row">
<div class="col-md-12">
<form name="loginForm" action="#" method="post">
<p>나이 : <input type="text" name="age" onkeypress="CheckKey()">
<input type="submit" value="전송">

</form>
</div>
</div>
</div>
</body>
</html>