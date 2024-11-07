<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="bbs.*,java.io.PrintWriter"%>
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="bbs" class="bbs.Bbs" scope="page"/>
<jsp:setProperty name="bbs" property="bbsTitle"/>
<jsp:setProperty name="bbs" property="bbsContent"/>
<%
//현재 세션 상태를 체크한다(접속을 한지 안한지 구분)
String userID = null;
if(session.getAttribute("userID") != null){
	userID = (String)session.getAttribute("userID");
}
//로그인한 사람만 글을 쓸수 있도록 한다
if(userID == null) {
	PrintWriter script = response.getWriter();
	script.println("<script>");
	script.println("alert('로그인을 하세요')");
	script.println("location.href='login.jsp'");
	script.println("</script>");	
}else{
	//입력이 안된 부분이 있는지 체크한다
	if(bbs.getBbsTitle() == null || bbs.getBbsContent() == null){
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('입력이 안 된 사항이 있습니다')");
		script.println("history.back()");
		script.println("</script>");
	}else{
		//정상적으로 입력이 되었다면 글쓰기 로직을 수행한다
		BbsDAO bbsDAO = new BbsDAO();
		int result = bbsDAO.write(bbs.getBbsTitle(), userID, bbs.getBbsContent());
		
		//데이터베이스 오류인 경우
		if(result == -1){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('글쓰기에 실패 했습니다')");
			script.println("history.back()");
			script.println("</script>");
		}else{//글쓰기 성공하면 알림창을 뛰오고 게시판 메인으로 이동
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('글쓰기에 성공')");
			script.println("location.href='bbs.jsp'");
			script.println("</script>");
		}
	}
}
%>