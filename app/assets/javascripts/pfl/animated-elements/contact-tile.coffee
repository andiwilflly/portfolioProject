define [], ->
	->

		@$el = $('#contact-tile')

		@start = (callback)=>
			@callback = callback
			@bindEvents()
			@startMoveEl()

		@bindEvents = =>
			@$el.hover (=>
				@showContent()
			), =>
				@hideContent()

		@startMoveEl = =>
			@$el.css('opacity', 1).addClass('animated fadeInDown')
			setTimeout( =>
					@$el.find('#contact-tile__mask > a').css('opacity', 1).addClass('animated bounceInUp')
				1500)
			@callback()

		@showContent = =>
			@$el.find('#contact-tile__mask').hide()
			@$el.find('#contact-tile__flap--right').stop().animate
				top: '-50%'
			, 300
			@$el.find('#contact-tile__flap--left').stop().animate
				bottom: '-50%'
			, 300

		@hideContent = =>
			@$el.find('#contact-tile__flap--right').stop().animate
				top: '0'
			, 300
			@$el.find('#contact-tile__flap--left').stop().animate
				bottom: '0'
			, 300, =>
					@$el.find('#contact-tile__mask').show()

		return false
