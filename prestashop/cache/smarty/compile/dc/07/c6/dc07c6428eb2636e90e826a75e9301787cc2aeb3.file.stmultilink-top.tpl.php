<?php /* Smarty version Smarty-3.1.14, created on 2014-01-19 00:21:11
         compiled from "D:\wamp\www\1561\prestashop\modules\stmultilink\views\templates\hook\stmultilink-top.tpl" */ ?>
<?php /*%%SmartyHeaderCode:2875252dafe573c0172-14034239%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'dc07c6428eb2636e90e826a75e9301787cc2aeb3' => 
    array (
      0 => 'D:\\wamp\\www\\1561\\prestashop\\modules\\stmultilink\\views\\templates\\hook\\stmultilink-top.tpl',
      1 => 1389102242,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '2875252dafe573c0172-14034239',
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
  'unifunc' => 'content_52dafe57526677_04814767',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52dafe57526677_04814767')) {function content_52dafe57526677_04814767($_smarty_tpl) {?><?php if (!is_callable('smarty_modifier_escape')) include 'D:\\wamp\\www\\1561\\prestashop\\tools\\smarty\\plugins\\modifier.escape.php';
?>

<!-- Block stlinkgroups top module -->
<?php  $_smarty_tpl->tpl_vars['link_group'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['link_group']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['link_groups']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
 $_smarty_tpl->tpl_vars['link_group']->index=-1;
foreach ($_from as $_smarty_tpl->tpl_vars['link_group']->key => $_smarty_tpl->tpl_vars['link_group']->value){
$_smarty_tpl->tpl_vars['link_group']->_loop = true;
 $_smarty_tpl->tpl_vars['link_group']->index++;
 $_smarty_tpl->tpl_vars['link_group']->first = $_smarty_tpl->tpl_vars['link_group']->index === 0;
?>
    <dl id="multilink_<?php echo $_smarty_tpl->tpl_vars['link_group']->value['id_st_multi_link_group'];?>
" class="stlinkgroups_top <?php if ($_smarty_tpl->tpl_vars['link_group']->value['location']==9){?>fl<?php }else{ ?>fr<?php }?> dropdown_wrap <?php if ($_smarty_tpl->tpl_vars['link_group']->first){?>first-item<?php }?> <?php if ($_smarty_tpl->tpl_vars['link_group']->value['hide_on_mobile']){?> hidden-phone <?php }?>">
        <dt class="dropdown_tri">
        <?php if ($_smarty_tpl->tpl_vars['link_group']->value['url']){?>
            <a href="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['link_group']->value['url'], ENT_QUOTES, 'UTF-8', true);?>
" title="<?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['link_group']->value['name'], 'htmlall', 'UTF-8');?>
" class="dropdown_tri_inner" rel="nofollow">
        <?php }else{ ?>
            <div class="dropdown_tri_inner">
        <?php }?>
        <?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['link_group']->value['name'], 'htmlall', 'UTF-8');?>

        <?php if (is_array($_smarty_tpl->tpl_vars['link_group']->value['links'])&&count($_smarty_tpl->tpl_vars['link_group']->value['links'])){?><b></b><?php }?>
        <?php if ($_smarty_tpl->tpl_vars['link_group']->value['url']){?>
            </a>
        <?php }else{ ?>
            </div>
        <?php }?>
        </dt>
        <dd class="dropdown_list dropdown_right">
        <ul>
        <?php if ($_smarty_tpl->tpl_vars['link_group']->value['links']){?>
		<?php  $_smarty_tpl->tpl_vars['link'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['link']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['link_group']->value['links']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['link']->key => $_smarty_tpl->tpl_vars['link']->value){
$_smarty_tpl->tpl_vars['link']->_loop = true;
?>
			<li>
        		<a href="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['link']->value['url'], ENT_QUOTES, 'UTF-8', true);?>
" title="<?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['link']->value['title'], 'html', 'UTF-8');?>
" rel="nofollow" <?php if ($_smarty_tpl->tpl_vars['link']->value['new_window']){?> target="_blank" <?php }?>>
                    <?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['link']->value['label'], 'html', 'UTF-8');?>

        		</a>
			</li>
		<?php } ?>
		<?php }?>
		</ul>
        </dd>
    </dl>
<?php } ?>
<!-- /Block stlinkgroups top module --><?php }} ?>