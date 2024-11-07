<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" 
import="com.oreilly.servlet.*,com.oreilly.servlet.multipart.*,java.util.*,java.io.*"
%>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css">
<title>결과값 받기</title>
</head>
<body>
<%
MultipartRequest multi = new MultipartRequest(
request, 
"C:\\dev_hwang\\4_workspace\\java sever page\\src\\main\\webapp\\upload",
5 * 1024 * 1024,
"utf-8",
new DefaultFileRenamePolicy()
);

String name1 = multi.getParameter("name1");
String subject1 = multi.getParameter("subject1");

String name2 = multi.getParameter("name2");
String subject2 = multi.getParameter("subject2");

String name3 = multi.getParameter("name3");
String subject3 = multi.getParameter("subject3");

Enumeration files = multi.getFileNames();

String file3 = (String)files.nextElement();
String filename3 = multi.getFilesystemName(file3);

String file2 = (String)files.nextElement();
String filename2 = multi.getFilesystemName(file2);

String file1 = (String)files.nextElement();
String filename1 = multi.getFilesystemName(file1);
%>
<div class="container">
<div class="row">
<div class="col-md-12">
<h1>전송받은 결과값</h1>
<table class="table table-striped">
<colgroup>
<col style="width:33.3%"/><!-- 실무에서 허용하는 유일한 inline style -->
<col style="width:33.3%"/>
<col style="width:33.3%"/>
</colgroup>
	<thead>
		<tr>
		<th class="text-center">이름</th>
		<th class="text-center">제목</th>
		<th class="text-center">파일</th>
		</tr>
	</thead>
	<tbody>
<%
out.print("<tr><td class='text-center'>"+name1 + "</td>");
out.print("<td class='text-center'>"+subject1+"</td>");
out.println("<td class='text-center'> "+filename1+"</td></tr>");

out.print("<tr><td class='text-center'>"+name2 + "</td>");
out.print("<td class='text-center'>"+subject2+"</td>");
out.println("<td class='text-center'> "+filename2+"</td></tr>");

out.print("<tr><td class='text-center'>"+name3 + "</td>");
out.print("<td class='text-center'>"+subject3+"</td>");
out.println("<td class='text-center'> "+filename3+"</td></tr>");

%>
	</tbody>
</table>











</div>
</div>
</div>
</body>
</html>