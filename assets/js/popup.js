function EventMTPopup(current_mt_popup) {
    setTimeout(() => {
        current_mt_popup.addClass("ON");
        current_mt_popup.find(".mt_popup_2, .mt_popup_1_1").click(function () {
            current_mt_popup.removeClass("ON");
        });
    }, 3000);
}

function TimeoutMTPopup(current_mt_popup) {
    if (current_mt_popup.attr("data-batsau") == 0) {
        EventMTPopup(current_mt_popup);
    } else {
        var timeout_mt_popup = current_mt_popup.attr("data-batsau");
        setTimeout(function () {
            EventMTPopup(current_mt_popup);
        }, timeout_mt_popup * 1000);
    }
}

$(window).load(function () {
    $(".mt_popup").each(function () {
        var current_mt_popup = $(this);
        if (current_mt_popup.attr("data-scrollmoibat") == 0) {
            TimeoutMTPopup(current_mt_popup);
        } else {
            $(window).scroll(function () {
                TimeoutMTPopup(current_mt_popup);
            });
        }
    });
});
