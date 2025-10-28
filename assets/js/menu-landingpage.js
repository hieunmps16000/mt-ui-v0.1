// Handle scroll menu
$(".MT-navbar .menu > li > a").removeAttr("href");
$(".MT-navbar .menu > li:first-child > a").attr("href", "/");

function hiddenMenuMobile() {
    $('.mobile_menu .noidung').removeClass('mnmb');
    $('.mobile_menu .nentat').removeClass('mnmb');
}

// About us
$('.item-1178').click(function() {
    hiddenMenuMobile();
    $('html, body').animate({
        scrollTop: $('.extra2').offset().top - 70
    }, 1000);
});