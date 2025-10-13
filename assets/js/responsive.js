jQuery(document).ready(function($){
	// Quy định các menu có trên web
	var ten = [];
	var menu = [];
	ten[0] = '';
	menu[0] = $('#ja-menungang');
	// ten[1] = 'Sản phẩm';
	// menu[1] = $('#Mod326');
	// Tạo html menu
	var htmlmenu = '';
	var icon = '';
	for(i=0;i<menu.length;i++){
		
		if(i==0){
			icon = '<i class="fa fa-bars"></i>';
		}
		if(i==1){
			icon = '<i class="fa fa-list-ul"></i>';
		}
		
		htmlmenu = htmlmenu + '<div class="mobile_' + i + '"><div class="tieude">' + icon + '</div><div class="noidung"><ul>' + menu[i].find('.menu').html() + '</ul></div></div>';
	}
	htmlmenu = '<div class="mobile_menu">' + htmlmenu + '<div class="nentat"></div></div>';
	$('.header2 .main2').append(htmlmenu);
	/*
	menuDropDown('.mobile_menu .noidung ul>.deeper>a')
	function menuDropDown(menu) {
		var formElement = $(menu)
		$(formElement).each(function () {
			$(this).after('<i class="fas fa-plus"></i>')
			$(this).next().click(function () {
				$(this).toggleClass('Minus')
				if($(this).hasClass('Minus')) {
					$(this).append('<i class="fas fa-minus"></i>')
					$(this).find('.fa-plus').remove()
				} else {
					$(this).find('.fa-minus').remove()
					$(this).append('<i class="fas fa-plus"></i>')
				}
				$(this).next().slideToggle()
			})
		})
	}
	*/
	$('.mobile_menu .noidung > ul').find('ul').hide();
	$('.mobile_menu .noidung li.deeper').each(function(){
		$(this).children('a').after('<i class="fas fa-plus"></i>');
	});
	$('.mobile_menu .noidung i').click(function(){
		
		if( $(this).hasClass('fa-plus') ){
			$(this).removeClass('fa-plus');
			$(this).addClass('fa-minus');
			
		}
		else{
			$(this).removeClass('fa-minus');
			$(this).addClass('fa-plus');
		}
		$(this).next().slideToggle();
	});
	// Sự kiện click menu
	$('.mobile_menu .nentat').click(function(){
		$('.mnmb').removeClass('mnmb');
	});
	$('.mobile_menu .tieude').click(function(){
		$(this).next().addClass('mnmb');
		$('.nentat').addClass('mnmb');
	});
	if( jQuery('#ja-menungang').css('background-color') == 'rgba(0, 0, 0, 0)' ){
		$('.mobile_menu .tieude').css('background-color', 'transparent');
	}
	else{
		$('.mobile_menu .tieude').css('background-color', 'transparent' );
	}

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

	// Handle Table
	$('.itemFullText table, .tabDetails table').each(function() {
		$(this).wrap('<div class="table-wrap"></div>');
	});
});