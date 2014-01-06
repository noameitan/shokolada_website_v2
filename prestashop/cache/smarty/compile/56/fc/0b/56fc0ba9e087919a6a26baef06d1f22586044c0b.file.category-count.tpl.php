<?php /* Smarty version Smarty-3.1.14, created on 2014-01-06 20:11:30
         compiled from "D:\wamp\www\1561\prestashop\themes\default\category-count.tpl" */ ?>
<?php /*%%SmartyHeaderCode:2599152cb0df26b65f7-28433485%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '56fc0ba9e087919a6a26baef06d1f22586044c0b' => 
    array (
      0 => 'D:\\wamp\\www\\1561\\prestashop\\themes\\default\\category-count.tpl',
      1 => 1384783796,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '2599152cb0df26b65f7-28433485',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'category' => 0,
    'nb_products' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_52cb0df272e027_35654186',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52cb0df272e027_35654186')) {function content_52cb0df272e027_35654186($_smarty_tpl) {?>
<?php if ($_smarty_tpl->tpl_vars['category']->value->id==1||$_smarty_tpl->tpl_vars['nb_products']->value==0){?>
	<?php echo smartyTranslate(array('s'=>'There are no products in  this category'),$_smarty_tpl);?>

<?php }else{ ?>
	<?php if ($_smarty_tpl->tpl_vars['nb_products']->value==1){?>
		<?php echo smartyTranslate(array('s'=>'There is %d product.','sprintf'=>$_smarty_tpl->tpl_vars['nb_products']->value),$_smarty_tpl);?>

	<?php }else{ ?>
		<?php echo smartyTranslate(array('s'=>'There are %d products.','sprintf'=>$_smarty_tpl->tpl_vars['nb_products']->value),$_smarty_tpl);?>

	<?php }?>
<?php }?><?php }} ?>