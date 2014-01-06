<?php /* Smarty version Smarty-3.1.14, created on 2014-01-06 20:12:18
         compiled from "D:\wamp\www\1561\prestashop\admin\themes\default\template\controllers\marketing\helpers\view\view.tpl" */ ?>
<?php /*%%SmartyHeaderCode:2014752cb0e224155a1-16915345%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '3dc09fb27f87291fa57f013b7eb696b54a9c7792' => 
    array (
      0 => 'D:\\wamp\\www\\1561\\prestashop\\admin\\themes\\default\\template\\controllers\\marketing\\helpers\\view\\view.tpl',
      1 => 1384783796,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '2014752cb0e224155a1-16915345',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'show_toolbar' => 0,
    'toolbar_btn' => 0,
    'toolbar_scroll' => 0,
    'title' => 0,
    'modules_list' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_52cb0e2244dcc7_10169965',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52cb0e2244dcc7_10169965')) {function content_52cb0e2244dcc7_10169965($_smarty_tpl) {?><?php if ($_smarty_tpl->tpl_vars['show_toolbar']->value){?>
	<?php echo $_smarty_tpl->getSubTemplate ("toolbar.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array('toolbar_btn'=>$_smarty_tpl->tpl_vars['toolbar_btn']->value,'toolbar_scroll'=>$_smarty_tpl->tpl_vars['toolbar_scroll']->value,'title'=>$_smarty_tpl->tpl_vars['title']->value), 0);?>

<?php }?>

<?php echo $_smarty_tpl->tpl_vars['modules_list']->value;?>
<?php }} ?>