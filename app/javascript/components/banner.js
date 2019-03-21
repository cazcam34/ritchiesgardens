import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Welcome to Ritchie's Gardens", "Your trusted gardener"],
    typeSpeed: 50,
    loop: true
  });
};

export { loadDynamicBannerText };
