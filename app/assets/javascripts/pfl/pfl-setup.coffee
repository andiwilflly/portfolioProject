define [
		'backbone' # jquery and underscore was required as Backbone dependencies
	],
	() ->

		window.TILE_WIDTH = 20
		window.TILE_MARGIN = 1

		require [
				'pfl/animation-controller'
				'pfl/main-menu'
				'pfl/window'
				'pfl/test'
			],
			(AnimationController, MainMenu) ->
				animationController = new AnimationController
				animationController.start()
				mainMenu = new MainMenu
				mainMenu.startAbout($("#section-about").find(".js-main-menu"))

