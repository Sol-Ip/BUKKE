<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>회원정보 수정</title>
<jsp:include page="../common/header.jsp"></jsp:include>
<link rel="stylesheet" href="../resources/css/member/mypageSidebar.css">
<!-- 카카오회원 정보 수정(아이디/패스워드 빠짐) -->
<style>
	.member-container {
		margin-bottom: 50px;
	}
    @media (min-width: 650px) {
        .member-container {
            width: 650px;
        }
    }
   .invalid-check {
   	margin-top: 3px;
   	padding: 1px;
   	display: none;
       color: #f00;
   }
   .invalid-email {
	   	display: block;
   		color: #666;
   }
   .invalid-name {
   		display: block;
   		color: #666;
   }
   .title {
   	font-family: 'Poppins', Arial, sans-serif;
   	font-size: 30px;
   	font-weight: 900;
   	cursor: Pointer;
   }
   .signUp {
   	padding: 6px 24px;
   	margin-bottom: 13px;
   }
/* .banner {
	background: linear-gradient(270deg, rgba(41, 206, 140, 1) 0%,
		rgba(40, 189, 168, 1) 100%);
}

.banner * {
	color: white;
} */

nav>* {
	width: 100%;
}
.member-wrapper {
	display: block;
}
@media(max-width: 650px) {
	.l-navbar {
		display: none;
	}
}
input:read-only {
	color: #ccc !important;
}
</style>
</head>
<body>
	<!-- fixed section -->
	<section class="banner hero-wrap hero-wrap-2" style="background-image: url('resources/images/mypageuser_1.jpg'); background-position:50% 80%;"
		data-stellar-background-ratio="0.5">
		<div class="overlay"></div>
		<div class="container">
			<div
				class="row no-gutters slider-text align-items-center justify-content-center">
				<div class="col-md-9 ftco-animate text-center">
					<h1 class="mb-2 bread">MY INFORMATION</h1>
					<p class="breadcrumbs">
						<span class="mr-2"><a href="memberMyPage.com">MY INFORMATION</a></span>
					</p>
				</div>
			</div>
		</div>
		<jsp:include page="../member/memberMySideBar.jsp"></jsp:include>
	</section>
	 <!-- fixed section END-->
	
	<section class="member-wrapper">
		<div class="container member-container">
			<div class="text-left">
				<h3 class="mt-4 mb-2">회원정보수정</h3>
			</div>
			<form action="modifyKakaoUser.com" id="modifyform" method="post">
				<hr>
				<div class="form-group">
					<label for="memberEmail">카카오이메일 ID</label> <input type="text"
						class="form-control" id="memberEmail" name="memberEmail"
						value="${loginMember.memberEmail}" readonly>
				</div>
				<div class="invalid-email invalid-check">카카오 ID와 연동된 내용은 바꿀 수 없습니다.</div>
				<hr>
				<div class="form-group">
					<label for="memberName">이름</label> <input type="text"
						class="form-control" id="memberName" name="memberName"
						value="${loginMember.memberName}" readonly>
					<div class="invalid-name invalid-check">카카오 ID와 연동된 내용은 바꿀 수 없습니다.</div>
				</div>
				<div class="form-group">
					<label for="memberNick">부캐명</label> <input type="text"
						class="form-control" id="memberNick" name="memberNick"
						value="${loginMember.memberNick}">
					<div class="invalid-nick invalid-check">필수 정보입니다.</div>
				</div>
				<hr>
				<div class="form-group">
					<label for="memberAddr1">도로명주소
						<button type="button" class="btn btn-default btn-sm"
							id="postSearch">주소찾기</button>
					</label> <input type="text" class="form-control postcodify_address"
						id="memberAddr1" name="memberAddr1" readonly>
					<div class="invalid-addr invalid-check">필수 정보입니다.</div>
				</div>
				<div class="form-group">
					<label for="memberAddr2">상세주소</label> <input type="text"
						class="form-control" id="memberAddr2" name="memberAddr2">
				</div>
				<hr>
				<div class="form-group">
					<label for="memberPhone">전화번호</label> <input type="text"
						class="form-control" id="memberPhone" name="memberPhone"
						value="${loginMember.memberPhone}">
					<div class="invalid-phone invalid-check">필수 정보입니다.</div>
				</div>
				
				<div class="text-center">
					<button type="button" id="form-submit" class="btn btn-dark signUp">가입하기</button>
				</div>
			</form>
		</div>
	</section>
</body>

<!-- 마이페이지 사이드바 -->
<script src="../resources/js/member/mypageSidebar.js"></script>
<script type="module"
	src="https://unpkg.com/ionicons@5.2.3/dist/ionicons/ionicons.esm.js"></script>
</html>
<jsp:include page="../common/footer.jsp"></jsp:include>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.4.1.min.js"></script>
<!-- 주소검색 api -->
<script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>
<script>
//css 속성 (fucus상태에서 테두리)
$(".form-control").focus(function(){
	$(this).css({
		"box-shadow" : "0px 0px 5px #0033c"
	})
})
// 세션에서 도로명주소 기입
var fulladdr = "${loginMember.memberAddr}";
var addr = fulladdr.split(",");
console.log(addr);
$("#memberAddr1").val(addr[0]);
$("#memberAddr2").val(addr[1]);
// 주소 검색
$(function() {
	$("#postSearch").postcodifyPopUp({})
})

//전송 시 유효성 검사
$("#form-submit").click(function(e){
	var check_ok = false;
	if(!check_ok) {
		$("#modifyform").submit();
	}
});
</script>
