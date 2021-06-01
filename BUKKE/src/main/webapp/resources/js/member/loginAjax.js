
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
		$(document).attr("title","부캐 - 로그인");
		$(".member-field").show();
		$(".shop-field").hide();
	} else {
		$(document).attr("title","업체 - 로그인");
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
						if (data == "no_approval") {
							alert("관리자 승인을 완료해주세요.");
							location.href = "home.com"
						} else if (data == "removed") {
							alert("이미 탈퇴한 회원입니다.");
						} else if (data == "success") {
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

$("#kakao").click(function(){
	// 카카오 로그인 API호출
	if(!Kakao.isInitialized()) {
		Kakao.init('7529109358ed25ccbfd1fe197826cb87');
	}
	Kakao.Auth.login({
		  success: function(response) {
		    //사용자 정보 가져오기
			  Kakao.API.request({
				  url: '/v2/user/me', // 계정 정보를 가져오는 request url
				  success: function(response) {
					  var user = response.kakao_account; // 카카오 계정 정보
					  user.host = 'kakao'; //추가정보 기입을 할 수 있다.
					  // 로그인 후 세션 받아오기
					  $.ajax({
						  url: 'kakao/memberLogin.com',
						  type: 'POST',
						  data: JSON.stringify(user), // 계정정보를 JSON으로 변환
						  dataType : 'application/json; charset=utf-8',
						  success: function(data) {
							  if (data == "success") {
								  	//alert("로그인 성공!");
									location.href = "home.com"
							  }
						  },
						  error: function(error) {
							  console.log(error);
						  }
					  })
				  },
				  fail: function(error) {
					  console.log(error)
				  },
			  })
		  },
		  fail: function(error) {
		    console.log(error);
		  },
		});
	//location.href = "kakao/memberLogin.com";
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