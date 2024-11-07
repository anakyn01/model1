<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css">
<title>welcome</title>
</head>
<body>
<div class="container">
<div class="row">
<div class="col-md-12">
<h1>setProperty</h1>
<jsp:useBean id="person" class="com.dao.Person" scope="request"/>
<p>아이디 : <%=person.getId() %></p>
<p>아름 : <%=person.getName() %></p>
<%
person.setId(20240711);
person.setName("홍길동");
%>
<jsp:include page="useBean03.jsp"/>
<h1>액션 태그로 프로퍼티의 값 저장하기</h1>
<pre>
setProperty 액션태그는 useBean 액션 태그와 함께 자바빈즈의 Setter()메소드에
접근하여 자바빈즈의 멤버 변수인 프로퍼티의 값을 저장하는 태그로 형식은 아래와 같다
setProperty 태그는 폼페이지로 부터 전달되는 요청 파라미터의 값을 직접 저장하거나
자바빈즈의 프로퍼티로 변경하여 값을 저장할수 있다
또는 모든 자바빈즈 프로퍼티 이름과 동일하게 요청 파라미터를 설정할수 있습니다

name : id속성값으로 설정된 자바빈즈를 식별하기 위한 이름이다
property : 자바빈즈의 프로퍼티 이름이다 만약프로퍼티 이름에 '*'를 사용하면
모든 요청파라미터가 자바빈즈 프로퍼티의 Setter()메소드에 전달됨을 의미합니다
value : 변경할 자바빈즈의 프로퍼티 값이다
param : 자바빈즈의 프로퍼티 값을 전달하는 요청파라미터의 이름이다
<%--<jsp:useBean id="person" class="com.dao.Person" scope="request"/> --%>
<%--<jsp:setProperty name="" property="" value=""/> --%>
</pre>
<h1>폼 페이지</h1>
<form action="get.jsp" method="post">
<input name="id" value="admin"/>
<input type="submit"/>
</form>
<h1>setProperty로 표현할 경우</h1>
<%--<jsp:setProperty name="member" property="id"/>--%>
</div>
</div>
</div>
</body>
</html>