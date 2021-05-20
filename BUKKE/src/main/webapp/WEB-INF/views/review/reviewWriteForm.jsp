<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>후기 작성</title>
</head>
<body>
	<jsp:include page="../common/header.jsp"></jsp:include>
	<br style="clear:both">
	<h1 align="center">후기글 등록페이지</h1>
	<br><br>
	<form action="reviewAdd.com" method="post" enctype="multipart/form-data">
		<table align="center" border="1" cellspacing="0">
			<tr>
				<td>제목</td>
				<td><input type="text" size="50" name="reviewTitle"></td>
			</tr>
			<!-- 로그인 세션 완료되면 아래 주석 없애버리자 -->
			<%-- <tr>
				<td>작성자</td>
				<td><input type="text" size="50" name="memberId" value="${loginUser.memberId }" readonly></td>
			</tr> --%>
			<tr>
				<td>내용</td>
				<td><textarea rows="7" cols="50" name="reviewContents"></textarea></td>
			</tr>
			<tr>
				<td>첨부파일</td>
				<td><input type="file" size="50" name="uploadFile"></td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="submit" value="등록">&nbsp;&nbsp;
					<input type="reset" value="취소">
				</td>
			</tr>
		</table>
	</form>	
</body>
</html>