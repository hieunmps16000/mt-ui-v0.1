// Check menu level 3 overflow
function isMenuLevel3OverFolow() {
    const menuLevel3 = $("#ja-menungang .menu ul ul");
    const rect = menuLevel3[0].getBoundingClientRect();
    if (rect.left < 0 || rect.right > $(window).width() || rect.top < 0 || rect.bottom > $(window).height()) {
        menuLevel3.addClass("overflow");
    }
}

if ($("#ja-menungang .menu ul ul").length) {
    isMenuLevel3OverFolow();
}
