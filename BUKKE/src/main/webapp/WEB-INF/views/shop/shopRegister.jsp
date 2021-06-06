<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- 폰트 -->
<link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900" rel="stylesheet">

<!-- css -->
<link rel="stylesheet" href="resources/css/style.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 제이쿼리 -->
<script src="https://code.jquery.com/jquery-latest.min.js"></script>
<!-- 주소검색 api -->
<script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>
<title>업체 - 회원가입</title>
</head>
<style>
	.container {
		margin-bottom: 50px;
	}
    @media (min-width: 650px) {
        .container {
        	border: 1px solid rgb(204, 204, 204);
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
    #filename {
    	width: 230px;
    	display: inline;
    }
    #input-file {
    	display: none;
    }
    /* ajax 기다리는 동안 로딩아이콘 표시 */
    #ajax_indicator {
    	width: 2rem;
    	height: 2rem;
    	display: none;
    	margin-left: 10px;
    }
</style>
<body>
	<div class="py-5 title text-center">BUKKE</div>
	<div class="container">
		<div class="text-left">
			<h3>회원가입</h3>
		</div>
        <form action="shopRegister.com" id="registerform" method="post" enctype="multipart/form-data">
        	<hr>
            <div class="form-group">
                <label for="shopId">아이디</label><span id="ajax_indicator"><img src="/resources/images/ajax-loader_circle.gif"></span>
                <input type="text" class="form-control" id="shopId" name="shopId" placeholder="아이디를 입력해주세요" required>
                <div class="invalid-check invalid-id">필수 정보입니다.</div>
            </div>
            <div class="form-group">
                <label for="shopPw">비밀번호</label>
                <input type="password" class="form-control" id="shopPw" name="shopPw" placeholder="비밀번호를 입력해주세요" required>
                <div class="invalid-check invalid-pw">필수 정보입니다.</div>
            </div>
            <div class="form-group">
                <label for="shopPw">비밀번호 재확인</label>
                <input type="password" class="form-control" id="shopPw_re" name="shopPw_re"  placeholder="비밀번호를 한번 더 입력해주세요">
                <div class="invalid-check invalid-pw_re">필수 정보입니다.</div>
            </div>
            <hr>
            <div class="form-group">
                <label for="ceoName">대표자명</label>
                <input type="text" class="form-control" id="ceoName" name="ceoName" placeholder="대표자명을 입력해주세요" required>
                <div class="invalid-check invalid-name">필수 정보입니다.</div>
            </div>
            <div class="form-group">
                <label for="shopName">업체명</label>
                <input type="text" class="form-control" id="shopName" name="shopName" placeholder="업체명을 입력해주세요" required>
                <div class="invalid-check invalid-shop">필수 정보입니다.</div>
            </div>
            <hr>
            <div class="form-group">
                <label for="shopAddr1">도로명주소   <button type="button" class="btn btn-default btn-sm" id="postSearch">주소찾기</button></label>
                <input type="text" class="form-control postcodify_address" id="shopAddr1" name="shopAddr1" readonly required>
                <div class="invalid-check invalid-addr">필수 정보입니다.</div>
            </div>
            <div class="form-group">
                <label for="shopAddr2">상세주소</label>
                <input type="text" class="form-control" name="shopAddr2" placeholder="상세주소를 입력해주세요">
            </div>
            <hr>
            <div class="form-group">
                <label for="shopPhone">연락처</label>
                <input type="text" class="form-control" id="shopPhone" name="shopPhone" placeholder="-를 제외한 전화번호를 입력해주세요" required>
                <div class="invalid-check invalid-phone">필수 정보입니다.</div>
            </div>
            <div class="form-group">
                <label for="shopEmail">이메일</label>
                <input type="text" class="form-control" id="shopEmail" name="shopEmail" placeholder="이메일을 입력해주세요" required>
                <div class="invalid-check invalid-email">필수 정보입니다.</div>
            </div>
            <hr>
            <div class="form-group">
                <label for="crnNo">사업자번호</label>
                <input type="text" class="form-control" id="crnNo" name="crnNo" placeholder="10자리의 사업자번호를 입력해주세요" required>
                <div class="invalid-check invalid-crn">필수 정보입니다.</div>
            </div>
            <div class="form-group img-wrap">
            	<img id="file-image">
            </div>
            <div class="form-group">
                <label id = "crnFile">사업자등록증  </label>
                <div></div>
                <input type="text" id="filename" class="form-control" readonly required>
                <input type="file" id="input-file" name="input-file"><label for="input-file" class="btn btn-default">업로드</label>
                <div class="invalid-check invalid-file">필수 정보입니다.</div>
            </div>
            <div class="text-center">
                <button type="button" id="form-submit" class="btn btn-dark signUp">가입하기</button>
            </div>
        </form>
    </div>
