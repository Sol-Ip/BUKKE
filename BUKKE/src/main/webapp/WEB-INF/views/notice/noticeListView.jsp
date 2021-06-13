<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자주 묻는 질문</title>
<link rel="stylesheet" href="resources/css/noticecss/nucleo-icons.css">
<link rel="stylesheet" href="resources/css/noticecss/nucleo-svg.css">
<link rel="stylesheet"
	href="resources/css/noticecss/soft-ui-dashboard.css">
<link rel="stylesheet"
	href="resources/css/noticecss/soft-ui-dashboard.min.css">
<link rel="stylesheet"
	href="resources/css/notice-custom/noticeListView.css">
<jsp:include page="../common/header.jsp"></jsp:include>
<style type="text/css">
.ftco-section{
	    padding: 4em 0;
	    
}
@font-face {
    font-family: 'KOTRA_BOLD-Bold';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-10-21@1.1/KOTRA_BOLD-Bold.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}
@font-face {
    font-family: 'Chosunilbo_myungjo';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_one@1.0/Chosunilbo_myungjo.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}
@font-face {
    font-family: 'MaruBuri-Regular';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-10-21@1.0/MaruBuri-Regular.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}
#font2{
  font-family: 'Chosunilbo_myungjo';
}
#font3{
  font-family: 'MaruBuri-Regular';
  font-size: 15px;
}
</style>
</head>

