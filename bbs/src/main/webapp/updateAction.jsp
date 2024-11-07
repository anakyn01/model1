<%@ page import="java.io.PrintWriter" %>
<%@ page import="bbs.BbsDAO, bbs.Bbs" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<%
/*현재 세션상태를 체크한다
String userID = null;
if(session.getAttribute("userID") != null){
 userID = (String)session.getAttribute("userID");
}
이미 로그인을 했으면 다시 로그인 할수 없게한다
if(userID != null){
 PrintWriter script = response.getWriter();
 script.println("<script>");
 script.println("alert('로그인을 하세요')");
 script.println(" location.href='login.jsp' ");
 script.println("</script>");
}*/

int bbsID = 0;
if(request.getParameter("bbsID") != null){
	bbsID = Integer.parseInt(request.getParameter("bbsID"));
}
if(bbsID == 0){//필수기입에 비워져있는지에 대한 유효성 체크
	PrintWriter script = response.getWriter();
    script.println("<script>");
    script.println("alert('유효하지 않은 글입니다')");
    script.println("location.href='bbs.jsp'");
    script.println("</script>");
}
Bbs bbs = new BbsDAO().getBbs(bbsID);
if(bbsID == 0){//필수기입에 비워져있는지에 대한 유효성 체크
	PrintWriter script = response.getWriter();
    script.println("<script>");
    script.println("alert('권한이 없습니다')");
    script.println("location.href='bbs.jsp'");
    script.println("</script>");
}else{//입력이 안됬거나 빈 값이 있는지 체크한다 equals객체끼리 값을 비교
	if(request.getParameter("bbsTitle")==null
	|| request.getParameter("bbsContent")==null
	|| request.getParameter("bbsTitle").equals("")
	|| request.getParameter("bbsContent").equals("")){
		PrintWriter script = response.getWriter();
	    script.println("<script>");
	    script.println("alert('입력이 안된 사항이 있습니다')");
	    script.println("history.back()");
	    script.println("</script>");
	}else{//정상적으로 입력이 되었다면 글 수정 로직을 수행한다
	BbsDAO bbsDAO = new BbsDAO();
	int result = bbsDAO.update(bbsID, request.getParameter("bbsTitle"), request.getParameter("bbsContent"));
	if(result == -1) {//데이터 베이스 오류에 경우
		PrintWriter script = response.getWriter();
	    script.println("<script>");
	    script.println("alert('글 수정하기에 실패했습니다')");
	    script.println("history.back()");
	    script.println("</script>");
	}else{//글수정이 정상적으로 실행되면 알림창을 뛰우고 게시판 메인으로 이동합니다
		PrintWriter script = response.getWriter();
	    script.println("<script>");
	    script.println("alert('글수정하기 성공')");
	    script.println("location.href='bbs.jsp'");
	    script.println("</script>");
	}

	}
}
%>
 
 
 
 
 
 
 
 
 
 
 
