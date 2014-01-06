<?php /* Smarty version Smarty-3.1.14, created on 2014-01-06 20:12:26
         compiled from "D:\wamp\www\1561\prestashop\admin\themes\default\template\controllers\products\specific_prices_shop_update.tpl" */ ?>
<?php /*%%SmartyHeaderCode:2214752cb0e2ab805f4-17747436%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '569b4ed43f76b2e90d88790d3e0c96bc588ec7cc' => 
    array (
      0 => 'D:\\wamp\\www\\1561\\prestashop\\admin\\themes\\default\\template\\controllers\\products\\specific_prices_shop_update.tpl',
      1 => 1384783796,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '2214752cb0e2ab805f4-17747436',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'option_list' => 0,
    'key_id' => 0,
    'row' => 0,
    'key_value' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_52cb0e2abe40a8_39523746',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52cb0e2abe40a8_39523746')) {function content_52cb0e2abe40a8_39523746($_smarty_tpl) {?><?php if (!is_callable('smarty_modifier_escape')) include 'D:\\wamp\\www\\1561\\prestashop\\tools\\smarty\\plugins\\modifier.escape.php';
?>
<?php  $_smarty_tpl->tpl_vars['row'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['row']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['option_list']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['row']->key => $_smarty_tpl->tpl_vars['row']->value){
$_smarty_tpl->tpl_vars['row']->_loop = true;
?>
	<option value="<?php echo intval($_smarty_tpl->tpl_vars['row']->value[$_smarty_tpl->tpl_vars['key_id']->value]);?>
"><?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['row']->value[$_smarty_tpl->tpl_vars['key_value']->value], 'htmlall', 'UTF-8');?>
</option>
<?php } ?><?php }} ?>