<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자페이지</title>
</head>
<body>
	<c:if test="${ empty sessionScope.loginMember or !loginMember.memberId eq 'admin'}">
		<script>
			alert("접근 권한이 없습니다.")
		</script>
		<jsp:forward page="home.com" />
	</c:if>
	<h1>관리자 리다이렉트 페이지입니다. 관리자만 할 수 있는 페이지 등록</h1>
	<a href="home.com">홈으로</a>
</body>
</html>