define [
	'pfl/pfl-app/routers/main-router'
	'pfl/animation-controller'
], (MainRouter, AnimationController)->

	mainRouter = new MainRouter

	animationController = new AnimationController
	animationController.start()

	mainRouter.on "route", (route, params) ->
		# TODO: Refresh pflTile effect for home page

	Backbone.history.start()