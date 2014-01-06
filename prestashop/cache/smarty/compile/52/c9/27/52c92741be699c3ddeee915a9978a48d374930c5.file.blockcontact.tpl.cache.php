<?php /* Smarty version Smarty-3.1.14, created on 2014-01-06 22:32:26
         compiled from "D:\wamp\www\1561\prestashop\themes\default\modules\blockcontact\blockcontact.tpl" */ ?>
<?php /*%%SmartyHeaderCode:2951952cb12da916e30-19924408%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '52c92741be699c3ddeee915a9978a48d374930c5' => 
    array (
      0 => 'D:\\wamp\\www\\1561\\prestashop\\themes\\default\\modules\\blockcontact\\blockcontact.tpl',
      1 => 1384783796,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '2951952cb12da916e30-19924408',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'telnumber' => 0,
    'email' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_52cb12da9afd93_43170420',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52cb12da9afd93_43170420')) {function content_52cb12da9afd93_43170420($_smarty_tpl) {?><?php if (!is_callable('smarty_modifier_escape')) include 'D:\\wamp\\www\\1561\\prestashop\\tools\\smarty\\plugins\\modifier.escape.php';
?>

<div id="contact_block" class="block">
	<p class="title_block"><?php echo smartyTranslate(array('s'=>'Contact us','mod'=>'blockcontact'),$_smarty_tpl);?>
</p>
	<div class="block_content clearfix">
			<p><?php echo smartyTranslate(array('s'=>'Our hotline is available 24/7','mod'=>'blockcontact'),$_smarty_tpl);?>
</p>
			<?php if ($_smarty_tpl->tpl_vars['telnumber']->value!=''){?><p class="tel"><span class="label"><?php echo smartyTranslate(array('s'=>'Phone:','mod'=>'blockcontact'),$_smarty_tpl);?>
</span><?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['telnumber']->value, 'htmlall', 'UTF-8');?>
</p><?php }?>
			<?php if ($_smarty_tpl->tpl_vars['email']->value!=''){?><a href="mailto:<?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['email']->value, 'htmlall', 'UTF-8');?>
"><?php echo smartyTranslate(array('s'=>'Contact our hotline','mod'=>'blockcontact'),$_smarty_tpl);?>
</a><?php }?>
	</div>
</div>
<?php }} ?>