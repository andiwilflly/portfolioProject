define [
	'pfl/animated-elements/portfolio-tile'
	'pfl/animated-elements/contact-tile'
	'pfl/animated-elements/work-tile'
	'pfl/animated-elements/about-tile'
], (PortfolioTile, ContactTile, WorkTile, AboutTile) ->
	->
		@defaults = {
			tile:      $('#pflTile')
			tileItem:  $('#pflTile').find('.pflTile__item')
			startTile: $('#portfolio-tile')
		}

		@start = =>
			@getTilesSizeInVh()
			@setTilesSizeInPx()
			@runPortfolioTile()

		@getVhAsPixels = =>
			$('#vh-example').width()

		@getTilesSizeInVh = =>
			@tileItemsVhSize = {}
			$.each @defaults.tileItem, (k, v) =>
				@tileItemsVhSize[$(v).attr('id')] = {}
				@tileItemsVhSize[$(v).attr('id')].width =  Math.round $(v).width() / @getVhAsPixels()
				@tileItemsVhSize[$(v).attr('id')].height = Math.round $(v).height() / @getVhAsPixels()

		@setTilesSizeInPx = =>
			vh = $('#vh-example').width()
			$.each @defaults.tileItem, (k, v) =>
				$(v).css(
					'width': @tileItemsVhSize[$(v).attr('id')].width * @getVhAsPixels()
					'height': @tileItemsVhSize[$(v).attr('id')].height * @getVhAsPixels()
				)

		@runPortfolioTile = =>
			@portfolioTile = new PortfolioTile
			@portfolioTile.start()
			@portfolioTile.$el.one('webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend', @runContactTile);

		@runContactTile = =>
			@contactTile = new ContactTile
			@contactTile.start()
			@contactTile.$el.one('webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend', @runWorkTile);

		@runWorkTile = =>
			@workTile = new WorkTile
			@workTile.start()
			@workTile.$el.one('webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend', @runAboutTile);

		@runAboutTile = =>
			@aboutTile = new AboutTile
			@aboutTile.start()

		return false

