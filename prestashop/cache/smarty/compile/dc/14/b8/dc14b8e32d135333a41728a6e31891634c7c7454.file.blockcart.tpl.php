<?php /* Smarty version Smarty-3.1.14, created on 2014-01-19 00:21:10
         compiled from "D:\wamp\www\1561\prestashop\themes\transformer\modules\blockcart\blockcart.tpl" */ ?>
<?php /*%%SmartyHeaderCode:1185352dafe56471cf8-61143461%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'dc14b8e32d135333a41728a6e31891634c7c7454' => 
    array (
      0 => 'D:\\wamp\\www\\1561\\prestashop\\themes\\transformer\\modules\\blockcart\\blockcart.tpl',
      1 => 1389102133,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1185352dafe56471cf8-61143461',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'link' => 0,
    'cart_qties' => 0,
    'priceDisplay' => 0,
    'blockuser_cart_flag' => 0,
    'cart' => 0,
    'order_process' => 0,
    'ajax_allowed' => 0,
    'CUSTOMIZE_TEXTFIELD' => 0,
    'img_dir' => 0,
    'colapseExpandStatus' => 0,
    'products' => 0,
    'product' => 0,
    'productId' => 0,
    'productAttributeId' => 0,
    'customizedDatas' => 0,
    'static_token' => 0,
    'id_customization' => 0,
    'customization' => 0,
    'discounts' => 0,
    'discount' => 0,
    'shipping_cost' => 0,
    'show_wrapping' => 0,
    'cart_flag' => 0,
    'show_tax' => 0,
    'tax_cost' => 0,
    'total' => 0,
    'use_taxes' => 0,
    'display_tax_label' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_52dafe570fb5e5_76272640',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52dafe570fb5e5_76272640')) {function content_52dafe570fb5e5_76272640($_smarty_tpl) {?><?php if (!is_callable('smarty_modifier_escape')) include 'D:\\wamp\\www\\1561\\prestashop\\tools\\smarty\\plugins\\modifier.escape.php';
if (!is_callable('smarty_modifier_replace')) include 'D:\\wamp\\www\\1561\\prestashop\\tools\\smarty\\plugins\\modifier.replace.php';
?>




<a href="<?php echo $_smarty_tpl->tpl_vars['link']->value->getPageLink(((string)$_smarty_tpl->tpl_vars['order_process']->value),true);?>
" id="shopping_cart" title="<?php echo smartyTranslate(array('s'=>'Cart','mod'=>'blockcart'),$_smarty_tpl);?>
" rel="nofollow" class="clearfix">
<div class="ajax_cart_left icon_wrap">
<i class="icon-basket icon-0x"></i>
<span class="icon_text"><?php echo smartyTranslate(array('s'=>'Cart','mod'=>'blockcart'),$_smarty_tpl);?>
</span>
<span class="ajax_cart_quantity amount_circle <?php if ($_smarty_tpl->tpl_vars['cart_qties']->value>9){?> dozens <?php }?>"><?php echo $_smarty_tpl->tpl_vars['cart_qties']->value;?>
</span>
</div>
<span class="ajax_cart_total ajax_cart_right">
<?php if ($_smarty_tpl->tpl_vars['cart_qties']->value>0){?>
	<?php if ($_smarty_tpl->tpl_vars['priceDisplay']->value==1){?>
		<?php $_smarty_tpl->tpl_vars['blockuser_cart_flag'] = new Smarty_variable(constant('Cart::BOTH_WITHOUT_SHIPPING'), null, 0);?>
		<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['convertPrice'][0][0]->convertPrice(array('price'=>$_smarty_tpl->tpl_vars['cart']->value->getOrderTotal(false,$_smarty_tpl->tpl_vars['blockuser_cart_flag']->value)),$_smarty_tpl);?>

	<?php }else{ ?>
		<?php $_smarty_tpl->tpl_vars['blockuser_cart_flag'] = new Smarty_variable(constant('Cart::BOTH_WITHOUT_SHIPPING'), null, 0);?>
		<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['convertPrice'][0][0]->convertPrice(array('price'=>$_smarty_tpl->tpl_vars['cart']->value->getOrderTotal(true,$_smarty_tpl->tpl_vars['blockuser_cart_flag']->value)),$_smarty_tpl);?>

	<?php }?>
<?php }else{ ?>
    <?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['convertPrice'][0][0]->convertPrice(array('price'=>0),$_smarty_tpl);?>

<?php }?>
</span>
</a>
<div id="pro_added_wrap" class="dialog_message">
    <div class="clearfix mar_b10">
        <div id="pro_added_img" class="fl dialog_pro_img">
        </div>
        <div id="pro_added_info" class="fr dialog_pro_info">
            <div id="pro_added_title" class="dialog_pro_title"></div>
        </div>
    </div>
    <div id="pro_added_success" class="success"><?php echo smartyTranslate(array('s'=>'has been added to your cart.','mod'=>'blockcart'),$_smarty_tpl);?>
</div>
    <div class="pad_10">
        <?php echo smartyTranslate(array('s'=>'Your cart now have','mod'=>'blockcart'),$_smarty_tpl);?>
 <span id="pro_added_cart_nbr"></span> <?php echo smartyTranslate(array('s'=>'item(s).','mod'=>'blockcart'),$_smarty_tpl);?>
<br />
        <?php echo smartyTranslate(array('s'=>'Total','mod'=>'blockcart'),$_smarty_tpl);?>
:<span id="pro_added_cart_total"></span><br />
    </div>
    <div class="dialog_action clearfix">
        <a id="pro_added_continue" class="fl button" href="javascript:;" rel="nofollow"><?php echo smartyTranslate(array('s'=>'Continue shopping','mod'=>'blockcart'),$_smarty_tpl);?>
</a>
        <a href="<?php echo $_smarty_tpl->tpl_vars['link']->value->getPageLink(((string)$_smarty_tpl->tpl_vars['order_process']->value),true);?>
" id="button_order_cart" class="exclusive<?php if ($_smarty_tpl->tpl_vars['order_process']->value=='order-opc'){?>_large<?php }?> btn fr" title="<?php echo smartyTranslate(array('s'=>'Check out','mod'=>'blockcart'),$_smarty_tpl);?>
" rel="nofollow"><span></span><?php echo smartyTranslate(array('s'=>'Check out','mod'=>'blockcart'),$_smarty_tpl);?>
</a>
    </div>
</div>
<script type="text/javascript">
<?php if ($_smarty_tpl->tpl_vars['ajax_allowed']->value){?>
var CUSTOMIZE_TEXTFIELD = <?php echo $_smarty_tpl->tpl_vars['CUSTOMIZE_TEXTFIELD']->value;?>
;
var img_dir = '<?php echo addslashes($_smarty_tpl->tpl_vars['img_dir']->value);?>
';
<?php }?>
var customizationIdMessage = '<?php echo smartyTranslate(array('s'=>'Customization #','mod'=>'blockcart','js'=>1),$_smarty_tpl);?>
';
var removingLinkText = '<?php echo smartyTranslate(array('s'=>'remove this product from my cart','mod'=>'blockcart','js'=>1),$_smarty_tpl);?>
';
var freeShippingTranslation = '<?php echo smartyTranslate(array('s'=>'Free shipping!','mod'=>'blockcart','js'=>1),$_smarty_tpl);?>
';
var freeProductTranslation = '<?php echo smartyTranslate(array('s'=>'Free!','mod'=>'blockcart','js'=>1),$_smarty_tpl);?>
';
var delete_txt = '<?php echo smartyTranslate(array('s'=>'Delete','mod'=>'blockcart','js'=>1),$_smarty_tpl);?>
';
var generated_date = <?php echo intval(time());?>
;
</script>
<!-- MODULE Block cart -->
<div id="cart_block" class="block exclusive">
	<p class="title_block">
		<a href="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['link']->value->getPageLink(((string)$_smarty_tpl->tpl_vars['order_process']->value),true), ENT_QUOTES, 'UTF-8', true);?>
" title="<?php echo smartyTranslate(array('s'=>'View my shopping cart','mod'=>'blockcart'),$_smarty_tpl);?>
" rel="nofollow"><?php echo smartyTranslate(array('s'=>'Cart','mod'=>'blockcart'),$_smarty_tpl);?>

		<?php if ($_smarty_tpl->tpl_vars['ajax_allowed']->value){?>
		<span id="block_cart_expand" <?php if (isset($_smarty_tpl->tpl_vars['colapseExpandStatus']->value)&&$_smarty_tpl->tpl_vars['colapseExpandStatus']->value=='expanded'||!isset($_smarty_tpl->tpl_vars['colapseExpandStatus']->value)){?>class="hidden"<?php }?>>&nbsp;</span>
		<span id="block_cart_collapse" <?php if (isset($_smarty_tpl->tpl_vars['colapseExpandStatus']->value)&&$_smarty_tpl->tpl_vars['colapseExpandStatus']->value=='collapsed'){?>class="hidden"<?php }?>>&nbsp;</span>
		<?php }?></a>
	</p>
	<div class="block_content">
	<!-- block summary -->
	<div id="cart_block_summary" class="<?php if (isset($_smarty_tpl->tpl_vars['colapseExpandStatus']->value)&&$_smarty_tpl->tpl_vars['colapseExpandStatus']->value=='expanded'||!$_smarty_tpl->tpl_vars['ajax_allowed']->value||!isset($_smarty_tpl->tpl_vars['colapseExpandStatus']->value)){?>collapsed<?php }else{ ?>expanded<?php }?>">
		<span class="ajax_cart_quantity" <?php if ($_smarty_tpl->tpl_vars['cart_qties']->value<=0){?>style="display:none;"<?php }?>><?php echo $_smarty_tpl->tpl_vars['cart_qties']->value;?>
</span>
		<span class="ajax_cart_product_txt_s" <?php if ($_smarty_tpl->tpl_vars['cart_qties']->value<=1){?>style="display:none"<?php }?>><?php echo smartyTranslate(array('s'=>'products','mod'=>'blockcart'),$_smarty_tpl);?>
</span>
		<span class="ajax_cart_product_txt" <?php if ($_smarty_tpl->tpl_vars['cart_qties']->value>1){?>style="display:none"<?php }?>><?php echo smartyTranslate(array('s'=>'product','mod'=>'blockcart'),$_smarty_tpl);?>
</span>
		<span class="ajax_cart_total" <?php if ($_smarty_tpl->tpl_vars['cart_qties']->value==0){?>style="display:none"<?php }?>>
			<?php if ($_smarty_tpl->tpl_vars['cart_qties']->value>0){?>
				<?php if ($_smarty_tpl->tpl_vars['priceDisplay']->value==1){?>
					<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['convertPrice'][0][0]->convertPrice(array('price'=>$_smarty_tpl->tpl_vars['cart']->value->getOrderTotal(false)),$_smarty_tpl);?>

				<?php }else{ ?>
					<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['convertPrice'][0][0]->convertPrice(array('price'=>$_smarty_tpl->tpl_vars['cart']->value->getOrderTotal(true)),$_smarty_tpl);?>

				<?php }?>
			<?php }?>
		</span>
		<span class="ajax_cart_no_product" <?php if ($_smarty_tpl->tpl_vars['cart_qties']->value!=0){?>style="display:none"<?php }?>><?php echo smartyTranslate(array('s'=>'(empty)','mod'=>'blockcart'),$_smarty_tpl);?>
</span>
	</div>
	<!-- block list of products -->
	<div id="cart_block_list" class="<?php if (isset($_smarty_tpl->tpl_vars['colapseExpandStatus']->value)&&$_smarty_tpl->tpl_vars['colapseExpandStatus']->value=='expanded'||!$_smarty_tpl->tpl_vars['ajax_allowed']->value||!isset($_smarty_tpl->tpl_vars['colapseExpandStatus']->value)){?>expanded<?php }else{ ?>collapsed<?php }?>">
	<?php if ($_smarty_tpl->tpl_vars['products']->value){?>
		<dl class="products">
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
 $_smarty_tpl->tpl_vars['smarty']->value['foreach']['myLoop']['first'] = $_smarty_tpl->tpl_vars['product']->first;
 $_smarty_tpl->tpl_vars['smarty']->value['foreach']['myLoop']['last'] = $_smarty_tpl->tpl_vars['product']->last;
?>
			<?php $_smarty_tpl->tpl_vars['productId'] = new Smarty_variable($_smarty_tpl->tpl_vars['product']->value['id_product'], null, 0);?>
			<?php $_smarty_tpl->tpl_vars['productAttributeId'] = new Smarty_variable($_smarty_tpl->tpl_vars['product']->value['id_product_attribute'], null, 0);?>
			<dt id="cart_block_product_<?php echo $_smarty_tpl->tpl_vars['product']->value['id_product'];?>
_<?php if ($_smarty_tpl->tpl_vars['product']->value['id_product_attribute']){?><?php echo $_smarty_tpl->tpl_vars['product']->value['id_product_attribute'];?>
<?php }else{ ?>0<?php }?>_<?php if ($_smarty_tpl->tpl_vars['product']->value['id_address_delivery']){?><?php echo $_smarty_tpl->tpl_vars['product']->value['id_address_delivery'];?>
<?php }else{ ?>0<?php }?>" class="<?php if ($_smarty_tpl->getVariable('smarty')->value['foreach']['myLoop']['first']){?>first_item<?php }elseif($_smarty_tpl->getVariable('smarty')->value['foreach']['myLoop']['last']){?>last_item<?php }else{ ?>item<?php }?> clearfix">
                <a class="cart_block_product_image" href="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['link']->value->getProductLink($_smarty_tpl->tpl_vars['product']->value,$_smarty_tpl->tpl_vars['product']->value['link_rewrite'],$_smarty_tpl->tpl_vars['product']->value['category'],null,null,$_smarty_tpl->tpl_vars['product']->value['id_shop'],$_smarty_tpl->tpl_vars['product']->value['id_product_attribute']), ENT_QUOTES, 'UTF-8', true);?>
" title="<?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['product']->value['name'], 'html', 'UTF-8');?>
">
                    <img src="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['link']->value->getImageLink($_smarty_tpl->tpl_vars['product']->value['link_rewrite'],$_smarty_tpl->tpl_vars['product']->value['id_image'],'small_default'), ENT_QUOTES, 'UTF-8', true);?>
" alt="<?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['product']->value['name'], 'htmlall', 'UTF-8');?>
" />
                </a>
                <span class="quantity-formated"><span class="quantity"><?php echo $_smarty_tpl->tpl_vars['product']->value['cart_quantity'];?>
</span>x</span><a class="cart_block_product_name" href="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['link']->value->getProductLink($_smarty_tpl->tpl_vars['product']->value,$_smarty_tpl->tpl_vars['product']->value['link_rewrite'],$_smarty_tpl->tpl_vars['product']->value['category'],null,null,$_smarty_tpl->tpl_vars['product']->value['id_shop'],$_smarty_tpl->tpl_vars['product']->value['id_product_attribute']), ENT_QUOTES, 'UTF-8', true);?>
" title="<?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['product']->value['name'], 'html', 'UTF-8');?>
"><?php echo smarty_modifier_escape($_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_MODIFIER]['truncate'][0][0]->smarty_modifier_truncate($_smarty_tpl->tpl_vars['product']->value['name'],25,'...'), 'html', 'UTF-8');?>
</a><span class="remove_link"><?php if (!isset($_smarty_tpl->tpl_vars['customizedDatas']->value[$_smarty_tpl->tpl_vars['productId']->value][$_smarty_tpl->tpl_vars['productAttributeId']->value])&&(!isset($_smarty_tpl->tpl_vars['product']->value['is_gift'])||!$_smarty_tpl->tpl_vars['product']->value['is_gift'])){?><a rel="nofollow" class="ajax_cart_block_remove_link" href="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['link']->value->getPageLink('cart',true,null,"delete=1&amp;id_product=".((string)$_smarty_tpl->tpl_vars['product']->value['id_product'])."&amp;ipa=".((string)$_smarty_tpl->tpl_vars['product']->value['id_product_attribute'])."&amp;id_address_delivery=".((string)$_smarty_tpl->tpl_vars['product']->value['id_address_delivery'])."&amp;token=".((string)$_smarty_tpl->tpl_vars['static_token']->value),true), ENT_QUOTES, 'UTF-8', true);?>
" title="<?php echo smartyTranslate(array('s'=>'remove this product from my cart','mod'=>'blockcart'),$_smarty_tpl);?>
"><i class="icon-trash"></i></a><?php }?></span>
                <span class="price">
					<?php if (!isset($_smarty_tpl->tpl_vars['product']->value['is_gift'])||!$_smarty_tpl->tpl_vars['product']->value['is_gift']){?>
						<?php if ($_smarty_tpl->tpl_vars['priceDisplay']->value==@constant('PS_TAX_EXC')){?><?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['displayWtPrice'][0][0]->displayWtPrice(array('p'=>((string)$_smarty_tpl->tpl_vars['product']->value['total'])),$_smarty_tpl);?>
<?php }else{ ?><?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['displayWtPrice'][0][0]->displayWtPrice(array('p'=>((string)$_smarty_tpl->tpl_vars['product']->value['total_wt'])),$_smarty_tpl);?>
<?php }?>
					<?php }else{ ?>
						<b><?php echo smartyTranslate(array('s'=>'Free!','mod'=>'blockcart'),$_smarty_tpl);?>
</b>
					<?php }?>
				</span>
			<?php if (isset($_smarty_tpl->tpl_vars['product']->value['attributes_small'])){?>
			<div id="cart_block_combination_of_<?php echo $_smarty_tpl->tpl_vars['product']->value['id_product'];?>
<?php if ($_smarty_tpl->tpl_vars['product']->value['id_product_attribute']){?>_<?php echo $_smarty_tpl->tpl_vars['product']->value['id_product_attribute'];?>
<?php }?>_<?php echo intval($_smarty_tpl->tpl_vars['product']->value['id_address_delivery']);?>
" class="<?php if ($_smarty_tpl->getVariable('smarty')->value['foreach']['myLoop']['first']){?>first_item<?php }elseif($_smarty_tpl->getVariable('smarty')->value['foreach']['myLoop']['last']){?>last_item<?php }else{ ?>item<?php }?>">
				<a href="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['link']->value->getProductLink($_smarty_tpl->tpl_vars['product']->value,$_smarty_tpl->tpl_vars['product']->value['link_rewrite'],$_smarty_tpl->tpl_vars['product']->value['category'],null,null,$_smarty_tpl->tpl_vars['product']->value['id_shop'],$_smarty_tpl->tpl_vars['product']->value['id_product_attribute']), ENT_QUOTES, 'UTF-8', true);?>
" title="<?php echo smartyTranslate(array('s'=>'Product detail','mod'=>'blockcart'),$_smarty_tpl);?>
" class="color_666"><?php echo $_smarty_tpl->tpl_vars['product']->value['attributes_small'];?>
</a>
			<?php }?>
			<!-- Customizable datas -->
			<?php if (isset($_smarty_tpl->tpl_vars['customizedDatas']->value[$_smarty_tpl->tpl_vars['productId']->value][$_smarty_tpl->tpl_vars['productAttributeId']->value][$_smarty_tpl->tpl_vars['product']->value['id_address_delivery']])){?>
				<?php if (!isset($_smarty_tpl->tpl_vars['product']->value['attributes_small'])){?><dd id="cart_block_combination_of_<?php echo $_smarty_tpl->tpl_vars['product']->value['id_product'];?>
_<?php if ($_smarty_tpl->tpl_vars['product']->value['id_product_attribute']){?><?php echo $_smarty_tpl->tpl_vars['product']->value['id_product_attribute'];?>
<?php }else{ ?>0<?php }?>_<?php if ($_smarty_tpl->tpl_vars['product']->value['id_address_delivery']){?><?php echo $_smarty_tpl->tpl_vars['product']->value['id_address_delivery'];?>
<?php }else{ ?>0<?php }?>" class="<?php if ($_smarty_tpl->getVariable('smarty')->value['foreach']['myLoop']['first']){?>first_item<?php }elseif($_smarty_tpl->getVariable('smarty')->value['foreach']['myLoop']['last']){?>last_item<?php }else{ ?>item<?php }?>"><?php }?>
				<ul class="cart_block_customizations" id="customization_<?php echo $_smarty_tpl->tpl_vars['productId']->value;?>
_<?php echo $_smarty_tpl->tpl_vars['productAttributeId']->value;?>
">
					<?php  $_smarty_tpl->tpl_vars['customization'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['customization']->_loop = false;
 $_smarty_tpl->tpl_vars['id_customization'] = new Smarty_Variable;
 $_from = $_smarty_tpl->tpl_vars['customizedDatas']->value[$_smarty_tpl->tpl_vars['productId']->value][$_smarty_tpl->tpl_vars['productAttributeId']->value][$_smarty_tpl->tpl_vars['product']->value['id_address_delivery']]; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['customization']->key => $_smarty_tpl->tpl_vars['customization']->value){
$_smarty_tpl->tpl_vars['customization']->_loop = true;
 $_smarty_tpl->tpl_vars['id_customization']->value = $_smarty_tpl->tpl_vars['customization']->key;
?>
						<li name="customization">
							<div class="deleteCustomizableProduct" id="deleteCustomizableProduct_<?php echo intval($_smarty_tpl->tpl_vars['id_customization']->value);?>
_<?php echo intval($_smarty_tpl->tpl_vars['product']->value['id_product']);?>
_<?php echo intval($_smarty_tpl->tpl_vars['product']->value['id_product_attribute']);?>
_<?php echo intval($_smarty_tpl->tpl_vars['product']->value['id_address_delivery']);?>
"><a class="ajax_cart_block_remove_link" href="<?php ob_start();?><?php echo intval($_smarty_tpl->tpl_vars['product']->value['id_product']);?>
<?php $_tmp1=ob_get_clean();?><?php ob_start();?><?php echo intval($_smarty_tpl->tpl_vars['product']->value['id_product_attribute']);?>
<?php $_tmp2=ob_get_clean();?><?php echo htmlspecialchars($_smarty_tpl->tpl_vars['link']->value->getPageLink('cart',true,null,"delete=1&amp;id_product=".$_tmp1."&amp;ipa=".$_tmp2."&amp;id_customization=".((string)$_smarty_tpl->tpl_vars['id_customization']->value)."&amp;token=".((string)$_smarty_tpl->tpl_vars['static_token']->value),true), ENT_QUOTES, 'UTF-8', true);?>
" rel="nofollow"><i class="icon-trash"></i></a></div>
							<span class="quantity-formated"><span class="quantity"><?php echo $_smarty_tpl->tpl_vars['customization']->value['quantity'];?>
</span>x</span><?php if (isset($_smarty_tpl->tpl_vars['customization']->value['datas'][$_smarty_tpl->tpl_vars['CUSTOMIZE_TEXTFIELD']->value][0])){?>
							<?php echo smarty_modifier_escape($_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_MODIFIER]['truncate'][0][0]->smarty_modifier_truncate(smarty_modifier_replace($_smarty_tpl->tpl_vars['customization']->value['datas'][$_smarty_tpl->tpl_vars['CUSTOMIZE_TEXTFIELD']->value][0]['value'],"<br />"," "),28,'...'), 'html', 'UTF-8');?>

							<?php }else{ ?>
							<?php echo smartyTranslate(array('s'=>'Customization #%d:','sprintf'=>intval($_smarty_tpl->tpl_vars['id_customization']->value),'mod'=>'blockcart'),$_smarty_tpl);?>

							<?php }?>
						</li>
					<?php } ?>
				</ul>
				<?php if (!isset($_smarty_tpl->tpl_vars['product']->value['attributes_small'])){?></div><?php }?>
			<?php }?>
			<?php if (isset($_smarty_tpl->tpl_vars['product']->value['attributes_small'])){?></div><?php }?>
			</dt>
		<?php } ?>
		</dl>
	<?php }?>
		<p class="cart_block_no_products<?php if ($_smarty_tpl->tpl_vars['products']->value){?> hidden<?php }?>" id="cart_block_no_products"><?php echo smartyTranslate(array('s'=>'No products','mod'=>'blockcart'),$_smarty_tpl);?>
</p>
        <?php if (count($_smarty_tpl->tpl_vars['discounts']->value)>0){?>
	    <table id="vouchers"<?php if (count($_smarty_tpl->tpl_vars['discounts']->value)==0){?> style="display:none;"<?php }?>>
            <tbody>
            <?php  $_smarty_tpl->tpl_vars['discount'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['discount']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['discounts']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['discount']->key => $_smarty_tpl->tpl_vars['discount']->value){
$_smarty_tpl->tpl_vars['discount']->_loop = true;
?>
                <?php if ($_smarty_tpl->tpl_vars['discount']->value['value_real']>0){?>
    				<tr class="bloc_cart_voucher" id="bloc_cart_voucher_<?php echo $_smarty_tpl->tpl_vars['discount']->value['id_discount'];?>
">
    					<td class="quantity">1x</td>
    					<td class="name" title="<?php echo $_smarty_tpl->tpl_vars['discount']->value['description'];?>
"><?php echo smarty_modifier_escape($_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_MODIFIER]['truncate'][0][0]->smarty_modifier_truncate((($_smarty_tpl->tpl_vars['discount']->value['name']).(' : ')).($_smarty_tpl->tpl_vars['discount']->value['description']),18,'...'), 'htmlall', 'UTF-8');?>
</td>
    					<td class="price">-<?php if ($_smarty_tpl->tpl_vars['priceDisplay']->value==1){?><?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['convertPrice'][0][0]->convertPrice(array('price'=>$_smarty_tpl->tpl_vars['discount']->value['value_tax_exc']),$_smarty_tpl);?>
<?php }else{ ?><?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['convertPrice'][0][0]->convertPrice(array('price'=>$_smarty_tpl->tpl_vars['discount']->value['value_real']),$_smarty_tpl);?>
<?php }?></td>
    					<td class="delete">
    						<?php if (strlen($_smarty_tpl->tpl_vars['discount']->value['code'])){?>
    							<a class="delete_voucher" href="<?php echo $_smarty_tpl->tpl_vars['link']->value->getPageLink('$order_process',true);?>
?deleteDiscount=<?php echo $_smarty_tpl->tpl_vars['discount']->value['id_discount'];?>
" title="<?php echo smartyTranslate(array('s'=>'Delete','mod'=>'blockcart'),$_smarty_tpl);?>
" rel="nofollow"><img src="<?php echo $_smarty_tpl->tpl_vars['img_dir']->value;?>
icon/delete.gif" alt="<?php echo smartyTranslate(array('s'=>'Delete','mod'=>'blockcart'),$_smarty_tpl);?>
" class="icon" /></a>
    						<?php }?>
    					</td>
    				</tr>
                <?php }?>
            <?php }
if (!$_smarty_tpl->tpl_vars['discount']->_loop) {
?>
					<tr class="bloc_cart_voucher">
						<td>&nbsp;</td>
					</tr>
            <?php } ?>
            <tbody>
		</table>
		<?php }?>
		
		<div id="cart-prices">
			<div class="cart-prices-item clearfix">
                <span id="cart_block_shipping_cost" class="price ajax_cart_shipping_cost"><?php echo $_smarty_tpl->tpl_vars['shipping_cost']->value;?>
</span>
			    <span class="fl"><?php echo smartyTranslate(array('s'=>'Shipping','mod'=>'blockcart'),$_smarty_tpl);?>
</span>
            </div>
			<?php if ($_smarty_tpl->tpl_vars['show_wrapping']->value){?>
				<?php $_smarty_tpl->tpl_vars['cart_flag'] = new Smarty_variable(constant('Cart::ONLY_WRAPPING'), null, 0);?>
			    <div class="cart-prices-item clearfix">
				<span id="cart_block_wrapping_cost" class="price cart_block_wrapping_cost"><?php if ($_smarty_tpl->tpl_vars['priceDisplay']->value==1){?><?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['convertPrice'][0][0]->convertPrice(array('price'=>$_smarty_tpl->tpl_vars['cart']->value->getOrderTotal(false,$_smarty_tpl->tpl_vars['cart_flag']->value)),$_smarty_tpl);?>
<?php }else{ ?><?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['convertPrice'][0][0]->convertPrice(array('price'=>$_smarty_tpl->tpl_vars['cart']->value->getOrderTotal(true,$_smarty_tpl->tpl_vars['cart_flag']->value)),$_smarty_tpl);?>
<?php }?></span>
				<span class="fl"><?php echo smartyTranslate(array('s'=>'Wrapping','mod'=>'blockcart'),$_smarty_tpl);?>
</span>
                </div>
			<?php }?>
			<?php if ($_smarty_tpl->tpl_vars['show_tax']->value&&isset($_smarty_tpl->tpl_vars['tax_cost']->value)){?>
                <div class="cart-prices-item clearfix">
				<span id="cart_block_tax_cost" class="price ajax_cart_tax_cost"><?php echo $_smarty_tpl->tpl_vars['tax_cost']->value;?>
</span>
				<span class="fl"><?php echo smartyTranslate(array('s'=>'Tax','mod'=>'blockcart'),$_smarty_tpl);?>
</span>
				</div>
			<?php }?>
			<div class="cart-prices-item clearfix">
			<span id="cart_block_total" class="price ajax_block_cart_total"><?php echo $_smarty_tpl->tpl_vars['total']->value;?>
</span>
			<span><?php echo smartyTranslate(array('s'=>'Total','mod'=>'blockcart'),$_smarty_tpl);?>
</span>
			</div>
		</div>
		<?php if ($_smarty_tpl->tpl_vars['use_taxes']->value&&$_smarty_tpl->tpl_vars['display_tax_label']->value==1&&$_smarty_tpl->tpl_vars['show_tax']->value){?>
			<?php if ($_smarty_tpl->tpl_vars['priceDisplay']->value==0){?>
				<p id="cart-price-precisions">
					<?php echo smartyTranslate(array('s'=>'Prices are tax included','mod'=>'blockcart'),$_smarty_tpl);?>

				</p>
			<?php }?>
			<?php if ($_smarty_tpl->tpl_vars['priceDisplay']->value==1){?>
				<p id="cart-price-precisions">
					<?php echo smartyTranslate(array('s'=>'Prices are tax excluded','mod'=>'blockcart'),$_smarty_tpl);?>

				</p>
			<?php }?>
		<?php }?>
		<div id="cart-buttons" class="clearfix">
			<?php if ($_smarty_tpl->tpl_vars['order_process']->value=='order'){?><a href="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['link']->value->getPageLink(((string)$_smarty_tpl->tpl_vars['order_process']->value),true), ENT_QUOTES, 'UTF-8', true);?>
" class="button_small btn fl" title="<?php echo smartyTranslate(array('s'=>'View my shopping cart','mod'=>'blockcart'),$_smarty_tpl);?>
" rel="nofollow"><?php echo smartyTranslate(array('s'=>'Cart','mod'=>'blockcart'),$_smarty_tpl);?>
</a><?php }?>
			<a href="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['link']->value->getPageLink(((string)$_smarty_tpl->tpl_vars['order_process']->value),true), ENT_QUOTES, 'UTF-8', true);?>
" id="button_order_cart" class="exclusive<?php if ($_smarty_tpl->tpl_vars['order_process']->value=='order-opc'){?>_large<?php }?> btn fr" title="<?php echo smartyTranslate(array('s'=>'Check out','mod'=>'blockcart'),$_smarty_tpl);?>
" rel="nofollow"><span></span><?php echo smartyTranslate(array('s'=>'Check out','mod'=>'blockcart'),$_smarty_tpl);?>
</a>
		</div>
	</div>
	</div>
</div>
<!-- /MODULE Block cart --><?php }} ?>