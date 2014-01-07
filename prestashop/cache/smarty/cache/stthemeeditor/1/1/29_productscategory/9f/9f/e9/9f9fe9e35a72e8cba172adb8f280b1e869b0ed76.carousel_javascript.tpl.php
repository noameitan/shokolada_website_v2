<?php /*%%SmartyHeaderCode:2381352cc124e6c96d3-17678095%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '9f9fe9e35a72e8cba172adb8f280b1e869b0ed76' => 
    array (
      0 => 'D:\\wamp\\www\\1561\\prestashop\\modules\\stthemeeditor\\views\\templates\\hook\\carousel_javascript.tpl',
      1 => 1389102139,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '2381352cc124e6c96d3-17678095',
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_52cc1bddbfcbd5_88906353',
  'has_nocache_code' => false,
  'cache_lifetime' => 31536000,
),true); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52cc1bddbfcbd5_88906353')) {function content_52cc1bddbfcbd5_88906353($_smarty_tpl) {?><script type="text/javascript">
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
</script><?php }} ?>