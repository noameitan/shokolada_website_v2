<?php /* Smarty version Smarty-3.1.14, created on 2014-01-06 20:11:38
         compiled from "D:\wamp\www\1561\prestashop\themes\default\mobile\index.tpl" */ ?>
<?php /*%%SmartyHeaderCode:2009652cb0dfa818de1-69965942%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '7d8eb6e3322178fd946c7c634ccc2fd5df461d38' => 
    array (
      0 => 'D:\\wamp\\www\\1561\\prestashop\\themes\\default\\mobile\\index.tpl',
      1 => 1384783796,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '2009652cb0dfa818de1-69965942',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_52cb0dfa835c87_13600985',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52cb0dfa835c87_13600985')) {function content_52cb0dfa835c87_13600985($_smarty_tpl) {?>
	<div data-role="content" id="content">
		<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['hook'][0][0]->smartyHook(array('h'=>"DisplayMobileIndex"),$_smarty_tpl);?>

		<?php echo $_smarty_tpl->getSubTemplate ('./sitemap.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

	</div><!-- /content -->
<?php }} ?>