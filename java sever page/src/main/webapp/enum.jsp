<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.io.*, java.util.*"%>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css">
<title>열거형에 데이터 베이스 출력</title>
</head>
<body>
<div class="container">
<div class="row">
<div class="col-md-12">
<h1>리턴값</h1>
<table class="table table-bordered">
	<thead>
	<tr><th>요청 파라미터 이름</th><th>요청 파라미터 값</th></tr>
	</thead>
	<tbody>
<%
request.setCharacterEncoding("UTF-8");

Enumeration paramNames= request.getParameterNames();
//request내장 객체의 getParameterNames()메소드 작성
while(paramNames.hasMoreElements()){
	//폼페이지에서 전송된 요청 파라미터가 없을 때 반복할수 있도록 hasMoreElement()메소드를 작성합니다
	String name = (String)paramNames.nextElement();
	//폼페이지에서 전송된 요청파라미터의 이름을 가져오도록 nextElement()
	out.println("<tr><td>"+name+"</td>\n");//태그열고 식별자 name넣고 input에서 입력한 name
	String paramValue= request.getParameter(name);//value insert
	out.println("<td>"+ paramValue + "</td></tr>\n");//name에 insert한 value
}

%>	
	</tbody>
</table>











</div>
</div>
</div>
</body>
</html>