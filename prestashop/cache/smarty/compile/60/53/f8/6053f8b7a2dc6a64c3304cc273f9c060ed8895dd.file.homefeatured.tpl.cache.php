<?php /* Smarty version Smarty-3.1.14, created on 2014-01-07 16:01:25
         compiled from "D:\wamp\www\1561\prestashop\modules\homefeatured_mod\homefeatured.tpl" */ ?>
<?php /*%%SmartyHeaderCode:3119552cc08b5d3a726-44088609%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '6053f8b7a2dc6a64c3304cc273f9c060ed8895dd' => 
    array (
      0 => 'D:\\wamp\\www\\1561\\prestashop\\modules\\homefeatured_mod\\homefeatured.tpl',
      1 => 1389102179,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '3119552cc08b5d3a726-44088609',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'products' => 0,
    'product' => 0,
    'link' => 0,
    'mediumSize' => 0,
    'restricted_country_mode' => 0,
    'PS_CATALOG_MODE' => 0,
    'priceDisplay' => 0,
    'sttheme' => 0,
    'add_prod_display' => 0,
    'static_token' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_52cc08b6138822_57861061',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52cc08b6138822_57861061')) {function content_52cc08b6138822_57861061($_smarty_tpl) {?><?php if (!is_callable('smarty_modifier_escape')) include 'D:\\wamp\\www\\1561\\prestashop\\tools\\smarty\\plugins\\modifier.escape.php';
?>

<!-- MODULE Home Featured Products -->
<section id="featured-products_block_center" class="block products_block section">
	<h4 class="title_block mar_b1"><span><?php echo smartyTranslate(array('s'=>'Featured Products','mod'=>'homefeatured_mod'),$_smarty_tpl);?>
</span></h4>
    
	<?php if (isset($_smarty_tpl->tpl_vars['products']->value)&&$_smarty_tpl->tpl_vars['products']->value){?>
    <ul id="featured_itemlist" class="pro_itemlist clearfix">
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
			<div class="itemlist_left">
                <a href="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['product']->value['link'], ENT_QUOTES, 'UTF-8', true);?>
" title="<?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['product']->value['name'], 'html', 'UTF-8');?>
" class="product_image"><img src="<?php echo $_smarty_tpl->tpl_vars['link']->value->getImageLink($_smarty_tpl->tpl_vars['product']->value['link_rewrite'],$_smarty_tpl->tpl_vars['product']->value['id_image'],'medium_default');?>
" height="<?php echo $_smarty_tpl->tpl_vars['mediumSize']->value['height'];?>
" width="<?php echo $_smarty_tpl->tpl_vars['mediumSize']->value['width'];?>
" alt="<?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['product']->value['name'], 'html', 'UTF-8');?>
" /></a>
            </div>
            <div class="itemlist_right">
    			<p class="s_title_block"><a href="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['product']->value['link'], ENT_QUOTES, 'UTF-8', true);?>
" title="<?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['product']->value['name'], 'htmlall', 'UTF-8');?>
"><?php echo smarty_modifier_escape($_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_MODIFIER]['truncate'][0][0]->smarty_modifier_truncate($_smarty_tpl->tpl_vars['product']->value['name'],40,'...'), 'htmlall', 'UTF-8');?>
</a></p>
                <?php if ($_smarty_tpl->tpl_vars['product']->value['show_price']&&!isset($_smarty_tpl->tpl_vars['restricted_country_mode']->value)&&!$_smarty_tpl->tpl_vars['PS_CATALOG_MODE']->value){?>
                    <div class="price_container mar_b10">
                        <span class="price">
                        <?php if (!$_smarty_tpl->tpl_vars['priceDisplay']->value){?><?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['convertPrice'][0][0]->convertPrice(array('price'=>$_smarty_tpl->tpl_vars['product']->value['price']),$_smarty_tpl);?>

                        <?php }else{ ?>
                        <?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['convertPrice'][0][0]->convertPrice(array('price'=>$_smarty_tpl->tpl_vars['product']->value['price_tax_exc']),$_smarty_tpl);?>

                        <?php }?>
                        </span>
                        <?php if (isset($_smarty_tpl->tpl_vars['product']->value['reduction'])&&$_smarty_tpl->tpl_vars['product']->value['reduction']){?>
                            <span class="old_price"><?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['convertPrice'][0][0]->convertPrice(array('price'=>$_smarty_tpl->tpl_vars['product']->value['price_without_reduction']),$_smarty_tpl);?>
</span>
                            <?php if (isset($_smarty_tpl->tpl_vars['sttheme']->value['discount_percentage'])&&$_smarty_tpl->tpl_vars['sttheme']->value['discount_percentage']){?>
                            <span class="sale_percentage">
                                <i class="icon-tag"></i>-<?php if ($_smarty_tpl->tpl_vars['product']->value['specific_prices']['reduction_type']=='percentage'){?><?php echo $_smarty_tpl->tpl_vars['product']->value['specific_prices']['reduction']*floatval(100);?>
<?php }elseif($_smarty_tpl->tpl_vars['product']->value['specific_prices']['reduction_type']=='amount'){?><?php echo sprintf("%d",($_smarty_tpl->tpl_vars['product']->value['specific_prices']['reduction']/$_smarty_tpl->tpl_vars['product']->value['price_without_reduction']*100));?>
<?php }?>%
                            </span>
                            <?php }?>
                        <?php }?>
                    </div>
                <?php }else{ ?>
                    <!--<div style="height:21px;"></div>-->
                <?php }?>  
                <div class="itemlist_action">
                    <?php if (($_smarty_tpl->tpl_vars['product']->value['id_product_attribute']==0||(isset($_smarty_tpl->tpl_vars['add_prod_display']->value)&&($_smarty_tpl->tpl_vars['add_prod_display']->value==1)))&&$_smarty_tpl->tpl_vars['product']->value['available_for_order']&&!isset($_smarty_tpl->tpl_vars['restricted_country_mode']->value)&&$_smarty_tpl->tpl_vars['product']->value['minimal_quantity']==1&&$_smarty_tpl->tpl_vars['product']->value['customizable']!=2&&!$_smarty_tpl->tpl_vars['PS_CATALOG_MODE']->value){?>          
						<?php if (($_smarty_tpl->tpl_vars['product']->value['quantity']>0||$_smarty_tpl->tpl_vars['product']->value['allow_oosp'])){?>
						<a class="exclusive ajax_add_to_cart_button" href="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['link']->value->getPageLink('cart'), ENT_QUOTES, 'UTF-8', true);?>
?qty=1&amp;id_product=<?php echo $_smarty_tpl->tpl_vars['product']->value['id_product'];?>
&amp;token=<?php echo $_smarty_tpl->tpl_vars['static_token']->value;?>
&amp;add" rel="ajax_id_product_<?php echo $_smarty_tpl->tpl_vars['product']->value['id_product'];?>
" title="<?php echo smartyTranslate(array('s'=>'Add to Cart','mod'=>'homefeatured_mod'),$_smarty_tpl);?>
"><i class="icon-basket icon-1x icon-mar-lr2"></i><span><?php echo smartyTranslate(array('s'=>'Add to Cart','mod'=>'homefeatured_mod'),$_smarty_tpl);?>
</span></a>
						<?php }else{ ?>
                        <a class="button exclusive view_button" href="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['product']->value['link'], ENT_QUOTES, 'UTF-8', true);?>
" title="<?php echo smartyTranslate(array('s'=>'View','mod'=>'homefeatured_mod'),$_smarty_tpl);?>
"><i class="icon-eye-2 icon-1x icon-mar-lr2"></i><span><?php echo smartyTranslate(array('s'=>'View','mod'=>'homefeatured_mod'),$_smarty_tpl);?>
</span></a>
						<?php }?>
					<?php }else{ ?>
						<!--<div style="height:23px;"></div>-->
                    <?php }?>
                </div>
            </div>
        </li>
        <?php } ?>
	</ul>
	<?php }else{ ?>
		<p class="warning"><?php echo smartyTranslate(array('s'=>'No featured products','mod'=>'homefeatured_mod'),$_smarty_tpl);?>
</p>
	<?php }?>
</section>
<!-- /MODULE Home Featured Products --><?php }} ?>