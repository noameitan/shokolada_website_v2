<?php /* Smarty version Smarty-3.1.14, created on 2014-01-06 20:12:29
         compiled from "D:\wamp\www\1561\prestashop\admin\themes\default\template\controllers\slip\_print_pdf_icon.tpl" */ ?>
<?php /*%%SmartyHeaderCode:2099852cb0e2dbd36f9-46063140%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '28bd2648380aef1071d0f19eb581e0bc8556eead' => 
    array (
      0 => 'D:\\wamp\\www\\1561\\prestashop\\admin\\themes\\default\\template\\controllers\\slip\\_print_pdf_icon.tpl',
      1 => 1384783796,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '2099852cb0e2dbd36f9-46063140',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'link' => 0,
    'order_slip' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_52cb0e2dc379b1_69818954',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52cb0e2dc379b1_69818954')) {function content_52cb0e2dc379b1_69818954($_smarty_tpl) {?><?php if (!is_callable('smarty_modifier_escape')) include 'D:\\wamp\\www\\1561\\prestashop\\tools\\smarty\\plugins\\modifier.escape.php';
?>


<span style="width:20px; margin-right:5px;">
<a target="_blank" href="<?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['link']->value->getAdminLink('AdminPdf'), 'htmlall', 'UTF-8');?>
&submitAction=generateOrderSlipPDF&id_order_slip=<?php echo $_smarty_tpl->tpl_vars['order_slip']->value->id;?>
"><img src="../img/admin/tab-invoice.gif" alt="order_slip" /></a>
</span>
<?php }} ?>