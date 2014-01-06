<?php /* Smarty version Smarty-3.1.14, created on 2014-01-06 20:12:30
         compiled from "D:\wamp\www\1561\prestashop\admin\themes\default\template\controllers\tax_rules\helpers\list\list_action_edit.tpl" */ ?>
<?php /*%%SmartyHeaderCode:1217652cb0e2ea4e366-07802470%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '6fc2dd3aedc3d242b7775bb7f5e4fea82f537f96' => 
    array (
      0 => 'D:\\wamp\\www\\1561\\prestashop\\admin\\themes\\default\\template\\controllers\\tax_rules\\helpers\\list\\list_action_edit.tpl',
      1 => 1384783796,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1217652cb0e2ea4e366-07802470',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'id' => 0,
    'action' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_52cb0e2ea85a42_43163578',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52cb0e2ea85a42_43163578')) {function content_52cb0e2ea85a42_43163578($_smarty_tpl) {?>
<a onclick="loadTaxRule('<?php echo $_smarty_tpl->tpl_vars['id']->value;?>
'); return false;" href="#"><img src="../img/admin/edit.gif" alt="<?php echo $_smarty_tpl->tpl_vars['action']->value;?>
" title="<?php echo $_smarty_tpl->tpl_vars['action']->value;?>
" /></a><?php }} ?>