define(['dep/jquery'], function() {
	var winH = $(window).height();

	$('.content').css('minHeight', winH - 65 + 'px');
	$('.sidebar').css('minHeight', winH + 'px');
});