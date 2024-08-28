const boddy = document.body;
const toggler = document.getElementById('toggle_scheme');

document.addEventListener('DOMContentLoaded', (event) => {
  if (localStorage.getItem('darkScheme') === 'on') {
    boddy.classList.add('dark_scheme');
  }
});

toggler.onclick = function(e) {
  e.preventDefault();
  this.classList.toggle('dark_scheme_on');
  let darkSchemeEnabled = boddy.classList.toggle('dark_scheme');
  localStorage.setItem('darkScheme', darkSchemeEnabled ? 'on' : 'off');
};
