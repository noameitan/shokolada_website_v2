<?php /* Smarty version Smarty-3.1.14, created on 2014-01-15 16:24:16
         compiled from "D:\wamp\www\1561\prestashop\admin8955\themes\default\template\helpers\list\list_action_edit.tpl" */ ?>
<?php /*%%SmartyHeaderCode:2176952d69a109ec763-50220499%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '8a0fc82bb90f8fc11d9bf9964e72a16164b0f98f' => 
    array (
      0 => 'D:\\wamp\\www\\1561\\prestashop\\admin8955\\themes\\default\\template\\helpers\\list\\list_action_edit.tpl',
      1 => 1384783796,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '2176952d69a109ec763-50220499',
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
  'unifunc' => 'content_52d69a10a13122_42948938',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52d69a10a13122_42948938')) {function content_52d69a10a13122_42948938($_smarty_tpl) {?>
<a href="<?php echo $_smarty_tpl->tpl_vars['href']->value;?>
" class="edit" title="<?php echo $_smarty_tpl->tpl_vars['action']->value;?>
">
	<img src="../img/admin/edit.gif" alt="<?php echo $_smarty_tpl->tpl_vars['action']->value;?>
" />
</a><?php }} ?>