<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>부캐</title>
<style>
	*{
		box-sizing:board-box;
	}
	 
	 .video-film {
		/* box-shadow: rgba(0, 7, 15, 0.7) 0 0 0 9999px; */
		z-index: 100;
	}
	
	
	.video-background {
		background: #000;
		position: fixed;
		top: 0;
		right: 0;
		bottom: 0;
		left: 0;
		z-index: -99;
	}
	
	.video-foreground, .video-background iframe {
		position: absolute;
		top: 0;
		left: 0;
		width: 100%;
		height: 100%;
		pointer-events: none;
	}

	@media ( min-aspect-ratio : 16/9) {
		.video-foreground {
			height: 300%;
			top: -100%;
		}
	}
	
	@media ( max-aspect-ratio : 16/9) {
		.video-foreground {
			width: 300%;
			left: -100%;
		}
	}
	
	h1 {
		color: white;
	}
	
	#visual-btn {
		z-index: 50;
		color: #fff;
		font-size: 40px;
		width:100%;
		height :100%;
		cursor: pointer;
		border : 0;
		outline : 0;
		background-color: rgba(0, 0, 0, 0);
		left: 10%;
		
		
	}
	
	#visual-btn:hover {
		color: #006cb7;
		font-size: 40px;
		padding: 12px 24px;
		cursor: pointer;
		background-color: rgba(20, 0, 0, 0.4);
	}
	
	#indexBtn {
		position: fixed;
		text-align: center;
		width:100%;
		height: 100%;
		left: -1px;
		top:-1px;
	}
	
	.center {
		position: absolute;
		width:120%;
		height :120%;
	}
	
</style>
</head>
<body>

	
	<div id="indexBtn" class="center">
		<button id="visual-btn" onclick="location.href='home.com';"></button>
	</div>
	
	<div class="video-background">
		<div class="video-background">
			<div id="muteYouTubeVideoPlayer"></div>
		</div>
	</div>
	
	<div class="video-film"></div>

	<script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
	<script async src="https://www.youtube.com/iframe_api"></script>
	<script type="text/javascript">
		var player;
		
		function onYouTubePlayerAPIReady(){
			player = new YT.Player('muteYouTubeVideoPlayer', {
				videoId : 'CTP92nqfrog',
				playerVars : {
					autoplay : 1, 		// Auto-play the video on load
					controls : 0, 		// Show pause/play buttons in player
					rel : 0,
					start : 1,
					end : 60,
					showinfo : 0, 		// Hide the video title
					modestbranding : 0, // Hide the Youtube Logo
					loop : 1, 			// Run the video in a loop
					playlist : '',
					fs : 0, 			// Hide the full screen button
					cc_load_policy : 0, // Hide closed captions
					iv_load_policy : 3, // Hide the Video Annotations
					autohide : 1		// Hide video controls when playing
				},
				events:{
					onReady:function(e){
						e.target.mute();
					}
				}
			});
		}
	</script>
</body>
</html>