var ontop = $('a#ontop');

$().ready(function() {

	// Click to copy

	if ($('ul#attachments').length > 0) {
		$('blockquote').on("click", function() {
			value = $(this).attr('data-domain') + $(this).text(); // Upto this I am getting value
			var $temp = $("<input>");
			$("body").append($temp);
			$temp.val(value).select();
			document.execCommand("copy");
			$temp.remove();
		});
	};

	if ($('div#photo-gallery').length > 0) {
		$('div#photo-gallery').magnificPopup({
			delegate: 'a',
			type: 'image',
			gallery: {
				enabled: true
			},
			removalDelay: 600,
			mainClass: 'mfp-fade',
		});
	}

	ontop.on({
		click: function(e) {
			e.preventDefault();
			$("html, body").animate({
				scrollTop: 0
			}, 1000);
		}
	});

	$('a#close_offcanvas').on('click', function(e) {
		e.preventDefault();
		$('div#offcanvas').removeClass('active');
	});

	$('a#toggle_search').on('click', function(e) {
		e.preventDefault();
		$('div#offcanvas').removeClass('active');
		$('div#search_panel').toggleClass('active');
	});

	$('a#toggle_offcanvas').on('click', function(e) {
		e.preventDefault();
		$('div#search_panel').removeClass('active');
		$('div#offcanvas').toggleClass('active');
	});

	// $('a#toggle_scheme').on('click', function(e) {
	// 	e.preventDefault();
	// });

	$(window).click(function() {
	  $('div#search_panel, div#offcanvas').removeClass('active');
	});

	$('div#search_panel, a#toggle_search, a#toggle_offcanvas, div#offcanvas').click(function(event) {
	  event.stopPropagation();
	});

	// $('div#search_panel').on('focusout', function() {
	//   $('div#search_panel').removeClass('active');
	// });

	$(document).on('keyup', function(e) {
	  if (e.key == "Escape") {
			$('div#search_panel, div#offcanvas').removeClass('active');
		}
	});

	// function keyPress(e) {
  //   if (e.key === "Escape") {
  //     $('div#search_panel').removeClass('active');
  //   }
	// };

});

$(window).scroll( function() {

	if ($(document).scrollTop() == 0) {
		$('body').removeAttr('id');
	} else {
		$('body').attr('id', 'scrolled-down');
	};

	if ($(this).scrollTop() > 400) {
		ontop.addClass('vis')
	} else {
		ontop.removeClass('vis')
	};

});
