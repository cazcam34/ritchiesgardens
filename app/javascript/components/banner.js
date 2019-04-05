import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  const type = document.querySelector('.typed');
  if (type) {
    new Typed('span', {
      strings: ["Welcome to Ritchie's Gardens", "Your trusted gardener"],
      typeSpeed: 70,
      loop: true
    });
  };
};

export { loadDynamicBannerText };
