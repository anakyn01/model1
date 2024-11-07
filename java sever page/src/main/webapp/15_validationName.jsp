<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css">
<title>이름이 문자열인지 숫자인지 검사 나이가 숫자인지 문자열인지 검사</title>
</head>
<body>
<div class="container">
<div class="row">
<div class="col-md-12">
<h1>isNaN</h1>
<pre>
isNaN(isNotaNumber) = 숫자인지 아닌지 검사
함수의 인자 값이 숫자이면 false,  숫자가 아니면 true를 리턴
입력데이터 값이 숫자로 시작할수 없게 하고 
유효하지 않는 값이 입력되면 오류 메세지를 출력합니다
isNaN(document.폼이름,입력양식이름.value)

substr(0[start],1[length]) : 문자열을 자르기 위함이다 
</pre>
<script type="text/javascript">
function checkForm(){
	if(!isNaN(document.frm.name.value.substr(0,1))){
		alert("이름은 숫자로 시작할수 없습니다!");
		document.frm.name.select();
	}
}//함수를 실행 했을때 숫자이면 경고창을 아니면 선택
</script>
<form name="frm">
<p>이름 : <input type="text" name="name">
<p><input type="submit" value="전송" onclick="checkForm()">
</form>
</div>
</div>
</div>
</body>
</html>