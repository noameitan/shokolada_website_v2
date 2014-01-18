<?php /* Smarty version Smarty-3.1.14, created on 2014-01-19 00:21:09
         compiled from "D:\wamp\www\1561\prestashop\modules\feeder\feederHeader.tpl" */ ?>
<?php /*%%SmartyHeaderCode:887452dafe55cffea3-52750674%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '23ae4013bff3d7cbf2f8d52c3ac9f5bd33a5bf27' => 
    array (
      0 => 'D:\\wamp\\www\\1561\\prestashop\\modules\\feeder\\feederHeader.tpl',
      1 => 1384783796,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '887452dafe55cffea3-52750674',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'meta_title' => 0,
    'feedUrl' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_52dafe55d453a9_33818664',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52dafe55d453a9_33818664')) {function content_52dafe55d453a9_33818664($_smarty_tpl) {?><?php if (!is_callable('smarty_modifier_escape')) include 'D:\\wamp\\www\\1561\\prestashop\\tools\\smarty\\plugins\\modifier.escape.php';
?>

<link rel="alternate" type="application/rss+xml" title="<?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['meta_title']->value, 'html', 'UTF-8');?>
" href="<?php echo $_smarty_tpl->tpl_vars['feedUrl']->value;?>
" /><?php }} ?>