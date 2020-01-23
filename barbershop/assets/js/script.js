let navMain = document.querySelector('.main-nav');
let navToggle = document.querySelector('.main-nav__toggle');
let link = document.querySelector('.main-nav__user-login');
let popup = document.querySelector(".modal-login");
let close = popup.querySelector(".modal-login__close");
let form = popup.querySelector("form");

navMain.classList.remove('main-nav--nojs');

navToggle.addEventListener('click', function() {
  if (navMain.classList.contains('main-nav--closed')) {
    navMain.classList.remove('main-nav--closed');
    navMain.classList.add('main-nav--opened');
  } else {
    navMain.classList.add('main-nav--closed');
    navMain.classList.remove('main-nav--opened');
  }
});

link.addEventListener("click", function(event) {
  event.preventDefault();
  popup.classList.add("modal-login--show");
});

close.addEventListener("click", function(event) {
  event.preventDefault();
  popup.classList.remove("modal-login--show");
 });