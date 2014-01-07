<?php /* Smarty version Smarty-3.1.14, created on 2014-01-07 16:01:25
         compiled from "D:\wamp\www\1561\prestashop\themes\transformer\product-slider.tpl" */ ?>
<?php /*%%SmartyHeaderCode:2325352cc08b524d4e6-77376944%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '66d0c7403a0d2c568217733e20b8c6b3ffeefc6d' => 
    array (
      0 => 'D:\\wamp\\www\\1561\\prestashop\\themes\\transformer\\product-slider.tpl',
      1 => 1389102133,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '2325352cc08b524d4e6-77376944',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'products' => 0,
    'product' => 0,
    'PS_CATALOG_MODE' => 0,
    'restricted_country_mode' => 0,
    'sttheme' => 0,
    'link' => 0,
    'pro_image' => 0,
    'homeSize' => 0,
    'add_prod_display' => 0,
    'static_token' => 0,
    'comparator_max_item' => 0,
    'compareProducts' => 0,
    'fly_i' => 0,
    'length_of_product_name' => 0,
    'priceDisplay' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_52cc08b59644f8_04543722',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52cc08b59644f8_04543722')) {function content_52cc08b59644f8_04543722($_smarty_tpl) {?><?php if (!is_callable('smarty_modifier_escape')) include 'D:\\wamp\\www\\1561\\prestashop\\tools\\smarty\\plugins\\modifier.escape.php';
?>
<div class="nav_top_right"></div>
<div class="sliderwrap products_slider">
    <ul class="slides">
	<?php  $_smarty_tpl->tpl_vars['product'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['product']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['products']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
 $_smarty_tpl->tpl_vars['product']->total= $_smarty_tpl->_count($_from);
 $_smarty_tpl->tpl_vars['product']->iteration=0;
 $_smarty_tpl->tpl_vars['product']->index=-1;
foreach ($_from as $_smarty_tpl->tpl_vars['product']->key => $_smarty_tpl->tpl_vars['product']->value){
$_smarty_tpl->tpl_vars['product']->_loop = true;
 $_smarty_tpl->tpl_vars['product']->iteration++;
 $_smarty_tpl->tpl_vars['product']->index++;
 $_smarty_tpl->tpl_vars['product']->first = $_smarty_tpl->tpl_vars['product']->index === 0;
 $_smarty_tpl->tpl_vars['product']->last = $_smarty_tpl->tpl_vars['product']->iteration === $_smarty_tpl->tpl_vars['product']->total;
?>
		<li class="ajax_block_product <?php if ($_smarty_tpl->tpl_vars['product']->first){?>first_item<?php }elseif($_smarty_tpl->tpl_vars['product']->last){?>last_item<?php }else{ ?>item<?php }?>">
            <?php $_smarty_tpl->_capture_stack[0][] = array("new_on_sale", null, null); ob_start(); ?>
                <?php if (isset($_smarty_tpl->tpl_vars['product']->value['new'])&&$_smarty_tpl->tpl_vars['product']->value['new']==1){?><span class="new"><i><?php echo smartyTranslate(array('s'=>'New'),$_smarty_tpl);?>
</i></span><?php }?><?php if (isset($_smarty_tpl->tpl_vars['product']->value['on_sale'])&&$_smarty_tpl->tpl_vars['product']->value['on_sale']&&isset($_smarty_tpl->tpl_vars['product']->value['show_price'])&&$_smarty_tpl->tpl_vars['product']->value['show_price']&&!$_smarty_tpl->tpl_vars['PS_CATALOG_MODE']->value){?><span class="on_sale"><i><?php echo smartyTranslate(array('s'=>'Sale'),$_smarty_tpl);?>
</i></span><?php }?><?php if ($_smarty_tpl->tpl_vars['product']->value['show_price']&&!isset($_smarty_tpl->tpl_vars['restricted_country_mode']->value)&&!$_smarty_tpl->tpl_vars['PS_CATALOG_MODE']->value){?><?php if (isset($_smarty_tpl->tpl_vars['product']->value['reduction'])&&$_smarty_tpl->tpl_vars['product']->value['reduction']&&isset($_smarty_tpl->tpl_vars['sttheme']->value['discount_percentage'])&&$_smarty_tpl->tpl_vars['sttheme']->value['discount_percentage']==2){?><span class="sale_percentage_sticker img-circle"><?php if ($_smarty_tpl->tpl_vars['product']->value['specific_prices']&&$_smarty_tpl->tpl_vars['product']->value['specific_prices']['reduction_type']=='percentage'){?><?php echo $_smarty_tpl->tpl_vars['product']->value['specific_prices']['reduction']*floatval(100);?>
%<br /><?php echo smartyTranslate(array('s'=>'Off'),$_smarty_tpl);?>
<?php }elseif($_smarty_tpl->tpl_vars['product']->value['specific_prices']&&$_smarty_tpl->tpl_vars['product']->value['specific_prices']['reduction_type']=='amount'&&intval($_smarty_tpl->tpl_vars['product']->value['specific_prices']['reduction'])!=0){?><?php echo smartyTranslate(array('s'=>'Save'),$_smarty_tpl);?>
<br /><?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['convertPrice'][0][0]->convertPrice(array('price'=>$_smarty_tpl->tpl_vars['product']->value['price_without_reduction']-floatval($_smarty_tpl->tpl_vars['product']->value['price'])),$_smarty_tpl);?>
<?php }?></span><?php }?><?php }?>
            <?php list($_capture_buffer, $_capture_assign, $_capture_append) = array_pop($_smarty_tpl->_capture_stack[0]);
if (!empty($_capture_buffer)) {
 if (isset($_capture_assign)) $_smarty_tpl->assign($_capture_assign, ob_get_contents());
 if (isset( $_capture_append)) $_smarty_tpl->append( $_capture_append, ob_get_contents());
 Smarty::$_smarty_vars['capture'][$_capture_buffer]=ob_get_clean();
} else $_smarty_tpl->capture_error();?>
            <?php $_smarty_tpl->tpl_vars['pro_image'] = new Smarty_variable($_smarty_tpl->tpl_vars['link']->value->getImageLink($_smarty_tpl->tpl_vars['product']->value['link_rewrite'],$_smarty_tpl->tpl_vars['product']->value['id_image'],'home_default'), null, 0);?> 
            <div class="pro_first_box">
                <a href="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['product']->value['link'], ENT_QUOTES, 'UTF-8', true);?>
" title="<?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['product']->value['name'], 'html', 'UTF-8');?>
" class="product_image"><img src="<?php echo $_smarty_tpl->tpl_vars['pro_image']->value;?>
" height="<?php echo $_smarty_tpl->tpl_vars['homeSize']->value['height'];?>
" width="<?php echo $_smarty_tpl->tpl_vars['homeSize']->value['width'];?>
" alt="<?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['product']->value['name'], 'html', 'UTF-8');?>
" /><?php echo Smarty::$_smarty_vars['capture']['new_on_sale'];?>
</a>
                
                <?php $_smarty_tpl->_capture_stack[0][] = array("pro_a_cart", null, null); ob_start(); ?>
                    <?php if (($_smarty_tpl->tpl_vars['product']->value['id_product_attribute']==0||(isset($_smarty_tpl->tpl_vars['add_prod_display']->value)&&($_smarty_tpl->tpl_vars['add_prod_display']->value==1)))&&$_smarty_tpl->tpl_vars['product']->value['available_for_order']&&!isset($_smarty_tpl->tpl_vars['restricted_country_mode']->value)&&$_smarty_tpl->tpl_vars['product']->value['minimal_quantity']==1&&$_smarty_tpl->tpl_vars['product']->value['customizable']!=2&&!$_smarty_tpl->tpl_vars['PS_CATALOG_MODE']->value){?>          
						<?php if (($_smarty_tpl->tpl_vars['product']->value['quantity']>0||$_smarty_tpl->tpl_vars['product']->value['allow_oosp'])){?>
						<a class="exclusive ajax_add_to_cart_button" href="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['link']->value->getPageLink('cart'), ENT_QUOTES, 'UTF-8', true);?>
?qty=1&amp;id_product=<?php echo $_smarty_tpl->tpl_vars['product']->value['id_product'];?>
&amp;token=<?php echo $_smarty_tpl->tpl_vars['static_token']->value;?>
&amp;add" rel="ajax_id_product_<?php echo $_smarty_tpl->tpl_vars['product']->value['id_product'];?>
" title="<?php echo smartyTranslate(array('s'=>'Add to Cart'),$_smarty_tpl);?>
"><i class="icon-basket icon-1x icon-mar-lr2"></i><span><?php echo smartyTranslate(array('s'=>'Add to Cart'),$_smarty_tpl);?>
</span></a>
						<?php }else{ ?>
                        <a class="button exclusive view_button" href="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['product']->value['link'], ENT_QUOTES, 'UTF-8', true);?>
" title="<?php echo smartyTranslate(array('s'=>'View'),$_smarty_tpl);?>
"><i class="icon-eye-2 icon-1x icon-mar-lr2"></i><span><?php echo smartyTranslate(array('s'=>'View'),$_smarty_tpl);?>
</span></a>
						<?php }?>
					<?php }else{ ?>
					<?php }?>
                <?php list($_capture_buffer, $_capture_assign, $_capture_append) = array_pop($_smarty_tpl->_capture_stack[0]);
if (!empty($_capture_buffer)) {
 if (isset($_capture_assign)) $_smarty_tpl->assign($_capture_assign, ob_get_contents());
 if (isset( $_capture_append)) $_smarty_tpl->append( $_capture_append, ob_get_contents());
 Smarty::$_smarty_vars['capture'][$_capture_buffer]=ob_get_clean();
} else $_smarty_tpl->capture_error();?>
                <?php $_smarty_tpl->_capture_stack[0][] = array("pro_a_compare", null, null); ob_start(); ?>
                    <?php if (isset($_smarty_tpl->tpl_vars['comparator_max_item']->value)&&$_smarty_tpl->tpl_vars['comparator_max_item']->value){?>
        				<a href="javascript:;" class="add_to_compare <?php if (isset($_smarty_tpl->tpl_vars['compareProducts']->value)&&in_array($_smarty_tpl->tpl_vars['product']->value['id_product'],$_smarty_tpl->tpl_vars['compareProducts']->value)){?>active<?php }?>" data-product-id="<?php echo $_smarty_tpl->tpl_vars['product']->value['id_product'];?>
" rel="nofollow" data-product-cover="<?php echo $_smarty_tpl->tpl_vars['pro_image']->value;?>
" data-product-name="<?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['product']->value['name'], 'htmlall', 'UTF-8');?>
" data-product-link="<?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['product']->value['link'], 'htmlall', 'UTF-8');?>
" title="<?php echo smartyTranslate(array('s'=>'Add to Compare'),$_smarty_tpl);?>
"><i class="icon-ajust icon-1x icon-mar-lr2"></i><span><?php echo smartyTranslate(array('s'=>'Add to Compare'),$_smarty_tpl);?>
</span></a>
        			<?php }?>
                <?php list($_capture_buffer, $_capture_assign, $_capture_append) = array_pop($_smarty_tpl->_capture_stack[0]);
if (!empty($_capture_buffer)) {
 if (isset($_capture_assign)) $_smarty_tpl->assign($_capture_assign, ob_get_contents());
 if (isset( $_capture_append)) $_smarty_tpl->append( $_capture_append, ob_get_contents());
 Smarty::$_smarty_vars['capture'][$_capture_buffer]=ob_get_clean();
} else $_smarty_tpl->capture_error();?>
                <?php $_smarty_tpl->tpl_vars["fly_i"] = new Smarty_variable(1, null, 0);?>
                <?php if (trim(Smarty::$_smarty_vars['capture']['pro_a_cart'])){?><?php $_smarty_tpl->tpl_vars["fly_i"] = new Smarty_variable($_smarty_tpl->tpl_vars['fly_i']->value+1, null, 0);?><?php }?>
                <?php if (trim(Smarty::$_smarty_vars['capture']['pro_a_compare'])){?><?php $_smarty_tpl->tpl_vars["fly_i"] = new Smarty_variable($_smarty_tpl->tpl_vars['fly_i']->value+1, null, 0);?><?php }?>
                <?php if (isset($_smarty_tpl->tpl_vars['product']->value['pro_a_wishlist'])&&$_smarty_tpl->tpl_vars['product']->value['pro_a_wishlist']){?><?php $_smarty_tpl->tpl_vars["fly_i"] = new Smarty_variable($_smarty_tpl->tpl_vars['fly_i']->value+1, null, 0);?><?php }?>
                
                <div class="hover_fly <?php if (isset($_smarty_tpl->tpl_vars['sttheme']->value['flyout_buttons'])&&$_smarty_tpl->tpl_vars['sttheme']->value['flyout_buttons']){?>hover_fly_static<?php }?> fly_<?php echo $_smarty_tpl->tpl_vars['fly_i']->value;?>
 clearfix">
                    <?php echo Smarty::$_smarty_vars['capture']['pro_a_cart'];?>

                    <?php if (isset($_smarty_tpl->tpl_vars['product']->value['pro_quick_view'])&&$_smarty_tpl->tpl_vars['product']->value['pro_quick_view']){?>
                        <?php echo $_smarty_tpl->tpl_vars['product']->value['pro_quick_view'];?>

                    <?php }else{ ?>
                        <a href="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['product']->value['link'], ENT_QUOTES, 'UTF-8', true);?>
" class="pro_more_info" rel="nofollow" title="<?php echo smartyTranslate(array('s'=>'More info'),$_smarty_tpl);?>
"><i class="icon-link icon-1x icon-mar-lr2"></i><span><?php echo smartyTranslate(array('s'=>'More info'),$_smarty_tpl);?>
</span></a>
                    <?php }?>
                    <?php echo Smarty::$_smarty_vars['capture']['pro_a_compare'];?>

                    <?php if (isset($_smarty_tpl->tpl_vars['product']->value['pro_a_wishlist'])&&$_smarty_tpl->tpl_vars['product']->value['pro_a_wishlist']){?><?php echo $_smarty_tpl->tpl_vars['product']->value['pro_a_wishlist'];?>
<?php }?>   
                </div>
            </div>
            <div class="pro_second_box">
            <?php if (isset($_smarty_tpl->tpl_vars['sttheme']->value['length_of_product_name'])&&$_smarty_tpl->tpl_vars['sttheme']->value['length_of_product_name']==1){?>
                <?php $_smarty_tpl->tpl_vars["length_of_product_name"] = new Smarty_variable(70, null, 0);?>
            <?php }else{ ?>
                <?php $_smarty_tpl->tpl_vars["length_of_product_name"] = new Smarty_variable(35, null, 0);?>
            <?php }?>
			<p class="s_title_block <?php if (isset($_smarty_tpl->tpl_vars['sttheme']->value['length_of_product_name'])&&$_smarty_tpl->tpl_vars['sttheme']->value['length_of_product_name']){?> nohidden <?php }?>"><a href="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['product']->value['link'], ENT_QUOTES, 'UTF-8', true);?>
" title="<?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['product']->value['name'], 'htmlall', 'UTF-8');?>
"><?php if (isset($_smarty_tpl->tpl_vars['sttheme']->value['length_of_product_name'])&&$_smarty_tpl->tpl_vars['sttheme']->value['length_of_product_name']==2){?><?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['product']->value['name'], 'htmlall', 'UTF-8');?>
<?php }else{ ?><?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_MODIFIER]['truncate'][0][0]->smarty_modifier_truncate(smarty_modifier_escape($_smarty_tpl->tpl_vars['product']->value['name'], 'htmlall', 'UTF-8'),$_smarty_tpl->tpl_vars['length_of_product_name']->value,'...');?>
<?php }?></a></p>
            <?php if ($_smarty_tpl->tpl_vars['product']->value['show_price']&&!isset($_smarty_tpl->tpl_vars['restricted_country_mode']->value)&&!$_smarty_tpl->tpl_vars['PS_CATALOG_MODE']->value){?>
                <div class="price_container">
                    <span class="price">
                    <?php if (!$_smarty_tpl->tpl_vars['priceDisplay']->value){?><?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['convertPrice'][0][0]->convertPrice(array('price'=>$_smarty_tpl->tpl_vars['product']->value['price']),$_smarty_tpl);?>

                    <?php }else{ ?>
                    <?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['convertPrice'][0][0]->convertPrice(array('price'=>$_smarty_tpl->tpl_vars['product']->value['price_tax_exc']),$_smarty_tpl);?>

                    <?php }?>
                    </span>
                    <?php if (isset($_smarty_tpl->tpl_vars['product']->value['reduction'])&&$_smarty_tpl->tpl_vars['product']->value['reduction']){?>
                        <span class="old_price"><?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['convertPrice'][0][0]->convertPrice(array('price'=>$_smarty_tpl->tpl_vars['product']->value['price_without_reduction']),$_smarty_tpl);?>
</span>
                        <?php if (isset($_smarty_tpl->tpl_vars['sttheme']->value['discount_percentage'])&&$_smarty_tpl->tpl_vars['sttheme']->value['discount_percentage']==1){?>
                        <span class="sale_percentage">
                            <i class="icon-tag"></i>-<?php if ($_smarty_tpl->tpl_vars['product']->value['specific_prices']&&$_smarty_tpl->tpl_vars['product']->value['specific_prices']['reduction_type']=='percentage'){?><?php echo $_smarty_tpl->tpl_vars['product']->value['specific_prices']['reduction']*floatval(100);?>
%<?php }elseif($_smarty_tpl->tpl_vars['product']->value['specific_prices']&&$_smarty_tpl->tpl_vars['product']->value['specific_prices']['reduction_type']=='amount'&&intval($_smarty_tpl->tpl_vars['product']->value['specific_prices']['reduction'])!=0){?><?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['convertPrice'][0][0]->convertPrice(array('price'=>$_smarty_tpl->tpl_vars['product']->value['price_without_reduction']-floatval($_smarty_tpl->tpl_vars['product']->value['price'])),$_smarty_tpl);?>
<?php }?>
                        </span>
                        <?php }?>
                    <?php }?>
                </div>
            <?php }else{ ?>
                <!--<div style="height:21px;"></div>-->
            <?php }?>
            <?php if (isset($_smarty_tpl->tpl_vars['product']->value['pro_rating_average'])&&$_smarty_tpl->tpl_vars['product']->value['pro_rating_average']){?><?php echo $_smarty_tpl->tpl_vars['product']->value['pro_rating_average'];?>
<?php }?>   
            </div>
		</li>
	<?php } ?>
	</ul>
</div><?php }} ?>