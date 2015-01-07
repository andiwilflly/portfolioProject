define [
		'backbone' # jquery and underscore was required as Backbone dependencies
	],
	() ->
		require [
				'pfl/test'
				'pfl/animation-controller'
        'pfl/window'
			],
			() ->
				console.log 'omg'