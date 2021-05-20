<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자주 묻는 게시판</title>
<link rel="stylesheet" href="resources/css/noticecss/nucleo-icons.css">
<link rel="stylesheet" href="resources/css/noticecss/nucleo-svg.css">
<link rel="stylesheet" href="resources/css/noticecss/soft-ui-dashboard.css">
<link rel="stylesheet" href="resources/css/noticecss/soft-ui-dashboard.min.css">
<jsp:include page="../common/header.jsp"></jsp:include>
<link rel="stylesheet" href="resources/css/notice-custom/noticeListView.css">
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
				<div class="col-md-9 ftco-animate text-center">_
					<h1 class="mb-2 bread">About Us</h1>
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

	<section class="ftco-section">

 <div class="sidebar-box">
              <form action="#" class="search-form "style="width: 300px; float: right" >
                <div class="form-group">
                  <span class="icon icon-search"></span>
                  <input type="text" class="form-control" placeholder="제목을 입력해 주세요">
                </div>
              </form>
            </div>
		<!-- 공지사항 리스트 -->
		<div class="container-fluid py-4">
			<div class="row">
				<div class="col-12">
					<div class="card mb-4">
						<div class="card-header pb-0 text-center">
							<h5>자주 묻는 게시판</h5>
						</div>
						<div class="card-body px-0 pt-0 pb-2">
							<div class="table-responsive p-0">
								<table class="table align-items-center mb-0">
									<thead>
										<tr>
											<th
												class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 text-center">제목</th>
											<th
												class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2"></th>
											<th
												class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7"></th>
											<th
												class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">작성자</th>
											<th
												class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">날짜</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>
												<div class="d-flex px-2 py-1">
														 <ul class="notice1">
														        <li class="menu">
														            <a>Q. 클래스는 어떻게 듣나요?</a>
														            <ul class="hide">
														                <li>클래스는 클래스 페이지에서 날짜를 등록하고 들으실 수 있습니다.</li>
														            </ul>
														        </li>
														</ul>
													</div>
											</td>
											<td>
												<p class="text-xs font-weight-bold mb-0"></p>
												<p class="text-xs text-secondary mb-0"></p>
											</td>
											<td class="align-middle text-center text-sm"><span
												class="badge badge-sm bg-gradient-success"></span></td>
											<td class="align-middle text-center"><span
												class="text-secondary text-xs font-weight-bold">관리자</span></td>
											<td class="align-middle text-center"><span
												class="text-secondary text-xs font-weight-bold">23/04/18</span>
											</td>
										</tr>
										<tr>
											<td>
												<div class="d-flex px-2 py-1">
														 <ul>
														        <li class="menu">
														            <a>Q. 클래스는 어떻게 듣나요?</a>
														            <ul class="hide">
														 				<!-- <h6 class="mb-0 text-sm">클래스는 어디에서 구매하나요?</h6> -->
														                <li>클래스는 클래스 페이지에서 날짜를 등록하고 들으실 수 있습니다.</li>
														            </ul>
														        </li>
														</ul>
													</div>
											</td>
											<td>
												<p class="text-xs font-weight-bold mb-0"></p>
												<p class="text-xs text-secondary mb-0"></p>
											</td>
											<td class="align-middle text-center text-sm"><span
												class="badge badge-sm bg-gradient-secondary"></span></td>
											<td class="align-middle text-center"><span
												class="text-secondary text-xs font-weight-bold">관리자</span></td>
											<td class="align-middle text-center"><span
												class="text-secondary text-xs font-weight-bold">23/04/18</span>

											</td>
										</tr>
										<tr>
											<td>
												<div class="d-flex px-2 py-1">
														 <ul>
														        <li class="menu">
														            <a>Q. 클래스는 어떻게 듣나요?</a>
														            <ul class="hide">
														 				<!-- <h6 class="mb-0 text-sm">클래스는 어디에서 구매하나요?</h6> -->
														                <li>클래스는 클래스 페이지에서 날짜를 등록하고 들으실 수 있습니다.</li>
														            </ul>
														        </li>
														</ul>
													</div>
											</td>
											<td>
												<p class="text-xs font-weight-bold mb-0"></p>
												<p class="text-xs text-secondary mb-0"></p>
											</td>
											<td class="align-middle text-center text-sm"></td>
											<td class="align-middle text-center"><span
												class="text-secondary text-xs font-weight-bold">관리자</span></td>
											<td class="align-middle text-center"><span
												class="text-secondary text-xs font-weight-bold">23/04/18</span>
											</td>
										</tr>
										<tr>
											<td>
												<div class="d-flex px-2 py-1">
														 <ul>
														        <li class="menu">
														            <a>Q. 클래스는 어떻게 듣나요?</a>
														            <ul class="hide">
														 				<!-- <h6 class="mb-0 text-sm">클래스는 어디에서 구매하나요?</h6> -->
														                <li>클래스는 클래스 페이지에서 날짜를 등록하고 들으실 수 있습니다.</li>
														            </ul>
														        </li>
														</ul>
													</div>
											</td>
											<td>
												<p class="text-xs font-weight-bold mb-0"></p>
												<p class="text-xs text-secondary mb-0"></p>
											</td>
											<td class="align-middle text-center text-sm"></td>
											<td class="align-middle text-center"><span
												class="text-secondary text-xs font-weight-bold">관리자</span></td>
											<td class="align-middle text-center"><span
												class="text-secondary text-xs font-weight-bold">23/04/18</span>
											</td>
										</tr>
										<tr>
											<td>
												<div class="d-flex px-2 py-1">
														 <ul>
														        <li class="menu">
														            <a>Q. 클래스는 어떻게 듣나요?</a>
														            <ul class="hide">
														 				<!-- <h6 class="mb-0 text-sm">클래스는 어디에서 구매하나요?</h6> -->
														                <li>클래스는 클래스 페이지에서 날짜를 등록하고 들으실 수 있습니다.</li>
														            </ul>
														        </li>
														</ul>
													</div>
											</td>
											<td>
												<p class="text-xs font-weight-bold mb-0"></p>
												<p class="text-xs text-secondary mb-0"></p>
											</td>
											<td class="align-middle text-center text-sm"></td>
											<td class="align-middle text-center"><span
												class="text-secondary text-xs font-weight-bold">관리자</span></td>
											<td class="align-middle text-center"><span
												class="text-secondary text-xs font-weight-bold">23/04/18</span>
											</td>
										</tr>
										<tr>
											<td>
												<div class="d-flex px-2 py-1">
														 <ul>
														        <li class="menu">
														            <a>Q. 클래스는 어떻게 듣나요?</a>
														            <ul class="hide">
														 				<!-- <h6 class="mb-0 text-sm">클래스는 어디에서 구매하나요?</h6> -->
														                <li>클래스는 클래스 페이지에서 날짜를 등록하고 들으실 수 있습니다.</li>
														            </ul>
														        </li>
														</ul>
													</div>
											</td>
											<td>
												<p class="text-xs font-weight-bold mb-0"></p>
												<p class="text-xs text-secondary mb-0"></p>
											</td>
											<td class="align-middle text-center text-sm"></td>
											<td class="align-middle text-center"><span
												class="text-secondary text-xs font-weight-bold">관리자</span></td>
											<td class="align-middle text-center"><span
												class="text-secondary text-xs font-weight-bold">23/04/18</span>
											</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
			</div>
			<div>
				<button type="button" class="btn btn-outline-secondary" style="float:right">글쓰기</button>
			</div> 
			<div class="row no-gutters mt-5">
				<div class="col text-center">
					<div class="block-27">
						<ul>
							<li><a href="#">&lt;</a></li>
							<li class="active"><span>1</span></li>
							<li><a href="#">2</a></li>
							<li><a href="#">3</a></li>
							<li><a href="#">4</a></li>
							<li><a href="#">5</a></li>
							<li><a href="#">&gt;</a></li>
						</ul>
					</div>
				</div>
			</div>
			<br>
			<br>
			<hr>
	</section>

<script>
$(document).ready(function(){
    $(".menu>a").click(function(){
        $(this).next("ul").toggleClass("hide");
    });
});


</script>

</body>
</html>
<jsp:include page="../common/footer.jsp"></jsp:include>