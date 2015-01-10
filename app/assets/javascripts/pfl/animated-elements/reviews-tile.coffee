define [], ->
  ->
    @position = {

    }

    @$el = $('#reviews-tile')

    @start = =>
      @startMoveEl();

    @startMoveEl = =>
      @$el.css('opacity', 1).addClass('animated fadeInLeft')

    return false