<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>취미생활 플랫폼, 부캐</title>
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.1.0/css/all.css"
	integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt"
	crossorigin="anonymous">
<style>
	.banner {
		background-color: rgb(68, 201, 244);
	}
	.banner * {
		color: white;
	}
</style>
</head>
<body>
<jsp:include page="../common/header.jsp">
	<jsp:param name="active" value="review" />
</jsp:include>

<section class="banner hero-wrap hero-wrap-2">
    <div class="container">
        <div class="row no-gutters slider-text align-items-center justify-content-center">
			<div class="col-md-9 ftco-animate text-center">
				<h1 class="mb-2 bread">Review</h1>
				<p class="mr-2">부캐들이 남긴 활동 후기♡</p>
			</div>
        </div>
    </div>
</section>
	
	<div class="container ftco-animate">
			<br />
			<div class="row justify-content-center" >
				<div class="col-md-4 heading-section ftco-animate">
					<span class="subheading subheading-with-line"><small
						class="pr-2 bg-light">REVIEW</small></span>
					<h2 class="mb-4">SEARCH</h2>
				</div>

			<form class="col-md-8 card card-lg" action="reviewSearch.com"
				method="get">
				<div class="card-body row no-gutters align-items-center">
					<div class="col-auto">
						<i class="fas fa-search h4 text-body"></i>
					</div>
					<select class="selectpicker btn-lg btn-inverse" name="reviewCategory">
						<option value="all"
							<c:if test="${search.reviewCategory == 'all' }">selected</c:if>>전체</option>
						<option value="writer"
							<c:if test="${search.reviewCategory == 'writer' }">selected</c:if>>작성자</option>
						<option value="title"
							<c:if test="${search.reviewCategory == 'title' }">selected</c:if>>제목</option>
						<option value="content"
							<c:if test="${search.reviewCategory == 'content' }">selected</c:if>>내용</option>
					</select> 
	
					<!--end of col-->
					<div class="col">
						<input
							class="form-control form-control-lg form-control-borderless"
							type="text" name="reviewKeyword" value="${search.reviewKeyword }"
							placeholder="검색어를 입력해주세요">
					</div>
					<!--end of col-->
					<div class="col-auto">
						<button class="btn btn-lg btn-primary" type="submit">Search</button>
					</div>
					<!--end of col-->
				</div>
			</form>
		</div>
			<!--end of col-->
			<hr>
		</div>	
	<br>	
	<!-- 클래스 전체 수업 이미지 목록 -->
	
		<div class="container">
			<div class="row">
			<c:forEach items="${rList }" var="review">
				<div class="col-sm-4 ftco-animate">
					<div class="project">
						<img src="../resources/reviewFiles/${review.rRenameFilename }" id="class-img" class="block-20"
							alt="Colorlib Template">
						<div class="text d-flex">
						<c:url var="rDetail" value="reviewDetail.com">
                     		<c:param name="reviewNo" value="${review.reviewNo }"></c:param>
                  		</c:url>
							<h3>
								<a href="${rDetail }">${review.reviewTitle }</a>
							</h3>
							
						</div>
						<div class="col-sm text-info"  align="right">글쓴이 : ${review.memberId }</div>
						<%-- <a href="resources/reviewFiles/${review.rRenameFilename}" class="icon image-popup d-flex justify-content-center align-items-center">
							<span class="icon-expand"></span>
						</a> --%>
						
					</div>
					<br>
				</div>
			</c:forEach>
			</div>
		</div>	
	
		
	<!-- 글쓰기 버튼 -->
	<!--  일반회원마이페이지에서 본인이 들었던거만 후기남길수있게 글로 버튼위치바꿈 -->	
		<!-- <div style="float: right; padding-right : 350px;" class="ftco-animate">
		<a href="reviewWriteView.com"><button class="btn btn-lg btn-primary" type="submit">글쓰기</button></a>
		</div>
	<br style="clear:both">
	 -->
	<!-- 페이징 처리 -->
		<div class="container">
    	<div class="row no-gutters mt-5">	
          <div class="col text-center">
            <div class="block-27">
              <!-- 이전 --> 
              <ul>
	            <c:url var="before" value="reviewList.com">
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
	               <c:url var="pagination" value="reviewList.com">
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
	            <c:url var="after" value="reviewList.com">
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