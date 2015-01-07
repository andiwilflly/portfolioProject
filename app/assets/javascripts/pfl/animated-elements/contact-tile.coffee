define [], ->
	->
		@position = {

		}

		@$el = $('#contact-tile')

		@start = =>
			@startMoveEl();

		@startMoveEl = =>
			@$el.css('opacity', 1).addClass('animated rollIn')

		return false
