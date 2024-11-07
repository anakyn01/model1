<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>arrays</title>
</head>
<body>
<h1>Arrays</h1>
<pre>
- 배열은 하나 이상의 값을 보유할수 있는 특수 변수입니다
- 배열을 사용하는 이유는 변수하나에 여러값을 가지기 위해서
- 단일 이름으로 많은값을 보유할수 있고 인덱스 번호를 참조해서 값에
엑세스 할수 있습니다
- const키워드를 사용하여 선언합니다
정해진 요소로 만들수 있습니다
대괄호 안에 요소들을 만들고
또는 new 키워드를 사용하여 만들수 있습니다
배열요소에 엑세스 예를 들어 변수를 선언하고
인덱스 번호를 사용
let car = cars[0]
그리고 위에 방법으로 요소를 변경

배열의 길이 속성 length(배열요소수)를 리턴
마지막 배열 요소에 엑세스 배열명.length - 1

배열은 for루프를 사용해서 반복하는것이 효과적 입니다
= , +=
forEach를 사용하여 반복할수 있습니다

배열 요소 추가 => push()매서드를 사용합니다

배열에서 가지고 있는 인덱스보다 높은것을 설정하면
구멍이(정의되지 않음) 생성될수 있다

new Array란 키워드를 사용할 경우 숫자를 하나만 요소로 사용할 경우
오류가 발생할수 있습니다

중첩으로 배열 프린트 for for
</pre>
<button onclick="push()">클릭하면 요소 추가</button>

<p id="Array"></p>
<script src="js/arrays.js"></script>



</body>
</html>