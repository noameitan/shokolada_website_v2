<?php /* Smarty version Smarty-3.1.14, created on 2014-01-15 18:32:30
         compiled from "D:\wamp\www\1561\prestashop\modules\stthemeeditor\views\templates\hook\stthemeeditor-header.tpl" */ ?>
<?php /*%%SmartyHeaderCode:906052d6b81e0c83f5-11338152%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '4f2721183c36fdbb53b7246cb99c87b856fec977' => 
    array (
      0 => 'D:\\wamp\\www\\1561\\prestashop\\modules\\stthemeeditor\\views\\templates\\hook\\stthemeeditor-header.tpl',
      1 => 1389102139,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '906052d6b81e0c83f5-11338152',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'sttheme' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_52d6b81e18a6d7_90640317',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52d6b81e18a6d7_90640317')) {function content_52d6b81e18a6d7_90640317($_smarty_tpl) {?>
<?php if (isset($_smarty_tpl->tpl_vars['sttheme']->value)){?>
<script type="text/javascript">
// <![CDATA[
	var st_responsive = <?php echo $_smarty_tpl->tpl_vars['sttheme']->value['responsive'];?>
;
	var st_responsive_max = <?php echo $_smarty_tpl->tpl_vars['sttheme']->value['responsive_max'];?>
;
	var st_addtocart_animation = <?php if (isset($_smarty_tpl->tpl_vars['sttheme']->value['addtocart_animation'])&&$_smarty_tpl->tpl_vars['sttheme']->value['addtocart_animation']){?><?php echo $_smarty_tpl->tpl_vars['sttheme']->value['addtocart_animation'];?>
<?php }else{ ?>0<?php }?>;
//]]>
</script>
<?php }?>
<?php }} ?>