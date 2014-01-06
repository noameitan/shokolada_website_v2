<?php /* Smarty version Smarty-3.1.14, created on 2014-01-06 20:11:44
         compiled from "D:\wamp\www\1561\prestashop\themes\default\mobile\pages-list.tpl" */ ?>
<?php /*%%SmartyHeaderCode:2644752cb0e006d6712-73494824%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '6ac64545f28e59522922f7ad2897a00bb049be0a' => 
    array (
      0 => 'D:\\wamp\\www\\1561\\prestashop\\themes\\default\\mobile\\pages-list.tpl',
      1 => 1384783796,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '2644752cb0e006d6712-73494824',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'controller_name' => 0,
    'link' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_52cb0e007acd32_79739902',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52cb0e007acd32_79739902')) {function content_52cb0e007acd32_79739902($_smarty_tpl) {?>

		<hr/>
		<h2 class="site_map"><?php echo smartyTranslate(array('s'=>'Sitemap'),$_smarty_tpl);?>
</h2>
		<ul data-role="listview" data-inset="true" id="category">
			<?php if ($_smarty_tpl->tpl_vars['controller_name']->value!='index'){?><li><a href="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['link']->value->getPageLink('index',true), ENT_QUOTES, 'UTF-8', true);?>
" data-ajax="false">Accueil</a></li><?php }?>
			
			
			
			<li><a href="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['link']->value->getCategoryLink(3,false), ENT_QUOTES, 'UTF-8', true);?>
" data-ajax="false">IPod</a></li>
			<li><a href="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['link']->value->getCategoryLink(4,false), ENT_QUOTES, 'UTF-8', true);?>
" data-ajax="false">Accessoires</a></li>
			
			
			<?php if ($_smarty_tpl->tpl_vars['controller_name']->value!='my-account'){?><li><a href="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['link']->value->getPageLink('my-account',true), ENT_QUOTES, 'UTF-8', true);?>
" data-ajax="false"><?php echo smartyTranslate(array('s'=>'My account'),$_smarty_tpl);?>
</a></li><?php }?>
			<?php if ($_smarty_tpl->tpl_vars['controller_name']->value!='contact'){?><li><a href="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['link']->value->getPageLink('contact',true), ENT_QUOTES, 'UTF-8', true);?>
" data-ajax="false"><?php echo smartyTranslate(array('s'=>'Contact'),$_smarty_tpl);?>
</a></li><?php }?>
		</ul>
<?php }} ?>