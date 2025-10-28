// Handle add class when scroll
function toggleClassOnScroll(element) {
    let isFixed = false;

    $(window).on('scroll', function() {
        const scrollTop = $(this).scrollTop();
        let shouldBeFixed = scrollTop > 100;

        if (shouldBeFixed !== isFixed) {
            $(element).toggleClass('fixed', shouldBeFixed);
            isFixed = shouldBeFixed;
        }
    });
}

toggleClassOnScroll('#ja-menungang');