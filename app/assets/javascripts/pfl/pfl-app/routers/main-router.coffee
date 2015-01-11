define [
	'pfl/navigator'
], (navigator) ->
	Backbone.Router.extend

		routes:
			'':         "goToHomePage"
			'page/:id': "goToPage"

		goToHomePage: =>
			@section = $('#section-home')

			navigator.goTo(@section.attr('data-position'))

		goToPage: (id) =>
			@section = $('#section-' + id)

			navigator.goTo(@section.attr('data-position'))
