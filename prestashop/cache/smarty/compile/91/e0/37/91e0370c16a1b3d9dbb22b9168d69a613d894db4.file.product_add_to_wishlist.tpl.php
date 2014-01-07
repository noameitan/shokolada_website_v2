<?php /* Smarty version Smarty-3.1.14, created on 2014-01-07 16:01:24
         compiled from "D:\wamp\www\1561\prestashop\modules\stthemeeditor\views\templates\hook\product_add_to_wishlist.tpl" */ ?>
<?php /*%%SmartyHeaderCode:428752cc08b4dc6220-92522519%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '91e0370c16a1b3d9dbb22b9168d69a613d894db4' => 
    array (
      0 => 'D:\\wamp\\www\\1561\\prestashop\\modules\\stthemeeditor\\views\\templates\\hook\\product_add_to_wishlist.tpl',
      1 => 1389102139,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '428752cc08b4dc6220-92522519',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'logged' => 0,
    'link' => 0,
    'id_product' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_52cc08b4e16526_85545587',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52cc08b4e16526_85545587')) {function content_52cc08b4e16526_85545587($_smarty_tpl) {?>
<a href="<?php if ($_smarty_tpl->tpl_vars['logged']->value){?>javascript:;<?php }else{ ?><?php echo htmlspecialchars($_smarty_tpl->tpl_vars['link']->value->getPageLink('my-account',true), ENT_QUOTES, 'UTF-8', true);?>
<?php }?>" title="<?php echo smartyTranslate(array('s'=>'Add to Wishlist','mod'=>'stthemeeditor'),$_smarty_tpl);?>
" class="add_to_wishlist" <?php if ($_smarty_tpl->tpl_vars['logged']->value){?>onclick="WishlistCart('wishlist_block_list', 'add', '<?php echo intval($_smarty_tpl->tpl_vars['id_product']->value);?>
', '', 1,this); return false;"<?php }?> rel="nofollow"><i class="icon-heart icon-1x icon-mar-lr2"></i><span><?php echo smartyTranslate(array('s'=>'Add to Wishlist','mod'=>'stthemeeditor'),$_smarty_tpl);?>
</span></a>
<?php }} ?>