<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../common/header.jsp?active=login"></jsp:include>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>좋아요 목록</title>
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.1.0/css/all.css"
	integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt"
	crossorigin="anonymous">
</head>
<body>
	<!-- fixed section -->
	<section class="hero-wrap hero-wrap-2"
		style="background-image: url('resources/images/bg_1.jpg');"
		data-stellar-background-ratio="0.5">
		<div class="overlay"></div>
		<div class="container">
			<div
				class="row no-gutters slider-text align-items-center justify-content-center">
				<div class="col-md-9 ftco-animate text-center">
					<h1 class="mb-2 bread">좋아요 목록</h1>
					<p class="breadcrumbs">
						<span class="mr-2"><a href="index.html">Home <i
								class="ion-ios-arrow-forward"></i></a></span> <span>Likes <i
							class="ion-ios-arrow-forward"></i></span>
					</p>
				</div>
			</div>
		</div>
	</section>
	<!-- fixed section END-->
	<div class="container ftco-animate">
		<div class="row justify-content-center">
			<div class="col-md-8 heading-section ftco-animate">
				<span class="subheading subheading-with-line"><small
					class="pr-2 bg-light">REVIEW</small></span>
				<h2>Likes</h2>
				
			</div>
		</div>
		
		
		<h3 align="right">내가 누른 좋아요 &nbsp;&nbsp;<i class="btn btn-danger fas fa-heart"></i></h3>
		
	
	</div>
	<div class="container">
		<div class="row">
			<c:forEach items="${rlList }" var="review">
	
				<div class="col-sm-4 ftco-animate">
					<div class="project">
						<img src="../resources/reviewFiles/${review.rRenameFilename }"
							id="class-img" class="block-20" alt="Colorlib Template">
						<div class="text d-flex">
							<c:url var="rDetail" value="reviewDetail.com">
								<c:param name="reviewNo" value="${review.reviewNo }"></c:param>
							</c:url>
							<h3>
								<a href="${rDetail }">${review.reviewTitle }</a>
							</h3>
							
			
						</div>
						
						
						<div class="col-sm text-info"  align="right">글쓴이 : ${review.memberId }</div>
						
						


					</div>
					<br>
				</div>
			</c:forEach>
		</div>
	</div>
	
	<!-- 페이징 처리 -->
		<div class="container">
    	<div class="row no-gutters mt-5">	
          <div class="col text-center">
            <div class="block-27">
              <!-- 이전 --> 
              <ul>
	            <c:url var="before" value="reviewLikeList.com">
	               <c:param name="page" value="${pi.currentPage - 1 }"></c:param>
	            </c:url>
	            <c:if test="${pi.currentPage <= 1 }">
	               <li><a href="#" onclick="firstPage()">&lt;</a></li>
	            </c:if>
	            <c:if test="${pi.currentPage > 1 }">
	               <li><a href="${before }">&lt;</a></li>
	            </c:if>
	            <!-- 페이지 -->
                <c:forEach var="p" begin="${pi.startPage }" end="${pi.endPage }">
	               <c:url var="pagination" value="reviewLikeList.com">
	                  <c:param name="page" value="${p }"></c:param>
	               </c:url>
	               <c:if test="${p eq pi.currentPage }">
						<li class="active"><span>${p }</span></li>
					</c:if>
	               <c:if test="${p ne pi.currentPage }">
	                  <li><a href="${pagination }">${p }</a></li>
	               </c:if>
            	</c:forEach>
            	<!-- 다음 -->
	            <c:url var="after" value="reviewLikeList.com">
	               <c:param name="page" value="${pi.currentPage + 1 }"></c:param>
	            </c:url>
	            <c:if test="${pi.currentPage >= pi.maxPage }">
	               <li><a href="#" onclick="lastPage()">&gt;</a></li>
	            </c:if>
	            <c:if test="${pi.currentPage < pi.maxPage }">
	               <li><a href="${after }">&gt;</a></li>
	            </c:if>
              </ul>
            </div>
          </div>
        </div>
    	</div>
	
</body>
</html>
<jsp:include page="../common/footer.jsp"></jsp:include>