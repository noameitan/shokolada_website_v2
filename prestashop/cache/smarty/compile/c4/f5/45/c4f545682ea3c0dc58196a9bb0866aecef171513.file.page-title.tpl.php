<?php /* Smarty version Smarty-3.1.14, created on 2014-01-06 20:11:44
         compiled from "D:\wamp\www\1561\prestashop\themes\default\mobile\page-title.tpl" */ ?>
<?php /*%%SmartyHeaderCode:2807852cb0e0066be10-60229065%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'c4f545682ea3c0dc58196a9bb0866aecef171513' => 
    array (
      0 => 'D:\\wamp\\www\\1561\\prestashop\\themes\\default\\mobile\\page-title.tpl',
      1 => 1384783796,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '2807852cb0e0066be10-60229065',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'page_title' => 0,
    'meta_title' => 0,
    'shop_name' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_52cb0e006c8af4_19603177',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52cb0e006c8af4_19603177')) {function content_52cb0e006c8af4_19603177($_smarty_tpl) {?><?php if (!is_callable('smarty_modifier_escape')) include 'D:\\wamp\\www\\1561\\prestashop\\tools\\smarty\\plugins\\modifier.escape.php';
?><?php if (!isset($_smarty_tpl->tpl_vars['page_title']->value)&&isset($_smarty_tpl->tpl_vars['meta_title']->value)&&$_smarty_tpl->tpl_vars['meta_title']->value!=$_smarty_tpl->tpl_vars['shop_name']->value){?>
	<?php $_smarty_tpl->tpl_vars['page_title'] = new Smarty_variable(smarty_modifier_escape($_smarty_tpl->tpl_vars['meta_title']->value, 'htmlall', 'UTF-8'), null, 0);?>
<?php }?>
<?php if (isset($_smarty_tpl->tpl_vars['page_title']->value)){?>
	<div data-role="header" class="clearfix navbartop" data-position="inline">
		<h1><?php echo $_smarty_tpl->tpl_vars['page_title']->value;?>
</h1>
	</div><!-- /navbartop -->
<?php }?><?php }} ?>