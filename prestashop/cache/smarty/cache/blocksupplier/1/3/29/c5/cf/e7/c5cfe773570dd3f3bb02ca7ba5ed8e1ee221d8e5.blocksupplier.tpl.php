<?php /*%%SmartyHeaderCode:2056752cb12d98daf30-78273392%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'c5cfe773570dd3f3bb02ca7ba5ed8e1ee221d8e5' => 
    array (
      0 => 'D:\\wamp\\www\\1561\\prestashop\\themes\\default\\modules\\blocksupplier\\blocksupplier.tpl',
      1 => 1384783796,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '2056752cb12d98daf30-78273392',
  'variables' => 
  array (
    'display_link_supplier' => 0,
    'link' => 0,
    'suppliers' => 0,
    'text_list' => 0,
    'text_list_nb' => 0,
    'supplier' => 0,
    'form_list' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_52cb12d9a964c4_55165023',
  'cache_lifetime' => 31536000,
),true); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52cb12d9a964c4_55165023')) {function content_52cb12d9a964c4_55165023($_smarty_tpl) {?>
<!-- Block suppliers module -->
<div id="suppliers_block_left" class="block blocksupplier">
	<p class="title_block"><a href="http://localhost/1561/prestashop/index.php?controller=supplier" title="ספקים">ספקים</a></p>
	<div class="block_content">
		<ul class="bullet">
					<li class="first_item">
			<a href="http://localhost/1561/prestashop/index.php?id_supplier=1&amp;controller=supplier&amp;id_lang=3" title="עוד על AppleStore">AppleStore</a>
		</li>
							<li class="last_item">
			<a href="http://localhost/1561/prestashop/index.php?id_supplier=2&amp;controller=supplier&amp;id_lang=3" title="עוד על Shure Online Store">Shure Online Store</a>
		</li>
				</ul>
				<form action="/1561/prestashop/index.php" method="get">
			<p>
				<select id="supplier_list" onchange="autoUrl('supplier_list', '');">
					<option value="0">כל הספקים</option>
									<option value="http://localhost/1561/prestashop/index.php?id_supplier=1&amp;controller=supplier&amp;id_lang=3">AppleStore</option>
									<option value="http://localhost/1561/prestashop/index.php?id_supplier=2&amp;controller=supplier&amp;id_lang=3">Shure Online Store</option>
								</select>
			</p>
		</form>
		</div>
</div>
<!-- /Block suppliers module -->
<?php }} ?>