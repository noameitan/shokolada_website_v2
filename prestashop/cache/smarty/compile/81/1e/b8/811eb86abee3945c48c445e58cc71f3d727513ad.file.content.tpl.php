<?php /* Smarty version Smarty-3.1.14, created on 2014-01-06 20:12:29
         compiled from "D:\wamp\www\1561\prestashop\admin\themes\default\template\controllers\shop\content.tpl" */ ?>
<?php /*%%SmartyHeaderCode:2622752cb0e2d1732b9-56688267%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '811eb86abee3945c48c445e58cc71f3d727513ad' => 
    array (
      0 => 'D:\\wamp\\www\\1561\\prestashop\\admin\\themes\\default\\template\\controllers\\shop\\content.tpl',
      1 => 1384783796,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '2622752cb0e2d1732b9-56688267',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'toolbar_btn' => 0,
    'toolbar_scroll' => 0,
    'title' => 0,
    'selected_tree_id' => 0,
    'content' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_52cb0e2d1ff467_49578132',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52cb0e2d1ff467_49578132')) {function content_52cb0e2d1ff467_49578132($_smarty_tpl) {?>

<?php if ($_smarty_tpl->tpl_vars['toolbar_btn']->value){?>
	<?php echo $_smarty_tpl->getSubTemplate ("toolbar.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array('toolbar_btn'=>$_smarty_tpl->tpl_vars['toolbar_btn']->value,'toolbar_scroll'=>$_smarty_tpl->tpl_vars['toolbar_scroll']->value,'title'=>$_smarty_tpl->tpl_vars['title']->value), 0);?>

<?php }?>

<div class="multishop-left">
	<div class="multishop-title"><?php echo smartyTranslate(array('s'=>'Multistore tree'),$_smarty_tpl);?>
</div>
	<?php echo $_smarty_tpl->getSubTemplate ("controllers/shop/tree.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array('selected_tree_id'=>$_smarty_tpl->tpl_vars['selected_tree_id']->value), 0);?>

</div>
<div class="multishop-right"><?php echo $_smarty_tpl->tpl_vars['content']->value;?>
</div>

<script type="text/javascript">
	$().ready(function(){
		if (parseInt($('.multishop-right').css('height')) > 200)
			$('.multishop-left').css('height', $('.multishop-right').css('height'));
	})
</script><?php }} ?>