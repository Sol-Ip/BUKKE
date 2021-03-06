// 유령 움직임 애니메이션!!
document.querySelectorAll("fieldset.with-placeholder input").forEach(
		function(el, idx) {
			el.addEventListener("focus", function() {
				this.parentNode.querySelector(".placeholder").classList
						.add("active");
			});
			el.addEventListener("blur", function() {
				if (this.value == "") {
					this.parentNode.querySelector(".placeholder").classList
							.remove("active");
				}
			})
		});

function updateMouthEyes() {
	if (memberId.value.length > 0) {
			document
					.querySelector("#mouth")
					.setAttribute(
							"d",
							"M 75,115 C 79,110 92,119 101,119 110,119 123,111 127,114 131,117 118,131 102,132 87,132 73,121 75,115 Z");
	} else {
		document
				.querySelector("#mouth")
				.setAttribute(
						"d",
						"M 75,115 C 79,120 91,126 101,125 110,125 126,118 127,114 125,117 117,125 101,125 85,126 79,117 75,115 Z");
	}

	let pupilRight = document.querySelector("#pupil-right");
	let pupilLeft = document.querySelector("#pupil-left");
	let movePos = memberId.value.length > 30 ? 13.33 : memberId.value.length / 2.25;
	pupilRight.setAttribute("cy", 75);
	pupilLeft.setAttribute("cy", 76);
	pupilRight.setAttribute("cx", 78 + movePos)
	pupilLeft.setAttribute("cx", 113 + movePos);
}

let memberId = document.querySelector(".id");
memberId.addEventListener("focus", updateMouthEyes);
memberId.addEventListener("input", updateMouthEyes);
memberId.addEventListener("blur", function() {
	let pupilRight = document.querySelector("#pupil-right");
	let pupilLeft = document.querySelector("#pupil-left");
	pupilRight.setAttribute("cx", 84);
	pupilRight.setAttribute("cy", 69);
	pupilLeft.setAttribute("cx", 120);
	pupilLeft.setAttribute("cy", 71);
});

let memberPw = document.querySelector("#memberPw");
memberPw.addEventListener("focus", function() {
	document.querySelector("#ghost-arm-left").setAttribute("d",
			"M 155,88 C 145,68 105,51 103,62 102,74 123,117 155,116");
	document.querySelector("#ghost-arm-right").setAttribute("d",
			"M 45,89 C 54,64 103,48 106,64 108,80 65,121 48,119");
});
memberPw.addEventListener("blur", function() {
	document.querySelector("#ghost-arm-left").setAttribute("d",
			"M 155,88 C 191,90 194,114 192,125 191,137 172,109 155,116");
	document.querySelector("#ghost-arm-right").setAttribute("d",
			"M 45,89 C 25,92 9,108 11,124 13,141 27,115 48,119");
});