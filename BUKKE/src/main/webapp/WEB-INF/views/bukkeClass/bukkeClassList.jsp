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

/* .project:hover:after, .project:focus:after {
	boder-radius : 30px;
} */

@import url('https://fonts.googleapis.com/css?family=Roboto');

.wrapper_tab{
  text-align:center;
  margin:50px auto;
}

.tabs{
  margin-top:50px;
  font-size:20px;
  padding:0px;
  width : 900px;
  height: 80px;
  list-style:none;
  background:#fff;
  box-shadow:0px 5px 20px rgba(0,0,0,0.1);
  display:inline-block;
  border-radius:50px;
  position:relative;
}

/* .selector {
	width : 150px;
} */

.tabs a{
  width :130px; 
  height : 80px;
  text-decoration:none;
  color: #777;
  text-transform:uppercase;
  padding:20px 20px;
  display:inline-block;
  position:relative;
  z-index:1;
  transition-duration:0.6s;
}

.tabs a.active{
  color:#fff;
}

.tabs a i{
  margin-right:20px;
}

.tabs ul li {
	display:  inline-block;
	float:left;
}

.tabs .selector{
  width :300px;
  height:100%;
  display:inline-block;
  position:absolute;
  left:0px;
  top:0px;
  z-index:1;
  border-radius:50px;
  transition-duration:0.6s;
  transition-timing-function: cubic-bezier(0.68, -0.55, 0.265, 1.55);
  background: #05abe0;
  background: -moz-linear-gradient(45deg, #05abe0 0%, #8200f4 100%);
  background: -webkit-linear-gradient(45deg, #05abe0 0%,#8200f4 100%);
  background: linear-gradient(45deg, #05abe0 0%,#8200f4 100%);
  filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#05abe0', endColorstr='#8200f4',GradientType=1 );
}
.banner {
		background-color: #ff5613;
	}
.banner * {
	color: white;
}
</style>
</head>
<body>
	<section class="banner hero-wrap hero-wrap-2">
		<div class="container">
			<div class="row no-gutters slider-text align-items-center justify-content-center">
				<div class="col-md-9 ftco-animate text-center">
					<h1 class="mb-2 bread">Class</h1>
					<p class="mr-2">원하는 취미들을 마음껏 즐겨보세요</p>
				</div>
			</div>
		</div>
	</section>	
	
	<!-- ========================= 리스트 시작 =========================  -->
	
	<!-- ========================= 검색창 =========================  -->
	<div class="container ftco-animate">
			<br>
			<div class="row justify-content-center">
				<div class="col-md-4 heading-section ftco-animate">
					<span class="subheading subheading-with-line"><small
						class="pr-2 bg-light">BUKKE</small></span>
					<h2 class="mb-4">SEARCH</h2>
				</div>
				
				<form class="col-md-8 card card-lg" action="bukkeClassSearch.com" method="get">
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
					<span class="subheading subheading-with-line">
					<small class="pr-2 bg-light">BUKKE</small></span>
					<h2 class="mb-4">CLASS</h2>
				</div>
				<div class="col-md-8 pl-md-5 heading-section ftco-animate">
					<div class="pl-md-4 border-line">
						<p>부캐의 클래스들을 한 눈에 볼 수 있어요 !</p>
					</div>
				</div>
			</div>
		</div>
		<!-- ========================= 클래스 정보란 END =========================  -->
		
		
		<!-- ========================= 클래스 탭  =========================  -->
		<div class="container">
			<div class="row">
				<div class="wrapper_tab">
				  <nav class="tabs">
				  <ul style="list-style:none;">
				    <div class="selector"></div>
				    <!-- ================= 부캐 클래스 전체 보기 ==================== -->
				    <li><a href="#" class="active"><i class="fas fa-border-all"></i>전체</a></li>
				    <li><a data-toggle="tab" href="#" aria-expanded="true"><i class="fas fa-leaf"></i>플라워</a></li>
				    <li><a href="#"><i class="fas fa-palette"></i>미술</a></li>
				    <li><a href="#"><i class="fas fa-air-freshener"></i>뷰티</a></li>
				    <li><a href="#"><i class="fas fa-music"></i>음악</a></li>
				    <li><a href="#"><i class="fas fa-camera"></i>사진</a></li>
				    </ul>
				  </nav>
				</div>
			</div>
		</div>
	<!-- ========================= 클래스 탭 END =========================  -->
		
		
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
		
		<!-- 글쓰기 버튼 -->
		<div style="float: right; padding-right : 350px;" class="ftco-animate">
			<a href="bukkeClassWriteForm.com"><button class="btn btn-lg btn-primary" type="submit">글쓰기</button></a>
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

<!-- 리스트 탭을 위한 js -->
<script>
var tabs = $('.tabs');
var selector = $('.tabs').find('a').length;
//var selector = $(".tabs").find(".selector");
var activeItem = tabs.find('.active');
var activeWidth = activeItem.innerWidth();
$(".selector").css({
  "left": activeItem.position.left + "px", 
  "width": activeWidth + "px"
});

$(".tabs").on("click","a",function(e){
  e.preventDefault();
  $('.tabs a').removeClass("active");
  $(this).addClass('active');
  var activeWidth = $(this).innerWidth();
  var itemPos = $(this).position();
  $(".selector").css({
    "left":itemPos.left + "px", 
    "width": activeWidth + "px"
  });
});
</script>
</html>
<br><br>
<jsp:include page="../common/footer.jsp"></jsp:include>