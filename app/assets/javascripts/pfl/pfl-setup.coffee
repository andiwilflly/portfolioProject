define [
		'backbone' # jquery and underscore was required as Backbone dependencies
	],
	() ->

		window.TILE_WIDTH = 20
		window.TILE_MARGIN = 1

		require [
				'pfl/animation-controller'
				'pfl/test'
			],
			(AnimationController) ->
				animationController = new AnimationController
				animationController.start()