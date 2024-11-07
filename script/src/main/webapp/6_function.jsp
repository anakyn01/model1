<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>javascript:function</title>
</head>
<body>
<h1>Functions</h1>
<pre>
- 특정 작업을 수행하도록 설계된 코드블록
- 호출할때만 실행됩니다
- syntax
function name(parameter1){
//code
}
- 인수는 함수가 호출될때 함수가 수신하는 값
- 함수내에서 인수(매개변수)는 지역변수처럼 동작
- 함수를 사용하는 이유
(코드를 재사용합니다, 
여러번 사용할수 있는 코드를 작성,
동일한 코드를 다른 인수와 함께 사용하여 다른 결과를 생성할수 
있습니다
)

자바스크립트 개정판 2015 => es6 
그때 새로운 영역이 추가됨 함수에 개정판인 화살표 함수
함수명 = () => {
}
함수를 사용이유 예를 들어 url이 길다 
<a href="https://www.youtube.com/"></a>
url을 함수로 링크시킴
</pre>

<h1>arrow function</h1>
<pre>
- es6에서 도입
- 화살표 함수를 사용하면 좀더 짧은 구문을 작성할수 있습니다
- 화살표 함수는 기본적으로 리턴값이다
- 매개변수가 하나만 있는 경우 괄호도 건너뛸수 있습니다
</pre>

<p id="find"></p>
<button onclick="youtube()">유뷰브로</button>
<button onclick="hello()">경고창</button>
<p id="arrow"></p>
<script src="js/js.js"></script>
<!-- 자바스크립트와 jquery는 항상 문서에 밑에 링크한다 -->









</body>
</html>