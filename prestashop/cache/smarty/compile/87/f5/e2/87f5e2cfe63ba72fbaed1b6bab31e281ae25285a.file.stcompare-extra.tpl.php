<?php /* Smarty version Smarty-3.1.14, created on 2014-01-07 16:42:23
         compiled from "D:\wamp\www\1561\prestashop\modules\stcompare\views\templates\hook\stcompare-extra.tpl" */ ?>
<?php /*%%SmartyHeaderCode:1753752cc124f480959-51130096%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '87f5e2cfe63ba72fbaed1b6bab31e281ae25285a' => 
    array (
      0 => 'D:\\wamp\\www\\1561\\prestashop\\modules\\stcompare\\views\\templates\\hook\\stcompare-extra.tpl',
      1 => 1389102213,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1753752cc124f480959-51130096',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'comparator_max_item' => 0,
    'compareProducts' => 0,
    'product' => 0,
    'product_cover' => 0,
    'link' => 0,
    'product_link' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_52cc124f573bf4_38632559',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52cc124f573bf4_38632559')) {function content_52cc124f573bf4_38632559($_smarty_tpl) {?><?php if (!is_callable('smarty_modifier_escape')) include 'D:\\wamp\\www\\1561\\prestashop\\tools\\smarty\\plugins\\modifier.escape.php';
?>

<?php if (isset($_smarty_tpl->tpl_vars['comparator_max_item']->value)&&$_smarty_tpl->tpl_vars['comparator_max_item']->value){?>
    <div class="buttons_bottom_block">
        <a href="javascript:;" class="add_to_compare compare_button <?php if (isset($_smarty_tpl->tpl_vars['compareProducts']->value)&&in_array($_smarty_tpl->tpl_vars['product']->value->id,$_smarty_tpl->tpl_vars['compareProducts']->value)){?>active<?php }?>" rel="nofollow" title="<?php echo smartyTranslate(array('s'=>'Add to compare','mod'=>'stcompare'),$_smarty_tpl);?>
" data-product-id="<?php echo intval($_smarty_tpl->tpl_vars['product']->value->id);?>
" data-product-name="<?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['product']->value->name, 'htmlall', 'UTF-8');?>
" data-product-cover="<?php echo $_smarty_tpl->tpl_vars['link']->value->getImageLink($_smarty_tpl->tpl_vars['product']->value->link_rewrite,$_smarty_tpl->tpl_vars['product_cover']->value,'medium_default');?>
"  data-product-link="<?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['product_link']->value, 'htmlall', 'UTF-8');?>
" ><i class="icon-ajust icon-1x icon-mar-lr2"></i><span><?php echo smartyTranslate(array('s'=>'Add to compare','mod'=>'stcompare'),$_smarty_tpl);?>
</span></a>
    </div>
<?php }?><?php }} ?>