define [
		'backbone' # jquery and underscore was required as Backbone dependencies
	],
	() ->

		window.PFL = {}
		window.TILE_WIDTH = 20
		window.TILE_MARGIN = 1

		require [
				'pfl/main-menu'
				'pfl/helpers/common'
				'pfl/pfl-app/initialize'  # Start Backbone App
			],
			(MainMenu) ->
				mainMenu = new MainMenu
				mainMenu.startAbout($("#section-about").find(".js-main-menu"))
