<?php /* Smarty version Smarty-3.1.14, created on 2014-01-07 16:11:33
         compiled from "D:\wamp\www\1561\prestashop\themes\transformer\breadcrumb.tpl" */ ?>
<?php /*%%SmartyHeaderCode:928052cc0b15480083-87982465%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '59225a9c76e325db3fbdd2dabdf7c77b89ae0012' => 
    array (
      0 => 'D:\\wamp\\www\\1561\\prestashop\\themes\\transformer\\breadcrumb.tpl',
      1 => 1389102132,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '928052cc0b15480083-87982465',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'base_dir' => 0,
    'path' => 0,
    'category' => 0,
    'navigationPipe' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_52cc0b1556bbf6_11241990',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52cc0b1556bbf6_11241990')) {function content_52cc0b1556bbf6_11241990($_smarty_tpl) {?><?php if (!is_callable('smarty_modifier_escape')) include 'D:\\wamp\\www\\1561\\prestashop\\tools\\smarty\\plugins\\modifier.escape.php';
?>

<!-- Breadcrumb -->
<?php if (isset(Smarty::$_smarty_vars['capture']['path'])){?><?php $_smarty_tpl->tpl_vars['path'] = new Smarty_variable(Smarty::$_smarty_vars['capture']['path'], null, 0);?><?php }?>
<section class="breadcrumb"  xmlns:v="http://rdf.data-vocabulary.org/#">
    <ul itemprop="breadcrumb">
	<li typeof="v:Breadcrumb"><a href="<?php echo $_smarty_tpl->tpl_vars['base_dir']->value;?>
" title="<?php echo smartyTranslate(array('s'=>'return to Home'),$_smarty_tpl);?>
" rel="v:url" property="v:title"><?php echo smartyTranslate(array('s'=>'Home'),$_smarty_tpl);?>
</a></li>
	<?php if (isset($_smarty_tpl->tpl_vars['path']->value)&&$_smarty_tpl->tpl_vars['path']->value){?>
		<li class="navigation-pipe" <?php if (isset($_smarty_tpl->tpl_vars['category']->value)&&isset($_smarty_tpl->tpl_vars['category']->value->id_category)&&$_smarty_tpl->tpl_vars['category']->value->id_category==1){?>style="display:none;"<?php }?>><?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['navigationPipe']->value, 'html', 'UTF-8');?>
</li>
		<?php if (!strpos($_smarty_tpl->tpl_vars['path']->value,'li>')){?>
			<li typeof="v:Breadcrumb" class="navigation_page"><?php echo $_smarty_tpl->tpl_vars['path']->value;?>
</li>
		<?php }else{ ?>
			<?php echo $_smarty_tpl->tpl_vars['path']->value;?>

		<?php }?>
	<?php }?>
    </ul>
</section>
<!-- /Breadcrumb --><?php }} ?>