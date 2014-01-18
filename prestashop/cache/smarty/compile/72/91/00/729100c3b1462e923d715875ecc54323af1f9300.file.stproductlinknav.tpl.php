<?php /* Smarty version Smarty-3.1.14, created on 2014-01-19 00:21:16
         compiled from "D:\wamp\www\1561\prestashop\modules\stproductlinknav\views\templates\hook\stproductlinknav.tpl" */ ?>
<?php /*%%SmartyHeaderCode:2008552dafe5cc19649-63876382%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '729100c3b1462e923d715875ecc54323af1f9300' => 
    array (
      0 => 'D:\\wamp\\www\\1561\\prestashop\\modules\\stproductlinknav\\views\\templates\\hook\\stproductlinknav.tpl',
      1 => 1389102212,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '2008552dafe5cc19649-63876382',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'nav_product' => 0,
    'link' => 0,
    'nav' => 0,
    'product_link' => 0,
    'mediumSize' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_52dafe5cd8a502_86596334',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52dafe5cd8a502_86596334')) {function content_52dafe5cd8a502_86596334($_smarty_tpl) {?><?php if (!is_callable('smarty_modifier_escape')) include 'D:\\wamp\\www\\1561\\prestashop\\tools\\smarty\\plugins\\modifier.escape.php';
?>
<!-- MODULE St Product Link Nav  -->
<section class="product_link_nav rightbar_wrap">
    <?php $_smarty_tpl->tpl_vars['product_link'] = new Smarty_variable($_smarty_tpl->tpl_vars['link']->value->getProductLink($_smarty_tpl->tpl_vars['nav_product']->value['id_product'],$_smarty_tpl->tpl_vars['nav_product']->value['link_rewrite'],$_smarty_tpl->tpl_vars['nav_product']->value['category'],$_smarty_tpl->tpl_vars['nav_product']->value['ean13']), null, 0);?> 
    <a id="rightbar-product_link_nav_<?php echo $_smarty_tpl->tpl_vars['nav']->value;?>
" class="rightbar_tri icon_wrap" href="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['product_link']->value, ENT_QUOTES, 'UTF-8', true);?>
" title="<?php if ($_smarty_tpl->tpl_vars['nav']->value=='prev'){?><?php echo smartyTranslate(array('s'=>'Previous product','mod'=>'stproductlinknav'),$_smarty_tpl);?>
<?php }?><?php if ($_smarty_tpl->tpl_vars['nav']->value=='next'){?><?php echo smartyTranslate(array('s'=>'Next product','mod'=>'stproductlinknav'),$_smarty_tpl);?>
<?php }?>"><i class="icon-<?php if ($_smarty_tpl->tpl_vars['nav']->value=='prev'){?>left<?php }?><?php if ($_smarty_tpl->tpl_vars['nav']->value=='next'){?>right<?php }?> icon-0x"></i><span class="icon_text"><?php if ($_smarty_tpl->tpl_vars['nav']->value=='prev'){?><?php echo smartyTranslate(array('s'=>'Prev','mod'=>'stproductlinknav'),$_smarty_tpl);?>
<?php }?><?php if ($_smarty_tpl->tpl_vars['nav']->value=='next'){?><?php echo smartyTranslate(array('s'=>'Next','mod'=>'stproductlinknav'),$_smarty_tpl);?>
<?php }?></span></a>
    <div class="rightbar_content">
        <a href="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['product_link']->value, ENT_QUOTES, 'UTF-8', true);?>
" title="<?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['nav_product']->value['name'], 'html', 'UTF-8');?>
" rel="nofollow"><img src="<?php echo $_smarty_tpl->tpl_vars['link']->value->getImageLink($_smarty_tpl->tpl_vars['nav_product']->value['link_rewrite'],(($_smarty_tpl->tpl_vars['nav_product']->value['id_product']).('-')).($_smarty_tpl->tpl_vars['nav_product']->value['id_image']),'medium_default');?>
" alt="<?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['nav_product']->value['name'], 'html', 'UTF-8');?>
" width="<?php echo $_smarty_tpl->tpl_vars['mediumSize']->value['width'];?>
" height="<?php echo $_smarty_tpl->tpl_vars['mediumSize']->value['height'];?>
" class="img-polaroid product_link_nav_preview" /></a>
    </div>
</section>
<!-- /MODULE St Product Link Nav --><?php }} ?>