<?php /* Smarty version Smarty-3.1.14, created on 2014-01-06 20:11:38
         compiled from "D:\wamp\www\1561\prestashop\themes\default\mobile\layout.tpl" */ ?>
<?php /*%%SmartyHeaderCode:735352cb0dfa84bf63-85116434%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'e73c66396e2745b3ba204b6f5468703f3280c155' => 
    array (
      0 => 'D:\\wamp\\www\\1561\\prestashop\\themes\\default\\mobile\\layout.tpl',
      1 => 1384783796,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '735352cb0dfa84bf63-85116434',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'display_header' => 0,
    'header_file' => 0,
    'template' => 0,
    'display_footer' => 0,
    'footer_file' => 0,
    'live_edit' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_52cb0dfa913c99_97460972',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52cb0dfa913c99_97460972')) {function content_52cb0dfa913c99_97460972($_smarty_tpl) {?>
<?php $_smarty_tpl->tpl_vars['header_file'] = new Smarty_variable('./header.tpl', null, 0);?>
<?php $_smarty_tpl->tpl_vars['footer_file'] = new Smarty_variable('./footer.tpl', null, 0);?>

<?php if (!empty($_smarty_tpl->tpl_vars['display_header']->value)){?>
	<?php echo $_smarty_tpl->getSubTemplate ($_smarty_tpl->tpl_vars['header_file']->value, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

<?php }?>
<?php if (!empty($_smarty_tpl->tpl_vars['template']->value)){?>
	<?php echo $_smarty_tpl->tpl_vars['template']->value;?>

<?php }?>
<?php if (!empty($_smarty_tpl->tpl_vars['display_footer']->value)){?>
	<?php echo $_smarty_tpl->getSubTemplate ($_smarty_tpl->tpl_vars['footer_file']->value, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

<?php }?>
<?php if (!empty($_smarty_tpl->tpl_vars['live_edit']->value)){?>
	<?php echo $_smarty_tpl->tpl_vars['live_edit']->value;?>

<?php }?>
<?php }} ?>