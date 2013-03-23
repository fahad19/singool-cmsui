$(document).ready(function() {
	window.setTimeout(function() {
		$('aside ul li a').click(function() {
			var parentLi = $(this).parents('li');
			var siblingUl = parentLi.find('ul');
			if (siblingUl.length > 0) {
				if (parentLi.hasClass('open')) {
					parentLi.removeClass('open');
				} else {
					parentLi.addClass('open');
				}

				if ($(this).attr('href') == '#') {
					return false;
				}
			}
		});
	}, 1000);
});