	// css 속성 (fucus상태에서 테두리)
	$(".form-control").focus(function(){
		$(this).css({
			"box-shadow" : "0px 0px 5px #0033c"
		})
	})

	// 파일업로드 이름
	$("#input-file").on("change", function() {
		var fileName = $("#input-file").val();
		// 파일 확장자를 extenstion 이라함.
		var ext = fileName.substring(fileName.lastIndexOf("."),fileName.length).toLowerCase();
		if(ext != ".jpg" && ext != ".jpeg" && ext != ".png" && ext != ".gif" && ext != "") {
			alert(ext + "는 사진 파일이 아닙니다!!");
			$("#input-file").val("");
		}
		if(fileName != "") {
			$("#filename").val(fileName.split("\\")[2]);
			var url = window.URL.createObjectURL($(this).get(0).files[0]);
			$("#file-image").attr('src',url);
			$(".img-wrap").slideDown();
			
		} else {
			$("#filename").val("선택된 파일 없음");
			$(".img-wrap").hide();
		}
	})