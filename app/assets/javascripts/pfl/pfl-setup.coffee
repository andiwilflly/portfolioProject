define [
		'backbone' # jquery and underscore was required as Backbone dependencies
	],
	() ->

		window.TILE_WIDTH = 20
		window.TILE_MARGIN = 1

		require [
				'pfl/pfl-app/initialize'  # Start Backbone App
				'pfl/animation-controller'
				'pfl/main-menu'
			],
			(PFL, AnimationController, MainMenu) ->
				animationController = new AnimationController
				animationController.start()

				mainMenu = new MainMenu
				mainMenu.startAbout($("#section-about").find(".js-main-menu"))
