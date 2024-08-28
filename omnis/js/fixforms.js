$(document).ready(function() {

/* Page Add/Edit Forms */

  $('form[name=pageform] input[type=text], form[name=profile] input[type=text]').addClass('form-control');
  $('form[name=pageform] textarea:not(.editor), form[name=profile] textarea:not(.editor), form[name=useredit] textarea:not(.editor)').addClass('form-control');
  $('form select').addClass('form-select').css({
    'width': 'auto',
    'display': 'inline-block'
  });
  $('form select option').addClass('fs-6');

/* User Auth/Register/Profile & Feedback Forms */

  $('input[name^=ruser]:not([type=radio]):not([type=checkbox])').addClass('form-control');
  $('input[name=rpassword]').addClass('form-control');
  $('input[name=rpassword1]').addClass('form-control');
  $('input[name=rpassword2]').addClass('form-control');
  $('input[name=ruseremail]').addClass('form-control');
  $('input[name=rverify]').addClass('form-control');
  $('input[name=rsubject]').addClass('form-control');

  $('input[name=roldpass]').addClass('form-control');
  $('input[name=rnewpass1]').addClass('form-control');
  $('input[name=rnewpass2]').addClass('form-control');

  $('input[name=rname]').addClass('form-control');

  $('input[name=remail]').addClass('form-control');
  $('textarea[name=rtext]:not(.minieditor)').addClass('form-control');
  $('input[name=rfeedbackreq]').addClass('form-control');

});
