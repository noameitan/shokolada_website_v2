<?php /* Smarty version Smarty-3.1.14, created on 2014-01-07 16:01:26
         compiled from "D:\wamp\www\1561\prestashop\modules\stbrandsslider\views\templates\hook\stbrandsslider.tpl" */ ?>
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
  'function' => 
  array (
  ),
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
  'unifunc' => 'content_52cc08b67bbaf8_90517329',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52cc08b67bbaf8_90517329')) {function content_52cc08b67bbaf8_90517329($_smarty_tpl) {?><?php if (!is_callable('smarty_modifier_escape')) include 'D:\\wamp\\www\\1561\\prestashop\\tools\\smarty\\plugins\\modifier.escape.php';
?>
<!-- Block brands slider module -->
<?php if (isset($_smarty_tpl->tpl_vars['brands']->value)&&count($_smarty_tpl->tpl_vars['brands']->value)){?>
<section id="brands_slider" class="block section <?php if (isset($_smarty_tpl->tpl_vars['brandsslider_footer']->value)){?> span12 <?php }?>">
    <h4 class="title_block"><span><?php echo smartyTranslate(array('s'=>'Product Brands','mod'=>'stbrandsslider'),$_smarty_tpl);?>
</span></h4>
    <div id="brands-itemslider" class="flexslider">
    	<div class="nav_top_right"></div>
        <div class="sliderwrap">
            <ul class="slides">
            	<?php  $_smarty_tpl->tpl_vars['brand'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['brand']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['brands']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['brand']->key => $_smarty_tpl->tpl_vars['brand']->value){
$_smarty_tpl->tpl_vars['brand']->_loop = true;
?>
                <li>
            	<a href="<?php echo $_smarty_tpl->tpl_vars['link']->value->getmanufacturerLink($_smarty_tpl->tpl_vars['brand']->value['id_manufacturer'],$_smarty_tpl->tpl_vars['brand']->value['link_rewrite']);?>
">
                    <img src="<?php echo $_smarty_tpl->tpl_vars['img_manu_dir']->value;?>
<?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['brand']->value['id_manufacturer'], 'htmlall', 'UTF-8');?>
-manufacturer_default.jpg" alt="<?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['brand']->value['name'], 'html', 'UTF-8');?>
" width="<?php echo $_smarty_tpl->tpl_vars['manufacturerSize']->value['width'];?>
" height="<?php echo $_smarty_tpl->tpl_vars['manufacturerSize']->value['height'];?>
" />
                </a>
                </li>
                <?php } ?>
            </ul>
        </div>
    </div>
</section>

<script type="text/javascript">
//<![CDATA[

jQuery(function($) {
    $('#brands-itemslider .sliderwrap').flexslider({
		easing: "<?php echo $_smarty_tpl->tpl_vars['brand_slider_easing']->value;?>
",
        <?php if ($_smarty_tpl->tpl_vars['brand_slider_easing']->value!='swing'){?>
        useCSS: false,
        <?php }?>
		slideshow: <?php echo $_smarty_tpl->tpl_vars['brand_slider_slideshow']->value;?>
,
        slideshowSpeed: <?php echo $_smarty_tpl->tpl_vars['brand_slider_s_speed']->value;?>
,
		animationSpeed: <?php echo $_smarty_tpl->tpl_vars['brand_slider_a_speed']->value;?>
,
		pauseOnHover: <?php echo $_smarty_tpl->tpl_vars['brand_slider_pause_on_hover']->value;?>
,
        direction: "horizontal",
        animation: "slide",
		animationLoop: <?php echo $_smarty_tpl->tpl_vars['brand_slider_loop']->value;?>
,
		controlNav: false,
		controlsContainer: "#brands-itemslider .nav_top_right",
		itemWidth: 164,
        minItems: getFlexSliderSize(<?php echo $_smarty_tpl->tpl_vars['brand_slider_items']->value;?>
),
        maxItems: getFlexSliderSize(<?php echo $_smarty_tpl->tpl_vars['brand_slider_items']->value;?>
),
    	move: <?php echo $_smarty_tpl->tpl_vars['brand_slider_move']->value;?>
,
        prevText: '<i class="icon-left-open-3"></i>',
        nextText: '<i class="icon-right-open-3"></i>'
    });
    var brands_flexslider_rs;
    $(window).resize(function(){
        clearTimeout(brands_flexslider_rs);
        var rand_s = parseInt(Math.random()*200 + 300);
        brands_flexslider_rs = setTimeout(function() {
            var flexSliderSize = getFlexSliderSize(<?php echo $_smarty_tpl->tpl_vars['brand_slider_items']->value;?>
);
            var flexslide_object = $('#brands-itemslider .sliderwrap').data('flexslider');
            if(flexSliderSize && flexslide_object != null )
                flexslide_object.setVars({'minItems': flexSliderSize, 'maxItems': flexSliderSize});
    	}, rand_s);
    });
});
 
//]]>
</script>
<?php }?>
<!-- /Block brands slider module --><?php }} ?>