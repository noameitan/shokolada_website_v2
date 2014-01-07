<?php /* Smarty version Smarty-3.1.14, created on 2014-01-07 16:01:25
         compiled from "D:\wamp\www\1561\prestashop\modules\stbanner\views\templates\hook\stbanner.tpl" */ ?>
<?php /*%%SmartyHeaderCode:1713052cc08b59e13e4-48267350%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'a6d9b3c1986f44b667703943edb3c1d221ce7b4c' => 
    array (
      0 => 'D:\\wamp\\www\\1561\\prestashop\\modules\\stbanner\\views\\templates\\hook\\stbanner.tpl',
      1 => 1389102197,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1713052cc08b59e13e4-48267350',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'group' => 0,
    'banner' => 0,
    'layout' => 0,
    'banner_count' => 0,
    'foo' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_52cc08b5c15dd1_76442515',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52cc08b5c15dd1_76442515')) {function content_52cc08b5c15dd1_76442515($_smarty_tpl) {?><?php if (!is_callable('smarty_modifier_escape')) include 'D:\\wamp\\www\\1561\\prestashop\\tools\\smarty\\plugins\\modifier.escape.php';
?><!-- MODULE st banner -->
<?php if (isset($_smarty_tpl->tpl_vars['group']->value)){?>
    <?php  $_smarty_tpl->tpl_vars['banner'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['banner']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['group']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['banner']->key => $_smarty_tpl->tpl_vars['banner']->value){
$_smarty_tpl->tpl_vars['banner']->_loop = true;
?>
        <?php if (isset($_smarty_tpl->tpl_vars['banner']->value['banner'])){?>
            <?php $_smarty_tpl->tpl_vars['banner_count'] = new Smarty_variable(count($_smarty_tpl->tpl_vars['layout']->value[$_smarty_tpl->tpl_vars['banner']->value['layout']]), null, 0);?>
            <?php if ($_smarty_tpl->tpl_vars['banner']->value['location']==6){?><div class="container <?php if ($_smarty_tpl->tpl_vars['banner']->value['hide_on_mobile']){?> hidden-phone <?php }?>"><div class="row"><div class="span12"><?php }?>
            <div id="banner_<?php echo $_smarty_tpl->tpl_vars['banner']->value['id_st_banner_group'];?>
" class="col<?php echo $_smarty_tpl->tpl_vars['banner_count']->value;?>
-set banner_block mar_b2 <?php if ($_smarty_tpl->tpl_vars['banner']->value['hide_on_mobile']){?> hidden-phone <?php }?>">
                <?php $_smarty_tpl->tpl_vars['foo'] = new Smarty_Variable;$_smarty_tpl->tpl_vars['foo']->step = 1;$_smarty_tpl->tpl_vars['foo']->total = (int)ceil(($_smarty_tpl->tpl_vars['foo']->step > 0 ? $_smarty_tpl->tpl_vars['banner_count']->value-1+1 - (0) : 0-($_smarty_tpl->tpl_vars['banner_count']->value-1)+1)/abs($_smarty_tpl->tpl_vars['foo']->step));
if ($_smarty_tpl->tpl_vars['foo']->total > 0){
for ($_smarty_tpl->tpl_vars['foo']->value = 0, $_smarty_tpl->tpl_vars['foo']->iteration = 1;$_smarty_tpl->tpl_vars['foo']->iteration <= $_smarty_tpl->tpl_vars['foo']->total;$_smarty_tpl->tpl_vars['foo']->value += $_smarty_tpl->tpl_vars['foo']->step, $_smarty_tpl->tpl_vars['foo']->iteration++){
$_smarty_tpl->tpl_vars['foo']->first = $_smarty_tpl->tpl_vars['foo']->iteration == 1;$_smarty_tpl->tpl_vars['foo']->last = $_smarty_tpl->tpl_vars['foo']->iteration == $_smarty_tpl->tpl_vars['foo']->total;?>
                    <div class="<?php echo $_smarty_tpl->tpl_vars['layout']->value[$_smarty_tpl->tpl_vars['banner']->value['layout']][$_smarty_tpl->tpl_vars['foo']->value];?>
 text-center">
                        <?php if (isset($_smarty_tpl->tpl_vars['banner']->value['banner'][$_smarty_tpl->tpl_vars['foo']->value])){?>
                            <?php if ($_smarty_tpl->tpl_vars['banner']->value['banner'][$_smarty_tpl->tpl_vars['foo']->value]['url']){?>
                                <a href="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['banner']->value['banner'][$_smarty_tpl->tpl_vars['foo']->value]['url'], ENT_QUOTES, 'UTF-8', true);?>
" target="<?php if ($_smarty_tpl->tpl_vars['banner']->value['banner'][$_smarty_tpl->tpl_vars['foo']->value]['new_window']){?>_blank<?php }else{ ?>_self<?php }?>" title="<?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['banner']->value['banner'][$_smarty_tpl->tpl_vars['foo']->value]['title'], 'htmlall', 'UTF-8');?>
">
                            <?php }?>
                            <img class="<?php if ($_smarty_tpl->tpl_vars['banner']->value['hover_effect']){?> hover_effect <?php }?>" src="<?php if ((isset($_smarty_tpl->tpl_vars['banner']->value['banner'][$_smarty_tpl->tpl_vars['foo']->value]['image_multi_lang'])&&$_smarty_tpl->tpl_vars['banner']->value['banner'][$_smarty_tpl->tpl_vars['foo']->value]['image_multi_lang'])){?><?php echo $_smarty_tpl->tpl_vars['banner']->value['banner'][$_smarty_tpl->tpl_vars['foo']->value]['image_multi_lang'];?>
<?php }else{ ?><?php echo $_smarty_tpl->tpl_vars['banner']->value['banner'][$_smarty_tpl->tpl_vars['foo']->value]['image'];?>
<?php }?>" alt="<?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['banner']->value['banner'][$_smarty_tpl->tpl_vars['foo']->value]['title'], 'htmlall', 'UTF-8');?>
" />
                            <?php if ($_smarty_tpl->tpl_vars['banner']->value['banner'][$_smarty_tpl->tpl_vars['foo']->value]['url']){?>
                                </a>
                            <?php }?>
                        <?php }?>
                    </div>
                <?php }} ?>
            </div>
            <?php if ($_smarty_tpl->tpl_vars['banner']->value['location']==6){?></div></div></div><?php }?>
        <?php }?>
    <?php } ?>
<?php }?>
<!--/ MODULE st banner --><?php }} ?>