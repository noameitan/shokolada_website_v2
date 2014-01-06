<?php /* Smarty version Smarty-3.1.14, created on 2014-01-06 20:12:20
         compiled from "D:\wamp\www\1561\prestashop\admin\themes\default\template\controllers\not_found\content.tpl" */ ?>
<?php /*%%SmartyHeaderCode:2206852cb0e2435e990-30533232%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '34f5b01eb018cd48b83fcdbf6f851deec1661f3b' => 
    array (
      0 => 'D:\\wamp\\www\\1561\\prestashop\\admin\\themes\\default\\template\\controllers\\not_found\\content.tpl',
      1 => 1384783796,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '2206852cb0e2435e990-30533232',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'controller' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_52cb0e243a5575_58971369',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52cb0e243a5575_58971369')) {function content_52cb0e243a5575_58971369($_smarty_tpl) {?>
<?php if (isset($_smarty_tpl->tpl_vars['controller']->value)&&!empty($_smarty_tpl->tpl_vars['controller']->value)&&$_smarty_tpl->tpl_vars['controller']->value!='adminnotfound'){?>
<h1><?php echo smartyTranslate(array('s'=>'The controller %s is missing or invalid.','sprintf'=>$_smarty_tpl->tpl_vars['controller']->value),$_smarty_tpl);?>
</h1>
<?php }?>
<ul>
<li><a href="index.php"><?php echo smartyTranslate(array('s'=>'Go to the dashboard.'),$_smarty_tpl);?>
</a></li>
<li><a href="#" onclick="window.history.back();"><?php echo smartyTranslate(array('s'=>'Back to the previous page.'),$_smarty_tpl);?>
</a></li>
</ul>
<?php }} ?>