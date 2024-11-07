<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css">
<title>응답</title>
</head>
<body>
<div class="container">
<div class="row">
<div class="col-md-12">
<%
request.setCharacterEncoding("utf-8");
String firstname = request.getParameter("firstname");
String lastname = request.getParameter("lastname");
String userid=request.getParameter("id");
String password = request.getParameter("passwd");
String repassword = request.getParameter("repasswd");
String gender = request.getParameter("sex");
String address = request.getParameter("city");
String talking = request.getParameter("adminto");
String[] hobby = request.getParameterValues("hobby");
%>
<pre>
이름 : <%=lastname %><%=firstname %>
아이디 :<%=userid %>
패스워드 :<%=password %>
패스워드 확인 :<%=repassword %>
성별 : <%=gender %>
지역 : <%=address %>
하고싶은말 : <%=talking %>
취미 : <%
if (hobby != null){//취미가 존재한다면
	for(int i=0; i < hobby.length; i++){
		out.println(" " + hobby[i]);
	}
}
%>
</pre>








</div>
</div>
</div>
</body>
</html>