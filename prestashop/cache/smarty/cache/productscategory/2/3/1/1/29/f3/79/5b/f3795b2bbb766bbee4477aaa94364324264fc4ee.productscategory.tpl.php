<?php /*%%SmartyHeaderCode:2879652cc124e15b569-00956072%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'f3795b2bbb766bbee4477aaa94364324264fc4ee' => 
    array (
      0 => 'D:\\wamp\\www\\1561\\prestashop\\themes\\transformer\\modules\\productscategory\\productscategory.tpl',
      1 => 1389102133,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '2879652cc124e15b569-00956072',
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_52cc1bddc11635_28126294',
  'has_nocache_code' => false,
  'cache_lifetime' => 31536000,
),true); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52cc1bddc11635_28126294')) {function content_52cc1bddc11635_28126294($_smarty_tpl) {?>
<section id="productscategory-products_block_center" class="products_block block section">
	<h4 class="title_block"><span>2 other products in the same category</span></h4>
    <div id="productscategory-itemslider" class="flexslider">    
        <div class="nav_top_right"></div>
        <div class="sliderwrap products_slider">
            <ul class="slides">
        	        		<li class="ajax_block_product first_item">
                                                            <div class="pro_first_box">
                        <a href="http://localhost/1561/prestashop/index.php?id_product=1&amp;controller=product&amp;id_lang=1" title="iPod Nano" class="product_image"><img src="http://localhost/1561/prestashop/img/p/1/5/15-home_default.jpg" alt="iPod Nano" />                        <span class="new"><i>New</i></span>                    </a>
                    </div>
                    <div class="pro_second_box">
                                                                        			<p class="s_title_block "><a href="http://localhost/1561/prestashop/index.php?id_product=1&amp;controller=product&amp;id_lang=1" title="iPod Nano">iPod Nano</a></p>
                        				  
                    </div>
        		</li>
        	        		<li class="ajax_block_product last_item">
                                                            <div class="pro_first_box">
                        <a href="http://localhost/1561/prestashop/index.php?id_product=5&amp;controller=product&amp;id_lang=1" title="iPod touch" class="product_image"><img src="http://localhost/1561/prestashop/img/p/7/7-home_default.jpg" alt="iPod touch" />                        <span class="new"><i>New</i></span>                    </a>
                    </div>
                    <div class="pro_second_box">
                                                                        			<p class="s_title_block "><a href="http://localhost/1561/prestashop/index.php?id_product=5&amp;controller=product&amp;id_lang=1" title="iPod touch">iPod touch</a></p>
                        				  
                    </div>
        		</li>
        	        	</ul>
        </div>
	</div>
    <script type="text/javascript">
//<![CDATA[

jQuery(function($) {
    $('#productscategory-itemslider .sliderwrap').flexslider({
    	easing: "swing",
        useCSS: false,
		slideshow: 0,
        slideshowSpeed: 7000,
		animationSpeed: 400,
		pauseOnHover: 1,
        direction: "horizontal",
        animation: "slide",
		animationLoop: 0,
		controlNav: false,
		controlsContainer: "#productscategory-itemslider .nav_top_right",
        itemWidth: 260,
        minItems: getFlexSliderSize(4),
        maxItems: getFlexSliderSize(4),
        move: 0,
        prevText: '<i class="icon-left-open-3"></i>',
        nextText: '<i class="icon-right-open-3"></i>',
        productSlider:true
    });
    var productscategory_flexslider_rs;
    $(window).resize(function(){
        clearTimeout(productscategory_flexslider_rs);
        var rand_s = parseInt(Math.random()*200 + 300);
        productscategory_flexslider_rs = setTimeout(function() {
            var flexSliderSize = getFlexSliderSize(4);
            var flexslide_object = $('#productscategory-itemslider .sliderwrap').data('flexslider');
            if(flexSliderSize && flexslide_object != null )
                flexslide_object.setVars({'minItems': flexSliderSize, 'maxItems': flexSliderSize});
    	}, rand_s);
    });
});
 
//]]>
</script>
</section>
<?php }} ?>