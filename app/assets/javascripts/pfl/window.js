$(document).ready(function() {

    var windowHeight = $(window).height();
    var windowWidth = $(window).width();

    function resizeWindow() {
        windowHeight = $(window).height();
        windowWidth = $(window).width();
    }

    resizeWindow();

    var widthList = [];
    var heightList = [];

    $("[data-position]").each(function(){
        var sectionPosition = $(this).attr("data-position").split('.');
        widthList.push(sectionPosition[0]);
        heightList.push(sectionPosition[1]);
        $(this).css({
            top:sectionPosition[1]*windowHeight - windowHeight,
            left:sectionPosition[0]*windowWidth - windowWidth
        })
    });

    var maxWidth = getMaxOfArray(widthList);
    var maxHeight = getMaxOfArray(heightList);

    $("main").css({
        height: maxHeight*windowHeight,
        width: maxWidth*windowWidth
    });

    $(window).resize(function() {
        resizeWindow();
        $("main").css({
            height: maxHeight*windowHeight,
            width: maxWidth*windowWidth
        });
    });

    console.log(maxWidth,maxHeight);

    function getMaxOfArray(array) {
        return Math.max.apply(null, array);
    }

    function goTo(posX,posY) {

        var $el = $("[data-position='"+ posX +"."+ posY+"']");

        $('body,html').animate({
            scrollLeft: $el.offset().left,
            scrollTop: $el.offset().top
        }, 1000);
    }

    goTo(2,4);

    $(".link-portfolio").click(function(){
        goTo(2,4);
    });
    $(".link-skills").click(function(){
        goTo(3,6);
    });
    $(".link-work").click(function(){
        goTo(6,2);
    });
    $(".link-price").click(function(){
        goTo(7,8);
    });
    $(".link-about").click(function(){
        goTo(5,5);
    });
    $(".link-contacts").click(function(){
        goTo(8,3);
    });

});