<body>

	<script src="http://code.jquery.com/jquery-1.8.2.min.js"></script>
	<!-- fixed section -->
	<section class="hero-wrap hero-wrap-2" 
		style="background-image: url('resources/images/bg_1.jpg');"
		data-stellar-background-ratio="0.5">
		<div class="overlay"></div>
		<div class="container">
			<div
				class="row no-gutters slider-text align-items-center justify-content-center">
				<div class="col-md-9 ftco-animate text-center">
					_
					<h1 class="mb-2 bread">Notice</h1>
					<p class="breadcrumbs">
						<span class="mr-2"><a href="home.com">Home <i
								class="ion-ios-arrow-forward"></i></a></span> <span>About us <i
							class="ion-ios-arrow-forward"></i></span>
					</p>
				</div>
			</div>
		</div>
	</section>
	<!-- fixed section END-->
	
	<!-- 검색창  -->
			<section class="ftco-section">
            <div class="sidebar-box" style="float: right; width: 25%;" >
              <form action="noticeSearch.com" class="search-form">
                <div class="form-group" >
                  <span class="icon icon-search"></span>
                  <input type="search" class="form-control" name="noticeKeyword"  value="${noticeSearch.noticeKeyword }" placeholder="검색어 입력 후 엔터를 치세요">
                  
                </div>
              </form>
            </div>
            </section>
	<section class="ftco-section" style="margin-top: -25px;">
  		  <!-- <section class="ftco-section">  -->       
            <!-- </section>  -->
            
            
		<%-- <form class="col-md-5 card card-lg" style="margin-left: 10px"
						action="noticeSearch.com" method="get" >
					<div class="card-body row no-gutters align-items-center">
						<!-- <div class="col-auto">
							<i class="fas fa-search h4 text-body"></i>
						</div> -->
						<!--end of col-->
						<div class="col-auto">
							<select class="form-control" name="noticeCategory" id="" style="width: 100px;">
								<option value="" hidden="hidden">검색</option>
								<option value="title" <c:if test="${search.noticeCategory =='title'}">selected</c:if>>제목</option>
								<option value="contents" <c:if test="${search.noticeCategory =='contents'}">selected</c:if>>내용</option>
							</select>
						</div>
						<div class="col-auto">
							<input class="form-control form-control form-control-borderless" style="width: 300px;"
								type="text" value="${search.noticeKeyword }" name="noticeKeyword" placeholder="검색어를 입력해주세요">
						</div>
						<!--end of col-->
						<div class="col-auto" style="top: 8px;">
							<button class="btn btn-primary"  type="submit" style="margin-left:15px;">Search</button>
						</div>
						<!--end of col-->
					</div>
				</form> --%>
				
		<!-- 공지사항 리스트 -->
		
		<div class="container-fluid py-4">
			<div class="row" >
				
				<div class="col-12">
					<div class="card mb-4">
						<div class="card-header pb-0 text-center">
							<h5 style="font-family: 'KOTRA_BOLD-Bold';font-size: 40px;">자주 묻는 게시판</h5>
						</div>
						<div class="card-body px-0 pt-0 pb-2">
							<div class="table-responsive p-0">
								<table class="table align-items-center mb-0">
									<thead>
										<tr>
											<th
												class="text-center text-uppercase text-secondary text-xs font-weight-bolder opacity-7 ps-1" style="width: 50px; font-family: 'Chosunilbo_myungjo';"></th>
											<th
												class="text-uppercase text-secondary font-weight-bolder opacity-7 text-center" style="font-size: 20px;" id="font2" >제목</th>
											<th
												class="text-center text-uppercase text-secondary  font-weight-bolder opacity-7"></th>
											
											<th
												class="text-uppercase text-secondary font-weight-bolder opacity-7 text-center" style="text-align: right; font-size: 20px;" id="font2">작성자</th>
											<th
												class="text-center text-uppercase text-secondary font-weight-bolder opacity-7" style="font-size: 20px;" id="font2">날짜</th>
											 <c:if test="${loginMember.memberId=='admin' }"> 
											<th
												class="text-center text-uppercase text-secondary font-weight-bolder opacity-7" style="font-size: 20px;" id="font2">상태</th>
											 	</c:if> 	
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${nList }" var="notice" varStatus="status">
											<tr>
												<td>
												</td>
												<td style="">
													<p class="text-xs font-weight-bold mb-0">
														<ul class="notice1">
															<li class="menu" id="font3" style="font-weight: bold"><a>${notice.noticeTitle }</a>
																<ul class="hide">
																	<li style="font-weight: normal;">${notice.noticeContents } 
																	<c:if test="${!empty notice.nOriginalFilename }">
																	<img src="../resources/noticeFiles/${notice.nRenameFilename }">
																	</c:if>
																	</li>
																</ul></li>
														</ul>
													</p>
													<p class="text-xs text-secondary mb-0"></p>
												</td>
												<td class="align-middle text-center text-sm"><span
													class="badge badge-sm bg-gradient-success"></span></td>
												<td class="align-middle text-right text-center"><span
													class="text-secondary font-weight-bold" id="font3">${notice.memberId }</span></td>
												<td class="align-middle text-center"><span
													class="text-secondary font-weight-bold" id="font3">${notice.noticeDate }</span>
												</td>
												 <c:if test="${loginMember.memberId=='admin' }"> 
												<td class="align-middle text-center"><span
													class="text-secondary text-xs font-weight-bold">
													<%-- <input type="hidden" value="${notice.noticeNo }" id="num">
													<input type="hidden" value="${notice.nRenameFilename }" id="file"> --%>
														<c:url var="nDetail" value="noticeDetail.com">
															<c:param name="noticeNo" value="${notice.noticeNo }"></c:param>
														</c:url>
														<c:url var="nDelete" value="noticeDelete.com">
															<c:param name="noticeNo" value="${notice.noticeNo }"></c:param>
															<c:param name="nRenameFilename" value="${notice.nRenameFilename }"></c:param>
														</c:url>
																<a href="${nDetail}" id="font3">수정 /</a> 
																<a href="${nDelete}" id="font3">삭제</a>
																<%-- onclick="location.href='${nDelete}' --%>
																
													</span>
												</td>
											 	</c:if> 
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		 <c:if test="${loginMember.memberId=='admin' }"> 
		<div>
			<button type="button" class="btn btn-outline-secondary"
				style="float: right;"><a href="noticeWriteView.com">글쓰기</a></button>
		</div>
	 	</c:if> 
		<!-- 페이징처리 -->
		<div class="container">
		<div class="row no-gutters mt-5 ftco-animate">
          <div class="col text-center">
            <div class="block-27">
              	<!-- 이전 -->
              	<ul>
				<c:url var="before" value="noticeList.com">
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
					<c:url var="pagination" value="noticeList.com">
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
				<c:url var="after" value="noticeList.com">
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