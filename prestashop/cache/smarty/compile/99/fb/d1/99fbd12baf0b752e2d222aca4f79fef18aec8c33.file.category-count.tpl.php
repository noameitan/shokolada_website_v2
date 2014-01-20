<?php /* Smarty version Smarty-3.1.14, created on 2014-01-20 23:51:00
         compiled from "D:\wamp\www\1561\prestashop\themes\transformer\category-count.tpl" */ ?>
<?php /*%%SmartyHeaderCode:2687152dd9a44551ee2-23061413%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '99fbd12baf0b752e2d222aca4f79fef18aec8c33' => 
    array (
      0 => 'D:\\wamp\\www\\1561\\prestashop\\themes\\transformer\\category-count.tpl',
      1 => 1389102132,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '2687152dd9a44551ee2-23061413',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'category' => 0,
    'nb_products' => 0,
    'nb_product_start' => 0,
    'nb_product_stop' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_52dd9a4473f6e1_33905286',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52dd9a4473f6e1_33905286')) {function content_52dd9a4473f6e1_33905286($_smarty_tpl) {?><?php if (!is_callable('smarty_function_math')) include 'D:\\wamp\\www\\1561\\prestashop\\tools\\smarty\\plugins\\function.math.php';
?>
<?php if ((isset($_smarty_tpl->tpl_vars['category']->value)&&$_smarty_tpl->tpl_vars['category']->value->id==1)||$_smarty_tpl->tpl_vars['nb_products']->value==0){?>
	<?php echo smartyTranslate(array('s'=>'There are no products in this category'),$_smarty_tpl);?>

<?php }else{ ?>
    <?php echo smarty_function_math(array('equation'=>"(".((string)$_smarty_tpl->tpl_vars['p']->value).">1 ? (".((string)$_smarty_tpl->tpl_vars['p']->value)."-1)*".((string)$_smarty_tpl->tpl_vars['n']->value)." : 1)",'assign'=>"nb_product_start"),$_smarty_tpl);?>
  
    <?php echo smarty_function_math(array('equation'=>"(".((string)$_smarty_tpl->tpl_vars['p']->value)."*".((string)$_smarty_tpl->tpl_vars['n']->value).">=".((string)$_smarty_tpl->tpl_vars['nb_products']->value)." ? ".((string)$_smarty_tpl->tpl_vars['nb_products']->value)." : ".((string)$_smarty_tpl->tpl_vars['p']->value)."*".((string)$_smarty_tpl->tpl_vars['n']->value).")",'assign'=>"nb_product_stop"),$_smarty_tpl);?>
  
	<?php if ($_smarty_tpl->tpl_vars['nb_products']->value==1){?>
		<?php echo smartyTranslate(array('s'=>'Item %1$d to %2$d of %3$d total','sprintf'=>array($_smarty_tpl->tpl_vars['nb_product_start']->value,$_smarty_tpl->tpl_vars['nb_product_stop']->value,$_smarty_tpl->tpl_vars['nb_products']->value)),$_smarty_tpl);?>

	<?php }else{ ?>
		<?php echo smartyTranslate(array('s'=>'Items %1$d to %2$d of %3$d total','sprintf'=>array($_smarty_tpl->tpl_vars['nb_product_start']->value,$_smarty_tpl->tpl_vars['nb_product_stop']->value,$_smarty_tpl->tpl_vars['nb_products']->value)),$_smarty_tpl);?>

	<?php }?>
<?php }?><?php }} ?>