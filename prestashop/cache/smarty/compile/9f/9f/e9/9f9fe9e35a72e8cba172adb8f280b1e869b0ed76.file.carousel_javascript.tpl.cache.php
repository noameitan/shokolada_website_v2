<?php /* Smarty version Smarty-3.1.14, created on 2014-01-07 16:42:22
         compiled from "D:\wamp\www\1561\prestashop\modules\stthemeeditor\views\templates\hook\carousel_javascript.tpl" */ ?>
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
  'function' => 
  array (
  ),
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
  'unifunc' => 'content_52cc124e7f7455_62768839',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52cc124e7f7455_62768839')) {function content_52cc124e7f7455_62768839($_smarty_tpl) {?>
<script type="text/javascript">
//<![CDATA[

jQuery(function($) {
    $('#<?php echo $_smarty_tpl->tpl_vars['identify']->value;?>
-itemslider .sliderwrap').flexslider({
    	easing: "<?php echo $_smarty_tpl->tpl_vars['easing']->value;?>
",
        useCSS: false,
		slideshow: <?php echo $_smarty_tpl->tpl_vars['slideshow']->value;?>
,
        slideshowSpeed: <?php echo $_smarty_tpl->tpl_vars['s_speed']->value;?>
,
		animationSpeed: <?php echo $_smarty_tpl->tpl_vars['a_speed']->value;?>
,
		pauseOnHover: <?php echo $_smarty_tpl->tpl_vars['pause_on_hover']->value;?>
,
        direction: "horizontal",
        animation: "slide",
		animationLoop: <?php echo $_smarty_tpl->tpl_vars['loop']->value;?>
,
		controlNav: false,
		controlsContainer: "#<?php echo $_smarty_tpl->tpl_vars['identify']->value;?>
-itemslider .nav_top_right",
        itemWidth: 260,
        minItems: getFlexSliderSize(<?php echo $_smarty_tpl->tpl_vars['items']->value;?>
),
        maxItems: getFlexSliderSize(<?php echo $_smarty_tpl->tpl_vars['items']->value;?>
),
        move: <?php echo $_smarty_tpl->tpl_vars['move']->value;?>
,
        prevText: '<i class="icon-left-open-3"></i>',
        nextText: '<i class="icon-right-open-3"></i>',
        productSlider:true
    });
    var <?php echo $_smarty_tpl->tpl_vars['identify']->value;?>
_flexslider_rs;
    $(window).resize(function(){
        clearTimeout(<?php echo $_smarty_tpl->tpl_vars['identify']->value;?>
_flexslider_rs);
        var rand_s = parseInt(Math.random()*200 + 300);
        <?php echo $_smarty_tpl->tpl_vars['identify']->value;?>
_flexslider_rs = setTimeout(function() {
            var flexSliderSize = getFlexSliderSize(<?php echo $_smarty_tpl->tpl_vars['items']->value;?>
);
            var flexslide_object = $('#<?php echo $_smarty_tpl->tpl_vars['identify']->value;?>
-itemslider .sliderwrap').data('flexslider');
            if(flexSliderSize && flexslide_object != null )
                flexslide_object.setVars({'minItems': flexSliderSize, 'maxItems': flexSliderSize});
    	}, rand_s);
    });
});
 
//]]>
</script><?php }} ?>