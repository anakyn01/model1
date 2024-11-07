<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter, bbs.Bbs, bbs.BbsDAO" %>
<%
/*
bbsId를 초기화 시키고 bbsId라는 데이터가 넘어온것이 존재한다면 캐스팅해서 변수에 담는다
*/
int bbsID = 0;
if(request.getParameter("bbsID") != null){
	bbsID = Integer.parseInt(request.getParameter("bbsID"));
	//parseInt : 문자열을 파싱[구문분석]하여 특정진수의 정수로 리턴
}
//만약 넘어온 데이터가 없다면
if(bbsID == 0){
	PrintWriter script = response.getWriter();
	script.println("<script>");
	script.println("alert('유효하지 않은 글입니다')");
	script.println("window.location.href='bbs.jsp'");
	script.println("</script>");
}
//유효한 글이라면 구체적인 정보를 'bbs'라는 인스턴스에 담는다
Bbs bbs = new BbsDAO().getBbs(bbsID);
%>    
<%@ include file="/include/header.jsp" %>
<div class="container">
<div class="row">
<div class="col-md-12">
<h1>view</h1>
</div>
</div>
</div>
</body>
</html>