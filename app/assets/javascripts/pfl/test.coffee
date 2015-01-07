$ ->

  $('.tile').each( (k, v)->
     $('.tile-navigator').append('<a>to ' + k + '</a>');
  )

  $('.tile-navigator').on('click', 'a', ->
    $("html, body").animate
      scrollTop: $($('.tile')[$(@).index()]).offset().top
    , 500
  )

  doSomething =->
    $(@).removeClass('bounceInLeft').addClass('hinge')
    $(@).one('webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend', doNext);


  doNext =->
    $(@).removeClass('hinge').addClass('zoomInUp')

  $('#animatedBitch').addClass('animated bounceInRight')
  $('#animatedBitch').one('webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend', doSomething);




