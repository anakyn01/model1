<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="bbs.BbsDAO, bbs.Bbs" %>
<% request.setCharacterEncoding("utf-8"); %>
<%
String userID = null;
if(session.getAttribute("userID") != null){
	userID = (String)session.getAttribute("userID");
}

int bbsID = 0;
if(request.getParameter("bbsID") != null){
	bbsID = Integer.parseInt(request.getParameter("bbsID"));
}
if(bbsID == 0){
	PrintWriter script = response.getWriter();
    script.println("<script>");
    script.println("alert('유효하지 않은 글입니다')");
    script.println("location.href='bbs.jsp'");
    script.println("</script>");
}
Bbs bbs = new BbsDAO().getBbs(bbsID);
if(!userID.equals(bbs.getUserID())){
	PrintWriter script = response.getWriter();
    script.println("<script>");
    script.println("alert('권한이 없습니다')");
    script.println("location.href='bbs.jsp'");
    script.println("</script>");
}else{//글 삭제 로직을 수행한다
	BbsDAO bbsDAO = new BbsDAO();
    int result = bbsDAO.delete(bbsID);
	 if(result == -1){
			PrintWriter script = response.getWriter();
		    script.println("<script>");
		    script.println("alert('글 삭제하기에 실패했습니다')");
		    script.println("history.back()");
		    script.println("</script>");
	 }else{
			PrintWriter script = response.getWriter();
		    script.println("<script>");
		    script.println("alert('글 삭제하기에 성공했습니다')");
		    script.println(" location.href='bbs.jsp' ");
		    script.println("</script>");
	 }
}










%>