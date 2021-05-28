<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../common/header.jsp?active=review"></jsp:include>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 수정</title>
</head>
<body>
<!-- fixed section -->
	<section class="hero-wrap hero-wrap-2" style="background-image: url('resources/images/bg_1.jpg');" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text align-items-center justify-content-center">
          <div class="col-md-9 ftco-animate text-center">
            <h1 class="mb-2 bread">Review Update</h1>
            <p class="breadcrumbs"><span class="mr-2"><a href="index.html">Home <i class="ion-ios-arrow-forward"></i></a></span> <span>Review <i class="ion-ios-arrow-forward"></i></span> <span>UPDATE <i class="ion-ios-arrow-forward"></i></span></p>
          </div>
        </div>
      </div>
    </section>
	<!-- fixed section END-->
	
	
	<br style="clear:both">
	<div class="row justify-content-center mb-5">
				<div class="col-md-6 heading-section ftco-animate">
					<span class="subheading subheading-with-line"><small
						class="pr-2 bg-white">REVIEW</small></span>
					<h2 class="mb-2">UPDATE</h2>
				</div>
			</div>
	<form action="reviewUpdate.com" method="post" enctype="multipart/form-data">
	<div class="container">
		<input type="hidden" name="reviewNo" value="${review.reviewNo }">
		<input type="hidden" name="rOriginalFilename" value="${review.rOriginalFilename }">
		<input type="hidden" name="rRenameFilename" value="${review.rRenameFilename }">
		<table align="center" border="1">
			<input type="text" name="reviewTitle" class="form-control mt-4 mb-2"
				placeholder="제목을 입력해주세요." required>
				<input type="text" class="form-control" size="50" name="memberId" value="${loginMember.memberId }" readonly></td>
				<textarea class="form-control" rows="10" name="reviewContents"
					placeholder="내용을 입력해주세요" required></textarea>
			<input type="file" class="form-control" name="reloadFile">
					<c:if test="${ !empty review.rOriginalFilename  }">
					이전 파일 : ${review.rOriginalFilename }
					</c:if>
			<input type="submit" class="float-center btn btn-lg btn-primary" value="수정하기">&nbsp;&nbsp;
				<input type="reset" class="float-center btn btn-lg btn-outline-warning" value="취소">	
					
			<%-- <tr>
				<td>제목</td>
				<td><input type="text" size="50" name="reviewTitle" value="${review.reviewTitle }"></td>
			</tr> --%>
			<%-- 
			<tr>
				<td>작성자</td>
				<td><input type="text" name="memberId" value="${review.memberId }" readonly></td>
			</tr>
			<tr>
				<td>내용</td>
				<td><textarea rows="7" cols="50" name="reviewContents">${review.reviewContents }</textarea></td>
			</tr>	 --%>	
			<tr>
			<%-- 	<td>첨부파일</td>
				<td><input type="file" class="form-control" name="reloadFile">
					<c:if test="${ !empty review.rOriginalFilename  }">
						${review.rOriginalFilename }
					</c:if>
				</td> --%>
			</tr>
			<!-- <tr>
				<td>
				
					<input type="submit" value="수정하기">
				</td>
			</tr>	 -->						
		</table>
		</div>
	</form>
</body>
</html>
<jsp:include page="../common/footer.jsp"></jsp:include>