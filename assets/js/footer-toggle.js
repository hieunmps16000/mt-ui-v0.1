// Handle Footer Toggle
$(".footer-toggle").click(function(){
    $(this).find('.workshome-content').slideToggle();
    
    if($(this).find('.workshome-title').hasClass('opendoor')){
        $(this).find('.workshome-title').removeClass('opendoor');
    }
    else{
        $(this).find('.workshome-title').removeClass('opendoor');
        $(this).find('.workshome-title').addClass('opendoor');
    }
});