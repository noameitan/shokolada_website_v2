<?php /* Smarty version Smarty-3.1.14, created on 2014-01-15 18:01:06
         compiled from "D:\wamp\www\1561\prestashop\modules\steasytabs\views\templates\hook\steasytabs.tpl" */ ?>
<?php /*%%SmartyHeaderCode:1056152d6b0c2c12c86-42044822%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '3422e05ed5378cde13e44dd200f546f1d02ed0bc' => 
    array (
      0 => 'D:\\wamp\\www\\1561\\prestashop\\modules\\steasytabs\\views\\templates\\hook\\steasytabs.tpl',
      1 => 1389102210,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1056152d6b0c2c12c86-42044822',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'tabsContent' => 0,
    'tc' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_52d6b0c2c5d3a3_62675190',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52d6b0c2c5d3a3_62675190')) {function content_52d6b0c2c5d3a3_62675190($_smarty_tpl) {?>

<!-- Block extra tabs -->
<?php  $_smarty_tpl->tpl_vars['tc'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['tc']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['tabsContent']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['tc']->key => $_smarty_tpl->tpl_vars['tc']->value){
$_smarty_tpl->tpl_vars['tc']->_loop = true;
?>
<div id="idTab31<?php echo $_smarty_tpl->tpl_vars['tc']->value['id_st_easy_tabs'];?>
" class="product_accordion">
    <a href="javascript:;" class="opener visible-phone">&nbsp;</a>
    <div class="product_accordion_title visible-phone">
        <?php echo $_smarty_tpl->tpl_vars['tc']->value['title'];?>

    </div>
	<div class="pa_content steasytabs_content">
	   <?php echo $_smarty_tpl->tpl_vars['tc']->value['content'];?>

	</div>
</div>
<?php } ?>
<!-- /Block extra tabs --><?php }} ?>