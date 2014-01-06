<?php /* Smarty version Smarty-3.1.14, created on 2014-01-06 22:32:25
         compiled from "D:\wamp\www\1561\prestashop\modules\blockpermanentlinks\blockpermanentlinks-header.tpl" */ ?>
<?php /*%%SmartyHeaderCode:2833252cb12d902d076-09946811%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '07d5ca9c4111ba10bb699c68e808aecb5ea40634' => 
    array (
      0 => 'D:\\wamp\\www\\1561\\prestashop\\modules\\blockpermanentlinks\\blockpermanentlinks-header.tpl',
      1 => 1384783796,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '2833252cb12d902d076-09946811',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'link' => 0,
    'come_from' => 0,
    'meta_title' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_52cb12d9098bc5_14090987',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52cb12d9098bc5_14090987')) {function content_52cb12d9098bc5_14090987($_smarty_tpl) {?>

<!-- Block permanent links module HEADER -->
<ul id="header_links">
	<li id="header_link_contact"><a href="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['link']->value->getPageLink('contact',true), ENT_QUOTES, 'UTF-8', true);?>
" title="<?php echo smartyTranslate(array('s'=>'contact','mod'=>'blockpermanentlinks'),$_smarty_tpl);?>
"><?php echo smartyTranslate(array('s'=>'contact','mod'=>'blockpermanentlinks'),$_smarty_tpl);?>
</a></li>
	<li id="header_link_sitemap"><a href="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['link']->value->getPageLink('sitemap'), ENT_QUOTES, 'UTF-8', true);?>
" title="<?php echo smartyTranslate(array('s'=>'sitemap','mod'=>'blockpermanentlinks'),$_smarty_tpl);?>
"><?php echo smartyTranslate(array('s'=>'sitemap','mod'=>'blockpermanentlinks'),$_smarty_tpl);?>
</a></li>
	<li id="header_link_bookmark">
		<script type="text/javascript">writeBookmarkLink('<?php echo $_smarty_tpl->tpl_vars['come_from']->value;?>
', '<?php echo addslashes(addslashes($_smarty_tpl->tpl_vars['meta_title']->value));?>
', '<?php echo smartyTranslate(array('s'=>'bookmark','mod'=>'blockpermanentlinks','js'=>1),$_smarty_tpl);?>
');</script>
	</li>
</ul>
<!-- /Block permanent links module HEADER -->
<?php }} ?>