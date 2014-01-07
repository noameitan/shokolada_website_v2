<?php /* Smarty version Smarty-3.1.14, created on 2014-01-07 16:01:26
         compiled from "D:\wamp\www\1561\prestashop\modules\steasycontent\views\templates\hook\steasycontent.tpl" */ ?>
<?php /*%%SmartyHeaderCode:1957652cc08b6192374-28104368%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '6ae21efea109f4ec53fa0f4e201e9f5e0ab79c1f' => 
    array (
      0 => 'D:\\wamp\\www\\1561\\prestashop\\modules\\steasycontent\\views\\templates\\hook\\steasycontent.tpl',
      1 => 1389102160,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1957652cc08b6192374-28104368',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'easy_content' => 0,
    'ec' => 0,
    'is_inline_content' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_52cc08b62827e5_43769642',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52cc08b62827e5_43769642')) {function content_52cc08b62827e5_43769642($_smarty_tpl) {?><?php if (!is_callable('smarty_modifier_escape')) include 'D:\\wamp\\www\\1561\\prestashop\\tools\\smarty\\plugins\\modifier.escape.php';
?>
<!-- MODULE st easy content -->
<?php if (count($_smarty_tpl->tpl_vars['easy_content']->value)>0){?>
    <?php  $_smarty_tpl->tpl_vars['ec'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['ec']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['easy_content']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['ec']->key => $_smarty_tpl->tpl_vars['ec']->value){
$_smarty_tpl->tpl_vars['ec']->_loop = true;
?>
    <aside id="easycontent_<?php echo $_smarty_tpl->tpl_vars['ec']->value['id_st_easy_content'];?>
" class="<?php if ($_smarty_tpl->tpl_vars['ec']->value['hide_on_mobile']){?>hidden-phone<?php }?> <?php if (!isset($_smarty_tpl->tpl_vars['is_inline_content']->value)){?>block<?php }?> easycontent">
        <?php if ($_smarty_tpl->tpl_vars['ec']->value['title']){?>
        <h4 class="title_block">
            <?php if ($_smarty_tpl->tpl_vars['ec']->value['url']){?><a href="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['ec']->value['url'], ENT_QUOTES, 'UTF-8', true);?>
" title="<?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['ec']->value['title'], 'html', 'UTF-8');?>
"><?php }?>
            <?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['ec']->value['title'], 'html', 'UTF-8');?>

            <?php if ($_smarty_tpl->tpl_vars['ec']->value['url']){?></a><?php }?>
        </h4>
        <?php }?>
    	<div class="block_content">
            <?php echo stripslashes($_smarty_tpl->tpl_vars['ec']->value['text']);?>

    	</div>
    </aside>
    <?php } ?>
<?php }?>
<!-- MODULE st easy content --><?php }} ?>