define([],function() {

	return function() {
		var that = this;

		that.start = function() {
			that.addHover()
		};

		that.addHover = function() {
			that.$el.find('.main-menu__item').hover(function() {
				$(this).addClass('animated tada');
			}, function() {
				$(this).removeClass('tada');
			});
		};

		that.starthome = function($el) {
			that.$el = $el;
			that.start();
		};

		that.startabout = function($el) {
			that.$el = $el;
			that.start();
		};
	};


});
