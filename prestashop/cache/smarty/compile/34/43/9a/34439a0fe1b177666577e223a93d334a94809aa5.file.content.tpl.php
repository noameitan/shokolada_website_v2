<?php /* Smarty version Smarty-3.1.14, created on 2014-01-06 20:12:16
         compiled from "D:\wamp\www\1561\prestashop\admin\themes\default\template\controllers\cms_content\content.tpl" */ ?>
<?php /*%%SmartyHeaderCode:897452cb0e20b18231-48839572%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '34439a0fe1b177666577e223a93d334a94809aa5' => 
    array (
      0 => 'D:\\wamp\\www\\1561\\prestashop\\admin\\themes\\default\\template\\controllers\\cms_content\\content.tpl',
      1 => 1384783796,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '897452cb0e20b18231-48839572',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'cms_breadcrumb' => 0,
    'content' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_52cb0e20b75179_14774397',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52cb0e20b75179_14774397')) {function content_52cb0e20b75179_14774397($_smarty_tpl) {?>
<?php if (isset($_smarty_tpl->tpl_vars['cms_breadcrumb']->value)){?>
	<div class="cat_bar">
		<span style="color: #3C8534;"><?php echo smartyTranslate(array('s'=>'Current category'),$_smarty_tpl);?>
 :</span>&nbsp;&nbsp;&nbsp;<?php echo $_smarty_tpl->tpl_vars['cms_breadcrumb']->value;?>

	</div>
<?php }?>

<?php echo $_smarty_tpl->tpl_vars['content']->value;?>

<?php }} ?>