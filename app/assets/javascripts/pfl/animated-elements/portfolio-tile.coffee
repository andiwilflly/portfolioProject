define [], ->
	->
		@position = {

		}

		@$el = $('#portfolio-tile')

		@start = =>
			@startMoveEl();

		@startMoveEl = =>
			@$el.css('opacity', 1).addClass('animated zoomInRight')

		return false
