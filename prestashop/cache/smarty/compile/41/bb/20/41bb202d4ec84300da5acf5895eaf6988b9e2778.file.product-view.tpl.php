<?php /* Smarty version Smarty-3.1.14, created on 2014-01-15 18:32:33
         compiled from "D:\wamp\www\1561\prestashop\themes\transformer\product-view.tpl" */ ?>
<?php /*%%SmartyHeaderCode:1074152d6b821d6bb58-25880286%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '41bb202d4ec84300da5acf5895eaf6988b9e2778' => 
    array (
      0 => 'D:\\wamp\\www\\1561\\prestashop\\themes\\transformer\\product-view.tpl',
      1 => 1389102133,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1074152d6b821d6bb58-25880286',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'cook_veiwmode' => 0,
    'viewmode' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_52d6b821deb982_34627205',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52d6b821deb982_34627205')) {function content_52d6b821deb982_34627205($_smarty_tpl) {?>
<?php if (isset($_smarty_tpl->tpl_vars['cook_veiwmode']->value)&&$_smarty_tpl->tpl_vars['cook_veiwmode']->value!=''){?>
    <?php $_smarty_tpl->tpl_vars['viewmode'] = new Smarty_variable($_smarty_tpl->tpl_vars['cook_veiwmode']->value, null, 0);?>
<?php }else{ ?>
    <?php $_smarty_tpl->tpl_vars['viewmode'] = new Smarty_variable('grid_view', null, 0);?>
<?php }?>
<div class="viewmode fl clearfix">
    <a href="javascript:;" rel="nofollow" class="grid_view <?php if ($_smarty_tpl->tpl_vars['viewmode']->value=='grid_view'){?> active <?php }?>" title="<?php echo smartyTranslate(array('s'=>'Grid view'),$_smarty_tpl);?>
"><i class="icon-th icon-mar-lr2"></i></a>
    <a href="javascript:;" rel="nofollow" class="list_view <?php if ($_smarty_tpl->tpl_vars['viewmode']->value=='list_view'){?> active <?php }?>" title="<?php echo smartyTranslate(array('s'=>'List view'),$_smarty_tpl);?>
"><i class="icon-th-list icon-mar-lr2"></i></a>
</div><?php }} ?>