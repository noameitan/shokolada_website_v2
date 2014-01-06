<?php /* Smarty version Smarty-3.1.14, created on 2014-01-06 20:12:12
         compiled from "D:\wamp\www\1561\prestashop\themes\default\store_infos.tpl" */ ?>
<?php /*%%SmartyHeaderCode:2281452cb0e1c79c6f1-24954516%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '0d84b3d6d28c3df2e0a7e09e3bc6f42f89e624d2' => 
    array (
      0 => 'D:\\wamp\\www\\1561\\prestashop\\themes\\default\\store_infos.tpl',
      1 => 1384783796,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '2281452cb0e1c79c6f1-24954516',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'days_datas' => 0,
    'one_day' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_52cb0e1c7fc170_89196380',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52cb0e1c7fc170_89196380')) {function content_52cb0e1c7fc170_89196380($_smarty_tpl) {?>

<br />
<br />
<span id="store_hours"><?php echo smartyTranslate(array('s'=>'working hours'),$_smarty_tpl);?>
</span>
<table style="font-size: 9px;">
	<?php  $_smarty_tpl->tpl_vars['one_day'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['one_day']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['days_datas']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['one_day']->key => $_smarty_tpl->tpl_vars['one_day']->value){
$_smarty_tpl->tpl_vars['one_day']->_loop = true;
?>
	<tr>
		<td style="width: 70px;"><?php echo smartyTranslate(array('s'=>$_smarty_tpl->tpl_vars['one_day']->value['day']),$_smarty_tpl);?>
</td><td><?php echo $_smarty_tpl->tpl_vars['one_day']->value['hours'];?>
</td>
	</tr>
	<?php } ?>
</table>
<?php }} ?>