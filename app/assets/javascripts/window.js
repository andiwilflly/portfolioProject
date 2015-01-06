$(document).ready(function() {

    function resizeBoxes() {
        var browserWidth = $(window).width();
        var browserHeight = $(window).height();

        $('#main').css({
            width: browserWidth*3
        });

        $('.box').css({
            width: browserWidth,
            height: browserHeight
        });
    }

    resizeBoxes();

    $(window).resize(function() {
        resizeBoxes();
    });





});