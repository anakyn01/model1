<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Variables:변수</title>
</head>
<body>
<h1>변수</h1>
<pre>
- 많은수,변하는 수여서 변수
- java와 다른점 => 형을 표기하지 않는다
String 변수명 = 
- 변수를 선언하고 할당연산자로 값을 대입
- 변수를 선언하는 4가지 방법
자동으로 생성[변수명만 쓰고 값을 대입], 
var[var x=1],
let[let x=1],
const[const PI]를 
방법론적으로 택해서 사용
</pre>
<script type="text/javascript">

//1)자동으로 생성
q = 5;w = 6;e = q+w;document.write(e);
//System.out.println => document.write()
document.write('<br>'+'문자열 출력');
//태그와 결합해서 사용할수 있다

//2)변수 선언해서 시작
var t = "알파벳"; //String t
let y = "영어";
const PI = 3.14; //Int PI 
document.write("<br>"+t+"<br>"+y+"<br>"+PI);
document.write()

var z =1;//프로그래밍 코드에서 정말 중요한 코드
var z =10;//다른 작업자가 값을 또 설정
document.write(z+"<br>");

let b = 3;
{let b = 10;}
document.write(b+"<br>");
const p = "p태그";
{const p = "3";}
document.write(p+"<br>")
</script>
<h1>let,const 에 공통점과 사용이유</h1>
<pre>
- 기존 사용하던 var 변수선언이 프로그래밍에 혼란을 초래하여
- 2015년 자바스크립트 개정판에 let과 const적용
- 재선언 재할당 금지
</pre>









</body>
</html>