import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  const banner = document.getElementById("banner-typed-text") 
  if (banner) {
    new Typed(banner, {
      strings: ["Explore our", "Luxury helicopter offers!"],
      typeSpeed: 50,
      loop: true
    });
  }

}

export { loadDynamicBannerText };