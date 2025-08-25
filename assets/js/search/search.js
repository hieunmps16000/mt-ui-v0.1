// Handle search
function handleSearch(selector) {
    const $searchSection = $(selector);

    $searchSection.on('click', '.workshome-title', function() {
        $('#bd').addClass('overflow-hidden');
        $searchSection.find('.workshome-content').addClass('active');
    });

    $searchSection.on('click', '.workshome-content', function() {
        $(this).removeClass('active');
        $('#bd').removeClass('overflow-hidden');
    });

    $searchSection.on('click', 'form', function(e) {
        e.stopPropagation();
    });
}

handleSearch('#Mod377');