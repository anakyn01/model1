<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 세션 종료 -->
<% session.invalidate(); %>
<script>
alert('로그아웃 되었습니다');//1) 메세지 먼저 나오고 확인누르면
location.href='main.jsp';//2) 메인으로 이동
</script>