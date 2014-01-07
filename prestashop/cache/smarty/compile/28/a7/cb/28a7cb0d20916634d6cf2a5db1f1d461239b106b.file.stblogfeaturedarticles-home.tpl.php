<?php /* Smarty version Smarty-3.1.14, created on 2014-01-07 16:01:26
         compiled from "D:\wamp\www\1561\prestashop\modules\stblogfeaturedarticles\views\templates\hook\stblogfeaturedarticles-home.tpl" */ ?>
<?php /*%%SmartyHeaderCode:2030552cc08b62e6253-34884701%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '28a7cb0d20916634d6cf2a5db1f1d461239b106b' => 
    array (
      0 => 'D:\\wamp\\www\\1561\\prestashop\\modules\\stblogfeaturedarticles\\views\\templates\\hook\\stblogfeaturedarticles-home.tpl',
      1 => 1389102231,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '2030552cc08b62e6253-34884701',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'blogs' => 0,
    'featured_a_per_nbr_home' => 0,
    'blog' => 0,
    'imageSize' => 0,
    'category' => 0,
    'link' => 0,
    'display_viewcount' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_52cc08b65dbd00_79365360',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52cc08b65dbd00_79365360')) {function content_52cc08b65dbd00_79365360($_smarty_tpl) {?><?php if (!is_callable('smarty_modifier_escape')) include 'D:\\wamp\\www\\1561\\prestashop\\tools\\smarty\\plugins\\modifier.escape.php';
?>
<!-- St Blog featured articles -->
<section id="st_blog_featured_article" class="block section">
	<h4 class="title_block"><span><?php echo smartyTranslate(array('s'=>'Featured articles ','mod'=>'stblogfeaturedarticles'),$_smarty_tpl);?>
</span></h4>
    <?php if (is_array($_smarty_tpl->tpl_vars['blogs']->value)&&count($_smarty_tpl->tpl_vars['blogs']->value)){?>
	<ul class="blog_list_grid blog_list_grid_<?php echo $_smarty_tpl->tpl_vars['featured_a_per_nbr_home']->value;?>
col clearfix">
	<?php  $_smarty_tpl->tpl_vars['blog'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['blog']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['blogs']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
 $_smarty_tpl->tpl_vars['blog']->total= $_smarty_tpl->_count($_from);
 $_smarty_tpl->tpl_vars['blog']->iteration=0;
 $_smarty_tpl->tpl_vars['blog']->index=-1;
foreach ($_from as $_smarty_tpl->tpl_vars['blog']->key => $_smarty_tpl->tpl_vars['blog']->value){
$_smarty_tpl->tpl_vars['blog']->_loop = true;
 $_smarty_tpl->tpl_vars['blog']->iteration++;
 $_smarty_tpl->tpl_vars['blog']->index++;
 $_smarty_tpl->tpl_vars['blog']->first = $_smarty_tpl->tpl_vars['blog']->index === 0;
 $_smarty_tpl->tpl_vars['blog']->last = $_smarty_tpl->tpl_vars['blog']->iteration === $_smarty_tpl->tpl_vars['blog']->total;
?>
        <li class="block_blog <?php if ($_smarty_tpl->tpl_vars['blog']->first){?>first_item<?php }elseif($_smarty_tpl->tpl_vars['blog']->last){?>last_item<?php }?>">
            <div class="blog_image">
                <a href="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['blog']->value['link'], ENT_QUOTES, 'UTF-8', true);?>
" title="<?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['blog']->value['name'], 'htmlall', 'UTF-8');?>
">
                <img src="<?php echo $_smarty_tpl->tpl_vars['blog']->value['cover']['links']['medium'];?>
" alt="<?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['blog']->value['name'], 'htmlall', 'UTF-8');?>
" width="<?php echo $_smarty_tpl->tpl_vars['imageSize']->value[1]['medium'][0];?>
" height="<?php echo $_smarty_tpl->tpl_vars['imageSize']->value[1]['medium'][1];?>
" class="hover_effect" />
                <?php if ($_smarty_tpl->tpl_vars['blog']->value['type']==2){?>
                    <span class="icon_wrap"><i class="icon-camera-2 icon-1x"></i></span>
                <?php }elseif($_smarty_tpl->tpl_vars['blog']->value['type']==3){?>
                    <span class="icon_wrap"><i class="icon-video icon-1x"></i></span>
                <?php }?>
                </a>
            </div>
            <h3 class="s_title_block"><a href="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['blog']->value['link'], ENT_QUOTES, 'UTF-8', true);?>
" title="<?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['blog']->value['name'], 'htmlall', 'UTF-8');?>
"><?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_MODIFIER]['truncate'][0][0]->smarty_modifier_truncate(smarty_modifier_escape($_smarty_tpl->tpl_vars['blog']->value['name'], 'htmlall', 'UTF-8'),70,'...');?>
</a></h3>
            <?php if ($_smarty_tpl->tpl_vars['blog']->value['content_short']){?><p class="blok_blog_short_content"><?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_MODIFIER]['truncate'][0][0]->smarty_modifier_truncate(strip_tags($_smarty_tpl->tpl_vars['blog']->value['content_short']),120,'...');?>
<a href="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['blog']->value['link'], ENT_QUOTES, 'UTF-8', true);?>
" title="<?php echo smartyTranslate(array('s'=>'Read More','mod'=>'stblogfeaturedarticles'),$_smarty_tpl);?>
" class="go"><?php echo smartyTranslate(array('s'=>'Read More','mod'=>'stblogfeaturedarticles'),$_smarty_tpl);?>
</a></p><?php }?>
            <div class="blog_info">
                <span class="date-add"><?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['dateFormat'][0][0]->dateFormat(array('date'=>$_smarty_tpl->tpl_vars['blog']->value['date_add'],'full'=>0),$_smarty_tpl);?>
</span>
                <span class="blog-categories">
                    <?php  $_smarty_tpl->tpl_vars['category'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['category']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['blog']->value['categories']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
 $_smarty_tpl->tpl_vars['category']->total= $_smarty_tpl->_count($_from);
 $_smarty_tpl->tpl_vars['category']->iteration=0;
foreach ($_from as $_smarty_tpl->tpl_vars['category']->key => $_smarty_tpl->tpl_vars['category']->value){
$_smarty_tpl->tpl_vars['category']->_loop = true;
 $_smarty_tpl->tpl_vars['category']->iteration++;
 $_smarty_tpl->tpl_vars['category']->last = $_smarty_tpl->tpl_vars['category']->iteration === $_smarty_tpl->tpl_vars['category']->total;
?>
                        <a href="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['link']->value->getModuleLink('stblog','category',array('blog_id_category'=>$_smarty_tpl->tpl_vars['category']->value['id_st_blog_category'],'rewrite'=>$_smarty_tpl->tpl_vars['category']->value['link_rewrite'])), ENT_QUOTES, 'UTF-8', true);?>
" title="<?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['category']->value['name'], 'htmlall', 'UTF-8');?>
"><?php echo smarty_modifier_escape($_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_MODIFIER]['truncate'][0][0]->smarty_modifier_truncate($_smarty_tpl->tpl_vars['category']->value['name'],30,'...'), 'htmlall', 'UTF-8');?>
</a><?php if (!$_smarty_tpl->tpl_vars['category']->last){?>,<?php }?>
                    <?php } ?>
                </span>
                <?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['hook'][0][0]->smartyHook(array('h'=>'displayAnywhere','function'=>"getCommentNumber",'id_blog'=>$_smarty_tpl->tpl_vars['blog']->value['id_st_blog'],'link_rewrite'=>$_smarty_tpl->tpl_vars['blog']->value['link_rewrite'],'mod'=>'stblogcomments','caller'=>'stblogcomments'),$_smarty_tpl);?>

                <?php if ($_smarty_tpl->tpl_vars['display_viewcount']->value){?><span><i class="icon-eye-2 icon-mar-lr2"></i><?php echo $_smarty_tpl->tpl_vars['blog']->value['counter'];?>
</span><?php }?>
            </div>
        </li>
    <?php } ?>
    </ul>
    <?php }else{ ?>
        <p class="warning"><?php echo smartyTranslate(array('s'=>'No featured articles','mod'=>'stblogfeaturedarticles'),$_smarty_tpl);?>
</p>
    <?php }?>
</section>
<!-- /St Blog featured articles  --><?php }} ?>