<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>관리자 - 대시보드</title>
<link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
<link href="/resources/admin/css/styles.css" rel="stylesheet" />
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js"></script>
<link
	href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900"
	rel="stylesheet">
<!-- 동그란 -->
<style type="text/css">
		@import url('https://fonts.googleapis.com/css?family=Open+Sans:400,700');
#wrapper{
  position: relative;
}
.center {
  left: 50%;
  -webkit-transform: translate( -50% );
  -ms-transform: translate( -50% );
  transform: translate( -50% );
}

/*===== The CSS =====*/
.progress{
  width: 200px;
  height: 280px;
}
.progress .track, .progress .fill{
  fill: rgba(0, 0, 0, 0);
  stroke-width: 3;
  transform: rotate(90deg)translate(0px, -80px);
}
.progress .track{
  stroke: rgb(56, 71, 83);
}
.progress .fill {
  stroke: rgb(255, 255, 255);
  stroke-dasharray: 219.99078369140625;
  stroke-dashoffset: -219.99078369140625;
  transition: stroke-dashoffset 1s;
}
.progress.blue .fill {
  stroke: rgb(186, 223, 172);
}
.progress.green .fill {
  stroke: rgb(186, 223, 172);
}
.progress .value, .progress .text {
  font-family: 'Open Sans';
  fill: green;
  text-anchor: middle;
   font-size: 15px;
}
.progress .text {
  font-size: 5px;
}
.noselect {
    -webkit-touch-callout: none;
    -webkit-user-select: none;
    -khtml-user-select: none;
    -moz-user-select: none;
    -ms-user-select: none;
    user-select: none;
    cursor: default;
    background-color: white;
}
</style>
</head>
<body class="sb-nav-fixed">
	
	
	<nav class="sb-topnav navbar navbar-expand navbar-dark bg-fancy">
		<a class="navbar-brand ps-3" href="home.com">BUKKE</a>
		<!-- 사이드바 -->
		<button class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0"
			id="sidebarToggle" href="#!">
			<i class="fas fa-bars"></i>
		</button>
		<ul class="navbar-nav ms-auto">
		</ul>
	</nav>
	<div id="layoutSidenav">
		<div id="layoutSidenav_nav">
			<nav class="sb-sidenav accordion sb-sidenav-fancy"
				id="sidenavAccordion">
				<div class="sb-sidenav-menu">
					<jsp:include page="sidenav.jsp"></jsp:include>
				</div>
			</nav>
		</div>
		<div id="layoutSidenav_content">
			<main>
			<div class="container-fluid px-4">
				<h1 class="mt-4">관리자 Dashboard</h1>
				<ol class="breadcrumb mb-4">
					<li class="breadcrumb-item active">BUKKE Dashboard</li>
				</ol>
				<div class="row">
					<div class="col-xl-3 col-md-6">
						<div class="card bg-primary text-white mb-4">
							<div class="card-body">회원관리</div>
							<div
								class="card-footer d-flex align-items-center justify-content-between">
								<a class="small text-white stretched-link" href="adminUserManage.com">View
									Details</a>
								<div class="small text-white">
									<i class="fas fa-angle-right"></i>
								</div>
							</div>
						</div>
					</div>
					<div class="col-xl-3 col-md-6">
						<div class="card bg-warning text-white mb-4">
							<div class="card-body">수업관리</div>
							<div
								class="card-footer d-flex align-items-center justify-content-between">
								<a class="small text-white stretched-link" href="adminbClassManage.com">View
									Details</a>
								<div class="small text-white">
									<i class="fas fa-angle-right"></i>
								</div>
							</div>
						</div>
					</div>
					<div class="col-xl-3 col-md-6">
						<div class="card bg-success text-white mb-4">
							<div class="card-body">후기관리</div>
							<div
								class="card-footer d-flex align-items-center justify-content-between">
								<a class="small text-white stretched-link" href="adminReviewManage.com">View
									Details</a>
								<div class="small text-white">
									<i class="fas fa-angle-right"></i>
								</div>
							</div>
						</div>
					</div>
					<div class="col-xl-3 col-md-6">
						<div class="card bg-danger text-white mb-4">
							<div class="card-body">공지사항</div>
							<div
								class="card-footer d-flex align-items-center justify-content-between">
								<a class="small text-white stretched-link" href="noticeList.com">View
									Details</a>
								<div class="small text-white">
									<i class="fas fa-angle-right"></i>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-xl-6">
						<div class="card mb-4">
							<div class="card-header">
								<i class="fas fa-chart-area me-1"></i> 부캐 클래스
							</div>
							<div class="card-body">
							<h1>Class Total Count</h1>
									<div id="wrapper" class="center">
										<div class="row col-md-12">
												<div class="col-md-6" id="classStyle">
											<svg class="progress blue noselect" data-progress="${cCount }" x="0px" y="0px" viewBox="0 0 80 80">
												<path class="track" d="M5,40a35,35 0 1,0 70,0a35,35 0 1,0 -70,0" />
												<path class="fill" d="M5,40a35,35 0 1,0 70,0a35,35 0 1,0 -70,0" />
												<text class="value" x="50%" y="55%">0%</text>
											</svg>
										</div>
								<%-- <canvas id="myAreaChart" width="100%" height="40"></canvas> --%>
										<div class="col-md-6" style="">클래스 수 :${cCount }</div>
										</div>
									</div>
							</div>
						</div>
					</div>
					<div class="col-xl-6">
						<div class="card mb-4">
							<div class="card-header">
								<i class="fas fa-chart-bar me-1"></i>부캐 액티비티
							</div>
							<div class="card-body">
								<h1>Activity Total Count </h1>
									<div id="wrapper" class="center">
									<div class="row col-md-12">
										<div class="col-md-6" id="classStyle">
										<svg class="progress blue noselect" data-progress="${aCount }" x="0px" y="0px" viewBox="0 0 80 80">
											<path class="track" d="M5,40a35,35 0 1,0 70,0a35,35 0 1,0 -70,0" />
											<path class="fill" d="M5,40a35,35 0 1,0 70,0a35,35 0 1,0 -70,0" />
											<text class="value" x="50%" y="55%">0%</text>
										</svg>
										</div>
										<div class="col-md-6">액티비티 수 :${aCount }</div>
										</div>
									</div>
								<%-- <canvas id="myBarChart" width="100%" height="40"></canvas> --%>
							</div>
						</div>
					</div>
				</div>
				<div class="card mb-4">
					<div class="card-header">
						<i class="fas fa-table me-1"></i> 최근 등록한 회원
					</div>
					<div class="card-body">
						<table id="datatablesSimple">
									<thead>
										<tr>
											<th>아이디</th>
											<th>비밀번호</th>
											<th>이름</th>
											<th>부캐명</th>
											<th>주소</th>
											<th>연락처</th>
											<th>이메일</th>
										</tr>
									</thead>
									<tfoot>
										<tr>
											<th>아이디</th>
											<th>비밀번호</th>
											<th>이름</th>
											<th>부캐명</th>
											<th>주소</th>
											<th>연락처</th>
											<th>이메일</th>
										</tr>
									</tfoot>
								<tbody>
									<c:forEach items="${mList }" var="member">
										<tr>
											<td>${member.memberId }</td>
											<td>${member.memberPw }</td>
											<td>${member.memberName }</td>
											<td>${member.memberNick }</td>
											<td>${member.memberAddr }</td>
											<td>${member.memberPhone }</td>
											<td>${member.memberEmail }</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
					</div>
				</div>
			</div>
			</main>
			<footer class="py-4 bg-light mt-auto">
				<div class="container-fluid px-4">
					<div
						class="d-flex align-items-center justify-content-between small">
						<div class="text-muted">Copyright &copy; 2021 BUKKE</div>
						<div>
							<a href="#">이용약관<a> &middot; <a href="#">개인정보처리방침</a>
						</div>
					</div>
				</div>
			</footer>
		</div>
	</div>
	<script type="text/javascript">
	/* Set Progress | jQuery
	======================================*/
	/*
	$(document).ready(function(){
	  var max = 150.72259521484375;
	  $.each($('.progress'), function( index, value ){
	    percent = $(value).data('progress');
	    $(value).children($('.fill')).attr('style', 'stroke-dashoffset: ' + ((100 - percent) / 100) * max);
	    $(value).children($('.value')).text(percent + '%');
	  });
	});
	*/


	var forEach = function (array, callback, scope) {
	  for (var i = 0; i < array.length; i++) {
	    callback.call(scope, i, array[i]);
	  }
	};
	window.onload = function(){
	  var max = -219.99078369140625;
	  forEach(document.querySelectorAll('.progress'), function (index, value) {
	  percent = value.getAttribute('data-progress');
	    value.querySelector('.fill').setAttribute('style', 'stroke-dashoffset: ' + ((100 - percent) / 100) * max);
	    value.querySelector('.value').innerHTML = percent + '%';
	  });
	}



	/*

	Used to calc the variable 'max' 
	and set 'stroke-dasharray' and 
	'stroke-dashoffset' in the css
	   
	  
	    console.log(document.querySelector('.fill').getTotalLength());
	    
	*/
	</script>
	<!--  동그란 -->
		
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"></script>
	<script src="/resources/admin/js/scripts.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"></script>
	<script src="/resources/admin/assets/demo/chart-area-demo.js"></script>
	<script src="/resources/admin/assets/demo/chart-bar-demo.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest"></script>
	<script src="/resources/admin/js/datatables-simple-demo.js"></script>
</body>
</html>
