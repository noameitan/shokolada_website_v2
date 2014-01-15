<?php /* Smarty version Smarty-3.1.14, created on 2014-01-15 18:32:31
         compiled from "D:\wamp\www\1561\prestashop\themes\transformer\modules\blockcategories\blockcategories.tpl" */ ?>
<?php /*%%SmartyHeaderCode:2189352d6b81f723362-70859755%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'a13cbc8c2379dd8cb387a120d235dbd7fcfdccca' => 
    array (
      0 => 'D:\\wamp\\www\\1561\\prestashop\\themes\\transformer\\modules\\blockcategories\\blockcategories.tpl',
      1 => 1389102133,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '2189352d6b81f723362-70859755',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'isDhtml' => 0,
    'blockCategTree' => 0,
    'child' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_52d6b81f79ad69_73257882',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52d6b81f79ad69_73257882')) {function content_52d6b81f79ad69_73257882($_smarty_tpl) {?>

<!-- Block categories module -->
<div id="categories_block_left" class="block">
	<p class="title_block"><?php echo smartyTranslate(array('s'=>'Categories','mod'=>'blockcategories'),$_smarty_tpl);?>
</p>
	<div class="block_content categories_tree_block">
		<ul class="tree <?php if ($_smarty_tpl->tpl_vars['isDhtml']->value){?>dhtml<?php }?>">
		<?php  $_smarty_tpl->tpl_vars['child'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['child']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['blockCategTree']->value['children']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
 $_smarty_tpl->tpl_vars['child']->total= $_smarty_tpl->_count($_from);
 $_smarty_tpl->tpl_vars['child']->iteration=0;
foreach ($_from as $_smarty_tpl->tpl_vars['child']->key => $_smarty_tpl->tpl_vars['child']->value){
$_smarty_tpl->tpl_vars['child']->_loop = true;
 $_smarty_tpl->tpl_vars['child']->iteration++;
 $_smarty_tpl->tpl_vars['child']->last = $_smarty_tpl->tpl_vars['child']->iteration === $_smarty_tpl->tpl_vars['child']->total;
 $_smarty_tpl->tpl_vars['smarty']->value['foreach']['blockCategTree']['last'] = $_smarty_tpl->tpl_vars['child']->last;
?>
			<?php if ($_smarty_tpl->getVariable('smarty')->value['foreach']['blockCategTree']['last']){?>
				<?php echo $_smarty_tpl->getSubTemplate (((string)$_smarty_tpl->tpl_vars['branche_tpl_path']->value), $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array('node'=>$_smarty_tpl->tpl_vars['child']->value,'last'=>'true'), 0);?>

			<?php }else{ ?>
				<?php echo $_smarty_tpl->getSubTemplate (((string)$_smarty_tpl->tpl_vars['branche_tpl_path']->value), $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array('node'=>$_smarty_tpl->tpl_vars['child']->value), 0);?>

			<?php }?>
		<?php } ?>
		</ul>
		
		<script type="text/javascript">
		// <![CDATA[
			// we hide the tree only if JavaScript is activated
			$('div#categories_block_left ul.dhtml').hide();
		// ]]>
		</script>
	</div>
</div>
<!-- /Block categories module -->
<?php }} ?>