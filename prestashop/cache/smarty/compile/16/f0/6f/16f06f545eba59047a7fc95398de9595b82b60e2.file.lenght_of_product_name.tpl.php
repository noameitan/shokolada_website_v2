<?php /* Smarty version Smarty-3.1.14, created on 2014-01-15 18:32:35
         compiled from "D:\wamp\www\1561\prestashop\modules\stthemeeditor\views\templates\hook\lenght_of_product_name.tpl" */ ?>
<?php /*%%SmartyHeaderCode:3234252d6b8231bf776-85441527%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '16f06f545eba59047a7fc95398de9595b82b60e2' => 
    array (
      0 => 'D:\\wamp\\www\\1561\\prestashop\\modules\\stthemeeditor\\views\\templates\\hook\\lenght_of_product_name.tpl',
      1 => 1389102139,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '3234252d6b8231bf776-85441527',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'product_name_full' => 0,
    'product_name' => 0,
    'length_of_product_name' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_52d6b823228080_60965219',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52d6b823228080_60965219')) {function content_52d6b823228080_60965219($_smarty_tpl) {?><?php if (!is_callable('smarty_modifier_escape')) include 'D:\\wamp\\www\\1561\\prestashop\\tools\\smarty\\plugins\\modifier.escape.php';
?><?php if ($_smarty_tpl->tpl_vars['product_name_full']->value){?><?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['product_name']->value, 'htmlall', 'UTF-8');?>
<?php }else{ ?><?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_MODIFIER]['truncate'][0][0]->smarty_modifier_truncate(smarty_modifier_escape($_smarty_tpl->tpl_vars['product_name']->value, 'htmlall', 'UTF-8'),$_smarty_tpl->tpl_vars['length_of_product_name']->value,'...');?>
<?php }?><?php }} ?>