<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="nav">
	<div class="sb-sidenav-menu-heading">Core</div>
	<a class="nav-link" href="adminPage.com">
		<div class="sb-nav-link-icon">
			<i class="fas fa-tachometer-alt"></i>
		</div> 대시보드
	</a>
	<div class="sb-sidenav-menu-heading">Management</div>
	<a class="nav-link collapsed" href="#" data-bs-toggle="collapse"
		data-bs-target="#collapseLayouts" aria-expanded="false"
		aria-controls="collapseLayouts">
		<div class="sb-nav-link-icon">
			<i class="fas fa-user fa-fw"></i>
		</div> 회원관리
		<div class="sb-sidenav-collapse-arrow">
			<i class="fas fa-angle-down"></i>
		</div>
	</a>
	<div class="collapse" id="collapseLayouts" aria-labelledby="headingOne"
		data-bs-parent="#sidenavAccordion">
		<nav class="sb-sidenav-menu-nested nav">
			<a class="nav-link" href="adminUserManage.com">일반회원관리</a>
			<a class="nav-link" href="adminShopManage.com">업체회원관리</a>
		</nav>
	</div>
	<a class="nav-link collapsed" href="#" data-bs-toggle="collapse"
		data-bs-target="#collapsePages" aria-expanded="false"
		aria-controls="collapsePages">
		<div class="sb-nav-link-icon">
			<i class="fas fa-snowboarding"></i>
		</div> 수업관리
		<div class="sb-sidenav-collapse-arrow">
			<i class="fas fa-angle-down"></i>
		</div>
	</a>
	<div class="collapse" id="collapsePages" aria-labelledby="headingTwo"
		data-bs-parent="#sidenavAccordion">
		<nav class="sb-sidenav-menu-nested nav">
			<a class="nav-link" href="adminbClassManage.com">클래스관리</a>
			<a class="nav-link" href="adminActivityManage.com">액티비티관리</a>
		</nav>
	</div>
	<a class="nav-link" href="noticeList.com">
		<div class="sb-nav-link-icon">
			<i class="fas fa-bullhorn"></i>
		</div> 공지사항
	</a>
	<div class="sb-sidenav-menu-heading">logout</div>
	<a class="nav-link" href="memberLogout.com">
		<div class="sb-nav-link-icon">
			<i class="fas fa-sign-out-alt"></i>
		</div> 로그아웃
	</a>
</div>