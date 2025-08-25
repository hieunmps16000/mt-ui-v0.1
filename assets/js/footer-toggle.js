// Handle Footer Toggle
$(".footer-toggle").click(function(){
    if($(this).find('.workshome-title').hasClass('opendoor')){
        $(this).find('.workshome-title').removeClass('opendoor');
        $(this).find('.workshome-content').css({'display':'none',});
    }
    else{
        $(this).find('.workshome-title').removeClass('opendoor');
        $(this).find('.workshome-title').addClass('opendoor');
        $(this).find('.workshome-content').css({'display':'block',});
    }
});