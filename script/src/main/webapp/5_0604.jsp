<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>0604</title>
</head>
<body>
<pre>
1) 5에 거듭제곱을 연산자 표시하세요
2) 3을 증가연산자로 표시하세료
3) 내이름을 객체로 생성해서 표시하세요
</pre>
<script type="text/javascript">
//1)
let x = 5; let ex = x ** 2
document.write(ex +"<br>")
//2)
let plus = 3; plus++;
document.write(plus + "<br>")
//3)
const myName = new Object();
myName.fn = "영일";
myName.ln = "황";
document.write(myName.ln + myName.fn)
</script>





</body>
</html>