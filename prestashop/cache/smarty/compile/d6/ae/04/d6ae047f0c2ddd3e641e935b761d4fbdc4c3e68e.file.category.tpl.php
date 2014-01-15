<?php /* Smarty version Smarty-3.1.14, created on 2014-01-15 18:32:32
         compiled from "D:\wamp\www\1561\prestashop\themes\transformer\category.tpl" */ ?>
<?php /*%%SmartyHeaderCode:492152d6b820d2e932-33970120%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'd6ae047f0c2ddd3e641e935b761d4fbdc4c3e68e' => 
    array (
      0 => 'D:\\wamp\\www\\1561\\prestashop\\themes\\transformer\\category.tpl',
      1 => 1389102132,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '492152d6b820d2e932-33970120',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'category' => 0,
    'display_category_title' => 0,
    'categoryNameComplement' => 0,
    'HOOK_CATEGORY_HEADER' => 0,
    'scenes' => 0,
    'display_category_desc' => 0,
    'display_category_image' => 0,
    'link' => 0,
    'categorySize' => 0,
    'sttheme' => 0,
    'description_short' => 0,
    'display_subcategory' => 0,
    'subcategories' => 0,
    'subcategory' => 0,
    'img_cat_dir' => 0,
    'nb_products' => 0,
    'products' => 0,
    'cook_veiwmode' => 0,
    'viewmode' => 0,
    'category_row_product_nbr' => 0,
    'HOOK_CATEGORY_FOOTER' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_52d6b821315ae0_16014164',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52d6b821315ae0_16014164')) {function content_52d6b821315ae0_16014164($_smarty_tpl) {?><?php if (!is_callable('smarty_modifier_escape')) include 'D:\\wamp\\www\\1561\\prestashop\\tools\\smarty\\plugins\\modifier.escape.php';
?>

<?php echo $_smarty_tpl->getSubTemplate (((string)$_smarty_tpl->tpl_vars['tpl_dir']->value)."./errors.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>


<?php if (isset($_smarty_tpl->tpl_vars['category']->value)){?>
	<?php if ($_smarty_tpl->tpl_vars['category']->value->id&&$_smarty_tpl->tpl_vars['category']->value->active){?>
        <?php if ($_smarty_tpl->tpl_vars['display_category_title']->value){?>
		<h1 class="heading">
			<?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['category']->value->name, 'htmlall', 'UTF-8');?>
<?php if (isset($_smarty_tpl->tpl_vars['categoryNameComplement']->value)){?><?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['categoryNameComplement']->value, 'htmlall', 'UTF-8');?>
<?php }?>
		</h1>
		<?php }?>
        
        <?php if (isset($_smarty_tpl->tpl_vars['HOOK_CATEGORY_HEADER']->value)&&$_smarty_tpl->tpl_vars['HOOK_CATEGORY_HEADER']->value){?><?php echo $_smarty_tpl->tpl_vars['HOOK_CATEGORY_HEADER']->value;?>
<?php }?>
		
		<?php if ($_smarty_tpl->tpl_vars['scenes']->value||($_smarty_tpl->tpl_vars['display_category_desc']->value&&$_smarty_tpl->tpl_vars['category']->value->description)||($_smarty_tpl->tpl_vars['display_category_image']->value&&$_smarty_tpl->tpl_vars['category']->value->id_image)){?>
		<div class="content_scene_cat mar_b1">
			<?php if ($_smarty_tpl->tpl_vars['scenes']->value){?>
				<!-- Scenes -->
				<?php echo $_smarty_tpl->getSubTemplate (((string)$_smarty_tpl->tpl_vars['tpl_dir']->value)."./scenes.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array('scenes'=>$_smarty_tpl->tpl_vars['scenes']->value), 0);?>

			<?php }else{ ?>
				<!-- Category image -->
				<?php if ($_smarty_tpl->tpl_vars['display_category_image']->value&&$_smarty_tpl->tpl_vars['category']->value->id_image){?>
				<div class="align_center mar_b1">
					<img src="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['link']->value->getCatImageLink($_smarty_tpl->tpl_vars['category']->value->link_rewrite,$_smarty_tpl->tpl_vars['category']->value->id_image,'category_default'), ENT_QUOTES, 'UTF-8', true);?>
" alt="<?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['category']->value->name, 'htmlall', 'UTF-8');?>
" title="<?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['category']->value->name, 'htmlall', 'UTF-8');?>
" id="categoryImage" width="<?php echo $_smarty_tpl->tpl_vars['categorySize']->value['width'];?>
" height="<?php echo $_smarty_tpl->tpl_vars['categorySize']->value['height'];?>
" />
				</div>
				<?php }?>
			<?php }?>
            
			<?php if ($_smarty_tpl->tpl_vars['display_category_desc']->value&&$_smarty_tpl->tpl_vars['category']->value->description){?>
				<div class="cat_desc">
				<?php if ((!isset($_smarty_tpl->tpl_vars['sttheme']->value['display_cate_desc_full'])||!$_smarty_tpl->tpl_vars['sttheme']->value['display_cate_desc_full'])&&strlen($_smarty_tpl->tpl_vars['category']->value->description)>120){?>
                    <?php if (isset($_smarty_tpl->tpl_vars['description_short']->value)){?>
                    <div id="category_description_short"><?php echo $_smarty_tpl->tpl_vars['description_short']->value;?>
</div>
                    <?php }else{ ?>
					<div id="category_description_short" style="height:1.5em;overflow:hidden;"><?php echo $_smarty_tpl->tpl_vars['category']->value->description;?>
</div>
                    <?php }?>
					<div id="category_description_full" style="display:none"><?php echo $_smarty_tpl->tpl_vars['category']->value->description;?>
</div>
					<a href="#" onclick="$('#category_description_short').hide(); $('#category_description_full').show(); $(this).hide(); return false;" class="lnk_more go"><?php echo smartyTranslate(array('s'=>'More'),$_smarty_tpl);?>
</a>
				<?php }else{ ?>
					<div><?php echo $_smarty_tpl->tpl_vars['category']->value->description;?>
</div>
				<?php }?>
				</div>
			<?php }?>
		</div>
		<?php }?>
		<?php if ($_smarty_tpl->tpl_vars['display_subcategory']->value&&isset($_smarty_tpl->tpl_vars['subcategories']->value)){?>
		<!-- Subcategories -->
		<div id="subcategories">
			<h4 class="heading hidden"><?php echo smartyTranslate(array('s'=>'Subcategories'),$_smarty_tpl);?>
</h4>
			<ul class="inline_list <?php if ($_smarty_tpl->tpl_vars['display_subcategory']->value==1){?>subcate_grid_view clearfix li_fl subcate_grid_view_<?php if (isset($_smarty_tpl->tpl_vars['sttheme']->value['categories_per_row'])&&$_smarty_tpl->tpl_vars['sttheme']->value['categories_per_row']){?><?php echo $_smarty_tpl->tpl_vars['sttheme']->value['categories_per_row'];?>
<?php }else{ ?>5<?php }?> <?php }else{ ?>subcate_list_view<?php }?>">
			<?php  $_smarty_tpl->tpl_vars['subcategory'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['subcategory']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['subcategories']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['subcategory']->key => $_smarty_tpl->tpl_vars['subcategory']->value){
$_smarty_tpl->tpl_vars['subcategory']->_loop = true;
?>
				<li class="clearfix">
					<a href="<?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['link']->value->getCategoryLink($_smarty_tpl->tpl_vars['subcategory']->value['id_category'],$_smarty_tpl->tpl_vars['subcategory']->value['link_rewrite']), 'htmlall', 'UTF-8');?>
" title="<?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['subcategory']->value['name'], 'htmlall', 'UTF-8');?>
" class="img">
						<?php if ($_smarty_tpl->tpl_vars['subcategory']->value['id_image']){?>
							<img src="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['link']->value->getCatImageLink($_smarty_tpl->tpl_vars['subcategory']->value['link_rewrite'],$_smarty_tpl->tpl_vars['subcategory']->value['id_image'],'category_default'), ENT_QUOTES, 'UTF-8', true);?>
" alt="<?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['subcategory']->value['name'], 'htmlall', 'UTF-8');?>
" width="<?php echo $_smarty_tpl->tpl_vars['categorySize']->value['width'];?>
" height="<?php echo $_smarty_tpl->tpl_vars['categorySize']->value['height'];?>
" />
						<?php }else{ ?>
							<img src="<?php echo $_smarty_tpl->tpl_vars['img_cat_dir']->value;?>
default-category_default.jpg" alt="" width="<?php echo $_smarty_tpl->tpl_vars['categorySize']->value['width'];?>
" height="<?php echo $_smarty_tpl->tpl_vars['categorySize']->value['height'];?>
" />
						<?php }?>
					</a>
					<a href="<?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['link']->value->getCategoryLink($_smarty_tpl->tpl_vars['subcategory']->value['id_category'],$_smarty_tpl->tpl_vars['subcategory']->value['link_rewrite']), 'htmlall', 'UTF-8');?>
" class="cat_name"><?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['subcategory']->value['name'], 'htmlall', 'UTF-8');?>
</a>
					<?php if ($_smarty_tpl->tpl_vars['subcategory']->value['description']){?>
						<div class="cat_desc"><?php echo $_smarty_tpl->tpl_vars['subcategory']->value['description'];?>
</div>
					<?php }?>
				</li>
			<?php } ?>
			</ul>
		</div>
		<?php }?>

        <?php if ($_smarty_tpl->tpl_vars['category']->value->id==1||$_smarty_tpl->tpl_vars['nb_products']->value==0){?>
	       <p class="warning"><?php echo smartyTranslate(array('s'=>'There are no products in  this category'),$_smarty_tpl);?>
</p>
           <?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['hook'][0][0]->smartyHook(array('h'=>'displayAnywhere','location'=>"5",'mod'=>'steasycontent','caller'=>'steasycontent'),$_smarty_tpl);?>

        <?php }?>
        
		<?php if ($_smarty_tpl->tpl_vars['products']->value){?>
			<div class="content_sortPagiBar">
                <div class="paginationBar clearfix">
            		<div class="resumecat category-product-count hidden-phone fl">
            			<?php echo $_smarty_tpl->getSubTemplate (((string)$_smarty_tpl->tpl_vars['tpl_dir']->value)."./category-count.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

            		</div>
				    <?php echo $_smarty_tpl->getSubTemplate (((string)$_smarty_tpl->tpl_vars['tpl_dir']->value)."./pagination.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

                </div>
				<div class="sortPagiBar clearfix">
					<?php echo $_smarty_tpl->getSubTemplate ("./product-view.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

					<?php echo $_smarty_tpl->getSubTemplate ("./product-sort.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

					<?php echo $_smarty_tpl->getSubTemplate ("./nbr-product-page.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

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
			<?php echo $_smarty_tpl->getSubTemplate ("./product-list.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array('products'=>$_smarty_tpl->tpl_vars['products']->value), 0);?>

            </div>
			
			<div class="content_sortPagiBar">
				<div class="sortPagiBar sortPagiBarBottom clearfix">
					<?php echo $_smarty_tpl->getSubTemplate ("./product-view.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array('paginationId'=>'bottom'), 0);?>

					<?php echo $_smarty_tpl->getSubTemplate ("./product-sort.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array('paginationId'=>'bottom'), 0);?>

					<?php echo $_smarty_tpl->getSubTemplate ("./nbr-product-page.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array('paginationId'=>'bottom'), 0);?>

				</div>
                <div class="paginationBar paginationBarBottom clearfix">
            		<div class="resumecat category-product-count hidden-phone fl">
            			<?php echo $_smarty_tpl->getSubTemplate (((string)$_smarty_tpl->tpl_vars['tpl_dir']->value)."./category-count.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

            		</div>
				    <?php echo $_smarty_tpl->getSubTemplate (((string)$_smarty_tpl->tpl_vars['tpl_dir']->value)."./pagination.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array('paginationId'=>'bottom'), 0);?>

                </div>
			</div>
		<?php }?>
        <?php if (isset($_smarty_tpl->tpl_vars['HOOK_CATEGORY_FOOTER']->value)&&$_smarty_tpl->tpl_vars['HOOK_CATEGORY_FOOTER']->value){?><?php echo $_smarty_tpl->tpl_vars['HOOK_CATEGORY_FOOTER']->value;?>
<?php }?>
	<?php }elseif($_smarty_tpl->tpl_vars['category']->value->id){?>
		<p class="warning"><?php echo smartyTranslate(array('s'=>'This category is currently unavailable.'),$_smarty_tpl);?>
</p>
	<?php }?>
<?php }?><?php }} ?>