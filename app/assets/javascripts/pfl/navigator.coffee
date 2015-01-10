define [], () ->

	windowHeight = $(window).height()
	windowWidth = $(window).width()

	resizeWindow = ->
		windowHeight = $(window).height()
		windowWidth = $(window).width()

	getMaxOfArray = (array) ->
		Math.max.apply null, array

	resizeWindow()

	widthList = []
	heightList = []

	$("[data-position]").each ->
		sectionPosition = $(this).attr("data-position").split(".")
		widthList.push sectionPosition[0]
		heightList.push sectionPosition[1]
		$(this).css
			top: sectionPosition[1] * windowHeight - windowHeight
			left: sectionPosition[0] * windowWidth - windowWidth

	maxWidth = getMaxOfArray(widthList)
	maxHeight = getMaxOfArray(heightList)

	$("main").css
		height: maxHeight * windowHeight
		width: maxWidth * windowWidth

	$(window).resize ->
		resizeWindow()
		$("main").css
			height: maxHeight * windowHeight
			width: maxWidth * windowWidth

	# return obj with public functions
	return {
		goTo: (position) ->
			position = position.split(".")
			$el = $("[data-position='" + parseInt(position[0]) + "." + parseInt(position[1]) + "']")
			$("body,html").stop().animate
				scrollLeft: $el.offset().left
				scrollTop: $el.offset().top
			, 1000
	}

