<?php /* Smarty version Smarty-3.1.14, created on 2014-01-07 16:01:24
         compiled from "D:\wamp\www\1561\prestashop\modules\stmegamenu\views\templates\hook\stmegamenu.tpl" */ ?>
<?php /*%%SmartyHeaderCode:2139452cc08b4308c75-60697593%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '0c19242fb698279ba2e667f5aa84ab9030b81917' => 
    array (
      0 => 'D:\\wamp\\www\\1561\\prestashop\\modules\\stmegamenu\\views\\templates\\hook\\stmegamenu.tpl',
      1 => 1389102184,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '2139452cc08b4308c75-60697593',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'megamenu_displaytop' => 0,
    'menu_pc' => 0,
    'menu_mob' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_52cc08b43978a1_22362801',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52cc08b43978a1_22362801')) {function content_52cc08b43978a1_22362801($_smarty_tpl) {?>
<!-- Menu -->
<?php if (!isset($_smarty_tpl->tpl_vars['megamenu_displaytop']->value)||!$_smarty_tpl->tpl_vars['megamenu_displaytop']->value){?>
<div class="wide_container">
<div id="st_mega_menu_container">
<div class="container">
<?php }?>
<div class="row">
<nav id="st_mega_menu_wrap" role="navigation" class="clearBoth <?php if (!isset($_smarty_tpl->tpl_vars['megamenu_displaytop']->value)||!$_smarty_tpl->tpl_vars['megamenu_displaytop']->value){?>span12<?php }else{ ?>span8<?php }?>">
    <?php echo $_smarty_tpl->tpl_vars['menu_pc']->value;?>

	<a id="stmobilemenu_tri" href="javascript:;" class="visible-tablet visible-phone">
        <i class="icon-menu icon-1x"></i>
        <span><?php echo smartyTranslate(array('s'=>"Menu",'mod'=>'stmegamenu'),$_smarty_tpl);?>
</span>
	</a>
    <?php echo $_smarty_tpl->tpl_vars['menu_mob']->value;?>

</nav>
</div>
<?php if (!isset($_smarty_tpl->tpl_vars['megamenu_displaytop']->value)||!$_smarty_tpl->tpl_vars['megamenu_displaytop']->value){?>
</div>
</div>
</div>
<?php }?>
<!--/ Menu --><?php }} ?>