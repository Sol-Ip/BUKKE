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
			<h1>어떤 클래스를 원하시나요?</h1>
			
			<br>
			<br>
			<div align="center">
<%-- 
				<c:url var="flower" value="">
				</c:url>
				<c:url var="art" value="">
				</c:url>
				<c:url var="handicraft" value="">
				</c:url>

				<c:url var="beauty" value="">
				</c:url>
				<c:url var="music" value="">
				</c:url>
				<c:url var="cook" value="">
				</c:url>

				<div>
					<a href="${flower }"><input class="btn btn-lg btn-primary" type="submit" value="플라워"></a> &nbsp;
					<a href="${art }"><input class="btn btn-lg btn-secondary" type="submit" value="미술"></a>&nbsp;
					<a href="${cook }"><input class="btn btn-lg btn-info" type="submit" value="요리"></a>
				</div>
				<br>
				<div>
					<a href="${handicraft }"><input class="btn btn-lg btn-success" type="submit" value="수공예"></a> &nbsp;
					<a href="${beauty }"><input class="btn btn-lg btn-danger" type="submit" value="뷰티"></a> &nbsp;
					<a href="${music }"><input class="btn btn-lg btn-warning" type="submit" value="음악"></a>
				</div>
					 --%>
						<c:url var="flower" value="giftType.com">
                     		<c:param name="classType" value="플라워"></c:param>
                  		</c:url>
							<h3>
								<a href="${flower }"><input class="btn btn-lg btn-primary" type="submit" value="플라워"></a>&nbsp;
							</h3>
						<c:url var="art" value="giftType.com">
                     		<c:param name="classType" value="미술"></c:param>
                  		</c:url>
							<h3>
								<a href="${art }"><input class="btn btn-lg btn-primary" type="submit" value="미술"></a>&nbsp;
							</h3>
						<c:url var="beauty" value="giftType.com">
                     		<c:param name="classType" value="뷰티"></c:param>
                  		</c:url>
							<h3>
								<a href="${beauty }"><input class="btn btn-lg btn-primary" type="submit" value="뷰티"></a>&nbsp;
							</h3>
						<c:url var="music" value="giftType.com">
                     		<c:param name="classType" value="음악"></c:param>
                  		</c:url>
							<h3>
								<a href="${music }"><input class="btn btn-lg btn-primary" type="submit" value="음악"></a>&nbsp;
							</h3>
						<c:url var="photo" value="giftType.com">
                     		<c:param name="classType" value="사진"></c:param>
                  		</c:url>
							<h3>
								<a href="${photo }"><input class="btn btn-lg btn-primary" type="submit" value="사진"></a>&nbsp;
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