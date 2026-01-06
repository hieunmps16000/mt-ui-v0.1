// Handle Footer Toggle
function footerContentToggle() {
    $(".footer-toggle .workshome-title").click(function () {
        $(this).next().slideToggle();

        if ($(this).hasClass("opendoor")) {
            $(this).removeClass("opendoor");
        } else {
            $(this).removeClass("opendoor");
            $(this).addClass("opendoor");
        }
    });
}

if (window.innerWidth < 768) footerContentToggle();
