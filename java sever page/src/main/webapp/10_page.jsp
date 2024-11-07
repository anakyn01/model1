<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css">
<title>page 처리기법</title>
</head>
<body>
<div class="container">
<div class="row">
<div class="col-md-12">
<h1>이단원에서 학습할 내용</h1>
<pre>
01 폼처리의 개요 
form = 사용자가 웹브라우저를 통해 입력된 모든 데이터를 하번에 웹서버로 전송하는 양식
- 전송한 데이터는 웹서버가 처리하고 처리 결과에 따라 다른 웹페이지를 보여 줍니다
- 폼은 사용자와 웹 애플리케이션이 상호 작용하는 중요한 기술 중 하나입니다
- 사용자가 어떤 내용을 원하는지, 사용자의 요구사항이 무엇인지 파악할때 가장 많이 사용합니다

입력 : 웹브라우저 -> 폼데이터 -> 웹서버 -> 폼데이터 -> 폼데이터처리(jsp 컨테이너)
request

응답 : 폼데이터처리(jsp 컨테이너) -> 응답페이지 -> 웹서버 -> 응답페이지 -> 웹브라우저
response

폼을 구성하는 태그의 종류
form : 폼을 정의하는 최상위태그
select : 항목을 선택할수 있는 태그
input : 사용자가 입력할수 있는 태그
textarea : 여러줄을 입력할수 있는 태그

<code>
form 속성1="값1" [속성2 = "값2"]
//다양한 입력 양식태그 input, select, textarea
</code>
form 태그의 속성
- action : 폼데이터를 받아 처리하는 웹페이지의 URL을 설정합니다
- method : get(기존에 존재하는것을 얻는) post(write, update)
- name : 폼을 식별하기 위한 이름을 설정합니다
- target : 폼처리 결과의 응답을 실행할 프레임을 설정한다
- enctype : 폼을 전송하는 콘텐츠 MIME유형을 설정한다 (이미지 업로드하는 photo게시판 만들때)
- accept-charset :  폼전송에 사용할 문자 인코딩을 설정합니다

GET vs POST
get : 전송형태 : 이름과 값의 형태로 URL에 포함되어 전송, 전송량 : 제한적(4,096B), 빠름, 보안 없음
post : http헤더 속에 감춰서 전송, 전송량에 제한이 없다, 느림, 보안 있음

input 
<input type="hidden"/><!-- 중요한 키를 문서에 숨길때 화면에서 보여지지 않습니다 -->
<input type="file"/><!-- 이미지와 파일을 업로드 하는  -->
<input type="text" name="userId" value="anakyn" placeholder=""/>
name = 입력 양식을 식별하는 이름을 설정한다
value = 입력 양식에 초기값을 설정합니다

02 form태그 


03 input태그
04 select태그
05 textarea태그 태그를 한줄로 써야 태그에 문제가 생기지 않습니다
name : 데이터 베이스
cols : 칸을 옆으로 늘리는 걸 가로폭을 늘릴때
rows : 줄을 늘릴때 사용합니다
wrap : 
off: 줄바꿈을 설정한다 wrap="off" 줄바꿈을 하지 않고 문장을 입력할때 수평 스크롤바가 생기고
옆으로 계속 문장이 입력된다
soft : wrap="soft" enter를 누르지 않아도 텍스트라인 끝에서 자동으로 행이 바뀐다
hard : wrap="hard" soft상태와 비숫하고 실제 내용을 서버에 전송할때 캐리지 리턴문자를 전달합니다

06 폼 데이터 처리
07 등록페이지 만들기

- 요청 파라미터의 전체값 받기 -
getParameter() 메소드를 이용하면 폼페이지가 보낸 요청 파라미터를 얻을수 있는데
그런데 입력 데이터수가 다수이거나 입력 양식이 다양하면 이를 전송받기 위해서 
최악의 경우 입력양식에 맞춰 전달받는 데이터의 수많큼 request내장 객체의 getParameter()
메소드를 설정해야 한다
이때 아래와 같이 일괄처리 메소드를 이용하면 
서버로 전송되는 요청 파라미터를 설정하지 않아도 모든 값을 전달 받을수 있습니다(텍스트박스,라디오버튼,드롭다운 박스)

getParameterNames() : 모든 입력양식의 요청 파라미터 이름을 순서에 상관없이 
Enumeration(열거형)형태로 전달받는다
java.util.Enumeration

hasMoreElements() : boolean (열거형 요소가 있으면 true를 리턴, 아니면 false)
nextElement() : E(Enumeration 객체를 생성할때의 타입) Enumeration(열거형 )요소를 리턴


















</pre>
</div>
</div>
</div>
</body>
</html>