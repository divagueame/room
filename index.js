const burgerBtn = document.querySelector(".burger")
const openHeader = document.querySelector(".open-header")
const mobileHeader = document.querySelector(".mobileHeader")

burgerBtn.addEventListener('click', function(){

  // openHeader.classList.add("closed-header")
  // openHeader.classList.remove("open-header") 
  mobileHeader.classList.remove("mobileHeaderHidden")
})
