const initUpdateNavbarOnScroll = () => {
  const navbar = document.querySelector('.nav-fixed');
  if (navbar) {
    window.addEventListener('scroll', () => {
      if (window.scrollY >= window.innerHeight) {
        navbar.classList.add('back-white');
      } else {
        navbar.classList.remove('back-white');
      }
    });
  }
}

const toggleNavbar = () => {
  const navToggle = document.querySelector(".nav-toggle");
  const links = document.querySelector(".links");

  navToggle.addEventListener("click", function () {
    links.classList.toggle("show-links");
  });
}
export { initUpdateNavbarOnScroll, toggleNavbar };