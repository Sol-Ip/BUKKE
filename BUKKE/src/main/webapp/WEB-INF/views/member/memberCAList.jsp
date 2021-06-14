<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <jsp:include page="../common/header.jsp"></jsp:include>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Class and Activity</title>

<!-- 사이드바 -->
<link rel="stylesheet" href="../resources/css/member/mypageSidebar.css">


<!-- 회원정보 -->
<link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
<link rel="stylesheet" href="../resources/css/member/mypage.css">
<link rel="stylesheet" href="../resources/css/mypage/tab.css"> 


</head>
<body>

<!-- fixed section -->
   <section class="hero-wrap hero-wrap-2"
      style="background-image: url('resources/images/bg_1.jpg');"
      data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
         <div class="row no-gutters slider-text align-items-center justify-content-center">
            <div class="col-md-9 ftco-animate text-center">
               <h1 class="mb-2 bread">OPEN MYPAGE</h1>
               <p class="breadcrumbs">
                  <span class="mr-2"><a href="home.com">Home <i class="ion-ios-arrow-forward"></i></a></span> 
                  <span>MyPage <i class="ion-ios-arrow-forward"></i></span><i class="ion-ios-arrow-forward"></i></a></span> 
                  <span>History <i class="ion-ios-arrow-forward"></i>
               </p>
            </div>
         </div>
      </div>
      
      <jsp:include page="../member/memberMySideBar.jsp"></jsp:include>
   </section>
   <!-- ======================= 사이드 바 끝 =============================== -->
	
	<section class="ftco-section">
      
      <!-- 예약 목록 탭 -->
      
     <section class="ftco-animate"> 
     <div class="container"> 
      <div class="tabset retable"> 
  
  <input type="radio" name="tabset" id="tab2" aria-controls="rauchbier" checked>
  <label for="tab2"><h3>액티비티</h3></label>
  
  <input type="radio" name="tabset" id="tab3" aria-controls="dunkles">
  <label for="tab3"><h3>클래스</h3></label>
  
 <div class="tab-panels"> 
     
		<!-- 액티비티만 불러오기 -->
    <section id="rauchbier" class="tab-panel">
    <table class="table table-hover" >
  <thead>
    <tr>
     
      <th scope="col">액티비티명</th>
      <th scope="col">분류</th>
      <th scope="col">상세분류</th>
      <th scope="col">개강일</th>
      <th scope="col">후기작성</th>
    </tr>
  </thead>
  <c:forEach items="${aList }" var="activity">
  <tbody> 
  
  	<c:if test="${activity.activityNo != 0  }">
    <tr>
      
      <td>${activity.activityName }</td>
      <td>${activity.activityType}</td>
      <td>${activity.activityTypeDetails }</td>
      <td>${activity.activityStartdate }</td>
      <td><c:url var="rWrite" value="reviewWriteView.com">
                     		<c:param name="activityNo" value="${activity.activityNo }"></c:param>
                     		<c:param name="classNo" value='0'></c:param>
                  		</c:url>
							<h3>
								<a href="${rWrite }" class="btn btn-sm btn-primary">글쓰기</a>
							</h3>
						</td>	
      <%-- <td><a href="reviewWriteView.com"><button class="btn btn-sm btn-primary" value="${activity.activityNo }" type="submit">글쓰기</button></a></td> --%>
    </tr>
    					
    </c:if>
  </tbody>
  </c:forEach>
