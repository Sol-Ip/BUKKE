<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../common/header.jsp?active=gift"></jsp:include>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>선물하기</title>
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
					<h1 class="mb-2 bread">Gift</h1>
					<p class="breadcrumbs">
						<span class="mr-2"><a href="index.html">Home <i
								class="ion-ios-arrow-forward"></i></a></span> <span>Gift-Class <i
							class="ion-ios-arrow-forward"></i></span>
					</p>
				</div>
			</div>
		</div>
	</section>
	<!-- fixed section END-->
	<section class="container">
		<div class="container ftco-animate" align="center">
			
			
			
		<!-- 클래스 전체 수업 이미지 목록 -->
		<div class="container">
			<div class="row">
			<c:forEach items="${bList }" var="bukkeClass">
				<div class="col-md-6 col-lg-3 ftco-animate">
					<div class="project">
						<img src="../resources/bClassFiles/${bukkeClass.cRenameFilename }" id="class-img" class="img-fluid"
							alt="Colorlib Template">
						<div class="text">
						<span style="font-family: 'TmoneyRoundWindExtraBold';" >[ ${bukkeClass.classType} ]</span>
						<c:url var="cDetail" value="bukkeClassDetailView.com">
                     		<c:param name="classNo" value="${bukkeClass.classNo }"></c:param>
                  		</c:url>
							<h3 style="font-family: 'TmoneyRoundWindExtraBold';">
								<a href="${cDetail }">${bukkeClass.className }</a>
							</h3>
						</div>
						<a href="${cDetail }"
							class="icon image-popup d-flex justify-content-center align-items-center">
							<span class="icon-expand"></span>
						</a>
					</div>
				</div>
			</c:forEach>
			</div>
		</div>
		<br>
		
			
			
		</div>
	</section>
</body>
</html>
<jsp:include page="../common/footer.jsp"></jsp:include>