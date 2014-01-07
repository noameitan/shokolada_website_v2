<?php /* Smarty version Smarty-3.1.14, created on 2014-01-07 16:01:24
         compiled from "D:\wamp\www\1561\prestashop\modules\stblogrecentarticles\views\templates\hook\stblogrecentarticles-footer.tpl" */ ?>
<?php /*%%SmartyHeaderCode:1264052cc08b4575464-09023798%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '5499c9bc0d2b72097c134e2b9539304505cea084' => 
    array (
      0 => 'D:\\wamp\\www\\1561\\prestashop\\modules\\stblogrecentarticles\\views\\templates\\hook\\stblogrecentarticles-footer.tpl',
      1 => 1389102229,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1264052cc08b4575464-09023798',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'blogs' => 0,
    'blog' => 0,
    'link' => 0,
    'imageSize' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_52cc08b46dd103_06558856',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52cc08b46dd103_06558856')) {function content_52cc08b46dd103_06558856($_smarty_tpl) {?><?php if (!is_callable('smarty_modifier_escape')) include 'D:\\wamp\\www\\1561\\prestashop\\tools\\smarty\\plugins\\modifier.escape.php';
?>
<!-- St Blog recent articles -->
<section id="st_blog_recent_article-footer" class="block span3">
    <a href="javascript:;" class="opener visible-phone">&nbsp;</a>
    <h4 class="title_block"><?php echo smartyTranslate(array('s'=>'Recent articles','mod'=>'stblogrecentarticles'),$_smarty_tpl);?>
</h4>
    <div class="footer_block_content">
    <?php if (is_array($_smarty_tpl->tpl_vars['blogs']->value)&&count($_smarty_tpl->tpl_vars['blogs']->value)){?>
    <ul class="pro_column_list">
        <?php  $_smarty_tpl->tpl_vars['blog'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['blog']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['blogs']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['blog']->key => $_smarty_tpl->tpl_vars['blog']->value){
$_smarty_tpl->tpl_vars['blog']->_loop = true;
?>
        <li class="clearfix">
            <div class="pro_column_left">
            <a href="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['link']->value->getModuleLink('stblog','article',array('id_blog'=>$_smarty_tpl->tpl_vars['blog']->value['id_st_blog'],'rewrite'=>$_smarty_tpl->tpl_vars['blog']->value['link_rewrite'])), ENT_QUOTES, 'UTF-8', true);?>
" title="<?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['blog']->value['name'], 'htmlall', 'UTF-8');?>
">
                <img src="<?php echo $_smarty_tpl->tpl_vars['blog']->value['cover']['links']['thumb'];?>
" alt="<?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['blog']->value['name'], 'htmlall', 'UTF-8');?>
" width="<?php echo $_smarty_tpl->tpl_vars['imageSize']->value[1]['thumb'][0];?>
" height="<?php echo $_smarty_tpl->tpl_vars['imageSize']->value[1]['thumb'][1];?>
" />
			</a>
            </div>
			<div class="pro_column_right">
				<h4 class="s_title_block nohidden"><a href="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['link']->value->getModuleLink('stblog','article',array('id_blog'=>$_smarty_tpl->tpl_vars['blog']->value['id_st_blog'],'rewrite'=>$_smarty_tpl->tpl_vars['blog']->value['link_rewrite'])), ENT_QUOTES, 'UTF-8', true);?>
" title="<?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['blog']->value['name'], 'htmlall', 'UTF-8');?>
"><?php echo smarty_modifier_escape($_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_MODIFIER]['truncate'][0][0]->smarty_modifier_truncate($_smarty_tpl->tpl_vars['blog']->value['name'],50,'...'), 'html', 'UTF-8');?>
</a></h4>           			      <span class="date-add"><?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['dateFormat'][0][0]->dateFormat(array('date'=>$_smarty_tpl->tpl_vars['blog']->value['date_add'],'full'=>0),$_smarty_tpl);?>
</span>
            </div>
        </li>
        <?php } ?>
    </ul>
    <?php }else{ ?>
        <p class="warning"><?php echo smartyTranslate(array('s'=>'There are no recent posts','mod'=>'stblogrecentarticles'),$_smarty_tpl);?>
</p>
    <?php }?>
    </div>
</section>
<!-- /St Blog recent articles  --><?php }} ?>