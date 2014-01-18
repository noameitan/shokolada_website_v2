<?php /* Smarty version Smarty-3.1.14, created on 2014-01-19 00:21:12
         compiled from "D:\wamp\www\1561\prestashop\modules\stquickview\views\templates\hook\stquickview_button.tpl" */ ?>
<?php /*%%SmartyHeaderCode:3108052dafe58124344-79813084%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '1668e8b4ec75dcde4774bf1cf7308b362d988c83' => 
    array (
      0 => 'D:\\wamp\\www\\1561\\prestashop\\modules\\stquickview\\views\\templates\\hook\\stquickview_button.tpl',
      1 => 1389102216,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '3108052dafe58124344-79813084',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'id_product' => 0,
    'link' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_52dafe5815de97_46479665',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52dafe5815de97_46479665')) {function content_52dafe5815de97_46479665($_smarty_tpl) {?><?php if (!is_callable('smarty_modifier_escape')) include 'D:\\wamp\\www\\1561\\prestashop\\tools\\smarty\\plugins\\modifier.escape.php';
?>
<a href="<?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['link']->value->getModuleLink('stquickview','default',array('id_product'=>$_smarty_tpl->tpl_vars['id_product']->value)), 'htmlall', 'UTF-8');?>
" class="st_quickview" rel="nofollow"><i class="icon-search-1 icon-1x icon-mar-lr2"></i><span><?php echo smartyTranslate(array('s'=>'Quick view','mod'=>'stquickview'),$_smarty_tpl);?>
</span></a><?php }} ?>