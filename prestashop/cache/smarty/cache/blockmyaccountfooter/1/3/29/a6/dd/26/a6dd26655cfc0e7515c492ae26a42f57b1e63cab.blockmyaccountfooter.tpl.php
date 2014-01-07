<?php /*%%SmartyHeaderCode:1863252cb12db37f973-95235722%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'a6dd26655cfc0e7515c492ae26a42f57b1e63cab' => 
    array (
      0 => 'D:\\wamp\\www\\1561\\prestashop\\themes\\default\\modules\\blockmyaccountfooter\\blockmyaccountfooter.tpl',
      1 => 1384783796,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1863252cb12db37f973-95235722',
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_52cb1b68f12659_04617350',
  'has_nocache_code' => false,
  'cache_lifetime' => 31536000,
),true); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52cb1b68f12659_04617350')) {function content_52cb1b68f12659_04617350($_smarty_tpl) {?>
<!-- Block myaccount module -->
<div class="block myaccount">
	<p class="title_block"><a href="http://localhost/1561/prestashop/index.php?controller=my-account" title="נהל את חשבוני" rel="nofollow">החשבון שלי</a></p>
	<div class="block_content">
		<ul class="bullet">
			<li><a href="http://localhost/1561/prestashop/index.php?controller=history" title="ההזמנות שלי" rel="nofollow">ההזמנות שלי</a></li>
						<li><a href="http://localhost/1561/prestashop/index.php?controller=order-slip" title="הקופונים שלי" rel="nofollow">שוברי הזיכוי שלי</a></li>
			<li><a href="http://localhost/1561/prestashop/index.php?controller=addresses" title="הכתובות שלי" rel="nofollow">הכתובות שלי</a></li>
			<li><a href="http://localhost/1561/prestashop/index.php?controller=identity" title="נהל את המידע האישי שלי" rel="nofollow">פרטים אישיים שלי</a></li>
						
		</ul>
		<p class="logout"><a href="http://localhost/1561/prestashop/index.php?mylogout" title="התנתק" rel="nofollow">התנתק</a></p>
	</div>
</div>
<!-- /Block myaccount module -->
<?php }} ?>