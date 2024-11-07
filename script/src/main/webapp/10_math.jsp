<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Math</title>
</head>
<body>
<h1>수학객체</h1>
<pre>
- Constants : 상수
E : 오일러의 수
PI : 반지름 
SQRT2 : 2의 제곱근
SQRT1_2 1/2의 제곱근
LN2: 2의 자연로그를
LN10 : 10의 자연로그
LOG2E : E의 밑이 2인 로그
LOG10E : E의 밑이 10인로그

숫자를 정수로
.round() : 가장 가까운 정수를 리턴
소수점.5이상이면 올림 이하면 내림 
.ceil() : 올림
.floor() : 내림
.trunc() : 소수점을 제외 하고 정수로만 
.pow(x, y) : x의 값을 y의 거듭제곱으로 나타냅니다
.sqrt(any) : 제곱근을 리턴
.abs() : 절대(양수)값을 리턴
.sin() : 각도x(라디안)의 사인(-1과 1사이의 값)을 리턴
라디안 대신 도를 사용하려면 도를 라디안으로 변환해야 합니다
라디안 각도 = 각도 X PI / 180
.cos() : 각도(x)의 코사인(-1과 1사이의 값을 리턴)
.random() : 0포함 하고 1(제외)사이의 난수를 리턴
.log() : x의 자연로그를 리턴
.log2() : x의 밑이 2인 로그
.log10() : x의 밑이 10인 로그






</pre>
<p id="math"></p>
<script src="js/math.js"></script>







</body>
</html>