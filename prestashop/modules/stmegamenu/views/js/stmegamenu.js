jQuery(function($){
    var stmenu_down_timer;
    function megaHoverOver(){
        $(this).addClass('current');
        if($(this).find('.stmenu_sub').children().size())
        {
		    var stmenu_sub_dom = $(this).find(".stmenu_sub");
            stmenu_sub_dom.stop();
            stmenu_down_timer = setTimeout(function(){
                stmenu_sub_dom.fadeIn('fast',function(){
    		      stmenu_sub_dom.css('overflow','visible');
    		    });
            },100);
        }
	}
    function megaHoverOut(){ 
        clearTimeout(stmenu_down_timer);
        $(this).removeClass('current');
        $(this).find(".stmenu_sub").stop().hide(); 
    }
    $(".sttlevel0").hoverIntent({    
		 sensitivity: 7, 
		 interval: 0, 
		 over: megaHoverOver,
		 timeout: 0,
		 out: megaHoverOut
	});
    $('.style_classic .sttlevel1 li').hover(function(){
        $(this).addClass('show');
    },
    function(){
        $(this).removeClass('show');
    });
    $('#stmobilemenu_tri').toggle(function() {
		$(this).addClass('active');		
		$('#stmobilemenu').addClass('show');		
	}, function() {
		$(this).removeClass('active');		
		$('#stmobilemenu').removeClass('show');	
	});
    $('#stmobilemenu').accordion();
});