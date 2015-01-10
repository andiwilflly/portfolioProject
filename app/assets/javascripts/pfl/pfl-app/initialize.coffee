define [
	'pfl/pfl-app/routers/main-router'
], (MainRouter)->

	mainRouter = new MainRouter
	Backbone.history.start()