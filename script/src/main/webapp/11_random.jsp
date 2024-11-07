<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>random</title>
</head>
<body>
<h1>랜덤</h1>
<p id="rad">0(포함)1(제외)사이의 난수를 리턴 : 항상1보다 작은 숫자를 리턴합니다</p>
<h2>click event</h2>

<button onclick="document.getElementById('view').innerHTML = getRandomInteger(1,10)">최소 1 최대 10정해서 랜덤한 값을 출력</button>
<p id="view"></p>
<script src="js/random.js"></script>
</body>
</html>