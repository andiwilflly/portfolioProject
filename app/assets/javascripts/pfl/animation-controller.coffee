define [
	'pfl/animated-elements/portfolio-tile'
	'pfl/animated-elements/contact-tile'
	'pfl/animated-elements/work-tile'
	'pfl/animated-elements/about-tile'
	'pfl/animated-elements/reviews-tile'
	'pfl/animated-elements/skills-tile'
], (PortfolioTile, ContactTile, WorkTile, AboutTile, ReviewsTile, SkillsTile) ->
	->
		@defaults = {
			tile: $('#pflTile')
			tileItem: $('#pflTile').find('.pflTile__item')
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
				@tileItemsVhSize[$(v).attr('id')].width = Math.round $(v).width() / @getVhAsPixels()
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
			@portfolioTile.$el.one('webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend', @runContactTile)

		@runContactTile = =>
			@contactTile = new ContactTile
			@contactTile.start(@runWorkTile)

		@runWorkTile = =>
			@workTile = new WorkTile
			@workTile.start()
			@runAboutTile()

		@runAboutTile = =>
			@aboutTile = new AboutTile
			@aboutTile.start()
			@aboutTile.$el.one('webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend', @runReviewsTile);

		@runReviewsTile = =>
			@reviewsTile = new ReviewsTile
			@reviewsTile.start()
			@runSkillsTile()

		@runSkillsTile = =>
			@skillsTile = new SkillsTile
			@skillsTile.start()

		return false

