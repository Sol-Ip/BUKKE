<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
 <jsp:include page="common/header.jsp"></jsp:include> 
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">
<link rel='stylesheet' href='https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&amp;display=swap'><link rel="stylesheet" href="./style.css">

<style type="text/css">
	.pay-button {
  --c-color: #000;
  --c-background: #20D8F9;
  --c-light: #FCBB33;
  --c-light-shine: linear-gradient(90deg, rgba(252, 187, 51, 0.9), rgba(252, 187, 51, 0));
  --c-base: #0D6E9D;
  --c-wheel: #0D6E9D;
  --c-wheel-inner: #004e71;
  --c-wheel-dot: #fff;
  --c-back: #F2F6FE;
  --c-back-inner: #2790C3;
  --c-front: #F2F6FE;
  --c-front-shadow: #CDD1D9;
  --c-window: #000;
  --rotate: 0deg;
  --y: 0px;
  --scale: 1;
  --default-o: 1;
  --success-o: 0;
  --success-offset: 16px;
  --truck-y: 0px;
  --truck-base-x: 16px;
  --truck-wrapper-y: 70px;
  --light-opacity: 0;
  padding: 15px 0;
  width: 260px;
  border-radius: 27px;
  cursor: pointer;
  text-align: center;
  position: relative;
  border: none;
  outline: none;
  background: var(--c-background);
  color: var(--c-color);
  -webkit-appearance: none;
  -webkit-tap-highlight-color: transparent;
  -webkit-transform-style: preserve-3d;
          transform-style: preserve-3d;
  -webkit-transform: translateY(var(--y)) rotateX(var(--rotate)) scale(var(--scale)) translateZ(0);
          transform: translateY(var(--y)) rotateX(var(--rotate)) scale(var(--scale)) translateZ(0);
}
.pay-button:before {
  content: '';
  position: absolute;
  left: 0;
  top: 0;
  width: 100%;
  background: var(--c-background);
  height: 4px;
  border-radius: 2px;
  display: block;
  top: 50%;
  margin-top: -2px;
  -webkit-transform-origin: 0 100%;
          transform-origin: 0 100%;
  -webkit-transform: rotateX(90deg);
          transform: rotateX(90deg);
}
.pay-button .default,
.pay-button .success {
  display: block;
  font-weight: bold;
  font-size: 20px;
  line-height: 24px;
  opacity: var(--o, var(--default-o));
}
.pay-button .success {
  --o: var(--success-o);
  position: absolute;
  top: 15px;
  left: 0;
  right: 0;
}
.pay-button .success svg {
  width: 16px;
  height: 14px;
  display: inline-block;
  vertical-align: top;
  fill: none;
  margin: 5px 0 0 8px;
  stroke: var(--c-color);
  stroke-width: 2;
  stroke-linecap: round;
  stroke-linejoin: round;
  stroke-dasharray: 16px;
  stroke-dashoffset: var(--success-offset);
}
.pay-button .truck-wrapper {
  position: absolute;
  pointer-events: none;
  top: -140px;
  left: -100px;
  right: -40px;
  bottom: 0px;
  overflow: hidden;
  -webkit-transform: translateY(var(--truck-wrapper-y)) rotateX(90deg);
          transform: translateY(var(--truck-wrapper-y)) rotateX(90deg);
  -webkit-mask-image: linear-gradient(to left, transparent 0%, black 60px, black);
  mask-image: linear-gradient(to left, transparent 0%, black 60px, black);
}
.pay-button .truck-wrapper .truck {
  position: absolute;
  top: 24px;
  left: 100px;
  width: 72px;
  height: 60px;
  -webkit-transform: translate3d(var(--truck-base-x), calc(var(--truck-y)), 0);
          transform: translate3d(var(--truck-base-x), calc(var(--truck-y)), 0);
}
.pay-button .truck-wrapper .truck:before, .pay-button .truck-wrapper .truck:after {
  content: '';
  position: absolute;
  bottom: -9px;
  left: var(--l, 25px);
  width: 16px;
  height: 16px;
  border-radius: 50%;
  z-index: 2;
  box-shadow: inset 0 0 0 3px var(--c-wheel), inset 0 0 0 6px var(--c-wheel-inner);
  background: var(--c-wheel-dot);
  -webkit-transform: translateY(calc(var(--truck-y) * -1)) translateZ(0);
          transform: translateY(calc(var(--truck-y) * -1)) translateZ(0);
}
.pay-button .truck-wrapper .truck:after {
  --l: 85px;
}
.pay-button .truck-wrapper .truck .wheel,
.pay-button .truck-wrapper .truck .wheel:before {
  position: absolute;
  bottom: var(--b, -9px);
  left: var(--l, 6px);
  width: 16px;
  height: 16px;
  border-radius: 50%;
  background: var(--c-wheel);
  -webkit-transform: translateZ(0);
          transform: translateZ(0);
}
.pay-button .truck-wrapper .truck .wheel {
  -webkit-transform: translateY(calc(var(--truck-y) * -1)) translateZ(0);
          transform: translateY(calc(var(--truck-y) * -1)) translateZ(0);
}
.pay-button .truck-wrapper .truck .wheel:before {
  --l: 60px;
  --b: 0;
  content: '';
}
.pay-button .truck-wrapper .truck .light {
  position: absolute;
  right: -41px;
  bottom: 3px;
  width: 4px;
  height: 3px;
  border-radius: 1px 0 0 1px;
  background: var(--c-light);
}
.pay-button .truck-wrapper .truck .light:before, .pay-button .truck-wrapper .truck .light:after {
  content: '';
  position: absolute;
  left: 4px;
  top: -6px;
  display: block;
  width: 40px;
  height: 19px;
  background: var(--c-light-shine);
  opacity: var(--light-opacity);
  -webkit-clip-path: polygon(0 6px, 100% 0, 100% 80%, 0 9px);
          clip-path: polygon(0 6px, 100% 0, 100% 80%, 0 9px);
}
.pay-button .truck-wrapper .truck .light:after {
  left: -8px;
  -webkit-clip-path: polygon(11px 4px, 100% 0, 100% 80%, 11px 11px);
          clip-path: polygon(11px 4px, 100% 0, 100% 80%, 11px 11px);
}
.pay-button .truck-wrapper .truck .front,
.pay-button .truck-wrapper .truck .back,
.pay-button .truck-wrapper .truck .box {
  position: absolute;
}
.pay-button .truck-wrapper .truck .back {
  left: 0;
  bottom: 0;
  z-index: 1;
  width: 75px;
  height: 45px;
  border-radius: 3px 3px 0 0;
  background: var(--c-back-inner);
}
.pay-button .truck-wrapper .truck .back:before, .pay-button .truck-wrapper .truck .back:after {
  content: '';
  position: absolute;
}
.pay-button .truck-wrapper .truck .back:before {
  left: 17px;
  top: 0;
  right: 0;
  bottom: 0;
  z-index: 4;
  border-radius: 0 2px 0 0;
  background: var(--c-back);
}
.pay-button .truck-wrapper .truck .back:after {
  border-radius: 2px;
  width: 116px;
  height: 4px;
  left: -2px;
  bottom: -4px;
  background: var(--c-base);
}
.pay-button .truck-wrapper .truck .back .shadow {
  height: 44px;
  width: 14px;
  position: absolute;
  top: 0;
  left: 3px;
  z-index: 3;
  -webkit-clip-path: polygon(0 0, 100% 0, 100% 100%);
          clip-path: polygon(0 0, 100% 0, 100% 100%);
  background: rgba(0, 0, 0, 0.15);
}
.pay-button .truck-wrapper .truck .back svg {
  display: block;
  position: absolute;
  z-index: 5;
  left: 38px;
  top: 10px;
}
.pay-button .truck-wrapper .truck .back svg.icon {
  top: 30px;
  right: 20px;
  z-index: 2;
  left: auto;
}
.pay-button .truck-wrapper .truck .front {
  left: 75px;
  bottom: 0;
  height: 33px;
  width: 37px;
  -webkit-clip-path: polygon(55% 0, 72% 44%, 100% 58%, 100% 100%, 0 100%, 0 0);
          clip-path: polygon(55% 0, 72% 44%, 100% 58%, 100% 100%, 0 100%, 0 0);
  background: linear-gradient(84deg, var(--c-front-shadow) 0%, var(--c-front-shadow) 10%, var(--c-front) 12%, var(--c-front) 100%);
}
.pay-button .truck-wrapper .truck .front:before {
  content: '';
  position: absolute;
  width: 11px;
  height: 12px;
  left: 11px;
  top: 3px;
  -webkit-clip-path: polygon(0 0, 60% 0%, 100% 100%, 0% 100%);
          clip-path: polygon(0 0, 60% 0%, 100% 100%, 0% 100%);
  background: var(--c-window);
}

