const initUpdateNavbarOnScroll = () => {
  const navbar = document.querySelector('.navbar-custom');
  if (navbar) {
    window.addEventListener('scroll', () => {
      if (window.scrollY >= window.innerHeight) {
        navbar.classList.remove('bg-transparent');
      } else {
        navbar.classList.add('bg-transparent');
      }
    });
  }
}

export { initUpdateNavbarOnScroll };