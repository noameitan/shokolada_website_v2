<?php /* Smarty version Smarty-3.1.14, created on 2014-01-06 20:12:14
         compiled from "D:\wamp\www\1561\prestashop\admin\themes\default\template\controllers\attachments\list_action_delete.tpl" */ ?>
<?php /*%%SmartyHeaderCode:2557352cb0e1e58e1f7-00344828%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '043ec5c1dbcab658fc7b29de1f7f583d76cb578a' => 
    array (
      0 => 'D:\\wamp\\www\\1561\\prestashop\\admin\\themes\\default\\template\\controllers\\attachments\\list_action_delete.tpl',
      1 => 1384783796,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '2557352cb0e1e58e1f7-00344828',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'confirm' => 0,
    'href' => 0,
    'id' => 0,
    'product_attachements' => 0,
    'product_list' => 0,
    'action' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_52cb0e1e6362c3_64854411',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52cb0e1e6362c3_64854411')) {function content_52cb0e1e6362c3_64854411($_smarty_tpl) {?>
<script>
	function confirmProductAttached(productList)
	{
		var confirm_text = "<?php echo smartyTranslate(array('s'=>'This attachment is associated with the following products:'),$_smarty_tpl);?>
";
		if (confirm('<?php echo $_smarty_tpl->tpl_vars['confirm']->value;?>
'))
			return confirm(confirm_text + product_list);
		return false;
	}
</script>

<a href="<?php echo $_smarty_tpl->tpl_vars['href']->value;?>
" onclick="<?php if (isset($_smarty_tpl->tpl_vars['product_attachements']->value[$_smarty_tpl->tpl_vars['id']->value])){?>return confirmProductAttached('<?php echo $_smarty_tpl->tpl_vars['product_list']->value[$_smarty_tpl->tpl_vars['id']->value];?>
')<?php }else{ ?>return confirm('<?php echo $_smarty_tpl->tpl_vars['confirm']->value;?>
')<?php }?>">
	<img src="../img/admin/delete.gif" alt="<?php echo $_smarty_tpl->tpl_vars['action']->value;?>
" title="<?php echo $_smarty_tpl->tpl_vars['action']->value;?>
" />
</a>

<?php }} ?>