define [], ->
  ->
    @position = {

    }

    @$el = $('#contact-tile')

    @start = =>
      @startMoveEl()

    @startMoveEl = =>
      @$el.css('opacity', 1).addClass('animated rotateInDownRight')

    @customAnimation = (runWorkTile)=>
      @$el.animate({
        opacity:1
      },200,->
        runWorkTile()
      )



    return false
