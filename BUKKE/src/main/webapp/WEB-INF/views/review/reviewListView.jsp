<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>후기</title>
</head>
<body>
	<jsp:include page="../common/header.jsp"></jsp:include>

	<h1 align="center">후기 목록 보기</h1>
	
	<br style="clear:both">
	
	<table align="center" width="600" border="1" cellspacing="0" style="clear:right;">
		<tr>
			<th>번호</th>
			<th>제목</th>
			<th>작성자</th>
			<th>올린날짜</th>
			
		</tr>
		<c:forEach items="${rList }" var="review">
			<tr>
				<td align="center">${review.reviewNo }</td>
				<td align="center">
					<c:url var="rDetail" value="reviewDetail.com">
						<c:param name="reviewNo" value="${review.reviewNo }"></c:param>
					</c:url>
					
					<a href="${rDetail }">${review.reviewTitle }</a>
				</td>
				<td align="center">${review.memberId }</td>
				<td align="center">${review.reviewDate }</td>
				
			</tr>
		</c:forEach>
	</table>
</body>
</html>