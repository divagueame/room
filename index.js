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

rightBtn.addEventListener('click',function(){
  if(currentPosition<imgElements-1){
    moveLeft(images[currentPosition])
    moveCenter(images[currentPosition+1])
    changeCardRight(currentPosition)
    currentPosition++

  }
})

leftBtn.addEventListener('click',function(){
  if(currentPosition>=1){
    moveRight(images[currentPosition])
    moveCenter(images[currentPosition-1])
    changeCardLeft(currentPosition)
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

function changeCardRight(current){
  // console.log(current+1)
  const cards = document.querySelectorAll(".card")
  cards.forEach(function(card,index){
    
    if(index-1==current){
      card.style.display = 'block'
    }else{
      card.style.display = 'none'
    }
  })
}


function changeCardLeft(current){
  // console.log(current+1)
  const cards = document.querySelectorAll(".card")
  cards.forEach(function(card,index){
    
    if(index+1==current){
      card.style.display = 'block'
      // console.log(card,index, current)
        
      
      
    }else{
      
      card.style.display = 'none'
    }
  })
}
