<?php /* Smarty version Smarty-3.1.14, created on 2014-01-06 20:12:24
         compiled from "D:\wamp\www\1561\prestashop\admin\themes\default\template\controllers\products\multishop\check_fields.tpl" */ ?>
<?php /*%%SmartyHeaderCode:2918552cb0e28e0e392-09508854%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'f9e411b8eca4d315cc75abe4fc3b9adb99ab4049' => 
    array (
      0 => 'D:\\wamp\\www\\1561\\prestashop\\admin\\themes\\default\\template\\controllers\\products\\multishop\\check_fields.tpl',
      1 => 1384783796,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '2918552cb0e28e0e392-09508854',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'display_multishop_checkboxes' => 0,
    'product_tab' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_52cb0e28e75fc4_96263021',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52cb0e28e75fc4_96263021')) {function content_52cb0e28e75fc4_96263021($_smarty_tpl) {?>

<?php if (isset($_smarty_tpl->tpl_vars['display_multishop_checkboxes']->value)&&$_smarty_tpl->tpl_vars['display_multishop_checkboxes']->value){?>
	<label style="float: none">
		<input type="checkbox" style="vertical-align: text-bottom" onclick="$('#product-tab-content-<?php echo $_smarty_tpl->tpl_vars['product_tab']->value;?>
 input[name^=\'multishop_check[\']').attr('checked', this.checked); ProductMultishop.checkAll<?php echo $_smarty_tpl->tpl_vars['product_tab']->value;?>
()" />
		<?php echo smartyTranslate(array('s'=>'Check/uncheck all. (If you are editing this page for several shops, some fields like "name" or "price" are may be disabled. You will need check these fields in order to edit them)'),$_smarty_tpl);?>

	</label>
<?php }?><?php }} ?>