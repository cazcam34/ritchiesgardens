const initUpdateNavbarOnScroll = () => {
  const navbar = document.querySelector('.navbar-wagon');
  const banner = document.querySelector('.banner');
  if (navbar) {
    window.addEventListener('scroll', () => {
      console.log(window.innerHeight)
      if (window.scrollY >= banner.offsetHeight) {
        navbar.classList.add('navbar-wagon-black');
      } else {
        navbar.classList.remove('navbar-wagon-black');
      }
    });
  }
};

export { initUpdateNavbarOnScroll };
