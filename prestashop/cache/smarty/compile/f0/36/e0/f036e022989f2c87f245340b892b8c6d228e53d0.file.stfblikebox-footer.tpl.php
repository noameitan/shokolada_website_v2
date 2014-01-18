<?php /* Smarty version Smarty-3.1.14, created on 2014-01-19 00:21:11
         compiled from "D:\wamp\www\1561\prestashop\modules\stfblikebox\views\templates\hook\stfblikebox-footer.tpl" */ ?>
<?php /*%%SmartyHeaderCode:1676452dafe57979de0-77589636%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'f036e022989f2c87f245340b892b8c6d228e53d0' => 
    array (
      0 => 'D:\\wamp\\www\\1561\\prestashop\\modules\\stfblikebox\\views\\templates\\hook\\stfblikebox-footer.tpl',
      1 => 1389102203,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1676452dafe57979de0-77589636',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'st_lb_url' => 0,
    'st_lb_height' => 0,
    'st_lb_face' => 0,
    'st_lb_stream' => 0,
    'st_lb_header' => 0,
    'st_lb_connections' => 0,
    'st_lb_locale' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_52dafe57a20bc4_94051754',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52dafe57a20bc4_94051754')) {function content_52dafe57a20bc4_94051754($_smarty_tpl) {?>
<!-- MODULE st facebook like box  -->
<section id="facebook_like_box_footer" class="span3 block">
    <a href="javascript:;" class="opener visible-phone">&nbsp;</a>
    <h4 class="title_block"><?php echo smartyTranslate(array('s'=>'Facebook','mod'=>'stfblikebox'),$_smarty_tpl);?>
</h4>
    <div class="footer_block_content fb_like_box_warp">
        <div class="fb-like-box" data-href="http://www.facebook.com/<?php echo $_smarty_tpl->tpl_vars['st_lb_url']->value;?>
" data-width="" <?php if ($_smarty_tpl->tpl_vars['st_lb_height']->value){?>data-height="<?php echo $_smarty_tpl->tpl_vars['st_lb_height']->value;?>
"<?php }?> data-show-faces="<?php if ($_smarty_tpl->tpl_vars['st_lb_face']->value){?>true<?php }else{ ?>false<?php }?>" data-stream="<?php if ($_smarty_tpl->tpl_vars['st_lb_stream']->value){?>true<?php }else{ ?>false<?php }?>"  data-header="<?php if ($_smarty_tpl->tpl_vars['st_lb_header']->value){?>true<?php }else{ ?>false<?php }?>" <?php if ($_smarty_tpl->tpl_vars['st_lb_connections']->value){?>connections=<?php echo $_smarty_tpl->tpl_vars['st_lb_connections']->value;?>
<?php }?>  data-show-border="false"></div>
        <div id="fb-root"></div>
        <script>
        //<![CDATA[
        
        (function(d, s, id) {
          var js, fjs = d.getElementsByTagName(s)[0];
          if (d.getElementById(id)) return;
          js = d.createElement(s); js.id = id;
          js.src = "//connect.facebook.net/<?php echo $_smarty_tpl->tpl_vars['st_lb_locale']->value;?>
/all.js#xfbml=1";
          fjs.parentNode.insertBefore(js, fjs);
        }(document, 'script', 'facebook-jssdk'));
         
        //]]>
        </script>
    </div>
</section>
<!-- /MODULE st facebook like box --><?php }} ?>