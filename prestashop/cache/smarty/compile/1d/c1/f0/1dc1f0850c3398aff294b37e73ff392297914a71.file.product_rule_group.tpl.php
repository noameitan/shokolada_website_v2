<?php /* Smarty version Smarty-3.1.14, created on 2014-01-06 20:12:16
         compiled from "D:\wamp\www\1561\prestashop\admin\themes\default\template\controllers\cart_rules\product_rule_group.tpl" */ ?>
<?php /*%%SmartyHeaderCode:1731652cb0e206d82a3-05737366%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '1dc1f0850c3398aff294b37e73ff392297914a71' => 
    array (
      0 => 'D:\\wamp\\www\\1561\\prestashop\\admin\\themes\\default\\template\\controllers\\cart_rules\\product_rule_group.tpl',
      1 => 1384783796,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1731652cb0e206d82a3-05737366',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'product_rule_group_id' => 0,
    'product_rule_group_quantity' => 0,
    'product_rules' => 0,
    'product_rule' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_52cb0e2081d750_56072974',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52cb0e2081d750_56072974')) {function content_52cb0e2081d750_56072974($_smarty_tpl) {?><tr id="product_rule_group_<?php echo intval($_smarty_tpl->tpl_vars['product_rule_group_id']->value);?>
_tr">
	<td style="vertical-align:center;padding-right:10px">
		<a href="javascript:removeProductRuleGroup(<?php echo intval($_smarty_tpl->tpl_vars['product_rule_group_id']->value);?>
);">
			<img src="../img/admin/disabled.gif" alt="<?php echo smartyTranslate(array('s'=>'Remove'),$_smarty_tpl);?>
" title="<?php echo smartyTranslate(array('s'=>'Remove'),$_smarty_tpl);?>
" />
		</a>
	</td>
	<td style="padding-bottom:15px">
		<input type="hidden" name="product_rule_group[]" value="<?php echo intval($_smarty_tpl->tpl_vars['product_rule_group_id']->value);?>
" />
		<?php echo smartyTranslate(array('s'=>'The cart must contain at least'),$_smarty_tpl);?>

		<input type="text" name="product_rule_group_<?php echo intval($_smarty_tpl->tpl_vars['product_rule_group_id']->value);?>
_quantity" value="<?php echo intval($_smarty_tpl->tpl_vars['product_rule_group_quantity']->value);?>
" style="width:30px" />
		<?php echo smartyTranslate(array('s'=>'Product(s) matching the following rules:'),$_smarty_tpl);?>

		<br />
		<a href="javascript:addProductRule(<?php echo intval($_smarty_tpl->tpl_vars['product_rule_group_id']->value);?>
);">
			<img src="../img/admin/add.gif" alt="<?php echo smartyTranslate(array('s'=>'Add'),$_smarty_tpl);?>
" title="<?php echo smartyTranslate(array('s'=>'Add'),$_smarty_tpl);?>
" />
			<?php echo smartyTranslate(array('s'=>'Add a rule concerning'),$_smarty_tpl);?>

		</a>
		<select id="product_rule_type_<?php echo intval($_smarty_tpl->tpl_vars['product_rule_group_id']->value);?>
">
			<option value=""><?php echo smartyTranslate(array('s'=>'-- Choose --'),$_smarty_tpl);?>
</option>
			<option value="products"><?php echo smartyTranslate(array('s'=>'Products:'),$_smarty_tpl);?>
</option>
			<option value="attributes"><?php echo smartyTranslate(array('s'=>'Attributes'),$_smarty_tpl);?>
</option>
			<option value="categories"><?php echo smartyTranslate(array('s'=>'Categories:'),$_smarty_tpl);?>
</option>
			<option value="manufacturers"><?php echo smartyTranslate(array('s'=>'Manufacturers:'),$_smarty_tpl);?>
</option>
			<option value="suppliers"><?php echo smartyTranslate(array('s'=>'Suppliers'),$_smarty_tpl);?>
</option>
		</select>
		<a href="javascript:addProductRule(<?php echo intval($_smarty_tpl->tpl_vars['product_rule_group_id']->value);?>
);">
			<input type="button" class="button" value="OK" />
		</a>
		<table id="product_rule_table_<?php echo intval($_smarty_tpl->tpl_vars['product_rule_group_id']->value);?>
" class="table" cellpadding="0" cellspacing="0">
			<?php if (isset($_smarty_tpl->tpl_vars['product_rules']->value)&&count($_smarty_tpl->tpl_vars['product_rules']->value)){?>
				<?php  $_smarty_tpl->tpl_vars['product_rule'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['product_rule']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['product_rules']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['product_rule']->key => $_smarty_tpl->tpl_vars['product_rule']->value){
$_smarty_tpl->tpl_vars['product_rule']->_loop = true;
?>
					<?php echo $_smarty_tpl->tpl_vars['product_rule']->value;?>

				<?php } ?>
			<?php }?>
		</table>
	</td>
</tr><?php }} ?>