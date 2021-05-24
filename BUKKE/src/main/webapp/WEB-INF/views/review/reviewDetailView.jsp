<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../common/header.jsp?active=review"></jsp:include>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>후기 상세</title>
</head>
<body>
	
	<!-- fixed section -->
	<section class="hero-wrap hero-wrap-2" style="background-image: url('resources/images/bg_1.jpg');" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text align-items-center justify-content-center">
          <div class="col-md-9 ftco-animate text-center">
            <h1 class="mb-2 bread">Details</h1>
            <p class="breadcrumbs"><span class="mr-2"><a href="index.html">Home <i class="ion-ios-arrow-forward"></i></a></span> <span>Review <i class="ion-ios-arrow-forward"></i></span> <span>DETAILS <i class="ion-ios-arrow-forward"></i></span></p>
          </div>
        </div>
      </div>
    </section>
	<!-- fixed section END-->
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
		<tr>
			<td>내용</td>
			<td>${review.reviewContents }</td>
			
		</tr>
			
		<td>첨부파일</td>
		<td><img src="resources/reviewFiles/${review.rRenameFilename }" style="width:300px; height:300px;"></td>
		
		<tr>
			<td colspan="2" align="center">
				<c:url var="rModify" value="reviewModifyView.com">
					<c:param name="reviewNo" value="${review.reviewNo }"></c:param>
				</c:url>
				<c:url var="rDelete" value="reviewDelete.com">
					<c:param name="reviewNo" value="${review.reviewNo }"></c:param>
					<c:param name="rRenameFilename" value="${review.rRenameFilename }"></c:param>
				</c:url>
				<a href="${rModify }">수정 페이지로 이동</a> &nbsp;
				<a href="${rDelete }">삭제하기</a>
			</td>
		</tr>							
	</table>
</body>
</html>
<jsp:include page="../common/footer.jsp"></jsp:include>