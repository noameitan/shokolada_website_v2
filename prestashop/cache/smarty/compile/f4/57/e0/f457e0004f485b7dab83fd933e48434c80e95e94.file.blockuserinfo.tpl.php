<?php /* Smarty version Smarty-3.1.14, created on 2014-01-06 22:32:25
         compiled from "D:\wamp\www\1561\prestashop\modules\blockuserinfo\blockuserinfo.tpl" */ ?>
<?php /*%%SmartyHeaderCode:1420352cb12d92cbb18-21869687%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'f457e0004f485b7dab83fd933e48434c80e95e94' => 
    array (
      0 => 'D:\\wamp\\www\\1561\\prestashop\\modules\\blockuserinfo\\blockuserinfo.tpl',
      1 => 1384783796,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1420352cb12d92cbb18-21869687',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'PS_CATALOG_MODE' => 0,
    'order_process' => 0,
    'link' => 0,
    'cart_qties' => 0,
    'priceDisplay' => 0,
    'blockuser_cart_flag' => 0,
    'cart' => 0,
    'logged' => 0,
    'cookie' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_52cb12d94ef662_87573464',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52cb12d94ef662_87573464')) {function content_52cb12d94ef662_87573464($_smarty_tpl) {?>

<!-- Block user information module HEADER -->
<div id="header_user" <?php if ($_smarty_tpl->tpl_vars['PS_CATALOG_MODE']->value){?>class="header_user_catalog"<?php }?>>
	<ul id="header_nav">
		<?php if (!$_smarty_tpl->tpl_vars['PS_CATALOG_MODE']->value){?>
		<li id="shopping_cart">
			<a href="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['link']->value->getPageLink($_smarty_tpl->tpl_vars['order_process']->value,true), ENT_QUOTES, 'UTF-8', true);?>
" title="<?php echo smartyTranslate(array('s'=>'View my shopping cart','mod'=>'blockuserinfo'),$_smarty_tpl);?>
" rel="nofollow"><?php echo smartyTranslate(array('s'=>'Cart','mod'=>'blockuserinfo'),$_smarty_tpl);?>

			<span class="ajax_cart_quantity<?php if ($_smarty_tpl->tpl_vars['cart_qties']->value==0){?> hidden<?php }?>"><?php echo $_smarty_tpl->tpl_vars['cart_qties']->value;?>
</span>
			<span class="ajax_cart_product_txt<?php if ($_smarty_tpl->tpl_vars['cart_qties']->value!=1){?> hidden<?php }?>"><?php echo smartyTranslate(array('s'=>'Product','mod'=>'blockuserinfo'),$_smarty_tpl);?>
</span>
			<span class="ajax_cart_product_txt_s<?php if ($_smarty_tpl->tpl_vars['cart_qties']->value<2){?> hidden<?php }?>"><?php echo smartyTranslate(array('s'=>'Products','mod'=>'blockuserinfo'),$_smarty_tpl);?>
</span>
			<span class="ajax_cart_total<?php if ($_smarty_tpl->tpl_vars['cart_qties']->value==0){?> hidden<?php }?>">
				<?php if ($_smarty_tpl->tpl_vars['cart_qties']->value>0){?>
					<?php if ($_smarty_tpl->tpl_vars['priceDisplay']->value==1){?>
						<?php $_smarty_tpl->tpl_vars['blockuser_cart_flag'] = new Smarty_variable(constant('Cart::BOTH_WITHOUT_SHIPPING'), null, 0);?>
						<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['convertPrice'][0][0]->convertPrice(array('price'=>$_smarty_tpl->tpl_vars['cart']->value->getOrderTotal(false,$_smarty_tpl->tpl_vars['blockuser_cart_flag']->value)),$_smarty_tpl);?>

					<?php }else{ ?>
						<?php $_smarty_tpl->tpl_vars['blockuser_cart_flag'] = new Smarty_variable(constant('Cart::BOTH_WITHOUT_SHIPPING'), null, 0);?>
						<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['convertPrice'][0][0]->convertPrice(array('price'=>$_smarty_tpl->tpl_vars['cart']->value->getOrderTotal(true,$_smarty_tpl->tpl_vars['blockuser_cart_flag']->value)),$_smarty_tpl);?>

					<?php }?>
				<?php }?>
			</span>
			<span class="ajax_cart_no_product<?php if ($_smarty_tpl->tpl_vars['cart_qties']->value>0){?> hidden<?php }?>"><?php echo smartyTranslate(array('s'=>'(empty)','mod'=>'blockuserinfo'),$_smarty_tpl);?>
</span>
			</a>
		</li>
		<?php }?>
		<li id="your_account"><a href="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['link']->value->getPageLink('my-account',true), ENT_QUOTES, 'UTF-8', true);?>
" title="<?php echo smartyTranslate(array('s'=>'View my customer account','mod'=>'blockuserinfo'),$_smarty_tpl);?>
" rel="nofollow"><?php echo smartyTranslate(array('s'=>'Your Account','mod'=>'blockuserinfo'),$_smarty_tpl);?>
</a></li>
	</ul>
	<p id="header_user_info">
		<?php echo smartyTranslate(array('s'=>'Welcome','mod'=>'blockuserinfo'),$_smarty_tpl);?>

		<?php if ($_smarty_tpl->tpl_vars['logged']->value){?>
			<a href="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['link']->value->getPageLink('my-account',true), ENT_QUOTES, 'UTF-8', true);?>
" title="<?php echo smartyTranslate(array('s'=>'View my customer account','mod'=>'blockuserinfo'),$_smarty_tpl);?>
" class="account" rel="nofollow"><span><?php echo $_smarty_tpl->tpl_vars['cookie']->value->customer_firstname;?>
 <?php echo $_smarty_tpl->tpl_vars['cookie']->value->customer_lastname;?>
</span></a>
			<a href="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['link']->value->getPageLink('index',true,null,"mylogout"), ENT_QUOTES, 'UTF-8', true);?>
" title="<?php echo smartyTranslate(array('s'=>'Log me out','mod'=>'blockuserinfo'),$_smarty_tpl);?>
" class="logout" rel="nofollow"><?php echo smartyTranslate(array('s'=>'Log out','mod'=>'blockuserinfo'),$_smarty_tpl);?>
</a>
		<?php }else{ ?>
			<a href="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['link']->value->getPageLink('my-account',true), ENT_QUOTES, 'UTF-8', true);?>
" title="<?php echo smartyTranslate(array('s'=>'Login to your customer account','mod'=>'blockuserinfo'),$_smarty_tpl);?>
" class="login" rel="nofollow"><?php echo smartyTranslate(array('s'=>'Login','mod'=>'blockuserinfo'),$_smarty_tpl);?>
</a>
		<?php }?>
	</p>
</div>
<!-- /Block user information module HEADER -->
<?php }} ?>