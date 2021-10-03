warning: LF will be replaced by CRLF in index.html.
The file will have its original line endings in your working directory
[1mdiff --git a/index.html b/index.html[m
[1mindex 84f51fe..41849a3 100644[m
[1m--- a/index.html[m
[1m+++ b/index.html[m
[36m@@ -11,21 +11,17 @@[m
   <link rel="stylesheet" href="style.css">[m
 </head>[m
 <body>[m
[31m-[m
[31m-[m
[31m-<!-- Initial mobile state  -->[m
[32m+[m[41m  [m
 <div class="open-header">[m
   <div class="logo-wrapper">[m
     <img src="./images/logo.svg"  class="logo-img" alt="Room logo">[m
   </div>[m
[31m-  [m
   <img src="./images/icon-hamburger.svg" class="burger">[m
[31m-[m
 </div>[m
 [m
[31m-  <!-- <div class="blackbg"></div> -->[m
[31m-<!-- Showing menu mobile -->[m
[31m-  <div class="mobileHeader mobileHeaderHidden">[m
[32m+[m
[32m+[m[32m<!-- Showing menu mobile -->[m[41m [m
[32m+[m[32m  <div class="mobileHeader displayNone">[m
     <div class="whiteBarHeader">[m
       <div class="menu">[m
         <div class="close-cross-wrap">[m
[36m@@ -37,14 +33,11 @@[m
         <div>contact</div>[m
       </div>[m
     </div>[m
[31m-[m
   </div>[m
 [m
 [m
[31m-<!-- <div class="header">[m
[31m-  <div class="menu-burger"></div>[m
[31m-  <div class="logo"></div>[m
[31m-</div> -->[m
[32m+[m
[32m+[m[41m  [m
 [m
 [m
 <div class="slider-wrap">[m
[36m@@ -57,10 +50,12 @@[m
         <div class="slider-controls-right"></div>[m
       </div>      [m
     </div>[m
[32m+[m[32m    <div class="images-mobile">[m
[32m+[m[32m      <div class="left-img1-mobile"></div>[m
[32m+[m[32m      <div class="left-img2-mobile"></div>[m
[32m+[m[32m      <div class="left-img3-mobile"></div>[m
[32m+[m[32m    </div>[m
     [m
[31m-    <div class="left-img1-mobile"></div>[m
[31m-    <div class="left-img2-mobile"></div>[m
[31m-    <div class="left-img3-mobile"></div>[m
   </div>[m
   [m
   <div class="right-slider">[m
[1mdiff --git a/index.js b/index.js[m
[1mindex 131bf32..34c4462 100644[m
[1m--- a/index.js[m
[1m+++ b/index.js[m
[36m@@ -1,10 +1,36 @@[m
 const burgerBtn = document.querySelector(".burger")[m
[31m-const openHeader = document.querySelector(".open-header")[m
 const mobileHeader = document.querySelector(".mobileHeader")[m
[32m+[m[32mconst closeCross = document.querySelector(".close-cross-wrap")[m
 [m
[31m-burgerBtn.addEventListener('click', function(){[m
[32m+[m[32mburgerBtn.addEventListener('click', function(){[m[41m [m
[32m+[m[32m  console.log("Should open")[m
[32m+[m[41m  [m
[32m+[m[32m  mobileHeader.classList.toggle("displayNone");[m
 [m
[31m-  // openHeader.classList.add("closed-header")[m
[31m-  // openHeader.classList.remove("open-header") [m
[31m-  mobileHeader.classList.remove("mobileHeaderHidden")[m
[32m+[m[32m  // setTimeout(() => {[m
[32m+[m[32m  //   mobileHeader.classList.toggle("displayNone");[m[41m  [m
[32m+[m[32m  // }, 600);[m
 })[m
[32m+[m
[32m+[m
[32m+[m[32mcloseCross.addEventListener('click', function(){[m
[32m+[m[41m  [m
[32m+[m[32m  mobileHeader.classList.toggle("displayNone");[m
[32m+[m[32m})[m
[32m+[m
[32m+[m
[32m+[m
[32m+[m[32m//SLIDER[m
[32m+[m[32mconst leftBtn = document.querySelector(".slider-controls-left-wrapper")[m
[32m+[m[32mconst rightBtn = document.querySelector(".slider-controls-right-wrapper")[m
[32m+[m
[32m+[m
[32m+[m[32mleftBtn.addEventListener('click', moveLeft)[m
[32m+[m[32mrightBtn.addEventListener('click', moveRight)[m
[32m+[m
[32m+[m[32mfunction moveLeft(){[m
[32m+[m[32m  console.log("SHould move left")[m
[32m+[m[32m}[m
[32m+[m[32mfunction moveRight(){[m
[32m+[m[32m  console.log("SHould move rigt")[m
[32m+[m[32m}[m
\ No newline at end of file[m
[1mdiff --git a/style.css b/style.css[m
[1mindex 3a58f8f..c1bdd3a 100644[m
[1m--- a/style.css[m
[1m+++ b/style.css[m
[36m@@ -13,55 +13,35 @@[m [mhtml, body {[m
 [m
 .open-header {[m
   position: relative;[m
[31m-  /* display: none; */[m
[31m-  z-index: 3; [m
[31m-  /* background-color: blue; */[m
[31m-  [m
[31m-    [m
[31m-}[m
[31m-.closed-header{[m
[31m-  position: relative;[m
[31m-  /* z-index: -2 */[m
[32m+[m[32m  z-index: 13;[m[41m     [m
 }[m
 [m
 .logo-wrapper {[m
   position: absolute;[m
   display: flex;[m
   justify-content: center;[m
[31m-  /* margin: auto; */[m
   width: 100%;[m
[31m-  /* background-color: rgb(77, 102, 102); */[m
 }[m
 .logo-img {[m
[31m-  /* position: absolute; */[m
   display: block;[m
   margin-left: auto;[m
   margin-right: auto;[m
   height: 16px;[m
   margin-top: 25px;[m
[31m-  /* background-color: ; */[m
[31m-  [m
 }[m
 .burger {[m
   position: absolute;[m
[31m-  /* background-color: hsl(0, 37%, 53%); */[m
   margin-top: 25px;[m
   margin-left: 20px;[m
 }[m
 [m
[31m-.blackbg{[m
[31m-  /* display: none; */[m
[31m-  position: fixed;[m
[31m-  height: 1000vh;[m
[31m-  min-width: 100%;[m
[31m-  /* z-index: 1; */[m
[31m-  background-color: rgba(0, 0, 0, 0.5);[m
[31m-  /* top:-999vh */[m
[32m+[m[32m.burger:hover{[m
[32m+[m[32m  cursor: pointer;[m
 }[m
[31m-[m
[31m-.blackbgHidden {[m
[31m-  background-color: rgba(0, 0, 0, 0);[m
[32m+[m[32m.displayNone {[m
[32m+[m[32m  display: none;[m
 }[m
[32m+[m
 .mobileHeader{[m
   position: fixed;[m
   height: 1000vh;[m
[36m@@ -70,13 +50,18 @@[m [mhtml, body {[m
   background-color: rgba(0, 0, 0, 0.5);[m
   /* top:-22px; */[m
   /* display: none; */[m
[31m-  /* transition: top 1000ms ease-in-out; */[m
[32m+[m[32m  /* transition: all 500ms ease-in-out; */[m
 }[m
 [m
 .mobileHeaderHidden {[m
[31m-  top: -110px;[m
[32m+[m[32m  /* top: -110px; */[m
   background-color: rgba(0, 0, 0, 0);[m
[31m-  z-index: -2;[m
[32m+[m[32m  /* z-index: -2; */[m
[32m+[m[32m  transition: all 1000ms ease-in-out;[m
[32m+[m[32m  transform: translateY(-110px);[m
[32m+[m[32m}[m
[32m+[m[32m.mobileHeaderHiddenHeight {[m
[32m+[m[32m  height: 0px;[m
 }[m
 [m
 .whiteBarHeader{[m
[36m@@ -113,6 +98,9 @@[m [mcolor: rgba(160, 192, 45, 0.527);[m
   width: 16px;[m
   height: 16px;[m
 }[m
[32m+[m[32m.close-cross:hover {[m
[32m+[m[32m  cursor: pointer;[m
[32m+[m[32m}[m
 .menu {[m
   width: 100%;[m
   font-weight: 700;[m
[36m@@ -127,32 +115,51 @@[m [mcolor: rgba(160, 192, 45, 0.527);[m
   color: hsl(0, 0%, 27%);[m
 }[m
 [m
[32m+[m
[32m+[m[32m/* SLIDER WRAP */[m
 .slider-wrap {[m
   display: flex;[m
   flex-direction: column;[m
   position: relative;[m
[32m+[m[32m  z-index: 2;[m
 }[m
 [m
[32m+[m
[32m+[m
 .left-slider {[m
   position: relative;[m
 }[m
 [m
[32m+[m
[32m+[m[32m.images-mobile {[m
[32m+[m[32m  background-color: burlywood;[m
[32m+[m[32m  display: flex;[m
[32m+[m[32m  flex-wrap: nowrap;[m
[32m+[m[32m  /* position: relative; */[m
[32m+[m[32m  width: 305%;[m
[32m+[m[32m  height: 370px;[m
[32m+[m[32m  overflow-x: auto;[m
[32m+[m
[32m+[m[32m}[m
[32m+[m
[32m+[m
 .left-img1-mobile, .left-img2-mobile, .left-img3-mobile {[m
   height: 370px;[m
   /* background-color: lime; */[m
   background-size:  cover;[m
   background-repeat: no-repeat;[m
[32m+[m[32m  width: 33%;[m
 }[m
 .left-img1-mobile{[m
   background-image: url('./images/mobile-image-hero-1.jpg');[m
 }[m
 .left-img2-mobile{[m
   background-image: url('./images/mobile-image-hero-2.jpg');[m
[31m-  display: none;[m
[32m+[m[32m  /* display: none; */[m
 }[m
 .left-img3-mobile{[m
   background-image: url('./images/mobile-image-hero-3.jpg');[m
[31m-  display: none;[m
[32m+[m[32m  /* display: none; */[m
 }[m
 [m
 .left-img1{[m
[36m@@ -193,7 +200,8 @@[m [mcolor: rgba(160, 192, 45, 0.527);[m
 }[m
 [m
 .slider-controls-left-wrapper:hover, .slider-controls-right-wrapper:hover {[m
[31m-  background-color: hsl(0, 0%, 63%)[m
[32m+[m[32m  background-color: hsl(0, 0%, 63%);[m
[32m+[m[32m  cursor: pointer;[m
   [m
 }[m
 .card-title {[m
[36m@@ -201,7 +209,6 @@[m [mcolor: rgba(160, 192, 45, 0.527);[m
   font-weight: 700;[m
   margin-top: 40px;[m
   margin-bottom: 1.3rem;[m
[31m-  [m
 }[m
 [m
 [m
[36m@@ -241,6 +248,9 @@[m [mcolor: rgba(160, 192, 45, 0.527);[m
   display: none;[m
 }[m
 [m
[32m+[m
[32m+[m
[32m+[m
 /* BOTTOM PART */[m
 [m
 .bottom-info-wrap {[m
