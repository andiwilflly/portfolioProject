define [
	'pfl/navigator'
], (navigator) ->
	Backbone.Router.extend

		routes:
			'':         "goToPage"
			'page/:id': "goToPage"

		goToPage: (id) =>
			@section = $('#section-' + id)

			navigator.goTo(@section.attr('data-position'))
