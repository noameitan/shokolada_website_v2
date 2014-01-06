<?php /* Smarty version Smarty-3.1.14, created on 2014-01-06 20:12:30
         compiled from "D:\wamp\www\1561\prestashop\admin\themes\default\template\controllers\stats\stats.tpl" */ ?>
<?php /*%%SmartyHeaderCode:2844152cb0e2e79ff23-86275708%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'b171691e2919cc4e2bc4a55c25d6da12ba050b92' => 
    array (
      0 => 'D:\\wamp\\www\\1561\\prestashop\\admin\\themes\\default\\template\\controllers\\stats\\stats.tpl',
      1 => 1384783796,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '2844152cb0e2e79ff23-86275708',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'module_name' => 0,
    'module_instance' => 0,
    'hook' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_52cb0e2e810fe2_60426906',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52cb0e2e810fe2_60426906')) {function content_52cb0e2e810fe2_60426906($_smarty_tpl) {?>

<div>
	<?php if ($_smarty_tpl->tpl_vars['module_name']->value){?>
		<?php if ($_smarty_tpl->tpl_vars['module_instance']->value&&$_smarty_tpl->tpl_vars['module_instance']->value->active){?>
			<?php echo $_smarty_tpl->tpl_vars['hook']->value;?>

		<?php }else{ ?>
			<?php echo smartyTranslate(array('s'=>'Module not found'),$_smarty_tpl);?>

		<?php }?>
	<?php }else{ ?>
		<h3 class="space"><?php echo smartyTranslate(array('s'=>'Please select a module from the left column.'),$_smarty_tpl);?>
</h3>
	<?php }?>
</div>
</div>
</div>


<?php }} ?>