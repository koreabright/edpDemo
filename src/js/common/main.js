require.config({
	baseUrl: '/src/js'
})
require(['base'], function(base) {
	console.log('This is main');

	base.base();
});
