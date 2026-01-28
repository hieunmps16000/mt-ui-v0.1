function toggleAccordionBlog(modId) {
    const $module = $(modId);
    const $items = $module.find(".catItemTitle");

    $items.off("click").on("click", function () {
        const $current = $(this);
        const isActive = $current.hasClass("active");

        // Ẩn tất cả trước
        $module.find(".catItemExtraFields").slideUp();
        $items.removeClass("active");

        // Nếu chưa active thì mở
        if (!isActive) {
            $current.addClass("active");
            $current.next(".catItemExtraFields").slideDown();
        }
    });
}

toggleAccordionBlog("#Mod432");
