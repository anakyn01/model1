<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter, procedure.UserDAO" %>
<% request.setCharacterEncoding("utf-8");%>
<jsp:useBean id="user" class="procedure.User" scope="page"/>
<jsp:setProperty property="userID" name="user"/>
<jsp:setProperty property="userPassword" name="user"/>
<jsp:setProperty property="userName" name="user"/>
<jsp:setProperty property="userGender" name="user"/>
<jsp:setProperty property="userEmail" name="user"/>
<%

if (user.getUserID() == null || user.getUserPassword() == null || user.getUserName() == null || user.getUserGender() == null || user.getUserEmail() == null) {
	PrintWriter script = response.getWriter();
	script.println("<script>");
	script.println("alert('입력이 안된 사항이 있습니다')");
	script.println("history.back()");
	script.println("</script>");
}else{
	UserDAO userDAO = new UserDAO();
	int result = userDAO.join(user);
	if(result == -1){//이미 존재하는 아이디
	PrintWriter script = response.getWriter();
	script.println("<script>");
	script.println("alert('이미 존재하는 아이디 입니다')");
	script.println("history.back()");
	script.println("</script>");
}else{
	PrintWriter script = response.getWriter();
	script.println("<script>");
	script.println("alert('회원가입 성공')");
	script.println("location.href='index.jsp'");
	script.println("</script>");
}
}
%>