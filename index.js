const burgerBtn = document.querySelector(".burger")
const mobileHeader = document.querySelector(".mobileHeader")
const closeCross = document.querySelector(".close-cross-wrap")

burgerBtn.addEventListener('click', function(){ 
  mobileHeader.classList.toggle("displayNone");
})


closeCross.addEventListener('click', function(){
  mobileHeader.classList.toggle("displayNone");
})



//SLIDER
const leftBtn =  document.querySelector(".leftControlWrapper")
const rightBtn = document.querySelector(".rightControlWrapper")
const images = document.querySelectorAll(".slideImg")

let currentPosition = 0
let imgElements = images.length

leftBtn.addEventListener('click',function(){
  if(currentPosition<imgElements-1){
    moveLeft(images[currentPosition])
    moveCenter(images[currentPosition+1])
    currentPosition++

  }
})

rightBtn.addEventListener('click',function(){
  if(currentPosition>=1){
    moveRight(images[currentPosition])
    moveCenter(images[currentPosition-1])
    currentPosition--
  }
})


function moveLeft(img){
  img.style.left = "-100%"
}

function moveRight(img){
  img.style.left = "100%"
}

function moveCenter(img){
  img.style.left ="0"
}