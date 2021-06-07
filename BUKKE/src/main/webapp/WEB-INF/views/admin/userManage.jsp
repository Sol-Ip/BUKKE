<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>관리자 - 일반회원관리</title>
<link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
<link href="/resources/admin/css/styles.css" rel="stylesheet" />
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js"></script>
<link
	href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900"
	rel="stylesheet">
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
				<h1 class="mt-4">일반회원관리</h1>
				<ol class="breadcrumb mb-4">
					<li class="breadcrumb-item active">User Management</li>
				</ol>
				<div class="card mb-4">
					<div class="card-header">
						<i class="fas fa-table me-1"></i> DataTable Example
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
							<a href="#">이용약관<a> &middot;
							<a href="#">개인정보처리방침</a>
						</div>
					</div>
				</div>
			</footer>
		</div>
	</div>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"></script>
	<script src="/resources/admin/js/scripts.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest"></script>
	<script src="/resources/admin/js/datatables-simple-demo.js"></script>
</body>
</html>
