<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!-- 아이콘 -->
<link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>

<title>관리자 - 액티비티관리</title>
<link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
<link href="/resources/admin/css/styles.css" rel="stylesheet" />

<!--jQuery O-->
<script src="https://code.jquery.com/jquery-latest.min.js"></script>


<link
	href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900"
	rel="stylesheet">
	

<!-- 부트스트랩O -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
	crossorigin="anonymous">


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
					<h1 class="mt-4">액티비티관리</h1>
					<ol class="breadcrumb mb-4">
						<li class="breadcrumb-item active">Activity Management</li>
					</ol>
					<div class="card mb-4">
						<div class="card-header">
							<!-- <i class="fas fa-table me-1"></i> DataTable Example -->
						</div>
						<div class="card-body">
							<table  id="datatablesSimple">
								<thead>
									<tr>
										<th scope="col">　</th>
										<th>no</th>
										<th>업체명</th>
										<th>액티비티명</th>
										<th>주소</th>
										<th>분류</th>
										<th>가격</th>
										<th>시간</th>
										<th>인원</th>
										<th>등록</th>
									</tr>
								</thead>
								<tfoot>
									<tr>
										<th scope="col">　</th>
										<th>no</th>
										<th>업체명</th>
										<th>액티비티명</th>
										<th>주소</th>
										<th>분류</th>
										<th>가격</th>
										<th>시간</th>
										<th>인원</th>
										<th>등록</th>
									</tr>
								</tfoot>
								<tbody>
									<c:forEach items="${aList }" var="activity" varStatus="status">
										<tr id="id${activity.activityNo }">
											<th scope="row"><input type="checkbox" name="chkbox" value="${activity.activityNo}/${activity.aRenameFilename }" checknum="${status.index }"></th>
											<td>${activity.activityNo }</td>
											<td>${activity.shopId }</td>
											<td>${activity.activityName }</td>
											<td>${activity.activityAddr }</td>
											<td>${activity.activityType }<i class="ion-ios-arrow-forward">${activity.activityTypeDetails }</td>
											<td>${activity.activityPrice }&#8361</td>
											<td>${activity.activityStartdate }&#126<br>${activity.activityEnddate }</td>
											<td>${activity.activityCapacity }</td>
											<td>${activity.activityStatus}</td>	
										</tr>
									</c:forEach>
								</tbody>
							</table>
							<!-- 승인 거절 버튼 -->
							<div style="float: right;">
								<button type="button" id="check" class="btn btn-danger mt-2">삭제</button>
							</div>
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
							<a href="#">이용약관<a> &middot;
							<a href="#">개인정보처리방침</a>
						</div>
					</div>
				</div>
			</footer>
		</div>
	</div>
	<script>
	$('#check').click(function() {
		var checkedList = [];
		$("input[name=chkbox]:checked").each(function(index, item) {
			var data = $(this).val().split('/');
			var arr = {
		               'activityNo' : data[0],
		               'aRenameFilename' : data[1]
			};
			checkedList.push(arr);
			var index = $(item).attr("checknum");
		})
			var  del_check = confirm(checkedList.length + "개의 항목을 정말 삭제하시겠습니까?");
			$.each(checkedList,function(index, item){
				$.ajax({
			         type:"GET",
			         url:"adminActivityDelete.com",
			         data : item,
			         async : false, //ajax를 동기식으로 처리함. ajax가 완료되기 전 페이지를 리로드하는 것을 방지.
			         dataType : "json"
				});
			});
			location.href = 'adminActivityManage.com';
	})
	</script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"></script>
	<script src="/resources/admin/js/scripts.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest"></script>
	<script src="/resources/admin/js/datatables-simple-demo.js"></script>
	
	
	
</body>
</html>
