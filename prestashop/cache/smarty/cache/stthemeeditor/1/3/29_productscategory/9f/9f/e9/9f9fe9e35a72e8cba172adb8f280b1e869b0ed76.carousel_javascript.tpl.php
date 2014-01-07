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
  'variables' => 
  array (
    'identify' => 0,
    'easing' => 0,
    'slideshow' => 0,
    's_speed' => 0,
    'a_speed' => 0,
    'pause_on_hover' => 0,
    'loop' => 0,
    'items' => 0,
    'move' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_52cc124e810207_98995708',
  'cache_lifetime' => 31536000,
),true); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52cc124e810207_98995708')) {function content_52cc124e810207_98995708($_smarty_tpl) {?><script type="text/javascript">
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