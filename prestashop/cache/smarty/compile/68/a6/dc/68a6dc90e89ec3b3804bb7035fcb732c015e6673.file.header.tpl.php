<?php /* Smarty version Smarty-3.1.14, created on 2014-01-19 00:21:10
         compiled from "D:\wamp\www\1561\prestashop\modules\stblog\views\templates\hook\header.tpl" */ ?>
<?php /*%%SmartyHeaderCode:1624652dafe560302b6-88184718%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '68a6dc90e89ec3b3804bb7035fcb732c015e6673' => 
    array (
      0 => 'D:\\wamp\\www\\1561\\prestashop\\modules\\stblog\\views\\templates\\hook\\header.tpl',
      1 => 1389102218,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1624652dafe560302b6-88184718',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'ss_slideshow' => 0,
    'ss_s_speed' => 0,
    'ss_a_speed' => 0,
    'ss_pause' => 0,
    'ss_loop' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_52dafe560666b4_37209853',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52dafe560666b4_37209853')) {function content_52dafe560666b4_37209853($_smarty_tpl) {?>
<script type="text/javascript">
// <![CDATA[

blog_flexslider_options = {
    slideshow: <?php echo $_smarty_tpl->tpl_vars['ss_slideshow']->value;?>
,
    slideshowSpeed: <?php echo $_smarty_tpl->tpl_vars['ss_s_speed']->value;?>
,
    animationSpeed: <?php echo $_smarty_tpl->tpl_vars['ss_a_speed']->value;?>
,
    pauseOnHover: <?php echo $_smarty_tpl->tpl_vars['ss_pause']->value;?>
,
    animationLoop: <?php echo $_smarty_tpl->tpl_vars['ss_loop']->value;?>

};
//]]>
</script>
<?php }} ?>