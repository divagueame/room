const burgerBtn = document.querySelector(".burger")
const mobileHeader = document.querySelector(".mobileHeader")
const closeCross = document.querySelector(".close-cross-wrap")

burgerBtn.addEventListener('click', function(){ 
  console.log("Should open")
  
  mobileHeader.classList.toggle("displayNone");

  // setTimeout(() => {
  //   mobileHeader.classList.toggle("displayNone");  
  // }, 600);
})


closeCross.addEventListener('click', function(){
  
  mobileHeader.classList.toggle("displayNone");
})



//SLIDER
const leftBtn = document.querySelector(".slider-controls-left-wrapper")
const rightBtn = document.querySelector(".slider-controls-right-wrapper")


leftBtn.addEventListener('click', moveLeft)
rightBtn.addEventListener('click', moveRight)

function moveLeft(){
  console.log("SHould move left")
}
function moveRight(){
  console.log("SHould move rigt")
}