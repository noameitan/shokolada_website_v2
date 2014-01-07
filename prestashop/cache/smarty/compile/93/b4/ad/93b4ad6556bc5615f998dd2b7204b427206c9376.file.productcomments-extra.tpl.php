<?php /* Smarty version Smarty-3.1.14, created on 2014-01-07 16:42:23
         compiled from "D:\wamp\www\1561\prestashop\themes\transformer\modules\productcomments\productcomments-extra.tpl" */ ?>
<?php /*%%SmartyHeaderCode:1626752cc124f20b594-26624909%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '93b4ad6556bc5615f998dd2b7204b427206c9376' => 
    array (
      0 => 'D:\\wamp\\www\\1561\\prestashop\\themes\\transformer\\modules\\productcomments\\productcomments-extra.tpl',
      1 => 1389102133,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1626752cc124f20b594-26624909',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'logged' => 0,
    'nbComments' => 0,
    'sttheme' => 0,
    'too_early' => 0,
    'allow_guests' => 0,
    'enable_reivew_aggregate' => 0,
    'averageTotal' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_52cc124f42a8e4_96107221',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52cc124f42a8e4_96107221')) {function content_52cc124f42a8e4_96107221($_smarty_tpl) {?> 
<script type="text/javascript">
$(function(){
	$('a[href=#idTab5]').click(function(){
		$('*[id^="idTab"]').addClass('block_hidden_only_for_screen');
		$('div#idTab5').removeClass('block_hidden_only_for_screen');

		$('ul#more_info_tabs a[href^="#idTab"]').removeClass('selected');
		$('a[href="#idTab5"]').addClass('selected');
	});
});
</script>
<?php if ($_smarty_tpl->tpl_vars['logged']->value==1||$_smarty_tpl->tpl_vars['nbComments']->value!=0){?>
</div><!-- Close the OosHook -->
<?php $_smarty_tpl->tpl_vars['enable_reivew_aggregate'] = new Smarty_variable((!isset($_smarty_tpl->tpl_vars['sttheme']->value['google_rich_snippets'])||(isset($_smarty_tpl->tpl_vars['sttheme']->value['google_rich_snippets'])&&$_smarty_tpl->tpl_vars['sttheme']->value['google_rich_snippets']==1)), null, 0);?>
<div id="product_comments_block_extra" class="<?php if ($_smarty_tpl->tpl_vars['nbComments']->value!=0||($_smarty_tpl->tpl_vars['too_early']->value==false&&($_smarty_tpl->tpl_vars['logged']->value||$_smarty_tpl->tpl_vars['allow_guests']->value))){?><?php }else{ ?> hidden <?php }?> " <?php if ($_smarty_tpl->tpl_vars['enable_reivew_aggregate']->value){?> itemtype="http://schema.org/AggregateRating" itemscope="" itemprop="aggregateRating" <?php }?>>
	<?php if ($_smarty_tpl->tpl_vars['nbComments']->value!=0){?>
	<div class="comments_note">
		<span><?php echo smartyTranslate(array('s'=>'Average grade','mod'=>'productcomments'),$_smarty_tpl);?>
&nbsp</span>
        <?php if (isset($_smarty_tpl->tpl_vars['averageTotal']->value)&&$_smarty_tpl->tpl_vars['averageTotal']->value>0){?>
    		<span class="hidden" <?php if ($_smarty_tpl->tpl_vars['enable_reivew_aggregate']->value){?> itemprop="ratingValue" <?php }?>><?php echo $_smarty_tpl->tpl_vars['averageTotal']->value;?>
</span>
            <div class="rating_box">
            <?php $_smarty_tpl->tpl_vars['foo'] = new Smarty_Variable;$_smarty_tpl->tpl_vars['foo']->step = 1;$_smarty_tpl->tpl_vars['foo']->total = (int)ceil(($_smarty_tpl->tpl_vars['foo']->step > 0 ? round($_smarty_tpl->tpl_vars['averageTotal']->value)+1 - (1) : 1-(round($_smarty_tpl->tpl_vars['averageTotal']->value))+1)/abs($_smarty_tpl->tpl_vars['foo']->step));
if ($_smarty_tpl->tpl_vars['foo']->total > 0){
for ($_smarty_tpl->tpl_vars['foo']->value = 1, $_smarty_tpl->tpl_vars['foo']->iteration = 1;$_smarty_tpl->tpl_vars['foo']->iteration <= $_smarty_tpl->tpl_vars['foo']->total;$_smarty_tpl->tpl_vars['foo']->value += $_smarty_tpl->tpl_vars['foo']->step, $_smarty_tpl->tpl_vars['foo']->iteration++){
$_smarty_tpl->tpl_vars['foo']->first = $_smarty_tpl->tpl_vars['foo']->iteration == 1;$_smarty_tpl->tpl_vars['foo']->last = $_smarty_tpl->tpl_vars['foo']->iteration == $_smarty_tpl->tpl_vars['foo']->total;?>
                <i class="icon-star-1 icon-small light"></i>
            <?php }} ?>
            <?php if (round($_smarty_tpl->tpl_vars['averageTotal']->value)<5){?>
                <?php $_smarty_tpl->tpl_vars['foo'] = new Smarty_Variable;$_smarty_tpl->tpl_vars['foo']->step = 1;$_smarty_tpl->tpl_vars['foo']->total = (int)ceil(($_smarty_tpl->tpl_vars['foo']->step > 0 ? 5+1 - (round($_smarty_tpl->tpl_vars['averageTotal']->value)+1) : round($_smarty_tpl->tpl_vars['averageTotal']->value)+1-(5)+1)/abs($_smarty_tpl->tpl_vars['foo']->step));
if ($_smarty_tpl->tpl_vars['foo']->total > 0){
for ($_smarty_tpl->tpl_vars['foo']->value = round($_smarty_tpl->tpl_vars['averageTotal']->value)+1, $_smarty_tpl->tpl_vars['foo']->iteration = 1;$_smarty_tpl->tpl_vars['foo']->iteration <= $_smarty_tpl->tpl_vars['foo']->total;$_smarty_tpl->tpl_vars['foo']->value += $_smarty_tpl->tpl_vars['foo']->step, $_smarty_tpl->tpl_vars['foo']->iteration++){
$_smarty_tpl->tpl_vars['foo']->first = $_smarty_tpl->tpl_vars['foo']->iteration == 1;$_smarty_tpl->tpl_vars['foo']->last = $_smarty_tpl->tpl_vars['foo']->iteration == $_smarty_tpl->tpl_vars['foo']->total;?>
                    <i class="icon-star-1 icon-small"></i>
                <?php }} ?>
            <?php }?>
            </div>
        <?php }?>
	</div>
	<?php }?>

	<div class="comments_advices">
		<?php if ($_smarty_tpl->tpl_vars['nbComments']->value!=0){?>
		<a href="#idTab5" id="comments_anchor"><?php echo smartyTranslate(array('s'=>'Read user reviews','mod'=>'productcomments'),$_smarty_tpl);?>
 (<span <?php if ($_smarty_tpl->tpl_vars['enable_reivew_aggregate']->value){?> itemprop="reviewCount" <?php }?>><?php echo $_smarty_tpl->tpl_vars['nbComments']->value;?>
</span>)</a>
		<?php }?>
		<?php if (($_smarty_tpl->tpl_vars['too_early']->value==false&&($_smarty_tpl->tpl_vars['logged']->value||$_smarty_tpl->tpl_vars['allow_guests']->value))){?>
		<a class="open-comment-form" href="#new_comment_form"><?php echo smartyTranslate(array('s'=>'Write your review','mod'=>'productcomments'),$_smarty_tpl);?>
</a>
		<?php }?>
	</div>
</div>
<div><!-- new div for the next content if any -->
<?php }?>
<!--  /Module ProductComments -->
<?php }} ?>