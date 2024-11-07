<%@ page import="java.io.PrintWriter" %>
<%@ page import="user.UserDAO" %><!-- 만든 클래스 사용 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="user" class="user.User" scope="page"/>
<jsp:setProperty name="user" property="userID"/>
<jsp:setProperty name="user" property="userPassword"/>
<jsp:setProperty name="user" property="userName"/>
<jsp:setProperty name="user" property="userGender"/>
<jsp:setProperty name="user" property="userEmail"/>

<!-- 
Logical Operators

&& and , || or, ! not
null 없는
 -->
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



if(user.getUserID() == null || user.getUserPassword() == null ||user.getUserName()== null || user.getUserGender()==null || user.getUserEmail() == null){//필수기입에 비워져있는지에 대한 유효성 체크
	PrintWriter script = response.getWriter();
    script.println("<script>");
    script.println("alert('입력이 안된 사항이 있습니다')");
    script.println("history.back()");
    script.println("</script>");
}else{
	UserDAO userDAO = new UserDAO();
	int result = userDAO.join(user);
	if(result == -1){
		PrintWriter script = response.getWriter();
	    script.println("<script>");
	    script.println("alert('이미존재하는 아이디 입니다')");
	    script.println("history.back()");
	    script.println("</script>");
	}else{
		session.setAttribute("userID", user.getUserID());
		PrintWriter script = response.getWriter();
	    script.println("<script>");
	    script.println("alert('회원가입 성공')");
	    script.println("location.href='main.jsp'");
	    script.println("</script>");
	}
}
%>
 
 
 
 
 
 
 
 
 
 
 
