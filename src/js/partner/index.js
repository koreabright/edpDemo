define(function (require, exports, module) {
	require('dep/My97DatePicker/WdatePicker');

	// 全局变量
	var node;
	var nodes = [];

	var customerEvent = {

	};

	var bindDomEvent = {

	};

	var bindDom = function () {
		$(nodes.p).on('click', function () {
			alert('p');
		});
	};

	var checkNode = function () {
		node = $('#partner')[0];

		if(!node) {
			throw new Error('element partner is not exist!');
		}
	};

	var getElements = function () {
		var partner = document.getElementById('partner');
		var list = partner.getElementsByTagName('*');
		var len = list.length;

		for(var i = 0; i < len; i++) {
			var attr = list[i].getAttribute('node-type');
			if (attr) {
				nodes[attr] = list[i];
			}
		}
	};

	var initPlugins = function () {

	};

	function init () {
		checkNode();
		getElements();
		initPlugins();
		bindDom();
	}

	init();
});