define [], ->
	->
		@$el = $('#about-tile')

		@start = =>
			@startMoveEl();

		@startMoveEl = =>
			@$el.css('opacity', 1).addClass('animated fadeInLeft')

		return false
