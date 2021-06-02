<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../common/header.jsp?active=login"></jsp:include>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>댓글 목록</title>
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
					<h1 class="mb-2 bread">내가 쓴 댓글 목록</h1>
					<p class="breadcrumbs">
						<span class="mr-2"><a href="index.html">Home <i
								class="ion-ios-arrow-forward"></i></a></span> <span>Review <i
							class="ion-ios-arrow-forward"></i></span>
					</p>
				</div>
			</div>
		</div>
	</section>
	<!-- fixed section END-->
	
	<!-- 공지사항 리스트 -->
		
		<div class="container-fluid py-4">
			<div class="row" >
				
				<div class="col-12">
					<div class="card mb-4">
						<div class="card-header pb-0 text-center">
							<h5>내가 댓글 남긴 후기 글 목록</h5>
						</div>
						<div class="card-body px-0 pt-0 pb-2">
							<div class="table-responsive p-0">
								<table class="table align-items-center mb-0">
									<thead>
										<tr>
											<th
												class="text-center text-uppercase text-secondary text-xs font-weight-bolder opacity-7 ps-1" style="width: 50px;"></th>
											<th
												class="text-uppercase text-secondary text-xs font-weight-bolder opacity-7 text-center">제목</th>
											<th
												class="text-center text-uppercase text-secondary text-xs font-weight-bolder opacity-7"></th>
											<th
												class="text-uppercase text-secondary text-xs font-weight-bolder opacity-7" style="text-align: right">작성자</th>
											<th
												class="text-center text-uppercase text-secondary text-xs font-weight-bolder opacity-7">날짜</th>
											 
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${rcList }" var="review">
											<tr>
												<td>
												</td>
												<td style="">
													<p class="text-xs font-weight-bold mb-0">
														<ul class="notice1">
													<c:url var="rDetail" value="reviewDetail.com">
														<c:param name="reviewNo" value="${review.reviewNo }"></c:param>
													</c:url>
													
													<li class="menu"><a href="${rDetail }">${review.reviewTitle }</a>
																<ul class="hide">
																	
																</ul></li>
														</ul>
													</p>
													<p class="text-xs text-secondary mb-0"></p>
												</td>
												<td class="align-middle text-center text-sm"><span
													class="badge badge-sm bg-gradient-success"></span></td>
												<td class="align-middle text-right"><span
													class="text-secondary text-xs font-weight-bold">${review.memberId }</span></td>
												<td class="align-middle text-center"><span
													class="text-secondary text-xs font-weight-bold">${review.reviewDate }</span>
												</td><%-- 
												 <c:if test="${loginMember.memberId=='admin' }"> 
												<td class="align-middle text-center"><span
													class="text-secondary text-xs font-weight-bold">
														<c:url var="nDetail" value="noticeDetail.com">
															<c:param name="noticeNo" value="${notice.noticeNo }"></c:param>
														</c:url>
														<c:url var="nDelete" value="noticeDelete.com">
															<c:param name="noticeNo" value="${notice.noticeNo }"></c:param>
															<c:param name="nRenameFilename" value="${notice.nRenameFilename }"></c:param>
														</c:url>
																<a href="${nDetail}">수정 /</a> 
																<a href="${nDelete}">삭제</a>
													</span>
												</td>
											 	</c:if> 
											 --%></tr>
										</c:forEach>

									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		 <%-- <c:if test="${loginMember.memberId=='admin' }"> 
		<div>
			<button type="button" class="btn btn-outline-secondary"
				style="float: right;"><a href="noticeWriteView.com">글쓰기</a></button>
		</div>
	 	</c:if>  --%>
		
		
		<!-- 페이징처리 -->
		<div class="container">
		<div class="row no-gutters mt-5 ftco-animate">
          <div class="col text-center">
            <div class="block-27">
              	<!-- 이전 -->
              	<ul>
				<c:url var="before" value="commentListbyId.com">
					<c:param name="page" value="${pi.currentPage - 1 }"></c:param> <!-- controller의 param value값 -->
				</c:url>
				<c:if test="${pi.currentPage <= 1 }">
					<li><a href="#" onclick="firstPage()">&lt;</a></li>
				</c:if>
				<c:if test="${pi.currentPage > 1 }">
					<li><a href="${before}">&lt;</a></li>
				</c:if>
				
				<!-- 페이지 -->
				<c:forEach var="p" begin="${pi.startPage }" end="${pi.endPage }">
					<c:url var="pagination" value="commentListbyId.com">
						<c:param name="page" value="${p}"></c:param>
					</c:url>
					<c:if test="${p eq pi.currentPage }">
						<li class="active"><span>${p }</span></li>
					</c:if>
					<c:if test="${p ne pi.currentPage }"> <!-- ne : not equal -->
						<li><a href="${pagination}">${p }</a></li>
					</c:if>
				</c:forEach>
				
				<!-- 다음 -->
				<c:url var="after" value="commentListbyId.com">
					<c:param name="page" value="${pi.currentPage + 1}"></c:param>
				</c:url>
				<c:if test="${pi.currentPage >= pi.maxPage }">
					<li><a href="#" onclick="lastPage()">&gt;</a></li>
				</c:if>
				<c:if test="${pi.currentPage < pi.maxPage }">
					<li><a href="${after}">&gt;</a></li>
				</c:if>
				</ul>
			</div>
          </div>
        </div>
        </div>
        </section>

	<script>
		$(document).ready(function() {
			$(".menu>a").click(function() {
				$(this).next("ul").toggleClass("hide");
			});
		});
	</script>
	
</body>
</html>
<jsp:include page="../common/footer.jsp"></jsp:include>