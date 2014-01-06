<?php /* Smarty version Smarty-3.1.14, created on 2014-01-06 20:12:35
         compiled from "D:\wamp\www\1561\prestashop\admin\themes\default\template\helpers\list\list_action_view.tpl" */ ?>
<?php /*%%SmartyHeaderCode:1666852cb0e33a807d9-54048471%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '45c89c923db0104eb991aaa12ca11f38449a803e' => 
    array (
      0 => 'D:\\wamp\\www\\1561\\prestashop\\admin\\themes\\default\\template\\helpers\\list\\list_action_view.tpl',
      1 => 1384783796,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1666852cb0e33a807d9-54048471',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'href' => 0,
    'action' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_52cb0e33a9e2e4_22064979',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52cb0e33a9e2e4_22064979')) {function content_52cb0e33a9e2e4_22064979($_smarty_tpl) {?>
<a href="<?php echo $_smarty_tpl->tpl_vars['href']->value;?>
" title="<?php echo $_smarty_tpl->tpl_vars['action']->value;?>
" >
	<img src="../img/admin/details.gif" alt="<?php echo $_smarty_tpl->tpl_vars['action']->value;?>
" />
</a><?php }} ?>