<?php /* Smarty version Smarty-3.1.14, created on 2014-01-15 18:32:36
         compiled from "D:\wamp\www\1561\prestashop\modules\strightbarcart\views\templates\hook\strightbarcart.tpl" */ ?>
<?php /*%%SmartyHeaderCode:2494752d6b824322f07-39128614%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '098ed13b56b8a9ca903aaaa8737fe5246e6f6810' => 
    array (
      0 => 'D:\\wamp\\www\\1561\\prestashop\\modules\\strightbarcart\\views\\templates\\hook\\strightbarcart.tpl',
      1 => 1389102180,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '2494752d6b824322f07-39128614',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'link' => 0,
    'cart_qties' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_52d6b824385618_74395002',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52d6b824385618_74395002')) {function content_52d6b824385618_74395002($_smarty_tpl) {?>
<!-- /MODULE Rightbar cart -->
<div id="rightbar_cart" class="rightbar_wrap">
    <a id="rightbar-shopping_cart" href="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['link']->value->getPageLink(((string)$_smarty_tpl->tpl_vars['order_process']->value),true), ENT_QUOTES, 'UTF-8', true);?>
" class="rightbar_tri icon_wrap" title="<?php echo smartyTranslate(array('s'=>'View my shopping cart','mod'=>'strightbarcart'),$_smarty_tpl);?>
">
        <i class="icon-basket icon-0x"></i>
        <span class="icon_text"><?php echo smartyTranslate(array('s'=>'Cart','mod'=>'strightbarcart'),$_smarty_tpl);?>
</span>
        <span class="ajax_cart_quantity amount_circle <?php if ($_smarty_tpl->tpl_vars['cart_qties']->value==0){?> hidden <?php }?><?php if ($_smarty_tpl->tpl_vars['cart_qties']->value>9){?> dozens <?php }?>"><?php echo $_smarty_tpl->tpl_vars['cart_qties']->value;?>
</span>
    </a>
</div>
<!-- /MODULE Rightbar cart --><?php }} ?>