</table>
<!-- 페이징 처리 -->
      <div class="container">
       <div class="row no-gutters mt-5">   
          <div class="col text-center">
            <div class="block-27">
              <!-- 이전 --> 
              <ul>
               <c:url var="before" value="memberCAList.com">
                  <c:param name="page" value="${actPi.currentPage - 1 }"></c:param>
               </c:url>
               <c:if test="${actPi.currentPage <= 1 }">
                  <li><a href="#" onclick="firstPage()">&lt;</a></li>
               </c:if>
               <c:if test="${actPi.currentPage > 1 }">
                  <li><a href="${before }">&lt;</a></li>
               </c:if>
               <!-- 페이지 -->
                <c:forEach var="p" begin="${actPi.startPage }" end="${actPi.endPage }">
                  <c:url var="pagination" value="memberCAList.com">
                     <c:param name="page" value="${p }"></c:param>
                  </c:url>
                  <c:if test="${p eq actPi.currentPage }">
                  <li class="active" style="background-color: #ffffff;"><span>${p }</span></li>
               </c:if>
                  <c:if test="${p ne actPi.currentPage }">
                     <li><a href="${pagination }">${p }</a></li>
                  </c:if>
               </c:forEach>
               <!-- 다음 -->
               <c:url var="after" value="memberCAList.com">
                  <c:param name="page" value="${actPi.currentPage + 1 }"></c:param>
               </c:url>
               <c:if test="${actPi.currentPage >= actPi.maxPage }">
                  <li><a href="#" onclick="lastPage()">&gt;</a></li>
               </c:if>
               <c:if test="${actPi.currentPage < actPi.maxPage }">
                  <li><a href="${after }">&gt;</a></li>
               </c:if>
              </ul>
            </div>
          </div>
        </div>
        </div>
       </section>
       
         <section id="dunkles" class="tab-panel">
   <table class="table table-hover" >
  <thead>
    <tr>
     
      <th scope="col">클래스명</th>
      <th scope="col">분류</th>
      <th scope="col">상세분류</th>
      <th scope="col">개강일</th>
       <th scope="col">후기작성</th>
    </tr>
  </thead>
  <c:forEach items="${bList }" var="bClass">
  <tbody> 
  
  	<c:if test="${bClass.classNo != 0  }">
    <tr>
      
      <td>${bClass.className }</td>
      <td>${bClass.classType}</td>
      <td>${bClass.classTypedetails }</td>
      <td>${bClass.classStartDate }</td>
      <td><c:url var="rWrite2" value="reviewWriteView.com">
                     		<c:param name="activityNo" value='0'></c:param>
                     		<c:param name="classNo" value="${bClass.classNo }"></c:param>
                  		</c:url>
							<h3>
								<a href="${rWrite2 }" class="btn btn-sm btn-primary">글쓰기</a>
							</h3>
						</td>	
    </tr>
    </c:if>
  </tbody>
  </c:forEach>
</table>
   
   
   
   <!-- 페이징 처리 -->
      <div class="container">
       <div class="row no-gutters mt-5">   
          <div class="col text-center">
            <div class="block-27">
              <!-- 이전 --> 
              <ul>
               <c:url var="before" value="memberCAList.com">
                  <c:param name="page" value="${classPi.currentPage - 1 }"></c:param>
               </c:url>
               <c:if test="${classPi.currentPage <= 1 }">
                  <li><a href="#" onclick="firstPage()">&lt;</a></li>
               </c:if>
               <c:if test="${classPi.currentPage > 1 }">
                  <li><a href="${before }">&lt;</a></li>
               </c:if>
               <!-- 페이지 -->
                <c:forEach var="p" begin="${classPi.startPage }" end="${classPi.endPage }">
                  <c:url var="pagination" value="memberCAList.com">
                     <c:param name="page" value="${p }"></c:param>
                  </c:url>
                  <c:if test="${p eq classPi.currentPage }">
                  <li class="active" style="background-color: #ffffff;"><span>${p }</span></li>
               </c:if>
                  <c:if test="${p ne classPi.currentPage }">
                     <li><a href="${pagination }">${p } </a></li>
                  </c:if>
               </c:forEach>
               <!-- 다음 -->
               <c:url var="after" value="memberCAList.com">
                  <c:param name="page" value="${classPi.currentPage + 1 }"></c:param>
               </c:url>
               <c:if test="${classPi.currentPage >= classPi.maxPage }">
                  <li><a href="#" onclick="lastPage()">&gt;</a></li>
               </c:if>
               <c:if test="${classPi.currentPage < classPi.maxPage }">
                  <li><a href="${after }">&gt;</a></li>
               </c:if>
              </ul>
            </div>
          </div>
        </div>
        </div>
       </section>
       </div>
       </div>
       </div>
  </section>  
   
   <%--  <section id="dunkles" class="tab-panel">
     
  
  
  
  
     
    
    </section> --%>
    <b></b>
     
 </div>
  </div> 
</div> 

</section>

<p>&nbsp;</p>
      <!-- 예약 목록 탭 끝 -->
     
      
     
      
      
    </section>
	
		<script src="../resources/js/member/mypageSidebar.js"></script>
<script src="https://unpkg.com/ionicons@5.2.3/dist/ionicons.js"></script>

</body>
</html>
<jsp:include page="../common/footer.jsp"></jsp:include>