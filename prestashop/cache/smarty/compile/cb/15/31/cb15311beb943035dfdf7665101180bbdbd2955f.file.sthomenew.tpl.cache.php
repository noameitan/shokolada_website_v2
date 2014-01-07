<?php /* Smarty version Smarty-3.1.14, created on 2014-01-07 16:01:24
         compiled from "D:\wamp\www\1561\prestashop\modules\sthomenew\views\templates\hook\sthomenew.tpl" */ ?>
<?php /*%%SmartyHeaderCode:90852cc08b4f118d2-11271232%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'cb15311beb943035dfdf7665101180bbdbd2955f' => 
    array (
      0 => 'D:\\wamp\\www\\1561\\prestashop\\modules\\sthomenew\\views\\templates\\hook\\sthomenew.tpl',
      1 => 1389102170,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '90852cc08b4f118d2-11271232',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'column_slider' => 0,
    'hide_mob' => 0,
    'link' => 0,
    'products' => 0,
    'slider_easing' => 0,
    'slider_slideshow' => 0,
    'slider_s_speed' => 0,
    'slider_a_speed' => 0,
    'slider_pause_on_hover' => 0,
    'slider_loop' => 0,
    'slider_items' => 0,
    'is_homepage_secondary_left' => 0,
    'slider_move' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_52cc08b5232a01_50430645',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52cc08b5232a01_50430645')) {function content_52cc08b5232a01_50430645($_smarty_tpl) {?>

<!-- MODULE Home New Products -->
<?php $_smarty_tpl->_capture_stack[0][] = array("column_slider", null, null); ob_start(); ?><?php if ($_smarty_tpl->tpl_vars['column_slider']->value){?>_column<?php }?><?php list($_capture_buffer, $_capture_assign, $_capture_append) = array_pop($_smarty_tpl->_capture_stack[0]);
if (!empty($_capture_buffer)) {
 if (isset($_capture_assign)) $_smarty_tpl->assign($_capture_assign, ob_get_contents());
 if (isset( $_capture_append)) $_smarty_tpl->append( $_capture_append, ob_get_contents());
 Smarty::$_smarty_vars['capture'][$_capture_buffer]=ob_get_clean();
} else $_smarty_tpl->capture_error();?>
<section id="new-products_block_center<?php echo Smarty::$_smarty_vars['capture']['column_slider'];?>
" class="block products_block <?php if (!$_smarty_tpl->tpl_vars['column_slider']->value){?> section <?php }?> <?php if ($_smarty_tpl->tpl_vars['hide_mob']->value){?> hidden-phone <?php }?>">
	<h4 class="title_block"><a href="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['link']->value->getPageLink('new-products'), ENT_QUOTES, 'UTF-8', true);?>
" title="<?php echo smartyTranslate(array('s'=>'New products','mod'=>'sthomenew'),$_smarty_tpl);?>
"><?php echo smartyTranslate(array('s'=>'New products','mod'=>'sthomenew'),$_smarty_tpl);?>
</a></h4>
    <script type="text/javascript">
    //<![CDATA[
    var new_itemslider_options<?php echo Smarty::$_smarty_vars['capture']['column_slider'];?>
;
    //]]>
    </script>
	<?php if (isset($_smarty_tpl->tpl_vars['products']->value)&&$_smarty_tpl->tpl_vars['products']->value){?>
    <div id="new-itemslider<?php echo Smarty::$_smarty_vars['capture']['column_slider'];?>
" class="flexslider">
        <?php if ($_smarty_tpl->tpl_vars['column_slider']->value){?>
    	<?php echo $_smarty_tpl->getSubTemplate (((string)$_smarty_tpl->tpl_vars['tpl_dir']->value)."./product-slider-list.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 9999, null, array(), 0);?>

        <?php }else{ ?>
    	<?php echo $_smarty_tpl->getSubTemplate (((string)$_smarty_tpl->tpl_vars['tpl_dir']->value)."./product-slider.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 9999, null, array(), 0);?>

        <?php }?>
	</div>
    
    <script type="text/javascript">
    //<![CDATA[
    
    jQuery(function($) {
        new_itemslider_options<?php echo Smarty::$_smarty_vars['capture']['column_slider'];?>
 = {
    		easing: "<?php echo $_smarty_tpl->tpl_vars['slider_easing']->value;?>
",
            useCSS: false,
    		slideshow: <?php echo $_smarty_tpl->tpl_vars['slider_slideshow']->value;?>
,
            slideshowSpeed: <?php echo $_smarty_tpl->tpl_vars['slider_s_speed']->value;?>
,
    		animationSpeed: <?php echo $_smarty_tpl->tpl_vars['slider_a_speed']->value;?>
,
    		pauseOnHover: <?php echo $_smarty_tpl->tpl_vars['slider_pause_on_hover']->value;?>
,
            direction: "horizontal",
            animation: "slide",
            animationLoop: <?php echo $_smarty_tpl->tpl_vars['slider_loop']->value;?>
,
    		controlNav: false,
    		controlsContainer: "#new-itemslider<?php echo Smarty::$_smarty_vars['capture']['column_slider'];?>
 .nav_top_right",
    		itemWidth: 260,
            minItems: getFlexSliderSize(<?php if ($_smarty_tpl->tpl_vars['column_slider']->value){?>1<?php }else{ ?><?php echo $_smarty_tpl->tpl_vars['slider_items']->value;?>
<?php }?>,<?php if (isset($_smarty_tpl->tpl_vars['is_homepage_secondary_left']->value)&&$_smarty_tpl->tpl_vars['is_homepage_secondary_left']->value){?>true<?php }else{ ?>false<?php }?>),
            maxItems: getFlexSliderSize(<?php if ($_smarty_tpl->tpl_vars['column_slider']->value){?>1<?php }else{ ?><?php echo $_smarty_tpl->tpl_vars['slider_items']->value;?>
<?php }?>,<?php if (isset($_smarty_tpl->tpl_vars['is_homepage_secondary_left']->value)&&$_smarty_tpl->tpl_vars['is_homepage_secondary_left']->value){?>true<?php }else{ ?>false<?php }?>),
    		move: <?php echo $_smarty_tpl->tpl_vars['slider_move']->value;?>
,
            prevText: '<i class="icon-left-open-3"></i>',
            nextText: '<i class="icon-right-open-3"></i>',
            productSlider:true
        };
        $('#new-itemslider<?php echo Smarty::$_smarty_vars['capture']['column_slider'];?>
 .sliderwrap').flexslider(new_itemslider_options<?php echo Smarty::$_smarty_vars['capture']['column_slider'];?>
);
        var new_flexslider_rs<?php echo Smarty::$_smarty_vars['capture']['column_slider'];?>
;
        $(window).resize(function(){
            clearTimeout(new_flexslider_rs<?php echo Smarty::$_smarty_vars['capture']['column_slider'];?>
);
            var rand_s = parseInt(Math.random()*200 + 300);
            new_flexslider_rs<?php echo Smarty::$_smarty_vars['capture']['column_slider'];?>
 = setTimeout(function() {
                var flexSliderSize = getFlexSliderSize(<?php if ($_smarty_tpl->tpl_vars['column_slider']->value){?>1<?php }else{ ?><?php echo $_smarty_tpl->tpl_vars['slider_items']->value;?>
<?php }?>,<?php if (isset($_smarty_tpl->tpl_vars['is_homepage_secondary_left']->value)&&$_smarty_tpl->tpl_vars['is_homepage_secondary_left']->value){?>true<?php }else{ ?>false<?php }?>);
                var flexslide_object = $('#new-itemslider<?php echo Smarty::$_smarty_vars['capture']['column_slider'];?>
 .sliderwrap').data('flexslider');
                if(flexSliderSize && flexslide_object != null )
                    flexslide_object.setVars({'minItems': flexSliderSize, 'maxItems': flexSliderSize});
        	}, rand_s);
        });
    });
     
    //]]>
    </script>
	<?php }else{ ?>
		<p class="warning"><?php echo smartyTranslate(array('s'=>'No New products','mod'=>'sthomenew'),$_smarty_tpl);?>
</p>
	<?php }?>
</section>
<!-- /MODULE Home New Products --><?php }} ?>