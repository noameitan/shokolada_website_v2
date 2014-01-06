<?php /* Smarty version Smarty-3.1.14, created on 2014-01-06 20:11:53
         compiled from "D:\wamp\www\1561\prestashop\themes\default\modules\blockrss\blockrss.tpl" */ ?>
<?php /*%%SmartyHeaderCode:668252cb0e09cae254-41818605%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '4c3117e98d052d82abdb1f11e86d0d8977eafc33' => 
    array (
      0 => 'D:\\wamp\\www\\1561\\prestashop\\themes\\default\\modules\\blockrss\\blockrss.tpl',
      1 => 1384783796,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '668252cb0e09cae254-41818605',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'title' => 0,
    'rss_links' => 0,
    'rss_link' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_52cb0e09cfc7b5_63325157',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52cb0e09cfc7b5_63325157')) {function content_52cb0e09cfc7b5_63325157($_smarty_tpl) {?>

<!-- Block RSS module-->
<div id="rss_block_left" class="block">
	<p class="title_block"><?php echo $_smarty_tpl->tpl_vars['title']->value;?>
</p>
	<div class="block_content">
		<?php if ($_smarty_tpl->tpl_vars['rss_links']->value){?>
			<ul>
				<?php  $_smarty_tpl->tpl_vars['rss_link'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['rss_link']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['rss_links']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['rss_link']->key => $_smarty_tpl->tpl_vars['rss_link']->value){
$_smarty_tpl->tpl_vars['rss_link']->_loop = true;
?>
					<li><a href="<?php echo $_smarty_tpl->tpl_vars['rss_link']->value['url'];?>
"><?php echo $_smarty_tpl->tpl_vars['rss_link']->value['title'];?>
</a></li>
				<?php } ?>
			</ul>
		<?php }else{ ?>
			<p><?php echo smartyTranslate(array('s'=>'No RSS feed added','mod'=>'blockrss'),$_smarty_tpl);?>
</p>
		<?php }?>
	</div>
</div>
<!-- /Block RSS module-->
<?php }} ?>