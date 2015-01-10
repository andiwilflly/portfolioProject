define([],function() {

	return function() {
		var that = this;

		that.start = function() {
			console.log(that.$el)
		};

		that.startAbout = function($el) {
			that.$el = $el;


		};
	};


});