<?php /* Smarty version Smarty-3.1.14, created on 2014-01-06 20:12:31
         compiled from "D:\wamp\www\1561\prestashop\admin\themes\default\template\controllers\translations\auto_translate.tpl" */ ?>
<?php /*%%SmartyHeaderCode:2037852cb0e2fc76fc9-22707249%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'f5edbb97768130d31fdf08247db3d0f21aeb0eb0' => 
    array (
      0 => 'D:\\wamp\\www\\1561\\prestashop\\admin\\themes\\default\\template\\controllers\\translations\\auto_translate.tpl',
      1 => 1384783796,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '2037852cb0e2fc76fc9-22707249',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'language_code' => 0,
    'not_available' => 0,
    'tooltip_title' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_52cb0e2fcb9db7_81283344',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52cb0e2fcb9db7_81283344')) {function content_52cb0e2fcb9db7_81283344($_smarty_tpl) {?>

<input type="button" class="button" id="translate_all" value="<?php echo smartyTranslate(array('s'=>'Translate with Google (experimental).'),$_smarty_tpl);?>
" />
<script type="text/javascript">
	var gg_translate = {
		language_code : '<?php echo $_smarty_tpl->tpl_vars['language_code']->value;?>
',
		not_available : '<?php echo $_smarty_tpl->tpl_vars['not_available']->value;?>
',
		tooltip_title : '<?php echo $_smarty_tpl->tpl_vars['tooltip_title']->value;?>
'
	};
</script><?php }} ?>