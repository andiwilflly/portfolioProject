define [
	'pfl/navigator'
	'pfl/main-menu'
], (navigator, MainMenu) ->
	Backbone.Router.extend

		routes:
			'':         "goToHomePage"
			'page/:id': "goToPage"

		goToHomePage: =>
			@section = $('#section-home')

			navigator.goTo(@section.attr('data-position'))

		goToPage: (sectionId) =>
			@section = $('#section-' + sectionId)

			navigator.goTo(@section.attr('data-position'))

			# Main menu actions
			mainMenu = new MainMenu
			mainMenu['start' + sectionId](@section.find(".js-main-menu"))
