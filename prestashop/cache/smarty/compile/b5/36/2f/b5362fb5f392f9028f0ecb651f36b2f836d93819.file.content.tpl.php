<?php /* Smarty version Smarty-3.1.14, created on 2014-01-06 20:12:18
         compiled from "D:\wamp\www\1561\prestashop\admin\themes\default\template\controllers\modules\content.tpl" */ ?>
<?php /*%%SmartyHeaderCode:304952cb0e2246c961-02309103%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'b5362fb5f392f9028f0ecb651f36b2f836d93819' => 
    array (
      0 => 'D:\\wamp\\www\\1561\\prestashop\\admin\\themes\\default\\template\\controllers\\modules\\content.tpl',
      1 => 1384783796,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '304952cb0e2246c961-02309103',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'module_content' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_52cb0e224d1bb2_15301339',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52cb0e224d1bb2_15301339')) {function content_52cb0e224d1bb2_15301339($_smarty_tpl) {?>

<?php if (isset($_smarty_tpl->tpl_vars['module_content']->value)){?>
	<?php echo $_smarty_tpl->tpl_vars['module_content']->value;?>

<?php }else{ ?>
	<?php if (!isset($_GET['configure'])){?>
		<?php echo $_smarty_tpl->getSubTemplate ('controllers/modules/js.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

		<?php if (isset($_GET['select'])&&$_GET['select']=='favorites'){?>
			<?php echo $_smarty_tpl->getSubTemplate ('controllers/modules/favorites.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

		<?php }else{ ?>
			<?php echo $_smarty_tpl->getSubTemplate ('controllers/modules/page.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

		<?php }?>
	<?php }?>
<?php }?>
<?php }} ?>