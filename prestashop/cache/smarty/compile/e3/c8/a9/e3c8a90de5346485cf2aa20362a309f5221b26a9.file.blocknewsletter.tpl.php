<?php /* Smarty version Smarty-3.1.14, created on 2014-01-15 18:32:32
         compiled from "D:\wamp\www\1561\prestashop\themes\transformer\modules\blocknewsletter\blocknewsletter.tpl" */ ?>
<?php /*%%SmartyHeaderCode:448352d6b8208007e7-86325615%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'e3c8a90de5346485cf2aa20362a309f5221b26a9' => 
    array (
      0 => 'D:\\wamp\\www\\1561\\prestashop\\themes\\transformer\\modules\\blocknewsletter\\blocknewsletter.tpl',
      1 => 1389102133,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '448352d6b8208007e7-86325615',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'msg' => 0,
    'nw_error' => 0,
    'link' => 0,
    'value' => 0,
    'sttheme' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_52d6b8208f0b93_77160784',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52d6b8208f0b93_77160784')) {function content_52d6b8208f0b93_77160784($_smarty_tpl) {?>

<!-- Block Newsletter module-->
<section id="newsletter_block_left" class="block span3">
    <a href="javascript:;" class="opener visible-phone">&nbsp;</a>
	<h4 class="title_block"><?php echo smartyTranslate(array('s'=>'Newsletter','mod'=>'blocknewsletter'),$_smarty_tpl);?>
</h4>
	<div id="newsletter_form" class="footer_block_content">
	<?php if (isset($_smarty_tpl->tpl_vars['msg']->value)&&$_smarty_tpl->tpl_vars['msg']->value){?>
		<p class="<?php if ($_smarty_tpl->tpl_vars['nw_error']->value){?>warning_inline warning<?php }else{ ?>success_inline success<?php }?>"><?php echo $_smarty_tpl->tpl_vars['msg']->value;?>
</p>
	<?php }?>
		<form action="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['link']->value->getPageLink('index'), ENT_QUOTES, 'UTF-8', true);?>
" method="post">
            <div>
	        <label><?php echo smartyTranslate(array('s'=>'Subscribe to our newsletter','mod'=>'blocknewsletter'),$_smarty_tpl);?>
</label>
				
				<input class="inputNew" id="newsletter-input" type="text" name="email" size="18" value="<?php if (isset($_smarty_tpl->tpl_vars['value']->value)&&$_smarty_tpl->tpl_vars['value']->value){?><?php echo $_smarty_tpl->tpl_vars['value']->value;?>
<?php }?>" placeholder="<?php if (isset($_smarty_tpl->tpl_vars['sttheme']->value['newsletter_label'])&&$_smarty_tpl->tpl_vars['sttheme']->value['newsletter_label']){?><?php echo $_smarty_tpl->tpl_vars['sttheme']->value['newsletter_label'];?>
<?php }else{ ?><?php echo smartyTranslate(array('s'=>'Your e-mail','mod'=>'blocknewsletter'),$_smarty_tpl);?>
<?php }?>" />
				<input type="submit" value="<?php echo smartyTranslate(array('s'=>'Subscribe','mod'=>'blocknewsletter'),$_smarty_tpl);?>
" class="button_mini" name="submitNewsletter" />
                
				<input type="hidden" name="action" value="0" />
            </div>
		</form>
	</div>
</section>
<!-- /Block Newsletter module-->

<script type="text/javascript">

jQuery(function($){
    if(!isPlaceholer())
    {
        $('#newsletter-input').focusin(function(){
            if ($(this).val()==$(this).attr('placeholder'))
                $(this).val('');
        }).focusout(function(){
            if ($(this).val()=='')
                $(this).val($(this).attr('placeholder'));
        });
    }
    $('input[name="submitNewsletter"]').click(function(){
        if(!/^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+.[a-zA-Z]{2,4}$/.test($('#newsletter-input').val()))
        {
            art.dialog({
                content: '<?php echo smartyTranslate(array('s'=>'Please check your email address','mod'=>'blocknewsletter','js'=>1),$_smarty_tpl);?>
',
                fixed: true,
                opacity: 0.5,
                lock: true
            });
            return false;
        }
        return true;
    });
});

</script><?php }} ?>