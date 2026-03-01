// Handle scroll to top
$("#Mod445").click(function () {
    $("body,html").animate({
        scrollTop: 0,
    });
});

$(window).on("scroll", function () {
    if ($(window).scrollTop() > 200) {
        $("#Mod445").stop(true, true).fadeIn(300);
    } else {
        $("#Mod445").stop(true, true).fadeOut(300);
    }
});
