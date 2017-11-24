define(function(require, exports, module) {
	var winH = $(window).height();

	$('.content').css('height', winH - 65 + 'px');
	$('.sidebar').css('height', winH + 'px');
});