<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../common/header.jsp?active=bclass"></jsp:include>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bukke Class</title> 
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.0/css/all.css" integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt" crossorigin="anonymous">
<link rel="stylesheet" href="resources/css/bClass-custom/bClassListView.css">
<style>
.form-control-borderless {
    border: none;
}

.form-control-borderless:hover, .form-control-borderless:active, .form-control-borderless:focus {
    border: none;
    outline: none;
    box-shadow: none;
}
</style>
</head>
<body>
	<!-- fixed section -->
	<section class="hero-wrap hero-wrap-2"
		style="background-image: url('resources/resources/images/bg_1.jpg');"
		data-stellar-background-ratio="0.5">
		<div class="overlay"></div>
		<div class="container">
			<div
				class="row no-gutters slider-text align-items-center justify-content-center">
				<div class="col-md-9 ftco-animate text-center">
					<h1 class="mb-2 bread">RESERVATION</h1>
					<p class="breadcrumbs">
						<span class="mr-2"><a href="home.com">Home <i
								class="ion-ios-arrow-forward"></i></a></span> <span>Reservation <i
							class="ion-ios-arrow-forward"></i></span>
					</p>
				</div>
			</div>
		</div>
	</section>
	<!-- fixed section END-->
	
	<!-- ========================= 리스트 시작 =========================  -->
	
	<!-- ========================= 검색창 =========================  -->
	<div class="container ftco-animate">
			<br>
			<div class="row justify-content-center">
				<div class="col-md-4 heading-section ftco-animate">
					<span class="subheading subheading-with-line"><small
						class="pr-2 bg-light">Reservation</small></span>
					<h2 class="mb-4">SEARCH</h2>
				</div>
				
				<form class="col-md-8 card card-lg" action="#" method="get">
					<div class="card-body row no-gutters align-items-center">
						<div class="col-auto">
							<i class="fas fa-search h4 text-body"></i>
						</div>
						<!--end of col-->
						<div class="col">
							<input class="form-control form-control-lg form-control-borderless" type="search" name="classKeyword" value="${search.classKeyword }" placeholder="검색어를 입력해주세요">
						</div>
						<!--end of col-->
						<div class="col-auto">
							<button class="btn btn-lg btn-primary" type="submit">Search</button>
						</div>
						<!--end of col-->
					</div>
				</form>
			</div>
			<!--end of col-->
			<hr>
		</div>
		<!-- ========================= 클래스 정보란 =========================  -->
		<div class="container">

			<div class="row justify-content-start mb-5 pb-2">
				<div class="col-md-4 heading-section ftco-animate">
					<span class="subheading subheading-with-line"><small
						class="pr-2 bg-light">BUKKE</small></span>
					<h2 class="mb-4">RESERVATION</h2>
				</div>
				<div class="col-md-8 pl-md-5 heading-section ftco-animate">
					<div class="pl-md-4 border-line">
						<!-- <p>Far far away, behind the word mountains, far from the
							countries Vokalia and Consonantia, there live the blind texts.
							Separated they live in. A small river named Duden flows by their
							place and supplies it with the necessary regelialia. It is a
							paradisematic country, in which roasted parts of sentences fly
							into your mouth.</p> -->
					</div>
				</div>
			</div>
		</div>
		<!-- ========================= 클래스 정보란 END =========================  -->
		
		
		<!-- ========================= 클래스 탭  =========================  -->
		<div class="container">
			<table class="table table-bordered">
        <thead>
            <tr>
                <!-- 체크박스 빼도 됨 / 메뉴선택에 필요한 컬럼 넣거나 빼도 됨 -->
                <th><input type="checkbox"></th>
                <th>구분</th>
                <th>예약번호</th>
                <th>회원명</th>
                <th>클래스/액티비티명</th>
                <th>예약일</th>
                <th>메뉴선택</th>
                <th>메뉴선택</th>
                <th>승인여부</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td id="check_"><input type="checkbox"></td>
                <td class="classType" id="typeClass">클래스</td>
                <td id="reservationNo" name="reservationNo">1</td>
                <td id="reservationId" name="reservationId">user1</td>
                <td id="className" name="className">수공예 시간</td>
                <td id="reservationDate" name="reservationDate">21.05.31</td>
                <td id="example" id="example">(null)</td>
                <td id="example" id="example">(null)</td>
                <td>
                    <button id="confirm" onclick="confirm(reservationNo)" class="btn btn-primary">승인</button>
                    <button id="reject" onclick="reject(reservationNo)" class="btn btn-danger">거절</button>
                </td>
            </tr>
            <tr>
                <td id="check_"><input type="checkbox"></td>
                <td class="classType" id="typeActivity">액티비티</td>
                <td id="reservationNo" name="reservationNo">2</td>
                <td id="reservationId" name="reservationId">user1</td>
                <td id="activityName" name="activityName">초보를 위한 서핑강습</td>
                <td id="reservationDate" name="reservationDate">21.06.01</td>
                <td id="example" id="example">(null)</td>
                <td id="example" id="example">(null)</td>
                <td>
                    <button id="confirm" onclick="confirm(reservationNo)" class="btn btn-primary">승인</button>
                    <button id="reject" onclick="reject(reservationNo)" class="btn btn-danger">거절</button>
                </td>
            </tr>
        </tbody>
    </table>
		</div>
		
		<!-- 페이징 처리 -->
		<div class="container">
    	<div class="row no-gutters mt-5">	
          <div class="col text-center">
            <div class="block-27">
              <!-- 이전 --> 
              <ul>
	            <c:url var="before" value="bukkeClassList.com">
	               <c:param name="page" value="${pi.currentPage - 1 }"></c:param>
	            </c:url>
	            <c:if test="${pi.currentPage <= 1 }">
	               <li><a href="#" onclick="firstPage()">&lt;</a></li>
	            </c:if>
	            <c:if test="${pi.currentPage > 1 }">
	               <li><a href="${before }">&lt;</a></li>
	            </c:if>
	            <!-- 페이지 -->
                <c:forEach var="p" begin="${pi.startPage }" end="${pi.endPage }">
	               <c:url var="pagination" value="bukkeClassList.com">
	                  <c:param name="page" value="${p }"></c:param>
	               </c:url>
	               <c:if test="${p eq pi.currentPage }">
						<li class="active"><span>${p }</span></li>
					</c:if>
	               <c:if test="${p ne pi.currentPage }">
	                  <li><a href="${pagination }">${p }</a></li>
	               </c:if>
            	</c:forEach>
            	<!-- 다음 -->
	            <c:url var="after" value="bukkeClassList.com">
	               <c:param name="page" value="${pi.currentPage + 1 }"></c:param>
	            </c:url>
	            <c:if test="${pi.currentPage >= pi.maxPage }">
	               <li><a href="#" onclick="lastPage()">&gt;</a></li>
	            </c:if>
	            <c:if test="${pi.currentPage < pi.maxPage }">
	               <li><a href="${after }">&gt;</a></li>
	            </c:if>
              </ul>
            </div>
          </div>
        </div>
    	</div>
    </section>
</body>
</html>
<br><br>
<jsp:include page="../common/footer.jsp"></jsp:include>