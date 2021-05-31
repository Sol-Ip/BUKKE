
// 홈 바로가기
$("g").click(function(){
	location.href = "home.com";
})
// 말풍선 효과
$("g").mouseover(function(){
	$("#text-bubble").stop().animate({opacity: 1},550);
})
$("g").mouseout(function(){
	$("#text-bubble").stop().animate({opacity: 0},550);
})

$(document).ready(function(){
	$(".shop-field").hide();
	$("#text-bubble").css({opacity: 0});
})

// 로그인 ajax, 유효성 검사
$("input[type=radio]").on("change", function() {
	$("g").animate({opacity: 0} , 1000).animate({opacity: 1} , 1000);
	var type = $(this).val();
	if (type == "typeMember") {
		$(".member-field").show();
		$(".shop-field").hide();
	} else {
		$(".member-field").hide();
		$(".shop-field").show();
	}
})
// 동적 로그인
$("#submit").click(
		function(event) {
			$(".invalid-check").eq(0).html("");
			$(".invalid-check").eq(1).html("");
			$(".invalid-check").eq(2).html("");
			$(".invalid-check").eq(3).html("");

			if ($("input[type=radio]:checked").val() == "typeMember") {
				// 유효성 검사
				if ($("#memberId").val() == "") {
					$("#memberId").focus();
					$(".invalid-check").eq(0).html("아이디를 입력해주세요.");
					return;
				}
				if ($("#memberPw").val() == "") {
					$("#memberPw").focus();
					$(".invalid-check").eq(2).html("비밀번호를 입력해주세요.");
					return;
				}
				$.ajax({
					url : "memberLogin.com",
					type : "POST",
					data : {
						memberId : $("#memberId").val(),
						memberPw : $("#memberPw").val()
					},
					success : function(data) {
						 if (data == "admin") {
							alert("관리자로 로그인하셨습니다.");
							location.href = "home.com"
						} else if (data == "success") {
							//alert("로그인 성공!");
							location.href = "home.com"
						} else {
							$(".invalid-check").eq(2).html("아이디 혹은 비밀번호가 일치하지 않습니다.");
						}
					},
					error : function(request, status, error) {
						alert("code:" + request.status + "\n" + "message:"
								+ request.responseText + "\n" + "error:" + error);
					}
				})
			} else {
				// 유효성 검사
				if ($("#shopId").val() == "") {
					$("#shopId").focus();
					$(".invalid-check").eq(1).html("아이디를 입력해주세요.");
					return;
				}
				if ($("#shopPw").val() == "") {
					$("#shopPw").focus();
					$(".invalid-check").eq(3).html("비밀번호를 입력해주세요.");
					return;
				}
				$.ajax({
					url : "shopLogin.com",
					type : "POST",
					data : {
						shopId : $("#shopId").val(),
						shopPw : $("#shopPw").val()
					},
					success : function(data) {
						if (data == "success") {
							//alert("로그인 성공!");
							location.href = "home.com"
						} else {
							$(".invalid-check").eq(3).html("아이디 혹은 비밀번호가 일치하지 않습니다.");
						}
					},
					error : function(request, status, error) {
						alert("code:" + request.status + "\n" + "message:"
								+ request.responseText + "\n" + "error:" + error);
					}
				})
			}
			
		})
// 카카오 소셜로그인
$("#kakao").click(function(){
	location.href = "kakao/memberLogin.com";
})
// 텍스트 클릭시 초기화
$("#memberId").on("focus", function() {
	$(".invalid-check").eq(0).html("");
})
$("#shopId").on("focus", function() {
	$(".invalid-check").eq(1).html("");
})
$("#memberPw").on("focus", function() {
	$(".invalid-check").eq(2).html("");
})
$("#shopPw").on("focus", function() {
	$(".invalid-check").eq(3).html("");
})