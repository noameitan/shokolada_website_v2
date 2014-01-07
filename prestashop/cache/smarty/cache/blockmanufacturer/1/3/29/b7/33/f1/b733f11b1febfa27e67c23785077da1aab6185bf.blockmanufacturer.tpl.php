<?php /*%%SmartyHeaderCode:2643652cb12d9ac6875-16101880%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'b733f11b1febfa27e67c23785077da1aab6185bf' => 
    array (
      0 => 'D:\\wamp\\www\\1561\\prestashop\\themes\\default\\modules\\blockmanufacturer\\blockmanufacturer.tpl',
      1 => 1384783796,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '2643652cb12d9ac6875-16101880',
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_52cb1b67e26899_50333411',
  'has_nocache_code' => false,
  'cache_lifetime' => 31536000,
),true); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52cb1b67e26899_50333411')) {function content_52cb1b67e26899_50333411($_smarty_tpl) {?>
<!-- Block manufacturers module -->
<div id="manufacturers_block_left" class="block blockmanufacturer">
	<p class="title_block"><a href="http://localhost/1561/prestashop/index.php?controller=manufacturer" title="יצרנים">יצרנים</a></p>
	<div class="block_content">
		<ul class="bullet">
					<li class="first_item"><a href="http://localhost/1561/prestashop/index.php?id_manufacturer=1&amp;controller=manufacturer&amp;id_lang=3" title="עוד על Apple Computer, Inc">Apple Computer, Inc</a></li>
							<li class="last_item"><a href="http://localhost/1561/prestashop/index.php?id_manufacturer=2&amp;controller=manufacturer&amp;id_lang=3" title="עוד על Shure Incorporated">Shure Incorporated</a></li>
				</ul>
				<form action="/1561/prestashop/index.php" method="get">
			<p>
				<select id="manufacturer_list" onchange="autoUrl('manufacturer_list', '');">
					<option value="0">כל היצרנים</option>
									<option value="http://localhost/1561/prestashop/index.php?id_manufacturer=1&amp;controller=manufacturer&amp;id_lang=3">Apple Computer, Inc</option>
									<option value="http://localhost/1561/prestashop/index.php?id_manufacturer=2&amp;controller=manufacturer&amp;id_lang=3">Shure Incorporated</option>
								</select>
			</p>
		</form>
		</div>
</div>
<!-- /Block manufacturers module -->
<?php }} ?>