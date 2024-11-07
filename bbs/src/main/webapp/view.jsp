<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="bbs.Bbs" %>
<%@ page import="bbs.BbsDAO" %>
<%
/*
bbsId를 초기화 시키고 bbsId라는 데이터가 넘오온것이 존재한다면 캐스팅하여
변수에 담는다
*/
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
	
//유효한 글이라면 구체적인 정보를 'bbs'라는 인스턴스에 담는다
Bbs bbs = new BbsDAO().getBbs(bbsID);
	
	
%>
<%@ include file='/include/header.jsp'%>

<div class="container">
<div class="row">
<div class="col-md-12">
<h1 class="my-3">View</h1>

<ul class="breadcrumb">
  <li class="breadcrumb-item"><a href="bbs.jsp">list</a></li>
  <li class="breadcrumb-item active"> view </li>
</ul>

<table class="table table-bordered">
<colgroup>
<col style="width:10%">
<col style="width:90%">
</colgroup>
  <tr>
    <th>글제목</th>
    <td>
    <%= bbs.getBbsTitle().replaceAll(" ","&nbsp").replaceAll(">","&gt").replaceAll("\n","<br>") %>
    </td>
  </tr>
  <tr>
    <th>작성자</th>
    <td>
    <%= bbs.getUserID() %>
    </td>
  </tr>
   <tr>
    <th>작성일자</th>
    <td>
    <%= bbs.getBbsDate().substring(0,11) + bbs.getBbsDate().substring(11, 13)+"시"+ bbs.getBbsDate().substring(14, 16) + "분"%>
    </td>
  </tr>
  <tr>
    <th>내용</th>
    <td>
    <%= bbs.getBbsContent().replaceAll(" ","&nbsp").replaceAll(">","&gt").replaceAll("\n","<br>") %>
    </td>
  </tr>
</table>

<div class="d-flex justify-content-end">
<div class="my-3 btn-group">
<a href="bbs.jsp" class="btn btn-outline-primary">
목록
</a>
<!-- 해당글의 작성자가 본인 이라면 수정과 삭제가 가능하도록 코드추가 -->
<% 
if(userID != null && userID.equals(bbs.getUserID())){
%>
<a href="update.jsp?bbsID=<%= bbsID %>" class="btn btn-outline-success">
수정
</a>
<a href="deleteAction.jsp?bbsID=<%= bbsID %>" 
class="btn btn-outline-danger" 
onclick="return confirm('정말로 삭제하시겠습니까?')">
삭제
</a>
<% }%>
<!-- 
연산자 &&(and) , || (or)
replaceAll 대상 문자열을 원하는 문자 값으로 변환하는 함수
 -->
</div>
</div>

</div>
</div>
</div>









