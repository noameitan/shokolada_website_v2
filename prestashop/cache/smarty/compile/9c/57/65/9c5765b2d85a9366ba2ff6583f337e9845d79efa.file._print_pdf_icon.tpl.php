<?php /* Smarty version Smarty-3.1.14, created on 2014-01-06 20:12:22
         compiled from "D:\wamp\www\1561\prestashop\admin\themes\default\template\controllers\outstanding\_print_pdf_icon.tpl" */ ?>
<?php /*%%SmartyHeaderCode:120852cb0e26a96486-10683949%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '9c5765b2d85a9366ba2ff6583f337e9845d79efa' => 
    array (
      0 => 'D:\\wamp\\www\\1561\\prestashop\\admin\\themes\\default\\template\\controllers\\outstanding\\_print_pdf_icon.tpl',
      1 => 1384783796,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '120852cb0e26a96486-10683949',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'link' => 0,
    'id_invoice' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_52cb0e26ad8d12_18149033',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52cb0e26ad8d12_18149033')) {function content_52cb0e26ad8d12_18149033($_smarty_tpl) {?><?php if (!is_callable('smarty_modifier_escape')) include 'D:\\wamp\\www\\1561\\prestashop\\tools\\smarty\\plugins\\modifier.escape.php';
?>


<span style="width:20px; margin-right:5px;">
	<a href="<?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['link']->value->getAdminLink('AdminPdf'), 'htmlall', 'UTF-8');?>
&submitAction=generateInvoicePDF&id_order_invoice=<?php echo $_smarty_tpl->tpl_vars['id_invoice']->value;?>
"><img src="../img/admin/tab-invoice.gif" alt="invoice" /></a>
</span><?php }} ?>