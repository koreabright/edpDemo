define(function(require, exports, module) {
	var winH = $(window).height();

	$('.content').css('minHeight', winH - 65 + 'px');
	$('.sidebar').css('minHeight', winH + 'px');
});