<?php /* Smarty version Smarty-3.1.14, created on 2014-01-07 16:42:23
         compiled from "D:\wamp\www\1561\prestashop\themes\transformer\modules\productcomments\productcomments.tpl" */ ?>
<?php /*%%SmartyHeaderCode:2126852cc124f6f82f6-16441937%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '1c56c6788e33811e9492b31d5524009cc6e0c1c5' => 
    array (
      0 => 'D:\\wamp\\www\\1561\\prestashop\\themes\\transformer\\modules\\productcomments\\productcomments.tpl',
      1 => 1389102133,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '2126852cc124f6f82f6-16441937',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'productcomments_controller_url' => 0,
    'secure_key' => 0,
    'productcomments_url_rewriting_activated' => 0,
    'moderation_active' => 0,
    'comments' => 0,
    'comment' => 0,
    'displayLeftProduct' => 0,
    'logged' => 0,
    'too_early' => 0,
    'allow_guests' => 0,
    'product' => 0,
    'productcomment_cover' => 0,
    'link' => 0,
    'mediumSize' => 0,
    'criterions' => 0,
    'criterion' => 0,
    'id_product_comment_form' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_52cc124fcd9639_18845761',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52cc124fcd9639_18845761')) {function content_52cc124fcd9639_18845761($_smarty_tpl) {?><?php if (!is_callable('smarty_modifier_escape')) include 'D:\\wamp\\www\\1561\\prestashop\\tools\\smarty\\plugins\\modifier.escape.php';
?>
<script type="text/javascript">
var productcomments_controller_url = '<?php echo $_smarty_tpl->tpl_vars['productcomments_controller_url']->value;?>
';
var confirm_report_message = '<?php echo smartyTranslate(array('s'=>'Are you sure you want report this comment?','mod'=>'productcomments','js'=>1),$_smarty_tpl);?>
';
var secure_key = '<?php echo $_smarty_tpl->tpl_vars['secure_key']->value;?>
';
var productcomments_url_rewrite = '<?php echo $_smarty_tpl->tpl_vars['productcomments_url_rewriting_activated']->value;?>
';

var comment_actions_login_first = "<?php echo smartyTranslate(array('s'=>'Please login first!','mod'=>'productcomments'),$_smarty_tpl);?>
";
var comment_actions_failure = "<?php echo smartyTranslate(array('s'=>'An error occurred. Maybe a network problem or you already set.','mod'=>'productcomments'),$_smarty_tpl);?>
";
var comment_success_msg = "<?php echo smartyTranslate(array('s'=>'Success! Thank you!','mod'=>'productcomments'),$_smarty_tpl);?>
";

var productcomment_added = '<?php echo smartyTranslate(array('s'=>'Your comment has been added!','mod'=>'productcomments','js'=>1),$_smarty_tpl);?>
';
var productcomment_added_moderation = '<?php echo smartyTranslate(array('s'=>'Your comment has been added and will be available once approved by a moderator','mod'=>'productcomments','js'=>1),$_smarty_tpl);?>
';
var productcomment_title = '<?php echo smartyTranslate(array('s'=>'New comment','mod'=>'productcomments','js'=>1),$_smarty_tpl);?>
';
var productcomment_ok = '<?php echo smartyTranslate(array('s'=>'OK','mod'=>'productcomments','js'=>1),$_smarty_tpl);?>
';
<?php if (isset($_smarty_tpl->tpl_vars['moderation_active']->value)){?>
var moderation_active = <?php echo $_smarty_tpl->tpl_vars['moderation_active']->value;?>
;
<?php }?>
</script>

<div id="idTab5" class="product_accordion">
    <a href="javascript:;" class="opener visible-phone">&nbsp;</a>
    <div class="product_accordion_title visible-phone">
        <?php echo smartyTranslate(array('s'=>'Comments','mod'=>'productcomments'),$_smarty_tpl);?>

    </div>
	<div id="product_comments_block_tab" class="pa_content">
	<?php if ($_smarty_tpl->tpl_vars['comments']->value){?>
		<?php  $_smarty_tpl->tpl_vars['comment'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['comment']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['comments']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['comment']->key => $_smarty_tpl->tpl_vars['comment']->value){
$_smarty_tpl->tpl_vars['comment']->_loop = true;
?>
			<?php if ($_smarty_tpl->tpl_vars['comment']->value['content']){?>
			<div class="comment">
            <div class="row-fluid">
				<div class="comment_author span2">
					<span class="hidden"><?php echo smartyTranslate(array('s'=>'Grade','mod'=>'productcomments'),$_smarty_tpl);?>
&nbsp;</span>
                    <?php if (isset($_smarty_tpl->tpl_vars['comment']->value['grade'])&&$_smarty_tpl->tpl_vars['comment']->value['grade']>0){?>
                    <div class="rating_box">
                    <?php $_smarty_tpl->tpl_vars['foo'] = new Smarty_Variable;$_smarty_tpl->tpl_vars['foo']->step = 1;$_smarty_tpl->tpl_vars['foo']->total = (int)ceil(($_smarty_tpl->tpl_vars['foo']->step > 0 ? round($_smarty_tpl->tpl_vars['comment']->value['grade'])+1 - (1) : 1-(round($_smarty_tpl->tpl_vars['comment']->value['grade']))+1)/abs($_smarty_tpl->tpl_vars['foo']->step));
if ($_smarty_tpl->tpl_vars['foo']->total > 0){
for ($_smarty_tpl->tpl_vars['foo']->value = 1, $_smarty_tpl->tpl_vars['foo']->iteration = 1;$_smarty_tpl->tpl_vars['foo']->iteration <= $_smarty_tpl->tpl_vars['foo']->total;$_smarty_tpl->tpl_vars['foo']->value += $_smarty_tpl->tpl_vars['foo']->step, $_smarty_tpl->tpl_vars['foo']->iteration++){
$_smarty_tpl->tpl_vars['foo']->first = $_smarty_tpl->tpl_vars['foo']->iteration == 1;$_smarty_tpl->tpl_vars['foo']->last = $_smarty_tpl->tpl_vars['foo']->iteration == $_smarty_tpl->tpl_vars['foo']->total;?>
                        <i class="icon-star-1 icon-small light"></i>
                    <?php }} ?>
                    <?php if (round($_smarty_tpl->tpl_vars['comment']->value['grade'])<5){?>
                        <?php $_smarty_tpl->tpl_vars['foo'] = new Smarty_Variable;$_smarty_tpl->tpl_vars['foo']->step = 1;$_smarty_tpl->tpl_vars['foo']->total = (int)ceil(($_smarty_tpl->tpl_vars['foo']->step > 0 ? 5+1 - (round($_smarty_tpl->tpl_vars['comment']->value['grade'])+1) : round($_smarty_tpl->tpl_vars['comment']->value['grade'])+1-(5)+1)/abs($_smarty_tpl->tpl_vars['foo']->step));
if ($_smarty_tpl->tpl_vars['foo']->total > 0){
for ($_smarty_tpl->tpl_vars['foo']->value = round($_smarty_tpl->tpl_vars['comment']->value['grade'])+1, $_smarty_tpl->tpl_vars['foo']->iteration = 1;$_smarty_tpl->tpl_vars['foo']->iteration <= $_smarty_tpl->tpl_vars['foo']->total;$_smarty_tpl->tpl_vars['foo']->value += $_smarty_tpl->tpl_vars['foo']->step, $_smarty_tpl->tpl_vars['foo']->iteration++){
$_smarty_tpl->tpl_vars['foo']->first = $_smarty_tpl->tpl_vars['foo']->iteration == 1;$_smarty_tpl->tpl_vars['foo']->last = $_smarty_tpl->tpl_vars['foo']->iteration == $_smarty_tpl->tpl_vars['foo']->total;?>
                            <i class="icon-star-1 icon-small"></i>
                        <?php }} ?>
                    <?php }?>
                    </div>
                    <?php }?>
					<div class="comment_author_infos">
						<strong><?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['comment']->value['customer_name'], 'html', 'UTF-8');?>
</strong>
						<time><?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['dateFormat'][0][0]->dateFormat(array('date'=>smarty_modifier_escape($_smarty_tpl->tpl_vars['comment']->value['date_add'], 'html', 'UTF-8'),'full'=>0),$_smarty_tpl);?>
</time>
					</div>
				</div>
				<div class="comment_details <?php if (isset($_smarty_tpl->tpl_vars['displayLeftProduct']->value)&&$_smarty_tpl->tpl_vars['displayLeftProduct']->value){?>span4<?php }else{ ?>span7<?php }?>">
					<div class="title_block"><?php echo $_smarty_tpl->tpl_vars['comment']->value['title'];?>
</div>
					<p><?php echo nl2br(smarty_modifier_escape($_smarty_tpl->tpl_vars['comment']->value['content'], 'html', 'UTF-8'));?>
</p>
				</div>
                <div class="comment_actions span3">
						<div class="comment_usefull_title"><?php echo smartyTranslate(array('s'=>'Was this review useful?','mod'=>'productcomments'),$_smarty_tpl);?>
</div>
                        <p class="comment_usefull">
                            <a href="javascript:;" class="<?php if ($_smarty_tpl->tpl_vars['logged']->value==1){?> logged <?php }?><?php if (!$_smarty_tpl->tpl_vars['comment']->value['customer_advice']){?> usefulness_btn <?php }?>" data-is-usefull="1" data-id-product-comment="<?php echo $_smarty_tpl->tpl_vars['comment']->value['id_product_comment'];?>
" title="<?php echo smartyTranslate(array('s'=>'yes','mod'=>'productcomments'),$_smarty_tpl);?>
"><i class="icon-thumbs-up-1"></i>(<span><?php echo $_smarty_tpl->tpl_vars['comment']->value['total_useful'];?>
</span>)</a>
                            <a href="javascript:;" class="<?php if ($_smarty_tpl->tpl_vars['logged']->value==1){?> logged <?php }?><?php if (!$_smarty_tpl->tpl_vars['comment']->value['customer_advice']){?> usefulness_btn <?php }?> useful_down" data-is-usefull="0" data-id-product-comment="<?php echo $_smarty_tpl->tpl_vars['comment']->value['id_product_comment'];?>
" title="<?php echo smartyTranslate(array('s'=>'no','mod'=>'productcomments'),$_smarty_tpl);?>
"><i class="icon-thumbs-down-1"></i>(<span><?php echo $_smarty_tpl->tpl_vars['comment']->value['total_advice']-$_smarty_tpl->tpl_vars['comment']->value['total_useful'];?>
</span>)</a>
                        </p>
					<?php if ($_smarty_tpl->tpl_vars['logged']->value==1){?>
						<?php if (!$_smarty_tpl->tpl_vars['comment']->value['customer_report']){?>
						<div class="comment_report_abuse">
                            <span class="report_btn" data-id-product-comment="<?php echo $_smarty_tpl->tpl_vars['comment']->value['id_product_comment'];?>
"><?php echo smartyTranslate(array('s'=>'Report abuse','mod'=>'productcomments'),$_smarty_tpl);?>
</span>
                        </div>
						<?php }?>
					<?php }?>
                </div>
            </div>
			</div>
			<?php }?>
		<?php } ?>
        <?php if ((!$_smarty_tpl->tpl_vars['too_early']->value&&($_smarty_tpl->tpl_vars['logged']->value||$_smarty_tpl->tpl_vars['allow_guests']->value))){?>
		<p class="align_center">
			<a id="new_comment_tab_btn" class="open-comment-form" href="#new_comment_form"><?php echo smartyTranslate(array('s'=>'Write your review','mod'=>'productcomments'),$_smarty_tpl);?>
 !</a>
		</p>
        <?php }?>
	<?php }else{ ?>
		<?php if ((!$_smarty_tpl->tpl_vars['too_early']->value&&($_smarty_tpl->tpl_vars['logged']->value||$_smarty_tpl->tpl_vars['allow_guests']->value))){?>
		<p class="align_center">
			<a id="new_comment_tab_btn" class="open-comment-form" href="#new_comment_form"><?php echo smartyTranslate(array('s'=>'Be the first to write your review','mod'=>'productcomments'),$_smarty_tpl);?>
 !</a>
		</p>
		<?php }else{ ?>
		<p class="align_center"><?php echo smartyTranslate(array('s'=>'No customer comments for the moment.','mod'=>'productcomments'),$_smarty_tpl);?>
</p>
		<?php }?>
	<?php }?>	
	</div>
</div>
<?php if (isset($_smarty_tpl->tpl_vars['product']->value)&&$_smarty_tpl->tpl_vars['product']->value){?>
<!-- Fancybox -->
<div style="display: none;">
	<div id="new_comment_form">
        <form id="id_new_comment_form" action="#">
			<h2 class="title"><?php echo smartyTranslate(array('s'=>'Write your review','mod'=>'productcomments'),$_smarty_tpl);?>
</h2>
            <?php if (isset($_smarty_tpl->tpl_vars['product']->value)&&$_smarty_tpl->tpl_vars['product']->value){?>
			<div class="product clearfix">
				<img src="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['link']->value->getImageLink($_smarty_tpl->tpl_vars['product']->value->link_rewrite,$_smarty_tpl->tpl_vars['productcomment_cover']->value,'medium_default'), ENT_QUOTES, 'UTF-8', true);?>
" height="<?php echo $_smarty_tpl->tpl_vars['mediumSize']->value['height'];?>
" width="<?php echo $_smarty_tpl->tpl_vars['mediumSize']->value['width'];?>
" alt="<?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['product']->value->name, 'html', 'UTF-8');?>
" class="hidden-phone" />
                <h5 class="product_name"><?php echo $_smarty_tpl->tpl_vars['product']->value->name;?>
</h5>
				<div class="product_desc">
					<?php echo $_smarty_tpl->tpl_vars['product']->value->description_short;?>

				</div>
			</div>
            <?php }?>
			<div class="new_comment_form_content">
				<h4><?php echo smartyTranslate(array('s'=>'Write your review','mod'=>'productcomments'),$_smarty_tpl);?>
</h4>

				<div id="new_comment_form_error" class="error mar_b6" style="display: none;">
					<ul></ul>
				</div>

				<?php if (count($_smarty_tpl->tpl_vars['criterions']->value)>0){?>
					<ul id="criterions_list">
					<?php  $_smarty_tpl->tpl_vars['criterion'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['criterion']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['criterions']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['criterion']->key => $_smarty_tpl->tpl_vars['criterion']->value){
$_smarty_tpl->tpl_vars['criterion']->_loop = true;
?>
						<li>
							<label><?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['criterion']->value['name'], 'html', 'UTF-8');?>
:</label>
							<div class="star_content">
								<input class="star" type="radio" name="criterion[<?php echo round($_smarty_tpl->tpl_vars['criterion']->value['id_product_comment_criterion']);?>
]" value="1" />
								<input class="star" type="radio" name="criterion[<?php echo round($_smarty_tpl->tpl_vars['criterion']->value['id_product_comment_criterion']);?>
]" value="2" />
								<input class="star" type="radio" name="criterion[<?php echo round($_smarty_tpl->tpl_vars['criterion']->value['id_product_comment_criterion']);?>
]" value="3" checked="checked" />
								<input class="star" type="radio" name="criterion[<?php echo round($_smarty_tpl->tpl_vars['criterion']->value['id_product_comment_criterion']);?>
]" value="4" />
								<input class="star" type="radio" name="criterion[<?php echo round($_smarty_tpl->tpl_vars['criterion']->value['id_product_comment_criterion']);?>
]" value="5" />
							</div>
							<div class="clearfix"></div>
						</li>
					<?php } ?>
					</ul>
				<?php }?>

				<label for="comment_title"><?php echo smartyTranslate(array('s'=>'Title','mod'=>'productcomments'),$_smarty_tpl);?>
: <sup class="required">*</sup></label>
				<input id="comment_title" name="title" type="text" value=""/>

				<label for="content"><?php echo smartyTranslate(array('s'=>'Comment','mod'=>'productcomments'),$_smarty_tpl);?>
: <sup class="required">*</sup></label>
				<textarea id="content" name="content"></textarea>

				<?php if ($_smarty_tpl->tpl_vars['allow_guests']->value==true&&$_smarty_tpl->tpl_vars['logged']->value==0){?>
				<label><?php echo smartyTranslate(array('s'=>'Your name','mod'=>'productcomments'),$_smarty_tpl);?>
: <sup class="required">*</sup></label>
				<input id="commentCustomerName" name="customer_name" type="text" value=""/>
				<?php }?>

				<div id="new_comment_form_footer">
					<input id="id_product_comment_send" name="id_product" type="hidden" value='<?php echo $_smarty_tpl->tpl_vars['id_product_comment_form']->value;?>
' />
					<p class="fl required"><sup>*</sup> <?php echo smartyTranslate(array('s'=>'Required fields','mod'=>'productcomments'),$_smarty_tpl);?>
</p>
					<p class="fr">
						<button id="submitNewMessage" name="submitMessage" type="submit"><?php echo smartyTranslate(array('s'=>'Send','mod'=>'productcomments'),$_smarty_tpl);?>
</button>&nbsp;
						<?php echo smartyTranslate(array('s'=>'or','mod'=>'productcomments'),$_smarty_tpl);?>
&nbsp;<a href="#" onclick="art.dialog({'id':'art_comment_form'}).close();"><?php echo smartyTranslate(array('s'=>'Cancel','mod'=>'productcomments'),$_smarty_tpl);?>
</a>
					</p>
					<div class="clearfix"></div>
				</div>
			</div>
		</form><!-- /end new_comment_form_content -->
	</div> 
    <div id="thank_comment_msg" class="hidden">
        <div class="mar_b1">
            <p><?php echo smartyTranslate(array('s'=>'Thank you for comment.','mod'=>'productcomments'),$_smarty_tpl);?>
</p>
            <?php if (isset($_smarty_tpl->tpl_vars['moderation_active']->value)){?>
                <?php if ($_smarty_tpl->tpl_vars['moderation_active']->value){?>
                    <?php echo smartyTranslate(array('s'=>'Your comment has been added and will be available once approved by a moderator','mod'=>'productcomments'),$_smarty_tpl);?>

                <?php }else{ ?>
                    <?php echo smartyTranslate(array('s'=>'Your comment has been added!','mod'=>'productcomments'),$_smarty_tpl);?>

                <?php }?>
            <?php }else{ ?>
                <?php echo smartyTranslate(array('s'=>'Your comment may be awaiting moderation before being published.','mod'=>'productcomments'),$_smarty_tpl);?>

            <?php }?>
        </div>
        <div class="text-center"><a href="javascript:;" id="thank_comment_close" class="button"><?php echo smartyTranslate(array('s'=>'Close','mod'=>'productcomments'),$_smarty_tpl);?>
</a></div>
    </div>
</div>
<!-- End fancybox -->
<?php }?>
<?php }} ?>