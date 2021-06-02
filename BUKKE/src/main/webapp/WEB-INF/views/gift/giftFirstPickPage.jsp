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
								class="ion-ios-arrow-forward"></i></a></span> <span>Gift <i
							class="ion-ios-arrow-forward"></i></span>
					</p>
				</div>
			</div>
		</div>
	</section>
	<!-- fixed section END-->
	<section class="container">
		<div class="container ftco-animate" align="center">
			<br>
			<br>
			<br>
			<h1>선물을 고민하고 계신가요?</h1>
			<h1>알맞은 선물을 추천해드려요</h1>
			<br>
			<br>
			<h2>클릭 몇번으로 선물을 추천드려요</h2>
			<h2>버튼을 누르시면 해당 영역으로 이동합니다</h2>
			<br>
			<br>
			<div align="center">
				<c:url var="bukkeClass" value="giftBukkeClass.com">
					
				</c:url>
				<!-- renameFilename 은 실제 저장된 파일 이름  -->
				<c:url var="activity" value="giftActivity.com">
					
				</c:url>
				<a href="${bukkeClass }"><input class="btn btn-lg btn-danger" type="submit" value="클래스"></a> 
				<a href="${activity }"><input class="btn btn-lg btn-primary r" type="submit" value="액티비티"></a>
			</div>
			<br>
			<br>
			<br>
			<br>

		</div>
	</section>
</body>
</html>
<jsp:include page="../common/footer.jsp"></jsp:include>