<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css">
<title>파일을 여러개 올리기</title>
</head>
<body>
<div class="container">
<div class="row">
<div class="col-md-12">
<h1>multi_file_upload</h1>
<form name="fileForm" 
method="post" 
enctype="multipart/form-data" 
action="fileupload02_process.jsp">

<div class="input-group my-3">
	<label class="form-label" for="name1">이름1</label>
	<input type="text" class="form-control" name="name1">
	
	<label class="form-label" for="subject1">제목1</label>
	<input type="text" class="form-control" name="subject1">
	
	<label class="form-label" for="filename1">파일1</label>
	<input type="file" class="form-control" name="filename1">
</div>

<div class="input-group my-3">
	<label class="form-label" for="name2">이름2</label>
	<input type="text" class="form-control" name="name2">
	
	<label class="form-label" for="subject2">제목2</label>
	<input type="text" class="form-control" name="subject2">
	
	<label class="form-label" for="filename2">파일2</label>
	<input type="file" class="form-control" name="filename2">
</div>

<div class="input-group my-3">
	<label class="form-label" for="name3">이름3</label>
	<input type="text" class="form-control" name="name3">
	
	<label class="form-label" for="subject3">제목3</label>
	<input type="text" class="form-control" name="subject3">
	
	<label class="form-label" for="filename3">파일3</label>
	<input type="file" class="form-control" name="filename3">
</div>

<div class="d-flex justify-content-end">
<input type="submit" value="전송" class="btn btn-lg btn-outline-success"/>
</div>

</form>

</div>
</div>
</div>
</body>
</html>