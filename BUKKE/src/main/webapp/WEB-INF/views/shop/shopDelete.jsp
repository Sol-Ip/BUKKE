<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>회원탈퇴</title>
<jsp:include page="../common/header.jsp"></jsp:include>
<link rel="stylesheet" href="../resources/css/member/mypageSidebar.css">
<!-- 일반회원 정보 수정 -->
<style>

   .title {
   	font-family: 'Poppins', Arial, sans-serif;
   	font-size: 30px;
   	font-weight: 900;
   	cursor: Pointer;
   }


nav>* {
	width: 100%;
}
@media(max-width: 650px) {
	.l-navbar {
		display: none;
	}
}
input[type="checkbox"] {
	font-size: 1em;
    width: 1.25em; /* 너비 설정 */
    height: 1.25em; /* 높이 설정 */
    vertical-align: middle;
}
/* .notice {
	color: black;
	font-weight: bold;
}
.notice-info {
	border: 1px solid #ccc;
	width: 600px;
	display: inline-block;
	margin-bottom: 40px;
}
.notice-info ul {
	margin:4px 0;
} */
.shop-wrapper {
	height: 690px;
}

.hero-wrap {
	padding: 60px 0;
}
</style>
</head>
<body>

   <!-- fixed section -->
   <section class="hero-wrap hero-wrap-2"
       style="background-color: yellow;"
      data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
         <div class="row no-gutters slider-text align-items-center justify-content-center" style="height:240px;">
            <div class="col-md-9 ftco-animate text-center">
               <h1 class="mt-2 mb-2 bread">MY PAGE</h1>
               <p class="breadcrumbs">
                  <span class="mr-2"><a href="shopMyPage.com">MY INFORMATION</a></span> 
               </p>
            </div>
         </div>
      </div>
      
      <!-- ======================= 사이드 바 시작 =============================== -->
        <div class="l-navbar" id="navbar" style="height : 800px;">
        <nav class="nav">
            <div>
                <div class="nav__brand">
                    <ion-icon name="menu-outline" class="nav__toggle" id="nav-toggle"></ion-icon>
                    <a href="#" class="nav__logo">BUKKE</a>
                </div>
                <div class="nav__list">
                    <div href="#" class="nav__link collapse1">
                        <ion-icon name="people-outline" class="nav__icon"></ion-icon>
                        <span class="nav_name">내 정보</span>

                        <ion-icon name="chevron-down-outline" class="collapse__link"></ion-icon>

                        <ul class="collapse__menu">
                            <a href="#" class="collapse__sublink">정보 수정</a>
                        </ul>
                    </div>
                    
                    <div href="#" class="nav__link collapse1">
                        <ion-icon name="calendar-outline" class="nav__icon"></ion-icon>
                        <span class="nav_name">내 일정</span>

                        <ion-icon name="chevron-down-outline" class="collapse__link"></ion-icon>

                        <ul class="collapse__menu">
                            <a href="reservationList.com" class="collapse__sublink">수업 목록</a>
                            <a href="shopSchedule.com" class="collapse__sublink">수업 일정</a>
                        </ul>
                    </div>

                    <div href="#" class="nav__link collapse1">
                        <ion-icon name="bicycle-outline" class="nav__icon"></ion-icon>
                        <span class="nav_name">내 활동</span>

                        <ion-icon name="chevron-down-outline" class="collapse__link"></ion-icon>

                        <ul class="collapse__menu">
                            <a href="shopActivityList.com" class="collapse__sublink">등록한 액티비티</a>
                            <a href="shopClassList.com" class="collapse__sublink">등록한 클래스</a>
                        </ul>
                    </div>
                    
                    
                    <div href="#" class="nav__link collapse1">
                        <ion-icon name="chatbubbles-outline" class="nav__icon"></ion-icon>
                        <span class="nav_name">채팅</span>

                        <ion-icon name="chevron-down-outline" class="collapse__link"></ion-icon>
						
						
						
                        <ul class="collapse__menu">
                        	<c:url var="chatRoomForShop" value="chatRoomForShop.com">
							<c:param name="roomList" value="${roomList }"></c:param>
							</c:url>
                            <a href="${chatRoomForShop }" class="collapse__sublink">채팅 목록</a>
                        </ul>
                    </div>

                    <div href="#" class="nav__link collapse1">
                        <ion-icon name="alarm-outline" class="nav__icon"></ion-icon>
                        <span class="nav_name">예약 관리</span>

                        <ion-icon name="chevron-down-outline" class="collapse__link"></ion-icon>

                        <ul class="collapse__menu">
                            <a href="reservationList.com" class="collapse__sublink">예약 목록</a>
                        </ul>
                    </div>
                </div>
                
                <div href="#" class="nav__link collapse1">
                        <ion-icon name="close-circle-outline" class="nav__icon"></ion-icon>
                        <span class="nav_name">업체 탈퇴</span>

                        <ion-icon name="chevron-down-outline" class="collapse__link"></ion-icon>

                        <ul class="collapse__menu">
                            <a href="#" class="collapse__sublink">탈퇴 신청</a>
                        </ul>
                    </div>
                
                <a href="#" class="nav__link">
                    <ion-icon name="log-out-outline" class="nav__icon"></ion-icon>
                    <span class="nav_name">Log out</span>
                </a>
            </div>
        </nav>
    </div>
   </section>
   <br><br>
   <!-- ======================= 사이드 바 끝 =============================== -->
	<section class="shop-wrapper">
	<div class="container shop-container">
	<div class="text-left">
				<h3 class="mt-2 mb-2">회원탈퇴</h3>
	</div>
	<div class="text-center">
	<svg width="200px" height="200px" viewBox="0 0 200 200" aria-labelledby="svg-title svg-desc">
	<style>
      @keyframes float { 
        from { transform: translate(0, 0px); }
        to   { transform: translate(0, 8px); } 
      }
      @keyframes float-arm { 
        from { transform: translate(-1px, 0px); }
        to   { transform: translate(1px, 4px); } 
      }
      #ghost-body { animation: float 2s linear alternate infinite; }
      .ghost-arm { animation: float-arm 3s linear alternate infinite; }
      .pupil, #mouth, .ghost-arm { transition: all 0.25s; }
    </style>
     <g id="ghost-body" fill="white" fill="#fff" stroke="#999" stroke-width="3" stroke-linejoin="round">
      <path d="M 54,181 C 44,131 13,11 99,11 185,12 164,110 150,182 146,195 139,185 137,177 134,170 126,169 124,179 120,192 114,190 109,179 105,167 98,166 94,179 92,185 85,193 79,179 74,170 68,168 66,179 62,193 56,191 54,181 Z" />
      <path id="eye-right" class="eye" fill="#ffffee" d="M 69,71 C 69,64 73,54 84,55 96,56 100,62 100,70 100,79 89,83 84,83 78,83 69,80 69,71 Z" />
      <path id="eye-left" class="eye" fill="#ffffee" d="M 105,73 C 104,66 108,57 120,57 130,57 134,65 134,71 134,80 125,85 119,85 114,85 105,82 105,73 Z" />
      <circle id="pupil-right" class="pupil" cx="84" cy="69" r="3" fill="rgba(0,0,0,0.25)" />
      <circle id="pupil-left" class="pupil" cx="120" cy="71" r="3" fill="rgba(0,0,0,0.25)" />
      <path id="mouth" d="M 75,115 C 79,120 91,126 101,125 110,125 126,118 127,114 125,117 117,125 101,125 85,126 79,117 75,115 Z" fill="#aa4040" stroke="#600" />
      <path id="ghost-arm-right" class="ghost-arm" d="M 45,89 C 25,92 9,108 11,124 13,141 27,115 48,119" />
      <path id="ghost-arm-left" class="ghost-arm" d="M 155,88 C 191,90 194,114 192,125 191,137 172,109 155,116" data-hover="M 155,88 C 145,68 105,51 103,62 102,74 123,117 155,116" style="animation-delay:-1s" />
    </g>
 	</svg>
 	<p>정말 부캐를 탈퇴하시겠어요?</p>
 	<div class="notice">탈퇴 시 유의사항</div>
 	<div class="notice-info">
 		<ul>
 			<li>회원탈퇴 후 30일 이내 회원정보가 삭제됩니다.</li>
 			<li>단, 등록하신 클래스나 액티비티, 채팅방 정보는<br>
 			자동으로 삭제되지 않을 수 있습니다</li>
 			<li>동일한 아이디로 재가입이 불가능합니다.</li>
 		</ul>
 	</div>
 	<div>비밀번호를 입력해주세요<br><input id="pw_check" type="password"></div>
 	<button type="button" id="withdraw" class="btn btn-danger mt-2 mb-2">회원탈퇴</button>
 	</div>
		</div>
	</section>
</body>

<!-- 마이페이지 사이드바 -->
<script src="../resources/js/member/mypageSidebar.js"></script>
<script type="module"
	src="https://unpkg.com/ionicons@5.2.3/dist/ionicons/ionicons.esm.js"></script>
</html>
<script>
	$("#withdraw").click(function(){
		
		var pw = "${loginShopper.shopPw}";
		if($("#pw_check").val() == pw) {
			location.href="shopDelete.com";
		} else {
			alert("본인확인을 위해 올바른 비밀번호를 입력해주세요.");
		}
	})
</script>
<jsp:include page="../common/footer.jsp"></jsp:include>
