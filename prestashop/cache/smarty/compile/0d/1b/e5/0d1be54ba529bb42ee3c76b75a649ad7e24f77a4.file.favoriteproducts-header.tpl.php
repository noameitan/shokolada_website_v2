<?php /* Smarty version Smarty-3.1.14, created on 2014-01-06 22:32:24
         compiled from "D:\wamp\www\1561\prestashop\modules\favoriteproducts\views\templates\hook\favoriteproducts-header.tpl" */ ?>
<?php /*%%SmartyHeaderCode:127852cb12d8ca0874-55854004%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '0d1be54ba529bb42ee3c76b75a649ad7e24f77a4' => 
    array (
      0 => 'D:\\wamp\\www\\1561\\prestashop\\modules\\favoriteproducts\\views\\templates\\hook\\favoriteproducts-header.tpl',
      1 => 1384783796,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '127852cb12d8ca0874-55854004',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'link' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_52cb12d8d73949_87783144',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52cb12d8d73949_87783144')) {function content_52cb12d8d73949_87783144($_smarty_tpl) {?>
<script type="text/javascript">
	var favorite_products_url_add = '<?php echo addslashes($_smarty_tpl->tpl_vars['link']->value->getModuleLink('favoriteproducts','actions',array('process'=>'add'),false));?>
';
	var favorite_products_url_remove = '<?php echo addslashes($_smarty_tpl->tpl_vars['link']->value->getModuleLink('favoriteproducts','actions',array('process'=>'remove'),false));?>
';
<?php if (isset($_GET['id_product'])){?>
	var favorite_products_id_product = '<?php echo intval($_GET['id_product']);?>
';
<?php }?> 
</script>
<?php }} ?>