<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSON</title>
</head>
<body>
<h1>JavaScript Object Notation</h1>
<pre>
- 경량 데이터 교환형식
- 독립적인 언어
- 자바스크립트 객체 표기 구문에서 파생
- 특별한 통신문법이나 필요한 스펙 라이브러리설치 다 없음
다만 데이터를 표현할뿐
- 모든 개발에서 사용함
- 스프링,스프링부트 xml을 아직도 많이 사용하지만
json에 등장으로 점점 전환되어 가고 있습니다
- 사용하는 이유는 javascript로 파싱이 가능하여 java계열에
서버전환이 쉽다

json구문 규칙
- 데이터가 키와 밸류로 되어 있음
"firstName":"john"
- 데이터는 쉼표로 구분됩니다
- 중괄호는 객체를 고정
{}
- 대괄호는 배열을 보유
"json":[
{"firstName":"john"},
]
- 유효한 데이터 유형
문자열,숫자,객체,배열,참거짓,없는
</pre>
<p id="json"></p>
<script src="js/json.js"></script>






</body>
</html>