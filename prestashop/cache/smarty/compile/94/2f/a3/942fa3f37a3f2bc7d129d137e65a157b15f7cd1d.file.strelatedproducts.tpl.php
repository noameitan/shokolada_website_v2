<?php /* Smarty version Smarty-3.1.14, created on 2014-01-15 17:57:48
         compiled from "D:\wamp\www\1561\prestashop\modules\strelatedproducts\views\templates\hook\strelatedproducts.tpl" */ ?>
<?php /*%%SmartyHeaderCode:325052d6affcd18149-51446675%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '942fa3f37a3f2bc7d129d137e65a157b15f7cd1d' => 
    array (
      0 => 'D:\\wamp\\www\\1561\\prestashop\\modules\\strelatedproducts\\views\\templates\\hook\\strelatedproducts.tpl',
      1 => 1389102259,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '325052d6affcd18149-51446675',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'column_slider' => 0,
    'hide_mob' => 0,
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
  'unifunc' => 'content_52d6affd09d715_26847496',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52d6affd09d715_26847496')) {function content_52d6affd09d715_26847496($_smarty_tpl) {?>

<!-- MODULE Related Products -->
<?php $_smarty_tpl->_capture_stack[0][] = array("column_slider", null, null); ob_start(); ?><?php if ($_smarty_tpl->tpl_vars['column_slider']->value){?>_column<?php }?><?php list($_capture_buffer, $_capture_assign, $_capture_append) = array_pop($_smarty_tpl->_capture_stack[0]);
if (!empty($_capture_buffer)) {
 if (isset($_capture_assign)) $_smarty_tpl->assign($_capture_assign, ob_get_contents());
 if (isset( $_capture_append)) $_smarty_tpl->append( $_capture_append, ob_get_contents());
 Smarty::$_smarty_vars['capture'][$_capture_buffer]=ob_get_clean();
} else $_smarty_tpl->capture_error();?>
<section id="related-products_block_center<?php echo Smarty::$_smarty_vars['capture']['column_slider'];?>
" class="block products_block <?php if (!$_smarty_tpl->tpl_vars['column_slider']->value){?> section <?php }?> <?php if ($_smarty_tpl->tpl_vars['hide_mob']->value){?> hidden-phone <?php }?>">
	<h4 class="title_block"><span><?php echo smartyTranslate(array('s'=>'Related Products','mod'=>'strelatedproducts'),$_smarty_tpl);?>
</span></h4>
    <script type="text/javascript">
    //<![CDATA[
    var related_itemslider_options<?php echo Smarty::$_smarty_vars['capture']['column_slider'];?>
;
    //]]>
    </script>
	<?php if (isset($_smarty_tpl->tpl_vars['products']->value)&&$_smarty_tpl->tpl_vars['products']->value){?>
    <div id="related-itemslider<?php echo Smarty::$_smarty_vars['capture']['column_slider'];?>
" class="flexslider">
        <?php if ($_smarty_tpl->tpl_vars['column_slider']->value){?>
    	<?php echo $_smarty_tpl->getSubTemplate (((string)$_smarty_tpl->tpl_vars['tpl_dir']->value)."./product-slider-list.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

        <?php }else{ ?>
    	<?php echo $_smarty_tpl->getSubTemplate (((string)$_smarty_tpl->tpl_vars['tpl_dir']->value)."./product-slider.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

        <?php }?>
	</div>
    
    <script type="text/javascript">
    //<![CDATA[
    
    jQuery(function($) {
        related_itemslider_options<?php echo Smarty::$_smarty_vars['capture']['column_slider'];?>
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
    		controlsContainer: "#related-itemslider<?php echo Smarty::$_smarty_vars['capture']['column_slider'];?>
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
        $('#related-itemslider<?php echo Smarty::$_smarty_vars['capture']['column_slider'];?>
 .sliderwrap').flexslider(related_itemslider_options<?php echo Smarty::$_smarty_vars['capture']['column_slider'];?>
);
        var related_flexslider_rs<?php echo Smarty::$_smarty_vars['capture']['column_slider'];?>
;
        $(window).resize(function(){
            clearTimeout(related_flexslider_rs<?php echo Smarty::$_smarty_vars['capture']['column_slider'];?>
);
            var rand_s = parseInt(Math.random()*200 + 300);
            related_flexslider_rs<?php echo Smarty::$_smarty_vars['capture']['column_slider'];?>
 = setTimeout(function() {
                var flexSliderSize = getFlexSliderSize(<?php if ($_smarty_tpl->tpl_vars['column_slider']->value){?>1<?php }else{ ?><?php echo $_smarty_tpl->tpl_vars['slider_items']->value;?>
<?php }?>,<?php if (isset($_smarty_tpl->tpl_vars['is_homepage_secondary_left']->value)&&$_smarty_tpl->tpl_vars['is_homepage_secondary_left']->value){?>true<?php }else{ ?>false<?php }?>);
                var flexslide_object = $('#related-itemslider<?php echo Smarty::$_smarty_vars['capture']['column_slider'];?>
 .sliderwrap').data('flexslider');
                if(flexSliderSize && flexslide_object != null )
                    flexslide_object.setVars({'minItems': flexSliderSize, 'maxItems': flexSliderSize});
        	}, rand_s);
        });
    });
     
    //]]>
    </script>
	<?php }else{ ?>
		<p class="warning"><?php echo smartyTranslate(array('s'=>'No related products','mod'=>'strelatedproducts'),$_smarty_tpl);?>
</p>
	<?php }?>
</section>
<!-- /MODULE Related Products --><?php }} ?>