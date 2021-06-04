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
			
			
			
			<br>
			<br>
			<br>
			<h1>사진에 관심이 있으시군요</h1>
			<h2>관심있는 장르가 있으신가요?</h2>
			<br>
			<br>
			<div align="center">

				
				
						<c:url var="photo" value="giftList.com">
							<c:param name="classType" value="사진"></c:param>
                     		<c:param name="classTypedetails" value="사진"></c:param>
                  		</c:url>
							<h3>
								<a href="${photo }"><input class="btn btn-lg btn-primary" type="submit" value="사진"></a>&nbsp;
							</h3>
						<c:url var="photo2" value="giftList.com">
							<c:param name="classType" value="사진"></c:param>
                     		<c:param name="classTypedetails" value="영상제작"></c:param>
                  		</c:url>
							<h3>
								<a href="${photo2 }"><input class="btn btn-lg btn-primary" type="submit" value="영상제작"></a>&nbsp;
							</h3>	
						
						<c:url var="photo3" value="giftList.com">
							<c:param name="classType" value="사진"></c:param>
                     		<c:param name="classTypedetails" value="포토샵"></c:param>
                  		</c:url>
							<h3>
								<a href="${photo3 }"><input class="btn btn-lg btn-primary" type="submit" value="포토샵"></a>&nbsp;
							</h3>
													
			
			<br>
			<br>
			<br>
			<br>
			
			
		</div>
	</section>
</body>
</html>
<jsp:include page="../common/footer.jsp"></jsp:include>