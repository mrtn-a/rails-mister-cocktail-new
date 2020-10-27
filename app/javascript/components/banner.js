import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Fill up your cup", "Add a new flavour in your life", "Made from best things"],
    typeSpeed: 70,
    loop: true
  });
}

export { loadDynamicBannerText };
