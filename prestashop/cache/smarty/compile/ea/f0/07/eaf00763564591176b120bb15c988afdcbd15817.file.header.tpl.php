<?php /* Smarty version Smarty-3.1.14, created on 2014-01-19 00:21:09
         compiled from "D:\wamp\www\1561\prestashop\modules\stsocial\views\templates\hook\header.tpl" */ ?>
<?php /*%%SmartyHeaderCode:466452dafe55e73027-18252747%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'eaf00763564591176b120bb15c988afdcbd15817' => 
    array (
      0 => 'D:\\wamp\\www\\1561\\prestashop\\modules\\stsocial\\views\\templates\\hook\\header.tpl',
      1 => 1389102204,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '466452dafe55e73027-18252747',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'social_color' => 0,
    'social_bg' => 0,
    'social_hover_color' => 0,
    'social_hover_bg' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_52dafe55eeacb1_36909351',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52dafe55eeacb1_36909351')) {function content_52dafe55eeacb1_36909351($_smarty_tpl) {?>
<style type="text/css">

.stsocial_list li a,#stsocial_list_topbar li a{<?php if ($_smarty_tpl->tpl_vars['social_color']->value){?>color:<?php echo $_smarty_tpl->tpl_vars['social_color']->value;?>
;<?php }?><?php if ($_smarty_tpl->tpl_vars['social_bg']->value){?>background-color:<?php echo $_smarty_tpl->tpl_vars['social_bg']->value;?>
;<?php }?>}
.stsocial_list li a:hover,#stsocial_list_topbar li a:hover{<?php if ($_smarty_tpl->tpl_vars['social_hover_color']->value){?>color:<?php echo $_smarty_tpl->tpl_vars['social_hover_color']->value;?>
;<?php }?><?php if ($_smarty_tpl->tpl_vars['social_hover_bg']->value){?>background-color:<?php echo $_smarty_tpl->tpl_vars['social_hover_bg']->value;?>
;<?php }?>}

</style>
<?php }} ?>