<?php /* Smarty version Smarty-3.1.14, created on 2014-01-06 20:12:04
         compiled from "D:\wamp\www\1561\prestashop\themes\default\product-compare.tpl" */ ?>
<?php /*%%SmartyHeaderCode:1164252cb0e148a39a1-76714404%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'fb7c5e973b9213ae8d84cb6534b3458f330536a5' => 
    array (
      0 => 'D:\\wamp\\www\\1561\\prestashop\\themes\\default\\product-compare.tpl',
      1 => 1384783796,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1164252cb0e148a39a1-76714404',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'comparator_max_item' => 0,
    'paginationId' => 0,
    'link' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_52cb0e14938ad1_34445327',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52cb0e14938ad1_34445327')) {function content_52cb0e14938ad1_34445327($_smarty_tpl) {?>

<?php if ($_smarty_tpl->tpl_vars['comparator_max_item']->value){?>
<?php if (!isset($_smarty_tpl->tpl_vars['paginationId']->value)||$_smarty_tpl->tpl_vars['paginationId']->value==''){?>
<script type="text/javascript">
// <![CDATA[
	var min_item = '<?php echo smartyTranslate(array('s'=>'Please select at least one product','js'=>1),$_smarty_tpl);?>
';
	var max_item = "<?php echo smartyTranslate(array('s'=>'You cannot add more than %d product(s) to the product comparison','sprintf'=>$_smarty_tpl->tpl_vars['comparator_max_item']->value,'js'=>1),$_smarty_tpl);?>
";
//]]>
</script>
<?php }?>
	<form method="post" action="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['link']->value->getPageLink('products-comparison'), ENT_QUOTES, 'UTF-8', true);?>
" onsubmit="true">
		<p>
		<input type="submit" id="bt_compare<?php if (isset($_smarty_tpl->tpl_vars['paginationId']->value)){?>_<?php echo $_smarty_tpl->tpl_vars['paginationId']->value;?>
<?php }?>" class="button bt_compare" value="<?php echo smartyTranslate(array('s'=>'Compare'),$_smarty_tpl);?>
" />
		<input type="hidden" name="compare_product_list" class="compare_product_list" value="" />
		</p>
	</form>
<?php }?>

<?php }} ?>