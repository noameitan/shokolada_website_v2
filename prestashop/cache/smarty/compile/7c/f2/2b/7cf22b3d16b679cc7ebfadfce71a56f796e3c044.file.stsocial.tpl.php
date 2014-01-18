<?php /* Smarty version Smarty-3.1.14, created on 2014-01-19 00:21:12
         compiled from "D:\wamp\www\1561\prestashop\modules\stsocial\views\templates\hook\stsocial.tpl" */ ?>
<?php /*%%SmartyHeaderCode:1759752dafe588c6ca3-43893555%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '7cf22b3d16b679cc7ebfadfce71a56f796e3c044' => 
    array (
      0 => 'D:\\wamp\\www\\1561\\prestashop\\modules\\stsocial\\views\\templates\\hook\\stsocial.tpl',
      1 => 1389102204,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1759752dafe588c6ca3-43893555',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'social_new_window' => 0,
    'facebook_url' => 0,
    'twitter_url' => 0,
    'rss_url' => 0,
    'youtube_url' => 0,
    'pinterest_url' => 0,
    'google_url' => 0,
    'wordpress_url' => 0,
    'drupal_url' => 0,
    'vimeo_url' => 0,
    'flickr_url' => 0,
    'digg_url' => 0,
    'eaby_url' => 0,
    'amazon_url' => 0,
    'instagram_url' => 0,
    'linkedin_url' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_52dafe58cd89c1_75203246',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52dafe58cd89c1_75203246')) {function content_52dafe58cd89c1_75203246($_smarty_tpl) {?><?php if (!is_callable('smarty_modifier_escape')) include 'D:\\wamp\\www\\1561\\prestashop\\tools\\smarty\\plugins\\modifier.escape.php';
?>
<!-- MODULE st social  -->
<?php $_smarty_tpl->_capture_stack[0][] = array("social_target", null, null); ob_start(); ?><?php if ((!isset($_smarty_tpl->tpl_vars['social_new_window']->value)||$_smarty_tpl->tpl_vars['social_new_window']->value)){?> target="_blank" <?php }?><?php list($_capture_buffer, $_capture_assign, $_capture_append) = array_pop($_smarty_tpl->_capture_stack[0]);
if (!empty($_capture_buffer)) {
 if (isset($_capture_assign)) $_smarty_tpl->assign($_capture_assign, ob_get_contents());
 if (isset( $_capture_append)) $_smarty_tpl->append( $_capture_append, ob_get_contents());
 Smarty::$_smarty_vars['capture'][$_capture_buffer]=ob_get_clean();
} else $_smarty_tpl->capture_error();?>
<section id="social_networking_block" class="block span3">
    <a href="javascript:;" class="opener visible-phone">&nbsp;</a>
    <h4 class="title_block"><?php echo smartyTranslate(array('s'=>'Get Social','mod'=>'stsocial'),$_smarty_tpl);?>
</h4>
    <div class="footer_block_content">
	<ul class="stsocial_list clearfix li_fl">
		<?php if ($_smarty_tpl->tpl_vars['facebook_url']->value!=''){?><li><a id="stsocial_facebook" href="<?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['facebook_url']->value, 'html', 'UTF-8');?>
" rel="nofollow" title="<?php echo smartyTranslate(array('s'=>'Facebook','mod'=>'stsocial'),$_smarty_tpl);?>
" <?php echo Smarty::$_smarty_vars['capture']['social_target'];?>
><i class="icon-facebook icon-large"></i></a></li><?php }?>
		<?php if ($_smarty_tpl->tpl_vars['twitter_url']->value!=''){?><li><a id="stsocial_twitter" href="<?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['twitter_url']->value, 'html', 'UTF-8');?>
" rel="nofollow" title="<?php echo smartyTranslate(array('s'=>'Twitter','mod'=>'stsocial'),$_smarty_tpl);?>
" <?php echo Smarty::$_smarty_vars['capture']['social_target'];?>
><i class="icon-twitter  icon-large"></i></a></li><?php }?>
		<?php if ($_smarty_tpl->tpl_vars['rss_url']->value!=''){?><li><a id="stsocial_rss" href="<?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['rss_url']->value, 'html', 'UTF-8');?>
" rel="nofollow" title="<?php echo smartyTranslate(array('s'=>'RSS','mod'=>'stsocial'),$_smarty_tpl);?>
" <?php echo Smarty::$_smarty_vars['capture']['social_target'];?>
><i class="icon-rss icon-large"></i></a></li><?php }?>
        <?php if ($_smarty_tpl->tpl_vars['youtube_url']->value!=''){?><li><a id="stsocial_youtube" href="<?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['youtube_url']->value, 'html', 'UTF-8');?>
" rel="nofollow" title="<?php echo smartyTranslate(array('s'=>'Youtube','mod'=>'stsocial'),$_smarty_tpl);?>
" <?php echo Smarty::$_smarty_vars['capture']['social_target'];?>
><i class="icon-youtube icon-large"></i></a></li><?php }?>
		<?php if ($_smarty_tpl->tpl_vars['pinterest_url']->value!=''){?><li><a id="stsocial_pinterest" href="<?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['pinterest_url']->value, 'html', 'UTF-8');?>
" rel="nofollow" title="<?php echo smartyTranslate(array('s'=>'Pinterest','mod'=>'stsocial'),$_smarty_tpl);?>
" <?php echo Smarty::$_smarty_vars['capture']['social_target'];?>
><i class="icon-pinterest icon-large"></i></a></li><?php }?>
		<?php if ($_smarty_tpl->tpl_vars['google_url']->value!=''){?><li><a id="stsocial_google" href="<?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['google_url']->value, 'html', 'UTF-8');?>
" rel="nofollow" title="<?php echo smartyTranslate(array('s'=>'Google','mod'=>'stsocial'),$_smarty_tpl);?>
" <?php echo Smarty::$_smarty_vars['capture']['social_target'];?>
><i class="icon-gplus icon-large"></i></a></li><?php }?>
		<?php if ($_smarty_tpl->tpl_vars['wordpress_url']->value!=''){?><li><a id="stsocial_wordpress" href="<?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['wordpress_url']->value, 'html', 'UTF-8');?>
" rel="nofollow" title="<?php echo smartyTranslate(array('s'=>'Wordpress','mod'=>'stsocial'),$_smarty_tpl);?>
" <?php echo Smarty::$_smarty_vars['capture']['social_target'];?>
><i class="icon-wordpress icon-large"></i></a></li><?php }?>
		<?php if ($_smarty_tpl->tpl_vars['drupal_url']->value!=''){?><li><a id="stsocial_drupal" href="<?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['drupal_url']->value, 'html', 'UTF-8');?>
" rel="nofollow" title="<?php echo smartyTranslate(array('s'=>'Drupal','mod'=>'stsocial'),$_smarty_tpl);?>
" <?php echo Smarty::$_smarty_vars['capture']['social_target'];?>
><i class="icon-drupal icon-large"></i></a></li><?php }?>
		<?php if ($_smarty_tpl->tpl_vars['vimeo_url']->value!=''){?><li><a id="stsocial_vimeo" href="<?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['vimeo_url']->value, 'html', 'UTF-8');?>
" rel="nofollow" title="<?php echo smartyTranslate(array('s'=>'Vimeo','mod'=>'stsocial'),$_smarty_tpl);?>
" <?php echo Smarty::$_smarty_vars['capture']['social_target'];?>
><i class="icon-vimeo icon-large"></i></a></li><?php }?>
		<?php if ($_smarty_tpl->tpl_vars['flickr_url']->value!=''){?><li><a id="stsocial_flickr" href="<?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['flickr_url']->value, 'html', 'UTF-8');?>
" rel="nofollow" title="<?php echo smartyTranslate(array('s'=>'Flickr','mod'=>'stsocial'),$_smarty_tpl);?>
" <?php echo Smarty::$_smarty_vars['capture']['social_target'];?>
><i class="icon-flickr icon-large"></i></a></li><?php }?>
		<?php if ($_smarty_tpl->tpl_vars['digg_url']->value!=''){?><li><a id="stsocial_digg" href="<?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['digg_url']->value, 'html', 'UTF-8');?>
" rel="nofollow" title="<?php echo smartyTranslate(array('s'=>'Digg','mod'=>'stsocial'),$_smarty_tpl);?>
" <?php echo Smarty::$_smarty_vars['capture']['social_target'];?>
><i class="icon-digg icon-large"></i></a></li><?php }?>
		<?php if ($_smarty_tpl->tpl_vars['eaby_url']->value!=''){?><li><a id="stsocial_ebay" href="<?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['eaby_url']->value, 'html', 'UTF-8');?>
" rel="nofollow" title="<?php echo smartyTranslate(array('s'=>'Ebay','mod'=>'stsocial'),$_smarty_tpl);?>
" <?php echo Smarty::$_smarty_vars['capture']['social_target'];?>
><i class="icon-ebay icon-large"></i></a></li><?php }?>
		<?php if ($_smarty_tpl->tpl_vars['amazon_url']->value!=''){?><li><a id="stsocial_amazon" href="<?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['amazon_url']->value, 'html', 'UTF-8');?>
" rel="nofollow" title="<?php echo smartyTranslate(array('s'=>'Amazon','mod'=>'stsocial'),$_smarty_tpl);?>
" <?php echo Smarty::$_smarty_vars['capture']['social_target'];?>
><i class="icon-amazon icon-large"></i></a></li><?php }?>
		<?php if ($_smarty_tpl->tpl_vars['instagram_url']->value!=''){?><li><a id="stsocial_instagram" href="<?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['instagram_url']->value, 'html', 'UTF-8');?>
" rel="nofollow" title="<?php echo smartyTranslate(array('s'=>'Instagram','mod'=>'stsocial'),$_smarty_tpl);?>
" <?php echo Smarty::$_smarty_vars['capture']['social_target'];?>
><i class="icon-instagram icon-large"></i></a></li><?php }?>
		<?php if ($_smarty_tpl->tpl_vars['linkedin_url']->value!=''){?><li><a id="stsocial_linkedin" href="<?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['linkedin_url']->value, 'html', 'UTF-8');?>
" rel="nofollow" title="<?php echo smartyTranslate(array('s'=>'LinkedIn','mod'=>'stsocial'),$_smarty_tpl);?>
" <?php echo Smarty::$_smarty_vars['capture']['social_target'];?>
><i class="icon-linkedin icon-large"></i></a></li><?php }?>
	</ul>
    </div>
</section><?php }} ?>