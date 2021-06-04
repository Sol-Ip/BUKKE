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
			<h1>꽃에 관심이 있으시군요</h1>
			<h2>관심있는 장르가 있으신가요?</h2>
			<br>
			<br>
			<div align="center">

				
				
						<c:url var="flower" value="giftList.com">
							<c:param name="classType" value="플라워"></c:param>
                     		<c:param name="classTypedetails" value="가드닝"></c:param>
                  		</c:url>
							<h3>
								<a href="${flower }"><input class="btn btn-lg btn-primary" type="submit" value="가드닝"></a>&nbsp;
							</h3>
						<c:url var="flower2" value="giftList.com">
							<c:param name="classType" value="플라워"></c:param>
                     		<c:param name="classTypedetails" value="꽃 바구니"></c:param>
                  		</c:url>
							<h3>
								<a href="${flower2 }"><input class="btn btn-lg btn-primary" type="submit" value="꽃 바구니"></a>&nbsp;
							</h3>	
						<c:url var="flower3" value="giftList.com">
							<c:param name="classType" value="플라워"></c:param>
                     		<c:param name="classTypedetails" value="꽃다발 및 부케"></c:param>
                  		</c:url>
							<h3>
								<a href="${flower3 }"><input class="btn btn-lg btn-primary" type="submit" value="꽃다발 및 부케"></a>&nbsp;
							</h3>
						<c:url var="flower4" value="giftList.com">
							<c:param name="classType" value="플라워"></c:param>
                     		<c:param name="classTypedetails" value="플라워리스, 테이블리스"></c:param>
                  		</c:url>
							<h3>
								<a href="${flower4 }"><input class="btn btn-lg btn-primary" type="submit" value="플라워리스, 테이블리스"></a>&nbsp;
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