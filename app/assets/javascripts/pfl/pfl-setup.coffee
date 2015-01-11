define [
		'backbone' # jquery and underscore was required as Backbone dependencies
	],
	() ->

		window.PFL = {}
		window.TILE_WIDTH = 20
		window.TILE_MARGIN = 1

		require [
				'pfl/helpers/common'
				'pfl/pfl-app/initialize'  # Start Backbone App
			],
			() ->

