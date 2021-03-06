<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>부캐</title>
<style>
@import url(https://fonts.googleapis.com/css?family=Francois+One);
@import url(https://fonts.googleapis.com/css?family=PT+Sans);
@font-face {
  font-family: "Audiowide";
  font-style: normal;
  font-weight: 400;
  src: local("Audiowide"), local("Audiowide-Regular"), url(http://themes.googleusercontent.com/static/fonts/audiowide/v2/8XtYtNKEyyZh481XVWfVOj8E0i7KZn-EPnyo3HZu7kw.woff) format("woff");
}
body {
  font-size: 62.5%;
  background-color: #fff;
  margin: 10px;
  border: 1px solid #333;
}

*,
*::before,
*::after {
  box-sizing: border-box;
}

h1, h2, h3 {
  font-family: "PT Sans", sans-serif;
  text-transform: uppercase;
}

h1 {
  font-size: 2.4em;
  background-color: #292929;
  text-align: center;
  padding: 20px;
  margin: 0;
  color: #fff;
}
h1 a {
  display: block;
  margin-top: 10px;
  text-transform: none;
  color: #aaa;
  font-size: 16px;
  text-decoration: none;
}

.headingOuter {
  background: #f1f1f1;
  text-align: center;
  margin-top: 50px;
  margin-bottom: 0;
  padding: 10px;
  border-top: 1px solid #333;
  border-bottom: 1px solid #333;
  font-size: 1.6em;
}
.headingOuter:first-child {
  margin-top: 0;
}
h1 + .headingOuter {
  margin-top: 0;
}

/* =====================================================
   Some defaults across all toggle demos
   ===================================================== */
.toggle {
  display: block;
  text-align: center;
  margin-top: 40px;
  user-select: none;
}

.toggle--checkbox {
  display: none;
}

.toggle--btn {
  display: block;
  margin: 0 auto;
  font-size: 1.4em;
  transition: all 350ms ease-in;
}
.toggle--btn:hover {
  cursor: pointer;
}

.toggle--btn, .toggle--btn:before, .toggle--btn:after,
.toggle--checkbox,
.toggle--checkbox:before,
.toggle--checkbox:after,
.toggle--feature,
.toggle--feature:before,
.toggle--feature:after {
  transition: all 250ms ease-in;
}
.toggle--btn:before, .toggle--btn:after,
.toggle--checkbox:before,
.toggle--checkbox:after,
.toggle--feature:before,
.toggle--feature:after {
  content: "";
  display: block;
}

/* ===================================================
   Day/Night and Gender toggle buttons
   =================================================== */
.toggle--daynight .toggle--btn,
.toggle--like .toggle--btn {
  position: relative;
  height: 70px;
  width: 125px;
  border-radius: 70px;
}
.toggle--daynight .toggle--btn:before,
.toggle--like .toggle--btn:before {
  position: absolute;
  top: 2px;
  left: 4px;
  width: 56px;
  height: 56px;
  border-radius: 50%;
}

.toggle--daynight .toggle--btn {
  border: 5px solid #1c1c1c;
  background-color: #3c4145;
}
.toggle--daynight .toggle--btn:before {
  background-color: #fff;
  border: 5px solid #e3e3c7;
}
.toggle--daynight .toggle--btn:after {
  position: absolute;
  top: 62%;
  left: 39px;
  z-index: 10;
  width: 11.2px;
  height: 11.2px;
  opacity: 0;
  background-color: #fff;
  border-radius: 50%;
  box-shadow: #fff 0 0, #fff 3px 0, #fff 6px 0, #fff 9px 0, #fff 11px 0, #fff 14px 0, #fff 16px 0, #fff 21px -1px 0 1px, #fff 16px -7px 0 -2px, #fff 7px -7px 0 1px, #d3d3d3 0 0 0 4px, #d3d3d3 6px 0 0 4px, #d3d3d3 11px 0 0 4px, #d3d3d3 16px 0 0 4px, #d3d3d3 21px -1px 0 5px, #d3d3d3 16px -7px 0 1px, #d3d3d3 7px -7px 0 5px;
  transition: opacity 100ms ease-in;
}
@keyframes starry_star {
  50% {
    background-color: rgba(255, 255, 255, 0.1);
    box-shadow: #fff 30px -3px 0 0, #fff 12px 10px 0 -1px, rgba(255, 255, 255, 0.1) 38px 18px 0 1px, #fff 32px 34px 0 0, rgba(255, 255, 255, 0.1) 20px 24px 0 -1.5px, #fff 5px 38px 0 1px;
  }
}
@keyframes bounceIn {
  0% {
    opacity: 0;
    transform: scale(0.3);
  }
  50% {
    opacity: 100;
    transform: scale(1.1);
  }
  55% {
    transform: scale(1.1);
  }
  75% {
    transform: scale(0.9);
  }
  100% {
    opacity: 100;
    transform: scale(1);
  }
}
.toggle--daynight .toggle--feature {
  display: block;
  position: absolute;
  top: 9px;
  left: 52.5%;
  z-index: 20;
  width: 4px;
  height: 4px;
  border-radius: 50%;
  background-color: #fff;
  box-shadow: rgba(255, 255, 255, 0.1) 30px -3px 0 0, rgba(255, 255, 255, 0.1) 12px 10px 0 -1px, #fff 38px 18px 0 1px, rgba(255, 255, 255, 0.1) 32px 34px 0 0, #fff 20px 24px 0 -1.5px, rgba(255, 255, 255, 0.1) 5px 38px 0 1px;
  animation: starry_star 5s ease-in-out infinite;
}
.toggle--daynight .toggle--feature:before {
  position: absolute;
  top: -2px;
  left: -25px;
  width: 18px;
  height: 18px;
  background-color: #fff;
  border-radius: 50%;
  border: 5px solid #e3e3c7;
  box-shadow: #e3e3c7 -28px 0 0 -3px, #e3e3c7 -8px 24px 0 -2px;
  transform-origin: -6px 130%;
}
.toggle--daynight .toggle--checkbox:checked + .toggle--btn {
  background-color: #9ee3fb;
  border: 5px solid #86c3d7;
}
.toggle--daynight .toggle--checkbox:checked + .toggle--btn:before {
  left: 55px;
  background-color: #ffdf6d;
  border: 5px solid #e1c348;
}
.toggle--daynight .toggle--checkbox:checked + .toggle--btn:after {
  opacity: 100;
  animation-name: bounceIn;
  animation-duration: 0.6s;
  animation-delay: 0.1s;
  animation-fill-mode: backwards;
  animation-timing-function: ease-in-out;
}
.toggle--daynight .toggle--checkbox:checked + .toggle--btn > .toggle--feature {
  opacity: 0;
  box-shadow: rgba(255, 255, 255, 0.1) 30px -3px 0 -4px, rgba(255, 255, 255, 0.1) 12px 10px 0 -5px, #fff 38px 18px 0 -3px, rgba(255, 255, 255, 0.1) 32px 34px 0 -4px, #fff 20px 24px 0 -5.5px, rgba(255, 255, 255, 0.1) 5px 38px 0 -3px;
  animation: none;
}
.toggle--daynight .toggle--checkbox:checked + .toggle--btn > .toggle--feature:before {
  left: 25px;
  transform: rotate(70deg);
}

/* ==================================================
   Like specific styling
   ================================================== */
.toggle--like {
  position: relative;
}
.toggle--like .toggle--btn {
  border: 5px solid #0865B0;
  background-color: #3498db;
}
.toggle--like .toggle--btn:before {
  background-color: #f2dd68;
  border: 5px solid #e5ce5e;
}
.toggle--like .toggle--feature {
  position: absolute;
  left: 14px;
  top: 32%;
  width: 7px;
  height: 7px;
  border-radius: 50%;
  background-color: #995710;
  box-shadow: 28px 0 0 0 #995710;
}
.toggle--like .toggle--feature:before {
  position: absolute;
  left: 0;
  top: 11px;
  width: 36px;
  height: 17px;
  background-color: #995710;
  border-radius: 36px 36px 0 0;
}
.toggle--like .toggle--feature:after {
  position: absolute;
  left: 9px;
  top: 21px;
  width: 17px;
  height: 7px;
  background-color: #d8aa2b;
  border-radius: 17px 17px 0 0;
}
.toggle--like .toggle--checkbox:checked + .toggle--btn {
  background-color: #e25d5d;
  border: 5px solid #AD1000;
}
.toggle--like .toggle--checkbox:checked + .toggle--btn:before {
  transform: translate(51px, 0);
}
.toggle--like .toggle--checkbox:checked + .toggle--btn .toggle--feature {
  transform: translate(53px, 0);
}
.toggle--like .toggle--checkbox:checked + .toggle--btn .toggle--feature:before {
  border-radius: 0 0 36px 36px;
  top: 11px;
}
.toggle--like .toggle--checkbox:checked + .toggle--btn .toggle--feature:after {
  top: 21px;
  border-radius: 50%/50%;
}

/* ====================================================
   Text toggle button
   ==================================================== */
.toggle--text .toggle--btn {
  position: relative;
  width: 180px;
  height: 70px;
  font-family: "PT Sans", Sans Serif;
  text-transform: uppercase;
  font-weight: bold;
  border-radius: 40px;
  border: 1px solid #8c8c8c;
  border-right: 2px solid #8c8c8c;
  box-shadow: inset 90px 0 10px rgba(255, 255, 255, 0.6), inset -3px 3px 18px -2px #8c8c8c, 0 0 15px #ccc, 0px -5px 16px 1px #ddd, -5px -5px 16px 1px #ddd, 5px -5px 16px 1px #ddd, -5px -5px 16px 1px #ddd, 5px -5px 16px 1px #ddd, 17px 9px 0 -5px rgba(255, 255, 255, 0.6), -3px 6px 12px -7px #000, 0 0 0 14px #fff, 0 0 0 15px #999;
}
.toggle--text .toggle--btn:before, .toggle--text .toggle--btn:after {
  position: absolute;
  top: 50%;
  transform: translateY(-50%);
}
.toggle--text .toggle--btn:before {
  content: attr(data-label-on);
  left: 15%;
  color: #999;
}
.toggle--text .toggle--btn:after {
  content: attr(data-label-off);
  right: 15%;
  color: #db4c00;
}
.toggle--text .toggle--checkbox:checked + .toggle--btn {
  border-left: 2px solid #8c8c8c;
  border-right: 1px solid #8c8c8c;
  box-shadow: inset 90px 0 10px rgba(255, 255, 255, 0), inset 3px 3px 18px -2px #8c8c8c, 0 0 15px #ccc, 0px -5px 16px 1px #ddd, -5px -5px 16px 1px #ddd, 5px -5px 16px 1px #ddd, -5px -5px 16px 1px #ddd, 5px -5px 16px 1px #ddd, -17px 9px 0 -5px rgba(255, 255, 255, 0.6), 3px 6px 12px -7px #000, 0 0 0 14px #fff, 0 0 0 15px #999;
}
.toggle--text .toggle--checkbox:checked + .toggle--btn:before {
  color: #db4c00;
}
.toggle--text .toggle--checkbox:checked + .toggle--btn:after {
  color: #999;
}

/* =====================================================
   Toggle - knob button style
   ===================================================== */
.toggle--knob .toggle--btn {
  position: relative;
  width: 120px;
  height: 40px;
  font-family: "PT Sans", Sans Serif;
  text-transform: uppercase;
  color: #fff;
  background: #a4bf4d;
  box-shadow: inset 0 20px 40px -10px #7b9d25;
  border-radius: 40px;
}
.toggle--knob .toggle--btn:before {
  display: block;
  position: absolute;
  top: 50%;
  left: 60%;
  transform: translateY(-50%);
  width: 48px;
  height: 48px;
  border-radius: 50%;
  background: #f1f1f1;
  box-shadow: 0 4px 10px 0 #999, inset 0 10px 10px 8px rgba(241, 241, 241, 0.6), inset 0 0 8px 0px #333, inset 0 0 0 13px #ccc, inset 0 0 0 14px #f1f1f1;
  text-indent: -100%;
}
.toggle--knob .toggle--feature {
  position: relative;
  display: block;
  overflow: hidden;
  height: 40px;
  text-shadow: 0 1px 2px #666;
}
.toggle--knob .toggle--feature:before, .toggle--knob .toggle--feature:after {
  position: absolute;
  top: 50%;
  transform: translateY(-50%);
}
.toggle--knob .toggle--feature:before {
  content: attr(data-label-on);
  left: 20%;
}
.toggle--knob .toggle--feature:after {
  content: attr(data-label-off);
  right: -60%;
}
.toggle--knob .toggle--checkbox:checked + .toggle--btn {
  background: #a2a2a2;
  box-shadow: inset 0 20px 40px -10px #7e7e7e;
}
.toggle--knob .toggle--checkbox:checked + .toggle--btn:before {
  left: 0;
}
.toggle--knob .toggle--checkbox:checked + .toggle--btn .toggle--feature:before {
  left: -60%;
}
.toggle--knob .toggle--checkbox:checked + .toggle--btn .toggle--feature:after {
  right: 20%;
}

/* =====================================================
   Toggle - switch stylee
   ===================================================== */
.toggle--switch .toggle--btn {
  position: relative;
  width: 120px;
  height: 44px;
  font-family: "PT Sans", Sans Serif;
  text-transform: uppercase;
  color: #fff;
  background: linear-gradient(90deg, #a4bf4d 0%, #a4bf4d 50%, #ca5046 50%, #ca5046 200%);
  background-position: -80px 0;
  background-size: 200% 100%;
  box-shadow: inset 0 0px 22px -8px #111;
}
.toggle--switch .toggle--btn, .toggle--switch .toggle--btn:before {
  border-radius: 4px;
}
.toggle--switch .toggle--btn:before {
  display: block;
  position: absolute;
  top: 50%;
  left: 0;
  transform: translateY(-50%);
  width: 52px;
  height: 44px;
  border: 2px solid #202027;
  background-image: linear-gradient(90deg, transparent 50%, rgba(255, 255, 255, 0.15) 100%);
  background-color: #2b2e3a;
  background-size: 5px 5px;
  text-indent: -100%;
}
.toggle--switch .toggle--feature {
  position: relative;
  display: block;
  overflow: hidden;
  height: 44px;
  text-shadow: 0 1px 2px #666;
}
.toggle--switch .toggle--feature:before, .toggle--switch .toggle--feature:after {
  position: absolute;
  top: 50%;
  transform: translateY(-50%);
}
.toggle--switch .toggle--feature:before {
  content: attr(data-label-on);
  left: -60%;
}
.toggle--switch .toggle--feature:after {
  content: attr(data-label-off);
  right: 16%;
}
.toggle--switch .toggle--checkbox:checked + .toggle--btn {
  background-position: 0 0;
}
.toggle--switch .toggle--checkbox:checked + .toggle--btn:before {
  left: calc(100% - 52px);
}
.toggle--switch .toggle--checkbox:checked + .toggle--btn .toggle--feature:before {
  left: 20%;
}
.toggle--switch .toggle--checkbox:checked + .toggle--btn .toggle--feature:after {
  right: -60%;
}

/* ======================================================
   Push button toggle
   ====================================================== */
.toggle--push .toggle--btn {
  position: relative;
  width: 50px;
  height: 50px;
  background-color: #f9f8f6;
  border-radius: 50%;
  box-shadow: 0 5px 10px 0px #333, 0 15px 20px 0px #cccccc;
}
.toggle--push .toggle--btn, .toggle--push .toggle--btn:before, .toggle--push .toggle--btn:after {
  transition-duration: 150ms;
}
.toggle--push .toggle--btn:before {
  position: absolute;
  left: 50%;
  top: 50%;
  transform: translate(-50%, -50%);
  width: 22.7272727273px;
  height: 22.7272727273px;
  border-radius: 50%;
  background-color: #FF9900;
  box-shadow: inset 0 0 0 5px #ccc, inset 0 0 0 14px #f9f8f6;
}
.toggle--push .toggle--btn:after {
  position: absolute;
  left: 50%;
  top: 35%;
  transform: translate(-50%, -50%);
  width: 4px;
  height: 12px;
  background-color: #ccc;
  box-shadow: 0 0 0 2.5px #f9f8f6;
}
.toggle--push .toggle--btn:hover:before {
  box-shadow: inset 0 0 0 5px #b3b3b3, inset 0 0 0 14px #f9f8f6;
}
.toggle--push .toggle--btn:hover:after {
  background-color: #b3b3b3;
}
.toggle--push .toggle--checkbox:checked + .toggle--btn {
  box-shadow: 0 2px 5px 0px gray, 0 15px 20px 0px transparent;
}
.toggle--push .toggle--checkbox:checked + .toggle--btn:before {
  box-shadow: inset 0 0 0 5px #FF9900, inset 0 0 0 14px #f9f8f6;
}
.toggle--push .toggle--checkbox:checked + .toggle--btn:after {
  background-color: #FF9900;
}

.toggle--push--glow {
  background: #111;
  padding: 50px 0;
  margin-bottom: -50px;
}
.toggle--push--glow .toggle--btn {
  background-color: #dfdfdf;
  box-shadow: 0 5px 10px 0px #333, 0 0 0 3px #444444, 0 0 8px 2px transparent, 0 0 0 6px #919191;
}
.toggle--push--glow .toggle--btn:before {
  box-shadow: inset 0 0 0 5px #aaa, inset 0 0 0 14px #dfdfdf;
}
.toggle--push--glow .toggle--btn:after {
  background-color: #aaa;
  box-shadow: 0 0 0 2.5px #dfdfdf;
}
.toggle--push--glow .toggle--btn:hover:before {
  box-shadow: inset 0 0 0 5px #777777, inset 0 0 0 14px #dfdfdf;
}
.toggle--push--glow .toggle--btn:hover:after {
  background-color: #777777;
}
.toggle--push--glow .toggle--checkbox:checked + .toggle--btn {
  box-shadow: 0 0px 8px 0 #0072ad, 0 0 0 3px #0094e0, 0 0 30px 0 #0094e0, 0 0 0 6px #777777;
}
.toggle--push--glow .toggle--checkbox:checked + .toggle--btn:before {
  box-shadow: inset 0 0 0 5px #0094e0, inset 0 0 0 14px #dfdfdf;
}
.toggle--push--glow .toggle--checkbox:checked + .toggle--btn:after {
  background-color: #0094e0;
}

/* ======================================================
   Neon toggle
   ====================================================== */
@keyframes neon {
  0% {
    text-shadow: 0 0 10px #fff, 0 0 15px #fff, 0 0 25px #fff, 0 0 40px #FF9900, 0 0 70px #FF9900, 0 0 90px #FF9900, 0 0 90px #FF9900;
  }
  100% {
    text-shadow: 0 0 5px #fff, 0 0 10px #fff, 0 0 15px #fff, 0 0 20px #FF9900, 0 0 35px #FF9900, 0 0 40px #FF9900, 0 0 50px #FF9900;
  }
}
.toggle--neon {
  background-color: #222;
  margin-top: 0;
  padding: 50px 0;
}
.toggle--neon .toggle--btn {
  font-family: Audiowide;
  text-transform: uppercase;
  font-size: 6.2em;
  color: #333;
  text-shadow: 0 0 10px transparent, 0 0 15px transparent, 0 0 25px transparent, 0 0 40px transparent, 0 0 70px transparent, 0 0 90px transparent, 0 0 90px transparent;
}
.toggle--neon .toggle--btn:before, .toggle--neon .toggle--btn:after {
  display: inline-block;
  margin: 0 20px;
  transition: all 220ms ease-in-out;
}
.toggle--neon .toggle--btn:before {
  content: attr(data-label-off);
  animation: neon 1.5s ease-in-out infinite alternate;
  animation-delay: 90ms;
  color: #f1f1f1;
}
.toggle--neon .toggle--btn:after {
  content: attr(data-label-on);
}
.toggle--neon .toggle--checkbox:checked + .toggle--btn:before {
  animation: none;
  color: #333;
}
.toggle--neon .toggle--checkbox:checked + .toggle--btn:after {
  animation: neon 1.5s ease-in-out infinite alternate;
  animation-delay: 90ms;
  color: #f1f1f1;
}
</style>
<!-- <style>
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
	
</style> -->
</head>
<body>


<!-- A variety of CSS toggle button effects, from varying sources fo inspiration.

No JS, all CSS and HTML.

Tested in IE10, Chrome, Firefox, Safari
-->

<h1>A bunch of funky CSS3 Toggle Buttons <a href="https://twitter.com/AshNolan_" target="blank">created by @AshNolan_</a></h1>

<!-- Inspiration – https://dribbble.com/shots/1909289-Day-Night-Toggle-Button-GIF?list=searches&tag=toggle&offset=8

Also see this pen, which beat me to it for an alternative implementation!
https://codepen.io/jsndks/pen/qEXzOQ
-->
<h2 class="headingOuter">Day/Night Toggle</h2>
    <div class="toggle toggle--daynight">
      <input type="checkbox" id="toggle--daynight" class="toggle--checkbox">
      <label class="toggle--btn" for="toggle--daynight"><span class="toggle--feature"></span></label>
    </div>

    <!-- Inspiration – https://dribbble.com/shots/1836048-Emojis-Pt-1?list=searches&offset=3 -->
    <h2 class="headingOuter">Like Toggle</h2>
    <div class="toggle toggle--like">
      <input type="checkbox" id="toggle--like" class="toggle--checkbox">
      <label class="toggle--btn" for="toggle--like"><span class="toggle--feature"></span></label>
    </div>

    <!-- Inspiration – https://dribbble.com/shots/408190-Quick-Setting-Toggles?list=searches&tag=toggle_button&offset=0 -->
    <h2 class="headingOuter">Shadow Effect Toggle</h2>
    <div class="toggle toggle--text">
      <input type="checkbox" id="toggle--text" class="toggle--checkbox">
      <label class="toggle--btn" for="toggle--text" data-label-on="on"  data-label-off="off"></label>
    </div>

<!-- Inspiration – https://dribbble.com/shots/712038-Button?list=searches&tag=toggle_buttons&offset=23 -->
    <h2 class="headingOuter">3d Power button toggles</h2>
    <div class="toggle toggle--push">
      <input type="checkbox" id="toggle--push" class="toggle--checkbox">
      <label class="toggle--btn" for="toggle--push" data-label-on="on"  data-label-off="off"></label>
    </div>
    <div class="toggle toggle--push toggle--push--glow">
      <input type="checkbox" id="toggle--push--glow" class="toggle--checkbox">
      <label class="toggle--btn" for="toggle--push--glow" data-label-on="on"  data-label-off="off"></label>
    </div>

<!-- Inspiration – https://dribbble.com/shots/525358-Buttons-Lights-Shadows?list=searches&tag=toggle_button&offset=10 -->
    <h2 class="headingOuter">Physical Toggle Switch</h2>
    <div class="toggle toggle--knob">
      <input type="checkbox" id="toggle--knob" class="toggle--checkbox">
      <label class="toggle--btn" for="toggle--knob"><span class="toggle--feature" data-label-on="on"  data-label-off="off"></span></label>
    </div>

<!-- Inspiration – https://dribbble.com/shots/96984-MIT-Sloan-iPad-App-High-Resolution?list=searches&tag=toggle&offset=11 -->
    <h2 class="headingOuter">Sliding Switch Toggle</h2>
    <div class="toggle toggle--switch">
      <input type="checkbox" id="toggle--switch" class="toggle--checkbox">
      <label class="toggle--btn" for="toggle--switch"><span class="toggle--feature" data-label-on="on"  data-label-off="off"></span></label>
    </div>

<!-- Inspiration – https://codepen.io/NobodyRocks/pen/qzfoc -->
    <h2 class="headingOuter">Neon Text toggle</h2>
    <div class="toggle toggle--neon">
      <input type="checkbox" id="toggle--neon" class="toggle--checkbox">
      <label class="toggle--btn" for="toggle--neon" data-label-on="on"  data-label-off="off"></label>
    </div>

<!-- 	
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
	</script> -->
</body>
</html>