.shorticons {
  position: absolute;
  left: 50%;
  bottom: 14px;
  line-height: 32px;
  color: #fff;
  font-weight: 600;
  font-size: 14px;
  display: block;
  text-decoration: none;
  -webkit-transform: translateX(-50%);
          transform: translateX(-50%);
}

html {
  box-sizing: border-box;
  -webkit-font-smoothing: antialiased;
}

* {
  box-sizing: inherit;
}
*:before, *:after {
  box-sizing: inherit;
}

body {
  min-height: 100vh;
  display: -webkit-box;
  display: flex;
  font-family: 'Poppins', Arial;
  -webkit-box-pack: center;
          justify-content: center;
  -webkit-box-align: center;
          align-items: center;
  background: #000;
}
body .dribbble {
  position: fixed;
  display: block;
  right: 20px;
  bottom: 20px;
}
body .dribbble img {
  display: block;
  height: 28px;
}
body .twitter {
  position: fixed;
  display: block;
  right: 64px;
  bottom: 14px;
}
body .twitter svg {
  width: 32px;
  height: 32px;
  fill: #1da1f2;
}
</style>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	 <button class="pay-button">
    <span class="default">Yeah, I want that</span>
    <span class="success">
        Redirected
        <svg viewbox="0 0 12 10">
            <polyline points="1.5 6 4.5 9 10.5 1"></polyline>
        </svg>
    </span>
    <div class="truck-wrapper">
        <div class="truck">
            <div class="wheel"></div>
            <div class="back">
                <div class="shadow"></div>
                <svg width="19" height="22" viewBox="0 0 19 22" fill="none" xmlns="http://www.w3.org/2000/svg">
                    <path fill-rule="evenodd" clip-rule="evenodd" d="M9.62501 21.0936L10.308 16.8437L10.3521 16.6082C10.385 16.4034 10.4919 16.2161 10.6528 16.0812C10.8138 15.9463 11.0191 15.8719 11.2308 15.8719H11.7732C12.6772 15.8719 13.5078 15.7771 14.2419 15.5902C15.0252 15.391 15.7219 15.0807 16.3124 14.6686C16.9386 14.2316 17.4645 13.6667 17.8758 12.99C18.3096 12.2761 18.6282 11.4165 18.8228 10.4354C18.9947 9.56915 19.0269 8.79361 18.9189 8.1301C18.8045 7.42918 18.5293 6.8311 18.1012 6.35202C17.8415 6.06183 17.5093 5.81041 17.1137 5.60471L17.1044 5.59978L17.1042 5.58857C17.2423 4.72384 17.2371 4.00253 17.0884 3.3816C16.9391 2.75932 16.6367 2.19935 16.1633 1.67007C15.1825 0.573412 13.3986 0.0172424 10.8613 0.0172424H3.89303C3.6601 0.0172424 3.43403 0.099032 3.25683 0.247598C3.07962 0.396164 2.96225 0.602543 2.92571 0.828416L0.0242078 18.8833C-0.00228154 19.048 0.0459017 19.2154 0.156426 19.3418C0.266951 19.4688 0.427714 19.5417 0.597612 19.5417H4.92063L4.91675 19.5618L4.61989 21.4092C4.59705 21.5528 4.63907 21.6984 4.73521 21.8087C4.83135 21.9192 4.97133 21.9828 5.1193 21.9828H8.74515C8.94862 21.9828 9.14569 21.9113 9.30029 21.7816C9.45489 21.6518 9.55765 21.4719 9.58939 21.2749L9.62501 21.0936Z" fill="#27346A"/>
                    <path fill-rule="evenodd" clip-rule="evenodd" d="M7.14155 5.61211C7.18745 5.32596 7.37447 5.0918 7.62635 4.97326C7.74098 4.91948 7.86886 4.88945 8.00291 4.88945H13.465C14.1121 4.88945 14.7155 4.93113 15.2672 5.0183C15.4247 5.04317 15.578 5.07185 15.7271 5.10435C15.8762 5.13684 16.0207 5.17291 16.1607 5.21325C16.2308 5.23319 16.2996 5.25426 16.3674 5.27644C16.6382 5.36473 16.8903 5.4687 17.1223 5.58926C17.3959 3.87795 17.1205 2.7134 16.1772 1.65865C15.1386 0.49746 13.2624 0 10.8619 0H3.89363C3.40312 0 2.98545 0.350239 2.90895 0.825739L0.00745146 18.8806C-0.0498661 19.2369 0.230784 19.5589 0.59821 19.5589H4.9L7.14155 5.61211Z" fill="#27346A"/>
                    <path fill-rule="evenodd" clip-rule="evenodd" d="M17.1219 5.58917C17.1011 5.71981 17.078 5.85269 17.0506 5.98961C16.132 10.6193 12.9879 12.22 8.97251 12.22H6.92781C6.4373 12.22 6.02306 12.5704 5.94656 13.0459L4.60268 21.4066C4.55267 21.7181 4.79815 22 5.11945 22H8.74553C9.17461 22 9.53998 21.6937 9.60689 21.2775L9.64251 21.0967L10.3255 16.8463L10.3696 16.6115C10.4365 16.1954 10.8019 15.8891 11.231 15.8891H11.7733C15.2861 15.8891 18.0367 14.4886 18.8405 10.4385C19.1762 8.74625 19.0026 7.33364 18.1146 6.34052C17.846 6.04025 17.5117 5.79174 17.1219 5.58917Z" fill="#2790C3"/>
                    <path fill-rule="evenodd" clip-rule="evenodd" d="M16.1605 5.21323C16.0205 5.1729 15.876 5.13682 15.7268 5.10433C15.5777 5.07184 15.4245 5.04315 15.2669 5.01828C14.7152 4.93111 14.1119 4.88943 13.4647 4.88943H8.00267C7.86863 4.88943 7.74075 4.91946 7.62611 4.97324C7.37424 5.09178 7.18721 5.32595 7.14131 5.6121L5.98035 12.8351L5.94678 13.046C6.02328 12.5705 6.43752 12.22 6.92803 12.22H8.97273C12.9882 12.22 16.1322 10.6194 17.0509 5.98967C17.0783 5.85276 17.1013 5.71988 17.1221 5.58924C16.8901 5.46868 16.638 5.36471 16.3672 5.27642C16.2993 5.25424 16.2306 5.23318 16.1605 5.21323Z" fill="#1F264F"/>
                </svg>
                <svg class="icon" width="13" height="13" viewBox="0 0 13 13" fill="white" xmlns="http://www.w3.org/2000/svg">
                    <path d="M0.686523 3.6696C0.686523 2.74484 1.43619 1.99518 2.36094 1.99518H4.51495C5.26141 1.99518 5.95849 2.36824 6.37255 2.98934L6.38654 3.01032C6.80061 3.63142 7.49768 4.00448 8.24414 4.00448H11.0121C11.9369 4.00448 12.6865 4.75414 12.6865 5.6789V9.75337C12.6865 10.6781 11.9369 11.4278 11.0121 11.4278H2.36094C1.43619 11.4278 0.686523 10.6781 0.686523 9.75337V3.6696Z" />
                </svg>
                <svg class="icon" width="13" height="13" viewBox="0 0 13 13" fill="white" xmlns="http://www.w3.org/2000/svg">
                    <path fill-rule="evenodd" clip-rule="evenodd" d="M7.59157 12.0715C9.08477 10.7909 11.6916 8.18155 11.6916 5.57219C11.6916 2.74491 9.39966 0.452942 6.57238 0.452942C3.74509 0.452942 1.45312 2.74491 1.45312 5.57219C1.45312 8.18155 4.05998 10.7909 5.55318 12.0715C6.14618 12.5801 6.99857 12.5801 7.59157 12.0715ZM6.57257 7.40049C7.58231 7.40049 8.40087 6.58193 8.40087 5.57219C8.40087 4.56244 7.58231 3.74388 6.57257 3.74388C5.56282 3.74388 4.74426 4.56244 4.74426 5.57219C4.74426 6.58193 5.56282 7.40049 6.57257 7.40049Z" />
                </svg>
                <svg class="icon" width="13" height="13" viewBox="0 0 13 13" fill="white" xmlns="http://www.w3.org/2000/svg">
                    <path d="M6.62062 0.757893L1.93512 6.69646C1.71662 6.97339 1.91682 7.37691 2.27272 7.37691H5.53868C5.68442 7.37691 5.80257 7.4937 5.80257 7.63778L5.80257 12.1719C5.80257 12.5733 6.31785 12.7476 6.56786 12.4307L11.2534 6.49214C11.4719 6.2152 11.2717 5.81169 10.9158 5.81169L7.64979 5.81169C7.50405 5.81169 7.3859 5.6949 7.3859 5.55082V1.01674C7.3859 0.615298 6.87063 0.441017 6.62062 0.757893Z" />
                </svg>
                <svg class="icon" width="12" height="12" viewBox="0 0 12 12" fill="white" xmlns="http://www.w3.org/2000/svg">
                    <path d="M8.24784 1.00269C7.41809 1.03459 6.64049 1.35146 6.02993 1.87976L6 1.90653L5.97057 1.8798C5.32607 1.32223 4.49561 1.00003 3.61433 1.00003C1.61877 1.00003 0 2.63184 0 4.63507C0 6.41626 1.02322 8.06903 2.69417 9.60096C3.25904 10.1188 3.86492 10.5897 4.47699 11.0082L4.72424 11.1743C5.0008 11.3567 5.23339 11.4984 5.39787 11.5914C5.58475 11.6954 5.78882 11.75 5.99955 11.75C6.21191 11.75 6.42094 11.6944 6.60538 11.589C6.82023 11.467 7.1372 11.2713 7.52184 11.0083C8.13408 10.5896 8.73999 10.1189 9.30494 9.60105C10.9765 8.06904 12 6.41632 12 4.63507C12.0012 2.63228 10.3824 1.00003 8.3866 1.00003L8.24784 1.00269Z" />
                </svg>
            </div>
            <div class="front"></div>
            <div class="light"></div>
        </div>
    </div>
