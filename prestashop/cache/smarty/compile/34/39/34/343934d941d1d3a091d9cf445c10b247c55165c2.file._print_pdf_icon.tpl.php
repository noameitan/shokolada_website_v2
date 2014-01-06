<?php /* Smarty version Smarty-3.1.14, created on 2014-01-06 20:12:21
         compiled from "D:\wamp\www\1561\prestashop\admin\themes\default\template\controllers\orders\_print_pdf_icon.tpl" */ ?>
<?php /*%%SmartyHeaderCode:1428452cb0e25d07083-66145116%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '343934d941d1d3a091d9cf445c10b247c55165c2' => 
    array (
      0 => 'D:\\wamp\\www\\1561\\prestashop\\admin\\themes\\default\\template\\controllers\\orders\\_print_pdf_icon.tpl',
      1 => 1384783796,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1428452cb0e25d07083-66145116',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'order_state' => 0,
    'order' => 0,
    'link' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_52cb0e25dc32d0_48075659',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52cb0e25dc32d0_48075659')) {function content_52cb0e25dc32d0_48075659($_smarty_tpl) {?><?php if (!is_callable('smarty_modifier_escape')) include 'D:\\wamp\\www\\1561\\prestashop\\tools\\smarty\\plugins\\modifier.escape.php';
?>


<span style="width:20px; margin-right:5px;">
<?php if (($_smarty_tpl->tpl_vars['order_state']->value->invoice||$_smarty_tpl->tpl_vars['order']->value->invoice_number)){?>
	<a href="<?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['link']->value->getAdminLink('AdminPdf'), 'htmlall', 'UTF-8');?>
&submitAction=generateInvoicePDF&id_order=<?php echo $_smarty_tpl->tpl_vars['order']->value->id;?>
"><img src="../img/admin/tab-invoice.gif" alt="invoice" /></a>
<?php }else{ ?>
	-
<?php }?>
</span>


<span style="width:20px;">
<?php if (($_smarty_tpl->tpl_vars['order_state']->value->delivery||$_smarty_tpl->tpl_vars['order']->value->delivery_number)){?>
	<a href="<?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['link']->value->getAdminLink('AdminPdf'), 'htmlall', 'UTF-8');?>
&submitAction=generateDeliverySlipPDF&id_order=<?php echo $_smarty_tpl->tpl_vars['order']->value->id;?>
"><img src="../img/admin/delivery.gif" alt="delivery" /></a>
<?php }else{ ?>
	-
<?php }?>
</span>
<?php }} ?>