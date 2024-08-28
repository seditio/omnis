preloader = $('div#preloader');

$(window).on('load', function () {
  preloader.fadeOut(200, function() {
    preloader.remove();
  });
});

// document.querySelector(window).load(function () {
//   preloader.fadeOut(200, function() {
//     preloader.remove();
//   });
// });

// preloader = document.querySelector('div#preloader');

// document.querySelector(window).on('load', function () {
//   preloader.fadeOut(200, function() {
//     preloader.remove();
//   });
// });
