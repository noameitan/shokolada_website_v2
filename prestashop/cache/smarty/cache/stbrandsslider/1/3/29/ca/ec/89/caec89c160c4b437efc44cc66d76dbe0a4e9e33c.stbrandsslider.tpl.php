<?php /*%%SmartyHeaderCode:914252cc08b665a9a0-23091505%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'caec89c160c4b437efc44cc66d76dbe0a4e9e33c' => 
    array (
      0 => 'D:\\wamp\\www\\1561\\prestashop\\modules\\stbrandsslider\\views\\templates\\hook\\stbrandsslider.tpl',
      1 => 1389102177,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '914252cc08b665a9a0-23091505',
  'variables' => 
  array (
    'brands' => 0,
    'brandsslider_footer' => 0,
    'brand' => 0,
    'link' => 0,
    'img_manu_dir' => 0,
    'manufacturerSize' => 0,
    'brand_slider_easing' => 0,
    'brand_slider_slideshow' => 0,
    'brand_slider_s_speed' => 0,
    'brand_slider_a_speed' => 0,
    'brand_slider_pause_on_hover' => 0,
    'brand_slider_loop' => 0,
    'brand_slider_items' => 0,
    'brand_slider_move' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_52cc08b67e56a8_79287999',
  'cache_lifetime' => 31536000,
),true); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52cc08b67e56a8_79287999')) {function content_52cc08b67e56a8_79287999($_smarty_tpl) {?><!-- Block brands slider module -->
<section id="brands_slider" class="block section ">
    <h4 class="title_block"><span>Product Brands</span></h4>
    <div id="brands-itemslider" class="flexslider">
    	<div class="nav_top_right"></div>
        <div class="sliderwrap">
            <ul class="slides">
            	                <li>
            	<a href="http://localhost/1561/prestashop/index.php?id_manufacturer=1&controller=manufacturer&id_lang=3">
                    <img src="http://localhost/1561/prestashop/img/m/1-manufacturer_default.jpg" alt="Apple Computer, Inc" width="169" height="104" />
                </a>
                </li>
                                <li>
            	<a href="http://localhost/1561/prestashop/index.php?id_manufacturer=2&controller=manufacturer&id_lang=3">
                    <img src="http://localhost/1561/prestashop/img/m/2-manufacturer_default.jpg" alt="Shure Incorporated" width="169" height="104" />
                </a>
                </li>
                            </ul>
        </div>
    </div>
</section>

<script type="text/javascript">
//<![CDATA[

jQuery(function($) {
    $('#brands-itemslider .sliderwrap').flexslider({
		easing: "swing",
        		slideshow: 0,
        slideshowSpeed: 7000,
		animationSpeed: 400,
		pauseOnHover: 1,
        direction: "horizontal",
        animation: "slide",
		animationLoop: 0,
		controlNav: false,
		controlsContainer: "#brands-itemslider .nav_top_right",
		itemWidth: 164,
        minItems: getFlexSliderSize(6),
        maxItems: getFlexSliderSize(6),
    	move: 0,
        prevText: '<i class="icon-left-open-3"></i>',
        nextText: '<i class="icon-right-open-3"></i>'
    });
    var brands_flexslider_rs;
    $(window).resize(function(){
        clearTimeout(brands_flexslider_rs);
        var rand_s = parseInt(Math.random()*200 + 300);
        brands_flexslider_rs = setTimeout(function() {
            var flexSliderSize = getFlexSliderSize(6);
            var flexslide_object = $('#brands-itemslider .sliderwrap').data('flexslider');
            if(flexSliderSize && flexslide_object != null )
                flexslide_object.setVars({'minItems': flexSliderSize, 'maxItems': flexSliderSize});
    	}, rand_s);
    });
});
 
//]]>
</script>
<!-- /Block brands slider module --><?php }} ?>