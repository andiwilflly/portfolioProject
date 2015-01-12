define([], function() {

	return function() {

		var that = this;  // cache this(module) to "that"

		that.$el = $('#about-tile'); // add to module a variable $el (dom-element)

		that.start = function(callback) { // call function "start" from animation-controller.coffee

			that.startMoveEl();

			// leastener of event "css3 animation"
			that.$el.one('webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend', function() {
				bindEvents();
				// this place to animation of block
				callback();
			});

		};

		that.startMoveEl = function() {
			that.$el.css('opacity', 1).addClass('animated rotateInUpLeft');
		};

		function bindEvents() {
			var tileWidth = that.$el.width();

			that.$el.mouseover(function() {
				that.$el.find("#about-tile__mask").stop().animate({
					left:tileWidth + 1
				},700)
			});

			that.$el.mouseout(function() {
				that.$el.find("#about-tile__mask").stop().animate({
					left:0
				},700)
			})
		}

		function setLinkHeight() {
			var tileHeight = that.$el.height();
			var sumLinks = that.$el.find(".about-tile__content").find("a").length;
			that.$el.find(".about-tile__content").find("a").height(tileHeight/sumLinks).css("line-height",tileHeight/sumLinks+"px")
			that.$el.find(".about-tile__content").find(".about-link-icon").height(tileHeight/sumLinks)
		}

		setLinkHeight();



		return false;
	};
});
