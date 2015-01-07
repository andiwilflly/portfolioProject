define [
		'backbone' # jquery and underscore was required as Backbone dependencies
	],
	() ->
		require [
				'pfl/animation-controller'
				'pfl/test'
			],
			(AnimationController) ->
				animationController = new AnimationController
				animationController.start()