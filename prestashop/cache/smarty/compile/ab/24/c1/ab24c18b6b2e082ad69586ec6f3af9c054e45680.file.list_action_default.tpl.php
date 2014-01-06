<?php /* Smarty version Smarty-3.1.14, created on 2014-01-06 20:12:35
         compiled from "D:\wamp\www\1561\prestashop\admin\themes\default\template\helpers\list\list_action_default.tpl" */ ?>
<?php /*%%SmartyHeaderCode:1736852cb0e33734373-63543409%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'ab24c18b6b2e082ad69586ec6f3af9c054e45680' => 
    array (
      0 => 'D:\\wamp\\www\\1561\\prestashop\\admin\\themes\\default\\template\\helpers\\list\\list_action_default.tpl',
      1 => 1384783796,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1736852cb0e33734373-63543409',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'href' => 0,
    'action' => 0,
    'name' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_52cb0e33772bf2_86471065',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52cb0e33772bf2_86471065')) {function content_52cb0e33772bf2_86471065($_smarty_tpl) {?>
<a href="<?php echo $_smarty_tpl->tpl_vars['href']->value;?>
" class="default" title="<?php echo $_smarty_tpl->tpl_vars['action']->value;?>
" <?php if (isset($_smarty_tpl->tpl_vars['name']->value)){?>name="<?php echo $_smarty_tpl->tpl_vars['name']->value;?>
"<?php }?>>
	<img src="../img/admin/asterisk.gif" alt="<?php echo $_smarty_tpl->tpl_vars['action']->value;?>
" />
</a><?php }} ?>