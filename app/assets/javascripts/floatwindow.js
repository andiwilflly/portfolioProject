$(document).ready(function(){
    function resizeBoxes() {
        var browserWidth = $(window).width();
        var browserHeight = $(window).height();
        $('#main').css({
            width: browserWidth*3,
        });
        $('.box').css({
            width: browserWidth,
            height: browserHeight,
        });
    }
    resizeBoxes();
    $(window).resize(function() {
        resizeBoxes();
    });
    $('nav ul li a').click(function(){
        return false;
    });
    function goTo(horizontal,vertical) {
        var browserWidth = $(window).width();
        var browserHeight = $(window).height();
        $('#main').animate({
            marginLeft: '-'+browserWidth*horizontal,
            marginTop: '-'+browserHeight*vertical
        }, 1000);
    }
    $('#link-main a').click(function(){
        goTo(0,0);
    });
    $('#link-skills a').click(function(){
        goTo(1,0);
    });
    $('#link-work a').click(function(){
        goTo(2,0);
    });
    $('#link-about a').click(function(){
        goTo(0,1);
    });
    $('#link-price a').click(function(){
        goTo(1,1);
    });
    $('#link-portfolio a').click(function(){
        goTo(2,1);
    });
    $('#link-reviews a').click(function(){
        goTo(0,2);
    });
    $('#link-contacts a').click(function(){
        goTo(1,2);
    });
    $('#link-feedback a').click(function(){
        goTo(2,2);
    });
});