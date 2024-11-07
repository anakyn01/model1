<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>javascript</title>
</head>
<body>
<h1>자바스크립트로 현재시간 표현하기</h1>
<button onclick="what()">클릭했을때 현재 시간 보여주기</button>
<p id="find">여기에 시간이 표시됩니다</p>

<script type="text/javascript">
//태그에 사용할경우 inline , 본문에서 internal
//java static void myMethod
//자바에서 date는 외장객체 import java.time.LocalDate
function what(){//함수 함수명
	//코드블럭 안에 매서드 실행 도큐먼트에서 find 아이디를 찾고 시간을 집어 넣는다
	document.getElementById('find').innerHTML = Date()
	//도규먼트.아이디찾기('find').html집어넣기 = 데이트 객체
}
</script>

<pre>
1.버튼클릭 => 클릭이벤트(onclick)마우스를 클릭할때
2.현재시간을 보려고 하면 자바스크립트 내장객체 Date()를 불러 와야 됩니다
(자바스크립트에서 함수 생성()하는데 복잡하지 않게 명칭을 호출하면 
언제든 재사용 할수 있기 때문에)
3.현재시간이 보여지는 장소를 컨택
도큐먼트나 도큐먼트 태그에 보여줄지 선택
4.태그를 찾는 방법을 설정
5.함수를 실행해서 호출
</pre>


</body>
</html>