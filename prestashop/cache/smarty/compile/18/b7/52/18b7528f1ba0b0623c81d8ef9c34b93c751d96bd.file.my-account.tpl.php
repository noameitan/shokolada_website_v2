<?php /* Smarty version Smarty-3.1.14, created on 2014-01-20 16:14:37
         compiled from "D:\wamp\www\1561\prestashop\modules\stblogcomments\views\templates\hook\my-account.tpl" */ ?>
<?php /*%%SmartyHeaderCode:2715452dd2f4d6801c2-44543842%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '18b7528f1ba0b0623c81d8ef9c34b93c751d96bd' => 
    array (
      0 => 'D:\\wamp\\www\\1561\\prestashop\\modules\\stblogcomments\\views\\templates\\hook\\my-account.tpl',
      1 => 1389102237,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '2715452dd2f4d6801c2-44543842',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'link' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_52dd2f4d6b4a60_55426154',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52dd2f4d6b4a60_55426154')) {function content_52dd2f4d6b4a60_55426154($_smarty_tpl) {?>

<!-- MODULE St Blog Comment -->
<li class="lnk_stblogcomments">
	<a href="<?php echo $_smarty_tpl->tpl_vars['link']->value->getModuleLink('stblogcomments','mycomments');?>
" title="<?php echo smartyTranslate(array('s'=>'Blog comments','mod'=>'stblogcomments'),$_smarty_tpl);?>
">
		<span class="icon_wrap"><i class="icon-chat-1 icon-1x"></i></span><?php echo smartyTranslate(array('s'=>'Blog comments','mod'=>'stblogcomments'),$_smarty_tpl);?>
</a>
	</a>
</li>
<!-- END : MODULE St Blog Comment --><?php }} ?>