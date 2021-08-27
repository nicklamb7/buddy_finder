import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  const banner = document.querySelector("#banner-typed-text")
  const cursor = document.querySelector(".typed-cursor")

  if(banner){
    new Typed(banner, {
    strings: ["Your Buddy is Waiting ⏳", "Your Buddy is Near 👀", "Your Buddy is Here 😉"],
    typeSpeed: 100,
    loop: true
    });
  }





}

export { loadDynamicBannerText };
