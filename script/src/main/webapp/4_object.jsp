<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>객체</title>
</head>
<body>
<h1>자바스크립트 객체</h1>
<pre>
- 클래스는 객체를 만들기 위한 템플릿이다
- 실제 생활에서 객체는 집,자동차,사람,등
- class=>현대 object=>아반떼
- 아반떼 객체는 properties를 가집니다
car.name,model,weight,color
- 메서드를 가지게 됩니다
car.start(),drive(),brake(),stop()
- 동일한 메소드를 가지고 있지만 메소드는 서로 다른 시간에 
수행이 됩니다
- 자바스크립트 객체는 3가지 방법으로 만듭니다
1) 키와 밸류로 요소가 들어가 있는 객체
2) 비어진 객체를 만들고 요소를 추가하는 방법
3) 객체명 = new Object()를 사용해서 만드는 방법
- 일반적으로 객체를 만들때 const키워드를 사용합니다
</pre>
<script type="text/javascript">
//1)키와 벨류
const car = {
type:"아반떼",
model:"2024년형",
color:"흰색"
}
document.write(
"자동차 이름은" + car.type+ "이고" + 
"년식은 " + car.model + 
"색상은 " + car.color + "입니다"
)

//2) 객체를 비워 놓고 요소를 추가하는법 게시판에 예시
const bbs = {};
//add Properties
bbs.id = 1;
bbs.writer = "나";
bbs.time = Date(); //자바에서는 외장 자바스크립트 
bbs.title = "글 제목";
bbs.content = "글 내용";

document.write(
"<br>" + bbs.id + bbs.writer + bbs.time + bbs.title + bbs.content
)

//new Object()를 사용하여 생성 
const person = new Object();
person.firstName ="영일";
person.lastName ="황";
person.age = 46;

document.write(
"내이름은 " + person.lastName + person.firstName +"이고" +
"나이는 "+person.age+"입니다"
)
</script>







</body>
</html>