<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css">
<title>request</title>
</head>
<body>
<div class="container">
<div class="row">
<div class="col-md-12">
<form action="process.jsp" method="post">
<div class="input-group mb-3">
<label class="form-label">아이디 :</label>
<input 
type="text" 
name="id" 
class="form-control" 
placeholder="아이디를 적어주세요"
/>
</div>
<label class="form-label">패스워드 :</label>
<input 
type="password" 
name="pw" 
class="form-control" 
placeholder="패스워드를 적어주세요"
/>
</div>

	<div class="input-group mb-3">
		<label class="form-label">이름 :</label>
		<input 
		type="text" 
		name="name" 
		class="form-control" 
		placeholder="이름을 적어주세요"
		/>
		
	</div>
	<div class="input-group mb-3">
		<label class="form-label">주소 :</label>
		<input 
		type="text" 
		name="address" 
		class="form-control"
		placeholder="주소를 적어주세요"
		/>
	</div>
	<h1>하고 싶은말</h1>
<textarea class="form-control" rows="5" name="text" placeholder="관리자에게 하고 싶은말을 적어주세요"></textarea><!-- 무조건 한줄로만 표기 -->
	<div class="d-flex justify-content-end my-5">
	 <input type="submit" value="전송" class="btn btn-outline-success btn-lg"/>
	</div>
</form>

<hr>
<h1>request 내장 객체</h1>
<pre>
- jsp페이지에서 가장 많이 사용되는 기본 내장객체로 웹브라우저에서 서버의 jsp페이지로 전달하는 정보를 저장합니다
요청파라미터 관련메소드
setAttribute(String name, Object value) 반환유형 : void
해당 내장 객체의 속성 이름이 name인 속성 값을 value로 저장한다

getAttribute(String name) 반환유형 : Object
해당 내장 객체의 속성 이름이 name인 속성 값을 가져옵니다

removeAttribute(String name) 반환유형 : void
해당 내장 객체의 속성 이름이 name인 속성을 삭제합니다

getAttributeNames() 반환유형 : java.util.Enumeration
해당 내장 객체의 모든 속성 이름을 가져온다(단 pageContext내장 ㄱ개체는 이 메소드를 제공하지 않는다)

getParameter(String name) : 요청 파라미터 이름이 name인 값을 전달받는다, 파라미터값이 없으면 null리턴
getParameterValues(String name) : 모든 요청 파라미터 이름이 name인 값을 배열 형태로 전달 받는다
getParameterNames() : 모든 요청 파라미터의 이름과 값을 Enumeration객체 타입으로 전달 받습니다 
getParameterMap() : 모든 요청 파라미터의 이름과 값을 Map객체 타입으로 전달받는다
map객체 타입은 (요청파라미터의 이름, 값)형식으로 구성됩니다
</pre>
</div>
</div>
</div>
</body>
</html>