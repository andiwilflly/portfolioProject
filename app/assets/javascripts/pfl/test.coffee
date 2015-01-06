$('document').ready(->

  $('.tile').each( (k, v)->
     $('.tile-navigator').append('<a>to ' + k + '</a>');
  )

  $('.tile-navigator').on('click', 'a', ->
    $("html, body").animate
      scrollTop: $($('.tile')[$(@).index()]).offset().top
    , 500
  )


)