</button>

<a class="shorticons" href="http://shorticons.com/" target="_blank">shorticons.com</a>

<!-- dribbble - twitter -->
<a class="dribbble" href="https://dribbble.com/ai" target="_blank"><img src="https://cdn.dribbble.com/assets/dribbble-ball-mark-2bd45f09c2fb58dbbfb44766d5d1d07c5a12972d602ef8b32204d28fa3dda554.svg" alt=""></a>
<a class="twitter" target="_blank" href="https://twitter.com/aaroniker_me"><svg xmlns="http://www.w3.org/2000/svg" width="72" height="72" viewBox="0 0 72 72"><path d="M67.812 16.141a26.246 26.246 0 0 1-7.519 2.06 13.134 13.134 0 0 0 5.756-7.244 26.127 26.127 0 0 1-8.313 3.176A13.075 13.075 0 0 0 48.182 10c-7.229 0-13.092 5.861-13.092 13.093 0 1.026.118 2.021.338 2.981-10.885-.548-20.528-5.757-26.987-13.679a13.048 13.048 0 0 0-1.771 6.581c0 4.542 2.312 8.551 5.824 10.898a13.048 13.048 0 0 1-5.93-1.638c-.002.055-.002.11-.002.162 0 6.345 4.513 11.638 10.504 12.84a13.177 13.177 0 0 1-3.449.457c-.846 0-1.667-.078-2.465-.231 1.667 5.2 6.499 8.986 12.23 9.09a26.276 26.276 0 0 1-16.26 5.606A26.21 26.21 0 0 1 4 55.976a37.036 37.036 0 0 0 20.067 5.882c24.083 0 37.251-19.949 37.251-37.249 0-.566-.014-1.134-.039-1.694a26.597 26.597 0 0 0 6.533-6.774z"></path></svg></a>
<!-- partial -->
  <script src='https://cdnjs.cloudflare.com/ajax/libs/gsap/3.5.1/gsap.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/gsap/3.5.1/MotionPathPlugin.min.js'></script><script  src="./script.js"></script>

