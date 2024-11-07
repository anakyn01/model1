<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>연산자</title>
</head>
<body>
<h1>연산자의 유형</h1>
<h1>삼항 연산자</h1>
<p>아래에 예시에서 나이를 입력하고 버튼을 누르세요</p>
<input id="age" value="30"/>
<button onclick="myFunction()">나이를 버튼을 누르세요</button>
<p id="msg"></p>

<script type="text/javascript">
function myFunction(){
//1) id age인 input을 찾는다
let age = document.getElementById("age").value;
//2) 삼항연산자로 메세지를 설정합니다
let vote = (age < 30) ? "Too young":"Old enough";
//3) 삼항연산자 값을 html로 집어넣는다
document.getElementById("msg").innerHTML = vote + "to vote.";
}
</script>

<pre>
산술연산자 :
+,-,*,**,/,%,++,--
할당연산자 :
=,+=,-=,*=,/=,%=,**=
비교연산자
==(타입을 고려하지 않은 같음),
var x = 5; document.write(x == "5")
=== (타입까지 고려하여 같음)
!= 같지않음
!== 타입까지 고려하여 같지 않음
>,<,
>= 선택지가 2개
<= 작거나 같음
? 삼항 연산자(수식있고 부정, 긍정)

논리연산자(true or false)
&& 그리고 = 값이 2개 가 일치해야만 합니다 
|| or 둘중에 하나만 맞으면 성립
! not 같지않음
삼항연산자
</pre>
<script type="text/javascript">
//산술 연산자
let q = 5; let y = 2; let r= q % y;
//증가 ++, 감소 --
let u = 6; u++; 
//지수 연산자 ** 첫번째 피연산자를 두번째 피연산자로 거듭제곱 합니다
let a = 5; let s = a ** 2;
let z = Math.pow(a,2);
document.write("나눈 나머지"+ r + "</br>"+
"증가 :"+u+"</br>"+
"지수화 : "+s+"</br>"+
"거듭제곱은 Math.pow 로도 표현할수 있습니다" + z +"</br>"
)
//할당 연산자 =
let number = 10; number += 5;
let text ="hello"; text += " World";
document.write(
"+="+ number + "<br>" +
"문자열을 더할경우 " + text +"<br>"
)

//비교 연산자 ==, ===, !=, !==, 
let text1 = "A"; let text2 = "B"
let result = text1 < text2;

let type = 5; 

document.write(
"문자비교 : " + result + "<br>"+
"타입을 고려하지 않고 같음" + (type == "5") + "<br>" +
"타입까지 고려하여 같음" + (type === "5") + "<br>"
)

//논리 연산자 &&, ||, !
let And = 5; let And2 = 2;

document.write(
"&& 연산자"+(And < 10 && And2 > 3) + "<br>"+
"&& 연산자"+(And < 10 && And2 > 1) + "<br>"+
"or 연산자"+(And == 5 || And2 == 3) + "<br>"+
"not 연산자 부정이 긍정 긍정이 부정" +
!(And == And2) + "<br>"+
!(And > And2)
)



</script>







</body>
</html>