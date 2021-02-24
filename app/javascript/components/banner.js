import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Explore our", "Luxury helicopter offers!"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };