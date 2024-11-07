<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
<link rel="stylesheet" href="css/custom.css"/>
<title>Account!</title>
</head>
<body class="bg-gradient-primary">
<div class="container">

<div class="card o-hidden border-0 shadow-lg my-5">

<div class="card-body p-0">
<div class="row">
<div class="col-lg-5 d-none d-lg-block bg-register-image"></div><!-- 이미지로 백그라운드가 들어가는 영역 -->

<div class="col-lg-7"><!-- 입력폼이 들어가는 영역 -->
<div class="p-5">

<div class="text-center">
 <h1 class="h4 text-gray-900 mb-4">Create an Account!</h1>
</div>

<form class="user" method="POST" action="enum.jsp"><!-- 입력양식을 추가 -->

<div class="form-group row"><!--이름을 입력하는곳 -->
	<div class="col-sm-6 mb-3 mb-sm-0">
		<input type="text" class="form-control form-control-user" name="lastname" placeholder="First Name">
	</div><!-- 이름 -->
	<div class="col-sm-6">
		<input type="text" class="form-control form-control-user" name="firstname" placeholder="last Name">
	</div><!-- 성 -->
</div>

<div class="form-group my-5"><!-- 이메일로 id설정  -->
	<div class="input-group">
	<input 
	type="email" 
	class="form-control form-control-user" 
	name="id" 
	placeholder="아이디는 이메일 주소로 가입해 주세요"
	/>
	<input type="button" value="아이디 중복확인" class="btn btn-outline-primary"/>
	</div>
</div>

<div class="form-group row">

<div class="col-sm-6 mb-3 mb-sm-0"><!-- 비밀번호 -->
	<input 
	type="password" 
	class="form-control form-control-user" 
	name="passwd" 
	placeholder="비밀번호 적어주세요"
	/>
</div>

<div class="col-sm-6 "><!-- 비밀번호 확인 -->
	<input 
	type="password" 
	class="form-control form-control-user" 
	name="repasswd" 
	placeholder="비밀번호 다시 적어주세요"
	/>
</div>

<div class="form-group my-5">
<label class="form-label">성별</label>
<div class="form-check">
	<input type="checkbox" name="sex" value="남성" class="form-check-input">
	<label class="form-check-label">남성</label>
</div>
<div class="form-check">
	<input type="checkbox" name="sex" value="여성" class="form-check-input">
	<label class="form-check-label">여성</label>
</div>
<div class="form-check">
<select name="city" class="form-select">
<option value="서울시">서울특별시</option>
<option value="경기도">경기도</option>
<option value="인천광역시">인천광역시</option>
<option value="충청도">충청도</option>
<option value="전라도">전라도</option>
</select>
</div>
</div>
<div class="form-check">
<h4 class="my-3">취미</h4>
독서<input type="checkbox" name="hobby" value="독서" checked>
요리<input type="checkbox" name="hobby" value="요리">
it<input type="checkbox" name="hobby" value="it">
</div>
<hr>
<textarea  placeholder="하고 싶은말을 적어주세요" name="adminto" class="form-control"></textarea>
<Hr>
<input type="submit" class="btn btn-primary btn-user btn-block" value="회원가입">
<hr>
<a href="#" class="btn btn-google btn-user btn-block">
 <i class="fab fa-google fa-fw"></i>구글로 회원가입
</a>
<a href="#" class="btn btn-facebook btn-user btn-block">
<i class="fab fa-facebook-f fa-fw"></i>페이스북으로 회원 가입
</a>
</form>
<hr>
	<div class="text-center">
		<a class="small" href="#">비밀번호를 잊어 버리셨나요?</a>
	</div>
	<div class="text-center">
	<a class="small" href="#">계정이 있으시다구요? 로그인 하세요!</a>
	</div>
</div>
</div>
</div>
</div>
</div>
</div>

</body>
</html>