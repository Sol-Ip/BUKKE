<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>

<title>리뷰 관리</title>
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
					<h1 class="mt-4">댓글 관리</h1>
					<ol class="breadcrumb mb-4">
						<li class="breadcrumb-item active">Comment Management</li>
					</ol>
					<div class="card mb-4">
						<div class="card-header">
							<i class="fas fa-table me-1"></i> DataTable Example
						</div>
						<div class="card-body">
							<table  id="datatablesSimple">
								<thead>
									<tr>
										<th scope="col"><input type="checkbox" name="commentBtn"
											id="cb1"></th>
										<th>No</th>
										<th>회원 아이디</th>
										<th>내용</th>
										<th>날짜</th>
									</tr>
								</thead>
								<tfoot>
									<tr>
										<th scope="col"><input type="checkbox" name="commentBtn"
											id="cb1"></th>
										<th>No</th>
										<th>회원 아이디</th>
										<th>내용</th>
										<th>날짜</th>
									</tr>
								</tfoot>
								<tbody>
									
									<c:forEach items="${rcList }" var="comment" varStatus="status">
										<tr id="${comment.commentNo }">
											<th scope="row"><input type="checkbox" name="chkbox" value="${comment.commentNo }/${comment.reviewNo}" checknum="${status.index }"></td>
											<td>${comment.commentNo }</td>
											<td>${comment.memberId }</td>
											<td>${comment.commentContents }</td>
											<td>${comment.commentDate }</td>
											<%-- <td id="sStatus">${shop.shopApproval}</td> --%>
										</tr>
									</c:forEach>
								</tbody>
							</table>
							<!-- 삭제 버튼 -->
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
			               'commentNo' : data[0],
			               'reviewNo' : data[1]
				};
				checkedList.push(arr);
				var index = $(item).attr("checknum");
			})
			var  del_check = confirm(checkedList.length + "개의 항목을 정말 삭제하시겠습니까?");
			$.each(checkedList,function(index, item){
				$.ajax({
			         type:"GET",
			         url:"commentAdminDelete.com",
			         data : item,
			         async : false, //ajax를 동기식으로 처리함. ajax가 완료되기 전 페이지를 리로드하는 것을 방지.
			         dataType : "json"
				});
		});
			//location.href = 'adminCommentManage.com';
			location.reload();
	})
	</script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"></script>
	<script src="/resources/admin/js/scripts.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest"></script>
	<script src="/resources/admin/js/datatables-simple-demo.js"></script>
	
	
	
</body>
</html>
