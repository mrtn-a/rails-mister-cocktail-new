const initUpdateNavbarOnScroll = () => {
  const navbar = document.querySelector('.navbar-lewagon');
  if (navbar) {
    window.addEventListener('scroll', () => {
      if (window.scrollY >= window.innerHeight/2) {
        navbar.classList.add('navbar-lewagon-transparent-to-white');
      } else {
        navbar.classList.remove('navbar-lewagon-transparent-to-white');
      }
    });
  }
}

export { initUpdateNavbarOnScroll };
