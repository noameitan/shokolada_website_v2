<?php /* Smarty version Smarty-3.1.14, created on 2014-01-06 22:32:26
         compiled from "D:\wamp\www\1561\prestashop\modules\blockadvertising\blockadvertising.tpl" */ ?>
<?php /*%%SmartyHeaderCode:2288252cb12da12c564-64013671%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '3c20ed1c98b7439cc7cae1180f9c22b507ab29a8' => 
    array (
      0 => 'D:\\wamp\\www\\1561\\prestashop\\modules\\blockadvertising\\blockadvertising.tpl',
      1 => 1384783796,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '2288252cb12da12c564-64013671',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'adv_link' => 0,
    'adv_title' => 0,
    'image' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_52cb12da15fa86_35400653',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52cb12da15fa86_35400653')) {function content_52cb12da15fa86_35400653($_smarty_tpl) {?>

<!-- MODULE Block advertising -->
<div class="advertising_block">
	<a href="<?php echo $_smarty_tpl->tpl_vars['adv_link']->value;?>
" title="<?php echo $_smarty_tpl->tpl_vars['adv_title']->value;?>
"><img src="<?php echo $_smarty_tpl->tpl_vars['image']->value;?>
" alt="<?php echo $_smarty_tpl->tpl_vars['adv_title']->value;?>
" title="<?php echo $_smarty_tpl->tpl_vars['adv_title']->value;?>
" width="155"  height="163" /></a>
</div>
<!-- /MODULE Block advertising -->
<?php }} ?>