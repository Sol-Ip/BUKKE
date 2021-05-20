<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>후기 상세</title>
</head>
<body>
	<jsp:include page="../common/header.jsp"></jsp:include>
	<br style="clear:both">
	<h1 align="center">${review.reviewNo }번 글 상세보기</h1>
	<br><br>
	<table align="center" width="450" border="1">
		<tr>
			<td width="80">번호</td>
			<td>${review.reviewNo }</td>
		</tr>
		<tr>
			<td>제목</td>
			<td>${review.reviewTitle }</td>
		</tr>
		<tr>
			<td>작성자</td>
			<td>${review.memberId }</td>
		</tr>
		<tr>
			<td>작성날짜</td>
			<td>${review.reviewDate }</td>
		</tr>
		<tr height="300">
			<td>내용</td>
			<td>${review.reviewContents }</td>
		</tr>		
		
		<tr>
			<td colspan="2" align="center">
				<c:url var="rModify" value="reviewModifyView.com">
					<c:param name="reviewNo" value="${review.reviewNo }"></c:param>
				</c:url>
				<c:url var="rDelete" value="reviewDelete.com">
					<c:param name="reviewNo" value="${review.reviewNo }"></c:param>
				</c:url>
				<a href="${rModify }">수정 페이지로 이동</a> &nbsp;
				<a href="${rDelete }">삭제하기</a>
			</td>
		</tr>							
	</table>
</body>
</html>