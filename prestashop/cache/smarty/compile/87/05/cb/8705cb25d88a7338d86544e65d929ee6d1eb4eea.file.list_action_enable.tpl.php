<?php /* Smarty version Smarty-3.1.14, created on 2014-01-06 20:12:35
         compiled from "D:\wamp\www\1561\prestashop\admin\themes\default\template\helpers\list\list_action_enable.tpl" */ ?>
<?php /*%%SmartyHeaderCode:36552cb0e338b5c20-44510522%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '8705cb25d88a7338d86544e65d929ee6d1eb4eea' => 
    array (
      0 => 'D:\\wamp\\www\\1561\\prestashop\\admin\\themes\\default\\template\\helpers\\list\\list_action_enable.tpl',
      1 => 1384783796,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '36552cb0e338b5c20-44510522',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'url_enable' => 0,
    'confirm' => 0,
    'enabled' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_52cb0e3392c6b3_49006193',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52cb0e3392c6b3_49006193')) {function content_52cb0e3392c6b3_49006193($_smarty_tpl) {?>

<a href="<?php echo $_smarty_tpl->tpl_vars['url_enable']->value;?>
" <?php if (isset($_smarty_tpl->tpl_vars['confirm']->value)){?>onclick="return confirm('<?php echo $_smarty_tpl->tpl_vars['confirm']->value;?>
');"<?php }?> title="<?php if ($_smarty_tpl->tpl_vars['enabled']->value){?><?php echo smartyTranslate(array('s'=>'Enabled'),$_smarty_tpl);?>
<?php }else{ ?><?php echo smartyTranslate(array('s'=>'Disabled'),$_smarty_tpl);?>
<?php }?>">
	<img src="../img/admin/<?php if ($_smarty_tpl->tpl_vars['enabled']->value){?>enabled.gif<?php }else{ ?>disabled.gif<?php }?>" alt="<?php if ($_smarty_tpl->tpl_vars['enabled']->value){?><?php echo smartyTranslate(array('s'=>'Enabled'),$_smarty_tpl);?>
<?php }else{ ?><?php echo smartyTranslate(array('s'=>'Disabled'),$_smarty_tpl);?>
<?php }?>" />
</a>
<?php }} ?>