<?php /* Smarty version Smarty-3.1.14, created on 2014-01-20 23:50:54
         compiled from "D:\wamp\www\1561\prestashop\modules\stquickview\views\templates\hook\stquickview_header.tpl" */ ?>
<?php /*%%SmartyHeaderCode:873752dd9a3e9bd7a7-70743665%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '7a9cdd496c9d0045400952bb7645e884dff87e76' => 
    array (
      0 => 'D:\\wamp\\www\\1561\\prestashop\\modules\\stquickview\\views\\templates\\hook\\stquickview_header.tpl',
      1 => 1389102216,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '873752dd9a3e9bd7a7-70743665',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'qw_height' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_52dd9a3ea0c7b1_63577997',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52dd9a3ea0c7b1_63577997')) {function content_52dd9a3ea0c7b1_63577997($_smarty_tpl) {?>
<script type="text/javascript">
// <![CDATA[
var quickViewOptions = {
	buttonLinkSelector: ".st_quickview",
	height: <?php if (isset($_smarty_tpl->tpl_vars['qw_height']->value)&&$_smarty_tpl->tpl_vars['qw_height']->value){?><?php echo $_smarty_tpl->tpl_vars['qw_height']->value;?>
<?php }else{ ?>460<?php }?>
};
//]]>
</script>
<?php }} ?>