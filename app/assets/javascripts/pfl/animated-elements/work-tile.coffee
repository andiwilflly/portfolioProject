define [], ->
	->
		@$el = $('#work-tile')

		@start = =>
			@startMoveEl();
			console.log window.TILE_WIDTH

		@startMoveEl = =>
			@$el.css('opacity', 1).addClass('animated fadeInUp')

		return false
