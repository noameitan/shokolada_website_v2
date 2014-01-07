<?php /* Smarty version Smarty-3.1.14, created on 2014-01-07 16:01:26
         compiled from "D:\wamp\www\1561\prestashop\modules\stmultilink\views\templates\hook\stmultilink-footer.tpl" */ ?>
<?php /*%%SmartyHeaderCode:2271152cc08b685f301-42443958%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'dec69d0db8c96aef2f0e90390631f568e54a8699' => 
    array (
      0 => 'D:\\wamp\\www\\1561\\prestashop\\modules\\stmultilink\\views\\templates\\hook\\stmultilink-footer.tpl',
      1 => 1389102242,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '2271152cc08b685f301-42443958',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'link_groups' => 0,
    'link_group' => 0,
    'link' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_52cc08b698dae4_32922327',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52cc08b698dae4_32922327')) {function content_52cc08b698dae4_32922327($_smarty_tpl) {?><?php if (!is_callable('smarty_modifier_escape')) include 'D:\\wamp\\www\\1561\\prestashop\\tools\\smarty\\plugins\\modifier.escape.php';
?>

<!-- Block stlinkgroups footer module -->
<?php  $_smarty_tpl->tpl_vars['link_group'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['link_group']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['link_groups']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['link_group']->key => $_smarty_tpl->tpl_vars['link_group']->value){
$_smarty_tpl->tpl_vars['link_group']->_loop = true;
?>
<section id="multilink_<?php echo $_smarty_tpl->tpl_vars['link_group']->value['id_st_multi_link_group'];?>
" class="stlinkgroups_links_footer span3 block <?php if ($_smarty_tpl->tpl_vars['link_group']->value['hide_on_mobile']){?> hidden-phone <?php }?>">
    <a href="javascript:;" class="opener visible-phone">&nbsp;</a>
    <h4 class="title_block">
        <?php if ($_smarty_tpl->tpl_vars['link_group']->value['url']){?><a href="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['link_group']->value['url'], ENT_QUOTES, 'UTF-8', true);?>
" title="<?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['link_group']->value['name'], 'htmlall', 'UTF-8');?>
" rel="nofollow"><?php }?>
        <?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['link_group']->value['name'], 'htmlall', 'UTF-8');?>

        <?php if ($_smarty_tpl->tpl_vars['link_group']->value['url']){?></a><?php }?>
    </h4>
    <ul class="footer_block_content bullet">
    <?php if ($_smarty_tpl->tpl_vars['link_group']->value['links']){?>
    <?php  $_smarty_tpl->tpl_vars['link'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['link']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['link_group']->value['links']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['link']->key => $_smarty_tpl->tpl_vars['link']->value){
$_smarty_tpl->tpl_vars['link']->_loop = true;
?>
    	<li>
    		<a href="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['link']->value['url'], ENT_QUOTES, 'UTF-8', true);?>
" title="<?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['link']->value['title'], 'htmlall', 'UTF-8');?>
" rel="nofollow" <?php if ($_smarty_tpl->tpl_vars['link']->value['new_window']){?> target="_blank" <?php }?>>
                &raquo;&nbsp;&nbsp;<?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['link']->value['label'], 'htmlall', 'UTF-8');?>

    		</a>
    	</li>
    <?php } ?>
    <?php }?>
    </ul>
</section>
<?php } ?>
<!-- /Block stlinkgroups footer module --><?php }} ?>