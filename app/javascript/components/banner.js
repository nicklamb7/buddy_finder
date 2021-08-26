import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Your Buddy is Waiting ⏳", "Your Buddy is Near 👀", "Your Buddy is Here 😉"],
    typeSpeed: 100,
    loop: true
  });
}

export { loadDynamicBannerText };
