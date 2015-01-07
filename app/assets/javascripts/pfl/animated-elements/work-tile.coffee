define [], ->
	->
		@$el = $('#work-tile')

		@start = =>
			@startMoveEl();

		@startMoveEl = =>
			@$el.css('opacity', 1).addClass('animated fadeInDownBig')

		return false
