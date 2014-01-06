<?php /*%%SmartyHeaderCode:2200152cb12d9716138-01501476%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '52c36ec7f7dfc352739a08ddec61672fb3c5dae7' => 
    array (
      0 => 'D:\\wamp\\www\\1561\\prestashop\\themes\\default\\modules\\blockcategories\\blockcategories.tpl',
      1 => 1384783796,
      2 => 'file',
    ),
    '4a1ec85f65387be157915bb6dffd1ac6f8a16595' => 
    array (
      0 => 'D:\\wamp\\www\\1561\\prestashop\\themes\\default\\modules\\blockcategories\\category-tree-branch.tpl',
      1 => 1384783796,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '2200152cb12d9716138-01501476',
  'variables' => 
  array (
    'isDhtml' => 0,
    'blockCategTree' => 0,
    'child' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_52cb12d98a5727_14661130',
  'cache_lifetime' => 31536000,
),true); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52cb12d98a5727_14661130')) {function content_52cb12d98a5727_14661130($_smarty_tpl) {?>
<!-- Block categories module -->
<div id="categories_block_left" class="block">
	<p class="title_block">קטגוריות</p>
	<div class="block_content">
		<ul class="tree dhtml">
									
<li >
	<a href="http://localhost/1561/prestashop/index.php?id_category=3&amp;controller=category&amp;id_lang=3" 		title="">iPods</a>
	</li>

												
<li >
	<a href="http://localhost/1561/prestashop/index.php?id_category=4&amp;controller=category&amp;id_lang=3" 		title="">Accessories</a>
	</li>

												
<li class="last">
	<a href="http://localhost/1561/prestashop/index.php?id_category=5&amp;controller=category&amp;id_lang=3" 		title="">Laptops</a>
	</li>

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