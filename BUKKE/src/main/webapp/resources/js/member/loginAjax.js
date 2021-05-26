// 로그인 ajax, 유효성 검사

$("input[type=radio]").on("change", function() {
	// 유령 사라졌다 나타나는 효과
	$("g").fadeOut(1000).fadeIn(1000);

	var type = $(this).val();
	if (type == "typeMember") {
		$("#social-filed").show();
	} else {
		$("#social-filed").hide();
	}
})
// 동적 로그인
$("#submit").click(
		function(event) {
			if ($("#memberId").val() == "") {
				$(".invalid-check").eq(0).html("아이디를 입력해주세요.");
				return;
			}
			if ($("#memberPw").val() == "") {
				$(".invalid-check").eq(1).html("비밀번호를 입력해주세요.");
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
					if (data == "success") {
						alert("로그인 성공!");
						location.href = "home.com"
					} else if (data == "admin") {
						alert("관리자로 로그인하셨습니다.");
						location.href = "home.com"
					} else {
						$(".invalid-pw").html("아이디 혹은 비밀번호가 일치하지 않습니다.");
					}
				},
				error : function(request, status, error) {
					alert("code:" + request.status + "\n" + "message:"
							+ request.responseText + "\n" + "error:" + error);
				}
			})
		})
// 카카오 소셜로그인
// 팝업을 띄우는 방식으로 가야 하나?
$("#kakao").click(function(){
	location.href = "kakao/memberLogin.com";
})
// 텍스트 클릭시 초기화
$("#memberId").on("focus", function() {
	$(".invalid-id").html("");
})
$("#memberPw").on("focus", function() {
	$(".invalid-pw").html("");
})