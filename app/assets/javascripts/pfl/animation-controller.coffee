define [
	'pfl/animated-elements/contact-tile'
	'pfl/animated-elements/work-tile'
], (ContactTile, WorkTile) ->
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
				$(v).css({
					'width': @tileItemsVhSize[$(v).attr('id')].width * @getVhAsPixels()
					'height': @tileItemsVhSize[$(v).attr('id')].height * @getVhAsPixels()
				})

		@runPortfolioTile = =>
			@defaults.startTile.css('opacity', 1).addClass('animated bounceInRight')
			@defaults.startTile.one('webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend', @runContactTile);

		@runContactTile = =>
			@contactTile = new ContactTile
			@contactTile.start()
			@contactTile.$el.one('webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend', @runWorkTile);

		@runWorkTile = =>
			@workTile = new WorkTile
			@workTile.start()

		return false

