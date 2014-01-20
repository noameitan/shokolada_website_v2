<?php /* Smarty version Smarty-3.1.14, created on 2014-01-19 21:59:20
         compiled from "D:\wamp\www\1561\prestashop\themes\transformer\search.tpl" */ ?>
<?php /*%%SmartyHeaderCode:1196152dc2e98e25eb5-44867583%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '152db8efa1108c3050e2b6727f446e44ac11cb9c' => 
    array (
      0 => 'D:\\wamp\\www\\1561\\prestashop\\themes\\transformer\\search.tpl',
      1 => 1389102133,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1196152dc2e98e25eb5-44867583',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'instantSearch' => 0,
    'nbProducts' => 0,
    'search_query' => 0,
    'search_tag' => 0,
    'ref' => 0,
    'cook_veiwmode' => 0,
    'viewmode' => 0,
    'category_row_product_nbr' => 0,
    'search_products' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_52dc2e991dacc7_32510582',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52dc2e991dacc7_32510582')) {function content_52dc2e991dacc7_32510582($_smarty_tpl) {?><?php if (!is_callable('smarty_modifier_escape')) include 'D:\\wamp\\www\\1561\\prestashop\\tools\\smarty\\plugins\\modifier.escape.php';
?>

<?php $_smarty_tpl->_capture_stack[0][] = array('path', null, null); ob_start(); ?><?php echo smartyTranslate(array('s'=>'Search'),$_smarty_tpl);?>
<?php list($_capture_buffer, $_capture_assign, $_capture_append) = array_pop($_smarty_tpl->_capture_stack[0]);
if (!empty($_capture_buffer)) {
 if (isset($_capture_assign)) $_smarty_tpl->assign($_capture_assign, ob_get_contents());
 if (isset( $_capture_append)) $_smarty_tpl->append( $_capture_append, ob_get_contents());
 Smarty::$_smarty_vars['capture'][$_capture_buffer]=ob_get_clean();
} else $_smarty_tpl->capture_error();?>


<h1 class="heading" <?php if (isset($_smarty_tpl->tpl_vars['instantSearch']->value)&&$_smarty_tpl->tpl_vars['instantSearch']->value){?>id="instant_search_results"<?php }?>>
<?php echo smartyTranslate(array('s'=>'Search'),$_smarty_tpl);?>
&nbsp;<?php if ($_smarty_tpl->tpl_vars['nbProducts']->value>0){?>"<?php if (isset($_smarty_tpl->tpl_vars['search_query']->value)&&$_smarty_tpl->tpl_vars['search_query']->value){?><?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['search_query']->value, 'htmlall', 'UTF-8');?>
<?php }elseif($_smarty_tpl->tpl_vars['search_tag']->value){?><?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['search_tag']->value, 'htmlall', 'UTF-8');?>
<?php }elseif($_smarty_tpl->tpl_vars['ref']->value){?><?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['ref']->value, 'htmlall', 'UTF-8');?>
<?php }?>"<?php }?>
<?php if (isset($_smarty_tpl->tpl_vars['instantSearch']->value)&&$_smarty_tpl->tpl_vars['instantSearch']->value){?><a href="#" class="close"><?php echo smartyTranslate(array('s'=>'Return to the previous page'),$_smarty_tpl);?>
</a><?php }?>
</h1>

<?php echo $_smarty_tpl->getSubTemplate (((string)$_smarty_tpl->tpl_vars['tpl_dir']->value)."./errors.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

<?php if (!$_smarty_tpl->tpl_vars['nbProducts']->value){?>
	<p class="warning">
		<?php if (isset($_smarty_tpl->tpl_vars['search_query']->value)&&$_smarty_tpl->tpl_vars['search_query']->value){?>
			<?php echo smartyTranslate(array('s'=>'No results were found for your search'),$_smarty_tpl);?>
&nbsp;"<?php if (isset($_smarty_tpl->tpl_vars['search_query']->value)){?><?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['search_query']->value, 'htmlall', 'UTF-8');?>
<?php }?>"
		<?php }elseif(isset($_smarty_tpl->tpl_vars['search_tag']->value)&&$_smarty_tpl->tpl_vars['search_tag']->value){?>
			<?php echo smartyTranslate(array('s'=>'No results were found for your search'),$_smarty_tpl);?>
&nbsp;"<?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['search_tag']->value, 'htmlall', 'UTF-8');?>
"
		<?php }else{ ?>
			<?php echo smartyTranslate(array('s'=>'Please enter a search keyword'),$_smarty_tpl);?>

		<?php }?>
	</p>
<?php }else{ ?>
	<h3 class="nbresult"><span class="big"><?php if ($_smarty_tpl->tpl_vars['nbProducts']->value==1){?><?php echo smartyTranslate(array('s'=>'%d result has been found.','sprintf'=>intval($_smarty_tpl->tpl_vars['nbProducts']->value)),$_smarty_tpl);?>
<?php }else{ ?><?php echo smartyTranslate(array('s'=>'%d results have been found.','sprintf'=>intval($_smarty_tpl->tpl_vars['nbProducts']->value)),$_smarty_tpl);?>
<?php }?></span></h3>
	<div class="content_sortPagiBar">
	   <div class="sortPagiBar clearfix">
			<?php echo $_smarty_tpl->getSubTemplate ("./product-view.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

	<?php if (!isset($_smarty_tpl->tpl_vars['instantSearch']->value)||(isset($_smarty_tpl->tpl_vars['instantSearch']->value)&&!$_smarty_tpl->tpl_vars['instantSearch']->value)){?>
		<?php echo $_smarty_tpl->getSubTemplate (((string)$_smarty_tpl->tpl_vars['tpl_dir']->value)."./product-sort.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

	<?php }?>
	   </div>
	</div>
	
    <?php if (isset($_smarty_tpl->tpl_vars['cook_veiwmode']->value)&&$_smarty_tpl->tpl_vars['cook_veiwmode']->value!=''){?>
        <?php $_smarty_tpl->tpl_vars['viewmode'] = new Smarty_variable($_smarty_tpl->tpl_vars['cook_veiwmode']->value, null, 0);?>
    <?php }else{ ?>
        <?php $_smarty_tpl->tpl_vars['viewmode'] = new Smarty_variable('grid_view', null, 0);?>
    <?php }?>
    <div id="viewmode" class="<?php echo $_smarty_tpl->tpl_vars['viewmode']->value;?>
 grid_view_<?php echo $_smarty_tpl->tpl_vars['category_row_product_nbr']->value;?>
col">
	<?php echo $_smarty_tpl->getSubTemplate ("./product-list.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array('products'=>$_smarty_tpl->tpl_vars['search_products']->value), 0);?>

    </div>
    
	<div class="content_sortPagiBar">
        <div class="paginationBar paginationBarBottom clearfix">
	<?php if (!isset($_smarty_tpl->tpl_vars['instantSearch']->value)||(isset($_smarty_tpl->tpl_vars['instantSearch']->value)&&!$_smarty_tpl->tpl_vars['instantSearch']->value)){?><?php echo $_smarty_tpl->getSubTemplate (((string)$_smarty_tpl->tpl_vars['tpl_dir']->value)."./pagination.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>
<?php }?>
        </div>
	</div>
<?php }?><?php }} ?>