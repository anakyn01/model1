<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="bbs.Bbs" %>
<%@ page import="bbs.BbsDAO" %>
<%
int bbsID = 0;
if(request.getParameter("bbsID") != null){
	bbsID = Integer.parseInt(request.getParameter("bbsID"));
	//parseint : 문자열을 파싱[구문분석]하여 특정진수의 정수로 리턴
	//문장이 이루고 있는 구성성분을 분해하고 성분의 위계 관계를 분석하여 결정
}
//만약 넘어온 데이터가 없다면
if(bbsID == 0){
	PrintWriter script = response.getWriter();
	script.println("<script>");
	script.println("alert('유효하지 않은 글입니다')");
	script.println("window.location.href='bbs.jsp'");
	script.println("</script>");
}
Bbs bbs = new BbsDAO().getBbs(bbsID);
%>
<%@ include file='./include/header.jsp'%>

<div class="container">
<div class="row">
<div class="col-md-12">
<form method="post" action="updateAction.jsp?bbsID=<%=bbsID%>">
<h1 class="my-5">
수정
</h1>
<table class="table table-bordered">
<thead>
<tr>
	<th>제목</th>
	<td>
	<input 
	type="text" 
	class="form-control" 
	placeholder="글제목"
	name="bbsTitle"
	value="<%=bbs.getBbsTitle()%>"
	/></td>
</tr>
<tr>
	<th>
	내용
	</th>
	<td>
	<textarea class="form-control" placeholder="글내용" name="bbsContent" rows="19"><%=bbs.getBbsContent() %></textarea>
	</td>
</tr>
</thead>
</table>
<div class="d-flex justify-content-end">
	<div class="btn-group my-5">
		<input type="submit" class="btn btn-outline-primary" value="수정하기"/>
		
		<!--  <button class="btn btn-outline-success">update</button>
		<button class="btn btn-outline-danger">delete</button>-->
		<a class="btn btn-outline-secondary" href="bbs.jsp">list</a>
	</div>
</div>
</form>


</div>
</div>
</div>



<%@ include file='./include/footer.jsp'%>