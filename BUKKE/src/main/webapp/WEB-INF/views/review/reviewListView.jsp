<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../common/header.jsp"></jsp:include>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>후기</title>
</head>
<body>
	
	<!-- fixed section -->
	<section class="hero-wrap hero-wrap-2" style="background-image: url('resources/images/bg_1.jpg');" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text align-items-center justify-content-center">
          <div class="col-md-9 ftco-animate text-center">
            <h1 class="mb-2 bread">Review</h1>
            <p class="breadcrumbs"><span class="mr-2"><a href="index.html">Home <i class="ion-ios-arrow-forward"></i></a></span> <span>Review <i class="ion-ios-arrow-forward"></i></span></p>
          </div>
        </div>
      </div>
    </section>
	<!-- fixed section END-->
	<section class="ftco-section">
			<div class="container">
			
			<h1 align="center">후기 목록 보기</h1>
	<div align="center">
		<button onclick="location.href='reviewWriteView.com'">글쓰기</button>
	</div>
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
				</div>
			</div>
		</section>
	
</body>
</html>
<jsp:include page="../common/footer.jsp"></jsp:include>