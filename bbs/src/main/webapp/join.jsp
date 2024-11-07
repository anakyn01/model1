<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="include/header.jsp" %>
<div class="container">
	<div class="row">
		<div class="col-md-12">
<form method="post" action="joinAction.jsp">
<h3 class="text-center">회원 가입화면</h3>
<div class="form-group my-3">
<input type="text" class="form-control" placeholder="아이디를 입력하세요" name="userID"/>
</div>

<div class="form-group my-3">
<input type="password" class="form-control" placeholder="패스워드를 입력하세요" name="userPassword"/>
</div>

<div class="form-group my-3">
<input type="text" class="form-control" placeholder="이름을 입력하세요" name="userName"/>
</div>

<div class="form-group my-3">
	<div class="btn-group">
		<label class="btn btn-primary active">
			<input type="radio" name="userGender" value="남자" checked>남자
		</label>
		<label class="btn btn-primary">
			<input type="radio" name="userGender" value="여자">여자
		</label>
	</div>
</div>

<div class="form-group my-3">
<input type="email" class="form-control" placeholder="이메일을 입력하세요" name="userEmail"/>
</div>

<div class="my-3">

<input type="submit" class="btn btn-primary form-control" value="회원가입">
</div>

</form>

		
		</div>
	</div>
</div>
<%@ include file="include/footer.jsp" %>