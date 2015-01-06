$(document).ready(function() {

    function resizeWindow() {
        var windowHeight = $(window).height();
        var windowWidth = $(window).width();
    }

    resizeWindow();

    $(window).resize(function() {
        resizeWindow();
    });

    $("[data-position]").each(function(){
        var sectionPosition = $(this).attr("data-position").split('.');
        console.log(sectionPosition);
    });


});