<script type="text/javascript">
const { to, set, from, fromTo, registerPlugin } = gsap

registerPlugin(MotionPathPlugin);

document.querySelectorAll('.pay-button').forEach(button => {
    button.addEventListener('pointerdown', e => {
        if(button.classList.contains('animating')) {
            return
        }
        to(button, {
            '--scale': .975,
            duration: .15
        })
    })
    button.addEventListener('pointerup', e => {
        if(button.classList.contains('animating')) {
            return
        }
        to(button, {
            '--scale': 1,
            duration: .15
        })
    })
    button.addEventListener('pointerleave', e => {
        if(button.classList.contains('animating')) {
            return
        }
        to(button, {
            '--scale': 1,
            duration: .15
        })
    })
    button.addEventListener('click', e => {

        e.preventDefault()

        button.classList.add('animating')

        if(button.classList.contains('done')) {
            to(button, {
                '--success-o': 0,
                duration: .15
            })
            to(button, {
                '--default-o': 1,
                duration: .4,
                clearProps: true,
                onComplete() {
                    button.classList.remove('animating', 'done')
                }
            })
            return
        }

        to(button, {
            '--rotate': '-90deg',
            '--y': '25px',
            '--default-o': 0,
            duration: .2
        })

        to(button, {
            keyframes: [{
                '--light-opacity': 1,
                duration: .3,
                delay: .15,
                onComplete() {
                    from(button.querySelectorAll('.icon'), {
                        stagger: .2,
                        opacity: 0,
                        duration: .15
                    })
                    set(button.querySelectorAll('.icon'), {
                        x: gsap.utils.random(-100, -80),
                        y: gsap.utils.random(-80, -60)
                    })
                    to(button.querySelectorAll('.icon'), {
                        stagger: .2,
                        duration: .5,
                        motionPath: {
                            path: [{
                                x: gsap.utils.random(-60, -40),
                                y: gsap.utils.random(-10, -30),
                            }, {
                                x: 0,
                                y: 0
                            }],
                            curviness: .5
                        },
                        rotation: `-=${gsap.utils.random(-720, 720)}`,
                    })
                }
            }, {
                '--truck-y': '1px',
                duration: .1,
                delay: .2
            }, {
                '--truck-y': '0px',
                duration: .1
            }, {
                '--truck-y': '1px',
                duration: .1,
            }, {
                '--truck-y': '0px',
                duration: .1
            }, {
                '--truck-y': '1px',
                duration: .1,
            }, {
                '--truck-y': '0px',
                duration: .1
            }, {
                '--truck-y': '1px',
                duration: .1
            }, {
                '--truck-y': '0px',
                duration: .1
            }],
            onComplete() {
                to(button, {
                    keyframes: [{
                        '--truck-base-x': '-4px',
                        duration: .4
                    }, {
                        '--truck-base-x': '60px',
                        duration: 1
                    }, {
                        '--truck-base-x': '20px',
                        duration: .6
                    }, {
                        '--truck-base-x': '300px',
                        duration: .4
                    }],
                    onComplete() {
                        button.classList.add('done')
                        button.classList.remove('animating')
                        to(button, {
                            keyframes: [{
                                '--rotate': '0deg',
                                '--y': '0px',
                                duration: .2
                            }, {
                                '--success-offset': '0px',
                                '--success-o': 1,
                                duration: .2
                            }]
                        })
                    }
                })
            }
        })

    })
})
</script>
</body>
</html>