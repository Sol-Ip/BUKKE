<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../common/header.jsp?active=gift"></jsp:include>
  <link rel="stylesheet" href="resources/css/gift/giftList.css">
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
</style>
<meta charset="UTF-8">
<title>추천하기</title>
</head>
<body>
	<div id="body12" style="height: 1000px;">
	<!-- fixed section -->
	<!-- fixed section END-->
	<div class="starwars-demo">
    <h2 class="byline" id="byline">당신을 위한 취미는</h2>


	<section class="container">
		<div class="container ftco-animate" align="center">
			
			
			
		<!-- 클래스 전체 수업 이미지 목록 -->
		<div class="container">
			<div class="row">		
			<!-- 클래스 -->
			</div>
		</div>
		</div>
	</section>
	  </div>
	  <div style="height: 450px;z-index: 10000;"></div>
	  <div style="height: 500px;z-index: 10000">
	  <div class="container">
			<div class="row">		
			<!-- 클래스 -->
			<c:if test="${!bList.isEmpty()}">
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
			</c:if>
			<!-- 여긴 액티비티 -->
			<c:forEach items="${aList }" var="activity">
				<div class="col-md-6 col-lg-3 ftco-animate">
					<div class="project">
						<img src="resources/images/activityImageFiles/${activity.aRenameFilename }" id="class-img" class="img-fluid"
							alt="Colorlib Template">
						<div class="text">
						<span style="font-family: 'TmoneyRoundWindExtraBold';" >[ ${activity.activityType} ]</span>
						<c:url var="aDetail" value="activityListView.com">
                     		<c:param name="activityNo" value="${activity.activityNo }"></c:param>
                  		</c:url>
							<h3 style="font-family: 'TmoneyRoundWindExtraBold';">
								<a href="${aDetail }">${activity.activityName }</a>
							</h3>
						</div>
						<a href="${aDetail }"
							class="icon image-popup d-flex justify-content-center align-items-center">
							<span class="icon-expand"></span>
						</a>
					</div>
				</div>
			</c:forEach>
			</div>
		</div></div>
	    </div>
	<script type="text/javascript">

	var byline = document.getElementById('byline');  	// Find the H2
	bylineText = byline.innerHTML;										// Get the content of the H2
	bylineArr = bylineText.split('');									// Split content into array
	byline.innerHTML = '';														// Empty current content

	var span;					// Create variables to create elements
	var letter;

	for(i=0;i<bylineArr.length;i++){									// Loop for every letter
	  span = document.createElement("span");					// Create a <span> element
	  letter = document.createTextNode(bylineArr[i]);	// Create the letter
	  if(bylineArr[i] == ' ') {												// If the letter is a space...
	    byline.appendChild(letter);					// ...Add the space without a span
	  } else {
			span.appendChild(letter);						// Add the letter to the span
	  	byline.appendChild(span); 					// Add the span to the h2
	  }
	}

	</script>
</body>
</html>
<jsp:include page="../common/footer.jsp"></jsp:include>