define [], ->
	->
		@$el = $('#work-tile')

		@start = =>
			@startMoveEl();

		@startMoveEl = =>
			@$el.css('opacity', 1).addClass('animated fadeInUp')

		return false
