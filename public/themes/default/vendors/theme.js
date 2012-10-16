$(document).ready(function() {
	$('aside ul li a').live('click', function() {
		var siblingUl = $(this).parent().find('ul');
		if (siblingUl.length > 0) {
			if (siblingUl.hasClass('open')) {
				siblingUl.removeClass('open');
			} else {
				siblingUl.addClass('open');
			}

			return false;
		}
	});
});