</body>
<jsp:include page="../common/registerFooter.jsp"></jsp:include>
<!-- 파일업로드 커스텀 js -->
<script src="/resources/js/shop/shopFileUpload.js"></script>
<!-- 유효성 ajax + 주소검색 -->
<script>
	// bukke 클릭시 홈으로 이동
	$(".title").click(function(){
		location.href='home.com';
	})
	// css 속성 (fucus상태에서 테두리)
	$(".form-control").focus(function(){
		$(this).css({
			"box-shadow" : "0px 0px 5px #0033c"
		})
	})
	// 주소 검색
	$(function() {
		$("#postSearch").postcodifyPopUp({})
	})
	// 실시간 비밀번호 재확인 검사
	$("#shopPw_re").on("keyup",function(){
		invalidPw_re();
	})
	// 전송 시 유효성 검사
	$("#form-submit").click(function(e){
		var check_ok = false;
/* 		
		$.ajax({
			url: "memberCheckIdDup.com",
			type: "POST",
			data: { memberId : $("#memberId").val() },
			async: false,
			success: function(data) {
				if (data == "yes") {
					$("#memberId").focus();
					$(".invalid-id").html("이미 사용중인 ID입니다.");
					$(".invalid-id").show();
					check_ok = true;
				}
			},
			error: function() {
				$("#memberId").focus();
				$(".invalid-id").html("서버 연결 상태가 좋지 않습니다.");
				$(".invalid-id").show();
				check_ok = true;
			},
			beforeSend: function() {
				//통신을 시작할때 처리
				$('#ajax_indicator').show();
			},
			complete: function() {
				//통신이 완료된 후 처리
				$('#ajax_indicator').fadeOut();
			}
		});
*/
		check_ok = (check_ok || invalidId());
		check_ok = (check_ok || invalidPw());
		check_ok = (check_ok || invalidPw_re());
		check_ok = (check_ok || invalidName());
		check_ok = (check_ok || invalidShop());
		check_ok = (check_ok || invalidAddr());
		check_ok = (check_ok || invalidPhone());
		check_ok = (check_ok || invaildEmail());
		check_ok = (check_ok || invalidCrn());
		check_ok = (check_ok || invaildFile());
		if(!check_ok) {
			$("#registerform").submit();
		}
	})
	function invalidId() {
		var Id = $("#shopId").val();
		var regexp = /^[a-zA-Z0-9_]{4,12}$/;
		if(Id == "") {
			$("#shopId").focus();
			$(".invalid-id").html("필수 정보입니다.");
			$(".invalid-id").show();
			return true;
		} else if(!regexp.test(Id)) {
			$("#shopId").focus();
			$(".invalid-id").html("아이디는 4 ~ 12자리의 영어, 숫자, _만 사용할 수 있습니다.");
			$(".invalid-id").show();
			return true;
		}
		return false;
	}
	function invalidPw() {
		var Pw = $("#shopPw").val();
		var regexp = /^[a-zA-Z0-9!@#$%^&*]{4,12}$/;
		if(Pw == "") {
			$("#shopPw").focus();
			$(".invalid-pw").html("필수 정보입니다.");
			$(".invalid-pw").show();
			return true;
		} else if(!regexp.test(Pw)) {
			$("#shopPw").focus();
			$(".invalid-pw").html("비밀번호는 4 ~ 12자리의 영어, 숫자, 특수문자만 사용할 수 있습니다.");
			$(".invalid-pw").show();
			return true;
		}
		return false;
	}
	function invalidPw_re() {
		var Pw = $("#shopPw").val();
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
			$(".invalid-pw_re").html("비밀번호가 일치하지 않습니다.");
			return true;
		} else if(Pw == Pw_re) {
			$(".invalid-pw_re").css("color","#28a745");
			$(".invalid-pw_re").html("비밀번호가 일치합니다.");
			return false;
		}
		return false;
	}
	function invalidName() {
		var Name = $("#ceoName").val();
		var regexp = /^.{0,20}$/;
		if(Name == "") {
			$("#ceoName").focus();
			$(".invalid-name").html("필수 정보입니다.");
			$(".invalid-name").show();
			return true;
		} else if(!regexp.test(Name)) {
			$("#ceoName").focus();
			$(".invalid-name").html("이름의 길이는 20자를 넘을 수 없습니다.");
			$(".invalid-name").show();
			return true;
		}
		return false;
	}
	function invalidShop() {
		var Shop = $("#shopName").val();
		if(Shop == "") {
			$("#shopName").focus();
			$(".invalid-shop").html("필수 정보입니다.");
			$(".invalid-shop").show();
			return true;
		}
		return false;
	}
	function invalidAddr() {
		var Addr = $("#memberAddr1").val();
		if(Addr == "") {
			$("#memberAddr1").focus();
			$(".invalid-addr").html("필수 정보입니다.");
			$(".invalid-addr").show();
			return true;
		} 
		return false;
	}
	function invalidPhone() {
		var Phone = $("#shopPhone").val();
		var regexp = /^[0-9]{10,11}$/;
		if(Phone == "") {
			$("#shopPhone").focus();
			$(".invalid-phone").html("필수 정보입니다.");
			$(".invalid-phone").show();
			return true;
		} else if(!regexp.test(Phone)) {
			$("#shopPhone").focus();
			$(".invalid-phone").html("전화번호는 10 ~ 11 자리의 숫자만 입력해주세요.");
			$(".invalid-phone").show();
			return true;
		}
		return false;
	}
	function invaildEmail() {
		var Email = $("#shopEmail").val();
		var regexp = /^[a-zA-Z0-9_]*@[a-zA-Z0-9_.]*$/;
		if(Email == "") {
			$("#shopEmail").focus();
			$(".invalid-email").html("필수 정보입니다.");
			$(".invalid-email").show();
			return true;
		} else if(!regexp.test(Email)) {
			$("#shopEmail").focus();
			$(".invalid-email").html("이메일 형식에 맞지 않습니다. 영어, 숫자, @가 필수로 포함되었는지 확인해주세요.");
			$(".invalid-email").show();
			return true;
		}
		return false;
	}
	function invalidCrn() {
		var CrnNo = $("#crnNo").val();
		var regexp = /^[0-9]{10}$/;
		if(CrnNo == "") {
			$("#crnNo").focus();
			$(".invalid-phone").html("필수 정보입니다.");
			$(".invalid-phone").show();
			return true;
		} else if(!regexp.test(CrnNo)) {
			$("#crnNo").focus();
			$(".invalid-phone").html("사업자 번호는 10자리의 숫자여야 합니다.");
			$(".invalid-phone").show();
			return true;
		}
		return false;
	}
	function invaildFile() {
		var File = $("#input-file").val();
		if(File == "") {
			$("#input-file").focus();
			$(".invalid-file").html("필수 정보입니다.");
			$(".invalid-file").show();
			return true;
		} 
		return false;
	}
	$(".form-control").focus(function(){
		if($(this).attr("id") == "shopPw_re") {
		} else if($(this).attr("id") == "filename") {
		} else {
			$(this).next().hide();
		}
	})
</script>
</html>