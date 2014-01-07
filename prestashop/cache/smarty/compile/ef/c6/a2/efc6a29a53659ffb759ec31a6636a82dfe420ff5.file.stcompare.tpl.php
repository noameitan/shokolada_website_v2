<?php /* Smarty version Smarty-3.1.14, created on 2014-01-07 16:01:28
         compiled from "D:\wamp\www\1561\prestashop\modules\stcompare\views\templates\hook\stcompare.tpl" */ ?>
<?php /*%%SmartyHeaderCode:2655652cc08b85cebe4-63948470%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'efc6a29a53659ffb759ec31a6636a82dfe420ff5' => 
    array (
      0 => 'D:\\wamp\\www\\1561\\prestashop\\modules\\stcompare\\views\\templates\\hook\\stcompare.tpl',
      1 => 1389102213,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '2655652cc08b85cebe4-63948470',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'link' => 0,
    'compare_nbr' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_52cc08b866d955_97045875',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52cc08b866d955_97045875')) {function content_52cc08b866d955_97045875($_smarty_tpl) {?>
<!-- MODULE st compare -->
<section id="rightbar_compare" class="rightbar_wrap">
    <a id="rightbar-product_compare" class="rightbar_tri icon_wrap" href="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['link']->value->getPageLink('products-comparison'), ENT_QUOTES, 'UTF-8', true);?>
" title="<?php echo smartyTranslate(array('s'=>"Compare Products",'mod'=>'stcompare'),$_smarty_tpl);?>
">
        <i class="icon-ajust icon-0x"></i>
        <span class="icon_text"><?php echo smartyTranslate(array('s'=>'Compare','mod'=>'stcompare'),$_smarty_tpl);?>
</span>
        <span class="compare_quantity amount_circle <?php if (!isset($_smarty_tpl->tpl_vars['compare_nbr']->value)||!$_smarty_tpl->tpl_vars['compare_nbr']->value){?> hidden <?php }?><?php if ((isset($_smarty_tpl->tpl_vars['compare_nbr']->value)&&$_smarty_tpl->tpl_vars['compare_nbr']->value>9)){?> dozens <?php }?>"><?php if (isset($_smarty_tpl->tpl_vars['compare_nbr']->value)&&$_smarty_tpl->tpl_vars['compare_nbr']->value){?><?php echo $_smarty_tpl->tpl_vars['compare_nbr']->value;?>
<?php }?></span>
    </a>
</section>
<!-- /MODULE st compare --><?php }} ?>