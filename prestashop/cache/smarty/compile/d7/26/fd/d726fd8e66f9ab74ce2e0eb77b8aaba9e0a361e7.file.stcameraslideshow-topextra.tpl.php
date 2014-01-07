<?php /* Smarty version Smarty-3.1.14, created on 2014-01-07 16:01:27
         compiled from "D:\wamp\www\1561\prestashop\modules\stcameraslideshow\views\templates\hook\stcameraslideshow-topextra.tpl" */ ?>
<?php /*%%SmartyHeaderCode:602552cc08b7a1b8f2-17418158%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'd726fd8e66f9ab74ce2e0eb77b8aaba9e0a361e7' => 
    array (
      0 => 'D:\\wamp\\www\\1561\\prestashop\\modules\\stcameraslideshow\\views\\templates\\hook\\stcameraslideshow-topextra.tpl',
      1 => 1389102192,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '602552cc08b7a1b8f2-17418158',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'slide_group' => 0,
    'google_font_links' => 0,
    'slide' => 0,
    'hasSlide' => 0,
    'banner' => 0,
    'image_path' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_52cc08b805ea83_28060062',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52cc08b805ea83_28060062')) {function content_52cc08b805ea83_28060062($_smarty_tpl) {?><?php if (!is_callable('smarty_modifier_escape')) include 'D:\\wamp\\www\\1561\\prestashop\\tools\\smarty\\plugins\\modifier.escape.php';
?><!-- MODULE stcameraslideshow -->
<?php if (isset($_smarty_tpl->tpl_vars['slide_group']->value)){?>
    <?php if (isset($_smarty_tpl->tpl_vars['google_font_links']->value)){?><?php echo $_smarty_tpl->tpl_vars['google_font_links']->value;?>
<?php }?>
	<?php $_smarty_tpl->tpl_vars["hasSlide"] = new Smarty_variable("false", null, 0);?>
    <?php  $_smarty_tpl->tpl_vars['slide'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['slide']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['slide_group']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['slide']->key => $_smarty_tpl->tpl_vars['slide']->value){
$_smarty_tpl->tpl_vars['slide']->_loop = true;
?>
        <?php if (isset($_smarty_tpl->tpl_vars['slide']->value['slide'])&&($_smarty_tpl->tpl_vars['hasSlide']->value=="false")){?>
	        <?php $_smarty_tpl->tpl_vars["hasSlide"] = new Smarty_variable("true", null, 0);?>
            <div class="slideshow_block <?php if ($_smarty_tpl->tpl_vars['slide']->value['location']==1||$_smarty_tpl->tpl_vars['slide']->value['location']==7){?> fullwidth_slideshow <?php }?> <?php if ($_smarty_tpl->tpl_vars['slide']->value['hide_on_mobile']){?> hidden-phone <?php }?> <?php if ($_smarty_tpl->tpl_vars['slide']->value['location']==4||$_smarty_tpl->tpl_vars['slide']->value['location']==8||$_smarty_tpl->tpl_vars['slide']->value['location']==13||$_smarty_tpl->tpl_vars['slide']->value['location']==14){?> wide_container <?php }?> clearfix">
                <?php if ($_smarty_tpl->tpl_vars['slide']->value['location']==4||$_smarty_tpl->tpl_vars['slide']->value['location']==8||$_smarty_tpl->tpl_vars['slide']->value['location']==13||$_smarty_tpl->tpl_vars['slide']->value['location']==14){?>
                    <div class="container clearfix">
                <?php }?>
                <?php if ($_smarty_tpl->tpl_vars['slide']->value['location']==13||$_smarty_tpl->tpl_vars['slide']->value['location']==14){?>
                    <div class="row">
                        <div class="<?php if ($_smarty_tpl->tpl_vars['slide']->value['location']==13){?> span8 <?php }elseif($_smarty_tpl->tpl_vars['slide']->value['location']==14){?> span9 <?php }?> clearfix">
                <?php }?>
                <div class="camera_wrap camera_emboss" id="camera_wrap_<?php echo $_smarty_tpl->tpl_vars['slide']->value['id_st_camera_slideshow_group'];?>
">
                    <?php  $_smarty_tpl->tpl_vars['banner'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['banner']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['slide']->value['slide']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['banner']->key => $_smarty_tpl->tpl_vars['banner']->value){
$_smarty_tpl->tpl_vars['banner']->_loop = true;
?>
                        <div data-thumb="<?php if ((isset($_smarty_tpl->tpl_vars['banner']->value['thumb_multi_lang'])&&$_smarty_tpl->tpl_vars['banner']->value['thumb_multi_lang'])){?><?php echo $_smarty_tpl->tpl_vars['banner']->value['thumb_multi_lang'];?>
<?php }else{ ?><?php echo $_smarty_tpl->tpl_vars['banner']->value['thumb'];?>
<?php }?>" data-src="<?php if ((isset($_smarty_tpl->tpl_vars['banner']->value['image_multi_lang'])&&$_smarty_tpl->tpl_vars['banner']->value['image_multi_lang'])){?><?php echo $_smarty_tpl->tpl_vars['banner']->value['image_multi_lang'];?>
<?php }else{ ?><?php echo $_smarty_tpl->tpl_vars['banner']->value['image'];?>
<?php }?>" <?php if ($_smarty_tpl->tpl_vars['banner']->value['url']&&!$_smarty_tpl->tpl_vars['banner']->value['button']){?> data-link="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['banner']->value['url'], ENT_QUOTES, 'UTF-8', true);?>
" data-target="<?php if ($_smarty_tpl->tpl_vars['banner']->value['new_window']){?>_blank<?php }else{ ?>_self<?php }?>" <?php }?>>
                            <?php if ($_smarty_tpl->tpl_vars['banner']->value['description']!=''&&$_smarty_tpl->tpl_vars['slide']->value['location']!=13&&$_smarty_tpl->tpl_vars['slide']->value['location']!=14){?>
                            <div class="camera_caption fadeFromBottom">
                                <div class="container">
                                    <div id="camera_caption_<?php echo $_smarty_tpl->tpl_vars['banner']->value['id_st_camera_slideshow'];?>
" class="camera_caption_box hidden-phone <?php echo $_smarty_tpl->tpl_vars['banner']->value['text_position'];?>
 <?php if ($_smarty_tpl->tpl_vars['banner']->value['text_position']=='center_center'){?>container<?php }?> <?php if ($_smarty_tpl->tpl_vars['banner']->value['text_align']==2){?>text-left<?php }elseif($_smarty_tpl->tpl_vars['banner']->value['text_align']==3){?>text-right<?php }else{ ?>text-center<?php }?>">
				    <?php if ($_smarty_tpl->tpl_vars['banner']->value['text_position']=='center_center'){?><div class="camera_caption_inner"><?php }?>
                                    <?php echo $_smarty_tpl->tpl_vars['banner']->value['description'];?>

                                    <div class="clearBoth mar_b6"></div>
                                    <?php if ($_smarty_tpl->tpl_vars['banner']->value['url']&&$_smarty_tpl->tpl_vars['banner']->value['button']){?>
                                        <a href="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['banner']->value['url'], ENT_QUOTES, 'UTF-8', true);?>
" target="<?php if ($_smarty_tpl->tpl_vars['banner']->value['new_window']){?>_blank<?php }else{ ?>_self<?php }?>" title="<?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['banner']->value['title'], 'htmlall', 'UTF-8');?>
" class="button btn_primary"><?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['banner']->value['button'], 'htmlall', 'UTF-8');?>
</a>
                                    <?php }?>
				    <?php if ($_smarty_tpl->tpl_vars['banner']->value['text_position']=='center_center'){?></div><?php }?>
                                    </div>
                                </div>
                            </div>
                            <?php }?>
                        </div>
                    <?php } ?>
                </div>
                <?php if ($_smarty_tpl->tpl_vars['slide']->value['location']==13||$_smarty_tpl->tpl_vars['slide']->value['location']==14){?>
                        </div>
                        <div class="<?php if ($_smarty_tpl->tpl_vars['slide']->value['location']==13){?> span4 camera_banner_2 <?php }elseif($_smarty_tpl->tpl_vars['slide']->value['location']==14){?> span3 camera_banner_3 <?php }?> camera_banner_nbr_<?php echo count($_smarty_tpl->tpl_vars['slide']->value['banners']);?>
 clearfix">
                        <?php if (isset($_smarty_tpl->tpl_vars['slide']->value['banners'])&&count($_smarty_tpl->tpl_vars['slide']->value['banners'])){?>
                            <?php  $_smarty_tpl->tpl_vars['banner'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['banner']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['slide']->value['banners']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['banner']->key => $_smarty_tpl->tpl_vars['banner']->value){
$_smarty_tpl->tpl_vars['banner']->_loop = true;
?>
                                <div class="camera_banner">
                                    <?php if ($_smarty_tpl->tpl_vars['banner']->value['url']){?><a href="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['banner']->value['url'], ENT_QUOTES, 'UTF-8', true);?>
" target="<?php if ($_smarty_tpl->tpl_vars['banner']->value['new_window']){?>_blank<?php }else{ ?>_self<?php }?>" title="<?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['banner']->value['title'], 'htmlall', 'UTF-8');?>
"><?php }?>
                                        <img src="<?php echo $_smarty_tpl->tpl_vars['banner']->value['image_multi_lang'];?>
" alt="<?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['banner']->value['title'], 'htmlall', 'UTF-8');?>
" class="hover_effect" />
                                    <?php if ($_smarty_tpl->tpl_vars['banner']->value['url']){?></a><?php }?>
                                </div>
                            <?php } ?>
                        <?php }?>
                        </div>
                    </div>
                <?php }?>
                <?php if ($_smarty_tpl->tpl_vars['slide']->value['location']==4||$_smarty_tpl->tpl_vars['slide']->value['location']==8||$_smarty_tpl->tpl_vars['slide']->value['location']==13||$_smarty_tpl->tpl_vars['slide']->value['location']==14){?></div><?php }?>
                <script type="text/javascript">
                //<![CDATA[
                
                jQuery(function($) {   
                    $('#camera_wrap_<?php echo $_smarty_tpl->tpl_vars['slide']->value['id_st_camera_slideshow_group'];?>
').camera({
            			autoAdvance: <?php echo $_smarty_tpl->tpl_vars['slide']->value['auto_advance'];?>
,
            			mobileAutoAdvance:<?php echo $_smarty_tpl->tpl_vars['slide']->value['auto_advance'];?>
,
            			barDirection : 'leftToRight',
            			barPosition : '<?php echo $_smarty_tpl->tpl_vars['slide']->value['bar_position'];?>
',
                        cols : <?php echo $_smarty_tpl->tpl_vars['slide']->value['mosaic_columns'];?>
,
            			easing: '<?php echo $_smarty_tpl->tpl_vars['slide']->value['easing'];?>
',
            			fx : '<?php echo $_smarty_tpl->tpl_vars['slide']->value['effects'];?>
',
            			mobileFx : 'scrollRight',
            			height	: '<?php echo $_smarty_tpl->tpl_vars['slide']->value['height_ratio'];?>
%',
            			hover : <?php echo $_smarty_tpl->tpl_vars['slide']->value['pause'];?>
,
            			loader : '<?php if ($_smarty_tpl->tpl_vars['slide']->value['loader']==1){?>pie<?php }elseif($_smarty_tpl->tpl_vars['slide']->value['loader']==2){?>bar<?php }else{ ?>none<?php }?>',
            			loaderColor: '<?php echo $_smarty_tpl->tpl_vars['slide']->value['loader_color'];?>
',
            			loaderBgColor: '<?php echo $_smarty_tpl->tpl_vars['slide']->value['loader_bg'];?>
',
            			loaderOpacity: .8,
            			loaderPadding: 0,
            			loaderStroke: 4,
                        minHeight : '',
            			navigation : <?php echo $_smarty_tpl->tpl_vars['slide']->value['prev_next'];?>
,
            			navigationHover : <?php echo $_smarty_tpl->tpl_vars['slide']->value['prev_next_on_hover'];?>
,
                        mobileNavHover : false,		
            			pagination : <?php echo $_smarty_tpl->tpl_vars['slide']->value['pag_nav'];?>
,	
                        playPause :false,
            			piePosition : '<?php echo $_smarty_tpl->tpl_vars['slide']->value['pie_position'];?>
',
                        portrait : true,
            			rows: <?php echo $_smarty_tpl->tpl_vars['slide']->value['mosaic_rows'];?>
,
            			slicedCols: <?php echo $_smarty_tpl->tpl_vars['slide']->value['curtain_columns'];?>
,
            			slicedRows: <?php echo $_smarty_tpl->tpl_vars['slide']->value['blind_rows'];?>
,
            			slideOn: 'random',
            			thumbnails : false,
            			time : <?php echo $_smarty_tpl->tpl_vars['slide']->value['time'];?>
,
            			transPeriod : <?php echo $_smarty_tpl->tpl_vars['slide']->value['trans_period'];?>
,
                        imagePath : '<?php echo $_smarty_tpl->tpl_vars['image_path']->value;?>
',
                        withbanners : <?php if ($_smarty_tpl->tpl_vars['slide']->value['location']==13||$_smarty_tpl->tpl_vars['slide']->value['location']==14){?>true<?php }else{ ?>false<?php }?>,
                        onLoaded : function(cs){
                            $('.camera_prev,.camera_next',cs).removeClass('hidden');
                        }
            		});
                });
                 
                //]]>
                </script>
            </div>
        <?php }?>
    <?php } ?>
<?php }?>
<!--/ MODULE stcameraslideshow --><?php }} ?>