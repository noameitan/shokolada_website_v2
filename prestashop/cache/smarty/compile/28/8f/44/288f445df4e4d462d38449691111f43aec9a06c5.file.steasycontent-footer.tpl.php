<?php /* Smarty version Smarty-3.1.14, created on 2014-01-19 00:21:11
         compiled from "D:\wamp\www\1561\prestashop\modules\steasycontent\views\templates\hook\steasycontent-footer.tpl" */ ?>
<?php /*%%SmartyHeaderCode:2059152dafe57830825-55131148%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '288f445df4e4d462d38449691111f43aec9a06c5' => 
    array (
      0 => 'D:\\wamp\\www\\1561\\prestashop\\modules\\steasycontent\\views\\templates\\hook\\steasycontent-footer.tpl',
      1 => 1389102160,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '2059152dafe57830825-55131148',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'easy_content' => 0,
    'ec' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_52dafe5790c2c8_46369731',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52dafe5790c2c8_46369731')) {function content_52dafe5790c2c8_46369731($_smarty_tpl) {?><?php if (!is_callable('smarty_modifier_escape')) include 'D:\\wamp\\www\\1561\\prestashop\\tools\\smarty\\plugins\\modifier.escape.php';
?>
<!-- MODULE st easy content -->
<?php if (count($_smarty_tpl->tpl_vars['easy_content']->value)>0){?>
    <?php  $_smarty_tpl->tpl_vars['ec'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['ec']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['easy_content']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['ec']->key => $_smarty_tpl->tpl_vars['ec']->value){
$_smarty_tpl->tpl_vars['ec']->_loop = true;
?>
    <section id="easycontent_<?php echo $_smarty_tpl->tpl_vars['ec']->value['id_st_easy_content'];?>
" class="<?php if ($_smarty_tpl->tpl_vars['ec']->value['hide_on_mobile']){?>hidden-phone<?php }?> easycontent span<?php if ($_smarty_tpl->tpl_vars['ec']->value['span']){?><?php echo $_smarty_tpl->tpl_vars['ec']->value['span'];?>
<?php }else{ ?>3<?php }?> block">
        <?php if ($_smarty_tpl->tpl_vars['ec']->value['title']){?>
        <a href="javascript:;" class="opener visible-phone">&nbsp;</a>
        <h4 class="title_block">
            <?php if ($_smarty_tpl->tpl_vars['ec']->value['url']){?><a href="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['ec']->value['url'], ENT_QUOTES, 'UTF-8', true);?>
" title="<?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['ec']->value['title'], 'html', 'UTF-8');?>
"><?php }?>
            <?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['ec']->value['title'], 'html', 'UTF-8');?>

            <?php if ($_smarty_tpl->tpl_vars['ec']->value['url']){?></a><?php }?>
        </h4>
        <?php }?>
    	<div class="footer_block_content <?php if (!$_smarty_tpl->tpl_vars['ec']->value['title']){?>keep_open<?php }?>">
            <?php echo stripslashes($_smarty_tpl->tpl_vars['ec']->value['text']);?>

    	</div>
    </section>
    <?php } ?>
<?php }?>
<!-- MODULE st easy content --><?php }} ?>