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
<!-- 일반회원 정보 수정 -->
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
   #file-image {
    	width: 100%;
    	max-width: 600px ;
    	height: auto;
	}
    #input-file {
    	display: none;
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
/* 업체회원 인증상태 표기 */

.shop_approval div{
	display: inline;
	font-size: 2.5rem;
}
.shop_approval_state { color: black; }
.shop_approval_y { color: green; }
.shop_approval_n { color: red; }

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
               <h1 class="mb-2 bread">MY INFORMATION</h1>
               <p class="breadcrumbs">
                  <span class="mr-2"><a href="shopMyPage.com">MY INFORMATION</a></span>
               </p>
            </div>
         </div>
      </div>
      </section>
	 <!-- fixed section END-->
	 
	 
	<section class="member-wrapper">
		<div class="container member-container">
			<div class="text-left">
				<h3 class="mt-4 mb-2">회원정보수정</h3>
			</div>
			<div class="shop_approval">
				<div class="shop_approval_state">인증 상태:</div>
				<div class="shop_approval_y">인증받음</div>
				<div class="shop_approval_n">미인증</div>
			</div>
			<form action="modifyShop.com" id="modifyform" method="post">
				<hr>
				<div class="form-group">
					<label for="shopId">아이디</label> <input
						type="text" class="form-control" id="shopId" name="shopId"
						value="${loginShopper.shopId}" readonly>
				</div>
				<div class="form-group">
					<label for="shopPw_re">비밀번호 확인</label> <input type="password"
						class="form-control" id="shopPw_re" name="shopPw_re"
						placeholder="비밀번호를 입력해주세요">
					<div class="invalid-pw_re invalid-check">필수 정보입니다.</div>
				</div>
				<hr>
				<div class="form-group">
					<label for="ceoName">대표자명</label> <input type="text"
						class="form-control" id="ceoName" name="ceoName"
						value="${loginShopper.ceoName}">
					<div class="invalid-check invalid-name">필수 정보입니다.</div>
				</div>
				<div class="form-group">
					<label for="shopName">업체명</label> <input type="text"
						class="form-control" id="shopName" name="shopName"
						value="${loginShopper.shopName}">
					<div class="invalid-check invalid-shop">필수 정보입니다.</div>
				</div>
				<hr>
				<div class="form-group">
					<label for="shopAddr1">도로명주소
						<button type="button" class="btn btn-default btn-sm"
							id="postSearch">주소찾기</button>
					</label> <input type="text" class="form-control postcodify_address"
						id="shopAddr1" name="shopAddr1" readonly>
					<div class="invalid-addr invalid-check">필수 정보입니다.</div>
				</div>
				<div class="form-group">
					<label for="shopAddr2">상세주소</label> <input type="text"
						class="form-control" id="shopAddr2" name="shopAddr2">
				</div>
				<hr>
				<div class="form-group">
					<label for="shopPhone">연락처</label> <input type="text"
						class="form-control" id="shopPhone" name="shopPhone"
						value="${loginShopper.shopPhone}">
					<div class="invalid-phone invalid-check">필수 정보입니다.</div>
				</div>
				<div class="form-group">
					<label for="shopEmail">이메일</label> <input type="text"
						class="form-control" id="shopEmail" name="shopEmail"
						value="${loginShopper.shopEmail}">
					<div class="invalid-email invalid-check">필수 정보입니다.</div>
				</div>
				<div class="form-group">
					<label for="crnNo">사업자번호</label> <input type="text"
						class="form-control" id="crnNo" name="crnNo"
						value="${loginShopper.crnNo}">
					<div class="invalid-email invalid-crn">필수 정보입니다.</div>
				</div>
				 <div class="form-group img-wrap">
            		<img id="file-image">
            	</div>
				<div class="form-group">
                <label id = "crnFile">사업자등록증  </label><label for="input-file" class="btn btn-default">업로드</label>
                <input type="text" id="filename" class="form-control" readonly required>
                <input type="file" id="input-file" name="input-file">
                <div class="invalid-check invalid-file">필수 정보입니다.</div>
            </div>
				<div class="text-center">
					<button type="button" id="form-submit" class="btn btn-dark signUp">가입하기</button>
				</div>
			</form>
		</div>
	</section>
</body>
<!-- 파일수정 커스텀 js -->
<script src="/resources/js/shop/shopFileModify.js"></script>
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
// 인증상태 표시
var shop_approval = "${loginShopper.shopApproval}";
if(shop_approval == 'Y') {
	$(".shop_approval_y").show();
	$(".shop_approval_n").hide();
} else {
	$(".shop_approval_y").hide();
	$(".shop_approval_n").show();
}

// 세션에서 도로명주소 기입
var fulladdr = "${loginShopper.shopAddr}";
var addr = fulladdr.split(",");
console.log(addr);
$("#shopAddr1").val(addr[0]);
$("#shopAddr2").val(addr[1]);
// 주소 검색
$(function() {
	$("#postSearch").postcodifyPopUp({})
})
// 실시간 비밀번호 재확인 검사
$("#memberPw_re").on("keyup",function(){
	invalidPw_re();
})

// 전송 시 유효성 검사
$("#form-submit").click(function(e){
	var check_ok = false;
	check_ok = (check_ok || invalidPw_re());
	if(!check_ok) {
		$("#modifyform").submit();
	}
});

function invalidPw_re() {
	var Pw = ${loginShopper.shopPw};
	var Pw_re = $("#shopPw_re").val();
	$(".invalid-pw_re").show();
	if(Pw == "") {
		$(".invalid-pw_re").hide();
	}
	if(Pw_re == "") {
		$("#shopPw_re").focus();
		$(".invalid-pw_re").css("color","#f00");
		$(".invalid-pw").html("필수 정보입니다.");
		return true;
	} else if(Pw != Pw_re) {
		$("#shopPw_re").focus();
		$(".invalid-pw_re").css("color","#f00");
		$(".invalid-pw_re").html("회원가입시 입력한 비밀번호를 입력해주세요.");
		return true;
	} else if(Pw == Pw_re) {
		$(".invalid-pw_re").css("color","#28a745");
		$(".invalid-pw_re").html("비밀번호가 일치합니다.");
		return false;
	}
	return false;
}
$(".form-control").focus(function(){
	if($(this).attr("id") == "shopPw_re") {
	} else {
		$(this).next().hide();
	}
})
</script>
