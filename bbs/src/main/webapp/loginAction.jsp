<%@ page import="java.io.PrintWriter" %>
<%@ page import="user.UserDAO" %><!-- 만든 클래스 사용 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<!-- 넘어온 데이터 한글깨짐 방지 -->
<jsp:useBean id="user" class="user.User" scope="page"/>
<jsp:setProperty name="user" property="userID"/>
<!-- 로그인 페이지에서 받아온 사용자 id를 'userID'에 저장 -->
<jsp:setProperty name="user" property="userPassword"/>
<!-- 로그인 페이지에서 받아온 사용자 id를 'userID'에 저장 -->
<%
//현재 세션상태를 체크한다
String userID = null;
if(session.getAttribute("userID") != null){
	userID = (String)session.getAttribute("userID");
}
//이미 로그인을 했으면 다시 로그인 할수 없게한다
if(userID != null){
	PrintWriter script = response.getWriter();
	script.println("<script>");
	script.println("alert('이미 로그인이 되어있습니다')");
	script.println(" location.href='main.jsp' ");
	script.println("</script>");
}

UserDAO userDAO = new UserDAO();
int result = userDAO.login(user.getUserID(), user.getUserPassword());
if (result == 1) {
	//add
	session.setAttribute("userID", user.getUserID());
	PrintWriter script = response.getWriter();
	script.println("<script>");
	script.println("alert('로그인 성공')");
	script.println("location.href='main.jsp'");
	script.println("</script>");
}else if(result == 0){
	PrintWriter script = response.getWriter();
	script.println("<script>");
	script.println("alert('비밀번호가 틀립니다')");
	script.println("history.back()");
	script.println("</script>");
}else if(result == -1){
	PrintWriter script = response.getWriter();
	script.println("<script>");
	script.println("alert('존재하지 않는 아이디 입니다')");
	script.println("history.back()");
	script.println("</script>");
}else if(result == -2){
	PrintWriter script = response.getWriter();
	script.println("<script>");
	script.println("alert('데이터베이스 오류 입니다')");
	script.println("history.back()");
	script.println("</script>");
}

%>
