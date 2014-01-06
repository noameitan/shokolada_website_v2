<?php /* Smarty version Smarty-3.1.14, created on 2014-01-06 20:11:42
         compiled from "D:\wamp\www\1561\prestashop\themes\default\mobile\order-opc-payment.tpl" */ ?>
<?php /*%%SmartyHeaderCode:2390652cb0dfebdb336-61705133%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '2576c36e1e58bb522d1a32545b0953a8ca6b5b53' => 
    array (
      0 => 'D:\\wamp\\www\\1561\\prestashop\\themes\\default\\mobile\\order-opc-payment.tpl',
      1 => 1384783796,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '2390652cb0dfebdb336-61705133',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'HOOK_PAYMENT' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_52cb0dfec14bc4_30655045',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52cb0dfec14bc4_30655045')) {function content_52cb0dfec14bc4_30655045($_smarty_tpl) {?>

<?php $_smarty_tpl->_capture_stack[0][] = array('default', 'page_title', null); ob_start(); ?><?php echo smartyTranslate(array('s'=>'Payment: '),$_smarty_tpl);?>
<?php list($_capture_buffer, $_capture_assign, $_capture_append) = array_pop($_smarty_tpl->_capture_stack[0]);
if (!empty($_capture_buffer)) {
 if (isset($_capture_assign)) $_smarty_tpl->assign($_capture_assign, ob_get_contents());
 if (isset( $_capture_append)) $_smarty_tpl->append( $_capture_append, ob_get_contents());
 Smarty::$_smarty_vars['capture'][$_capture_buffer]=ob_get_clean();
} else $_smarty_tpl->capture_error();?>
<?php echo $_smarty_tpl->getSubTemplate ('./page-title.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>


<div data-role="content">
	<fieldset data-role="controlgroup">
		<?php echo $_smarty_tpl->tpl_vars['HOOK_PAYMENT']->value;?>

	</fieldset>
</div>
<?php }} ?>