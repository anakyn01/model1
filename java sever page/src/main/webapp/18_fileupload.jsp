<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css">
<title>welcome</title>
</head>
<body>
<div class="container">
<div class="row">
<div class="col-md-12">
<h1></h1>
<form name="fileForm" 
method="post" 
enctype="multipart/form-data" 
action="fileupload04_process.jsp">
<p>이름 : <input type="text" name="name">
<p>제목 : <input type="text" name="subject">
<p>파일 : <input type="file" name="filename">
<p><input type="submit" value="파일 올리기">

</form>
</div>
</div>
</div>
</body>
</html>