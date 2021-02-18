function isInView(el) {
  let box = el.getBoundingClientRect();
  return box.top < window.innerHeight && box.bottom >= 0;
}


let x=document.getElementById('.mydiv');
isInView(x);