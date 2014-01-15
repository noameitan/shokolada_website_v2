<?php /* Smarty version Smarty-3.1.14, created on 2014-01-15 18:32:35
         compiled from "D:\wamp\www\1561\prestashop\modules\stquickview\views\templates\hook\stquickview_button.tpl" */ ?>
<?php /*%%SmartyHeaderCode:2878552d6b823140b11-14498113%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
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
  'nocache_hash' => '2878552d6b823140b11-14498113',
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
  'unifunc' => 'content_52d6b823189e47_01942129',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52d6b823189e47_01942129')) {function content_52d6b823189e47_01942129($_smarty_tpl) {?><?php if (!is_callable('smarty_modifier_escape')) include 'D:\\wamp\\www\\1561\\prestashop\\tools\\smarty\\plugins\\modifier.escape.php';
?>
<a href="<?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['link']->value->getModuleLink('stquickview','default',array('id_product'=>$_smarty_tpl->tpl_vars['id_product']->value)), 'htmlall', 'UTF-8');?>
" class="st_quickview" rel="nofollow"><i class="icon-search-1 icon-1x icon-mar-lr2"></i><span><?php echo smartyTranslate(array('s'=>'Quick view','mod'=>'stquickview'),$_smarty_tpl);?>
</span></a><?php }} ?>