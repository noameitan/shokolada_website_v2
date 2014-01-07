<?php /* Smarty version Smarty-3.1.14, created on 2014-01-07 16:01:28
         compiled from "D:\wamp\www\1561\prestashop\themes\transformer\footer.tpl" */ ?>
<?php /*%%SmartyHeaderCode:2958252cc08b80877d8-27044612%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '3814c67801de5f61c6672217e9746f6dd4f23d88' => 
    array (
      0 => 'D:\\wamp\\www\\1561\\prestashop\\themes\\transformer\\footer.tpl',
      1 => 1389102132,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '2958252cc08b80877d8-27044612',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'content_only' => 0,
    'st_hide_right_column' => 0,
    'HOOK_RIGHT_COLUMN' => 0,
    'HOOK_FOOTER_TOP' => 0,
    'HOOK_FOOTER' => 0,
    'HOOK_FOOTER_SECONDARY' => 0,
    'sttheme' => 0,
    'page_name' => 0,
    'rightbar_i' => 0,
    'st_hide_left_column' => 0,
    'comparator_max_item' => 0,
    'link' => 0,
    'isIntalledBlockWishlist' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_52cc08b852c4a8_79267058',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52cc08b852c4a8_79267058')) {function content_52cc08b852c4a8_79267058($_smarty_tpl) {?><?php if (!is_callable('smarty_modifier_escape')) include 'D:\\wamp\\www\\1561\\prestashop\\tools\\smarty\\plugins\\modifier.escape.php';
?>

		<?php if (!$_smarty_tpl->tpl_vars['content_only']->value){?>
				</div>
                <!--/ Center -->
				<!-- Right -->
                <?php if (!$_smarty_tpl->tpl_vars['st_hide_right_column']->value){?>
				<div id="right_column" class="span3">
					<?php echo $_smarty_tpl->tpl_vars['HOOK_RIGHT_COLUMN']->value;?>

				</div>
                <?php }?>
				<!--/ Right -->
                
			</div>
        </div>
        </div>
        </div>
<!-- Footer -->
        <footer id="footer">
            <?php if ($_smarty_tpl->tpl_vars['HOOK_FOOTER_TOP']->value){?>
            <section id="footer-top">
			<div class="wide_container">
            <div class="container">
                <div class="row">
                    <?php echo $_smarty_tpl->tpl_vars['HOOK_FOOTER_TOP']->value;?>

                </div>
			</div>
            </div>
            </section>
            <?php }?>
            <?php if ($_smarty_tpl->tpl_vars['HOOK_FOOTER']->value){?>
            <section id="footer-primary">
			<div class="wide_container">
			<div class="container">
                <div class="row">
				    <?php echo $_smarty_tpl->tpl_vars['HOOK_FOOTER']->value;?>

                </div>
			</div>
            </div>
            </section>
            <?php }?>
            <?php if ($_smarty_tpl->tpl_vars['HOOK_FOOTER_SECONDARY']->value){?>
            <section id="footer-secondary">
			<div class="wide_container">
			<div class="container">
                <div class="row">
				    <?php echo $_smarty_tpl->tpl_vars['HOOK_FOOTER_SECONDARY']->value;?>

                </div>
			</div>
            </div>
            </section>
            <?php }?>
            <div id="footer_info">
			<div class="wide_container">
    			<div class="container">
                    <div class="row">
                        <div class="span12">
                        <aside id="copyright_text" class="fl"><?php if (isset($_smarty_tpl->tpl_vars['sttheme']->value['copyright_text'])){?><?php echo $_smarty_tpl->tpl_vars['sttheme']->value['copyright_text'];?>
<?php }?></aside>    
                        <?php if (isset($_smarty_tpl->tpl_vars['sttheme']->value['footer_img_src'])&&$_smarty_tpl->tpl_vars['sttheme']->value['footer_img_src']){?>            
                        <aside id="paymants_logos" class="fr">
                            <img src="<?php echo $_smarty_tpl->tpl_vars['sttheme']->value['footer_img_src'];?>
" alt="<?php echo smartyTranslate(array('s'=>'Payment methods'),$_smarty_tpl);?>
" />
                        </aside>
                        <?php }?>
                        </div>
                    </div>
                </div>
            </div>
            </div>
        </footer>
<!-- Footer -->
    <?php if (isset($_smarty_tpl->tpl_vars['sttheme']->value['boxstyle'])&&$_smarty_tpl->tpl_vars['sttheme']->value['boxstyle']==2){?></div><?php }?>
    </div>
    <?php $_smarty_tpl->_capture_stack[0][] = array("rightbar_strightbarcart", null, null); ob_start(); ?>
        <?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['hook'][0][0]->smartyHook(array('h'=>'displayAnywhere','mod'=>'strightbarcart','caller'=>'strightbarcart'),$_smarty_tpl);?>
 
    <?php list($_capture_buffer, $_capture_assign, $_capture_append) = array_pop($_smarty_tpl->_capture_stack[0]);
if (!empty($_capture_buffer)) {
 if (isset($_capture_assign)) $_smarty_tpl->assign($_capture_assign, ob_get_contents());
 if (isset( $_capture_append)) $_smarty_tpl->append( $_capture_append, ob_get_contents());
 Smarty::$_smarty_vars['capture'][$_capture_buffer]=ob_get_clean();
} else $_smarty_tpl->capture_error();?>
    <?php $_smarty_tpl->_capture_stack[0][] = array("rightbar_stcompare", null, null); ob_start(); ?>
        <?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['hook'][0][0]->smartyHook(array('h'=>'displayAnywhere','mod'=>'stcompare','caller'=>'stcompare'),$_smarty_tpl);?>

    <?php list($_capture_buffer, $_capture_assign, $_capture_append) = array_pop($_smarty_tpl->_capture_stack[0]);
if (!empty($_capture_buffer)) {
 if (isset($_capture_assign)) $_smarty_tpl->assign($_capture_assign, ob_get_contents());
 if (isset( $_capture_append)) $_smarty_tpl->append( $_capture_append, ob_get_contents());
 Smarty::$_smarty_vars['capture'][$_capture_buffer]=ob_get_clean();
} else $_smarty_tpl->capture_error();?>
    <?php $_smarty_tpl->_capture_stack[0][] = array("rightbar_productlinknav_prev", null, null); ob_start(); ?>
    <?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['hook'][0][0]->smartyHook(array('h'=>'displayAnywhere','mod'=>'stproductlinknav','nav'=>'prev','caller'=>'stproductlinknav'),$_smarty_tpl);?>

    <?php list($_capture_buffer, $_capture_assign, $_capture_append) = array_pop($_smarty_tpl->_capture_stack[0]);
if (!empty($_capture_buffer)) {
 if (isset($_capture_assign)) $_smarty_tpl->assign($_capture_assign, ob_get_contents());
 if (isset( $_capture_append)) $_smarty_tpl->append( $_capture_append, ob_get_contents());
 Smarty::$_smarty_vars['capture'][$_capture_buffer]=ob_get_clean();
} else $_smarty_tpl->capture_error();?>
    <?php $_smarty_tpl->_capture_stack[0][] = array("rightbar_productlinknav_next", null, null); ob_start(); ?>
    <?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['hook'][0][0]->smartyHook(array('h'=>'displayAnywhere','mod'=>'stproductlinknav','nav'=>'next','caller'=>'stproductlinknav'),$_smarty_tpl);?>

    <?php list($_capture_buffer, $_capture_assign, $_capture_append) = array_pop($_smarty_tpl->_capture_stack[0]);
if (!empty($_capture_buffer)) {
 if (isset($_capture_assign)) $_smarty_tpl->assign($_capture_assign, ob_get_contents());
 if (isset( $_capture_append)) $_smarty_tpl->append( $_capture_append, ob_get_contents());
 Smarty::$_smarty_vars['capture'][$_capture_buffer]=ob_get_clean();
} else $_smarty_tpl->capture_error();?>
    <?php $_smarty_tpl->_capture_stack[0][] = array("rightbar_bloglinknav_prev", null, null); ob_start(); ?>
    <?php if ($_smarty_tpl->tpl_vars['page_name']->value=='module-stblog-article'){?>
    <?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['hook'][0][0]->smartyHook(array('h'=>'displayAnywhere','mod'=>'stbloglinknav','nav'=>'prev','caller'=>'stbloglinknav'),$_smarty_tpl);?>

    <?php }?>
    <?php list($_capture_buffer, $_capture_assign, $_capture_append) = array_pop($_smarty_tpl->_capture_stack[0]);
if (!empty($_capture_buffer)) {
 if (isset($_capture_assign)) $_smarty_tpl->assign($_capture_assign, ob_get_contents());
 if (isset( $_capture_append)) $_smarty_tpl->append( $_capture_append, ob_get_contents());
 Smarty::$_smarty_vars['capture'][$_capture_buffer]=ob_get_clean();
} else $_smarty_tpl->capture_error();?>
    <?php $_smarty_tpl->_capture_stack[0][] = array("rightbar_bloglinknav_next", null, null); ob_start(); ?>
    <?php if ($_smarty_tpl->tpl_vars['page_name']->value=='module-stblog-article'){?>
    <?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['hook'][0][0]->smartyHook(array('h'=>'displayAnywhere','mod'=>'stbloglinknav','nav'=>'next','caller'=>'stbloglinknav'),$_smarty_tpl);?>

    <?php }?>
    <?php list($_capture_buffer, $_capture_assign, $_capture_append) = array_pop($_smarty_tpl->_capture_stack[0]);
if (!empty($_capture_buffer)) {
 if (isset($_capture_assign)) $_smarty_tpl->assign($_capture_assign, ob_get_contents());
 if (isset( $_capture_append)) $_smarty_tpl->append( $_capture_append, ob_get_contents());
 Smarty::$_smarty_vars['capture'][$_capture_buffer]=ob_get_clean();
} else $_smarty_tpl->capture_error();?>
    <?php $_smarty_tpl->tpl_vars["rightbar_i"] = new Smarty_variable(0, null, 0);?>
    <?php if (trim(Smarty::$_smarty_vars['capture']['rightbar_strightbarcart'])){?><?php $_smarty_tpl->tpl_vars["rightbar_i"] = new Smarty_variable($_smarty_tpl->tpl_vars['rightbar_i']->value+1, null, 0);?><?php }?>
    <?php if (trim(Smarty::$_smarty_vars['capture']['rightbar_stcompare'])){?><?php $_smarty_tpl->tpl_vars["rightbar_i"] = new Smarty_variable($_smarty_tpl->tpl_vars['rightbar_i']->value+1, null, 0);?><?php }?>
    <?php if (trim(Smarty::$_smarty_vars['capture']['rightbar_productlinknav_prev'])){?><?php $_smarty_tpl->tpl_vars["rightbar_i"] = new Smarty_variable($_smarty_tpl->tpl_vars['rightbar_i']->value+1, null, 0);?><?php }?>
    <?php if (trim(Smarty::$_smarty_vars['capture']['rightbar_productlinknav_next'])){?><?php $_smarty_tpl->tpl_vars["rightbar_i"] = new Smarty_variable($_smarty_tpl->tpl_vars['rightbar_i']->value+1, null, 0);?><?php }?>
    <?php if (trim(Smarty::$_smarty_vars['capture']['rightbar_bloglinknav_prev'])){?><?php $_smarty_tpl->tpl_vars["rightbar_i"] = new Smarty_variable($_smarty_tpl->tpl_vars['rightbar_i']->value+1, null, 0);?><?php }?>
    <?php if (trim(Smarty::$_smarty_vars['capture']['rightbar_bloglinknav_next'])){?><?php $_smarty_tpl->tpl_vars["rightbar_i"] = new Smarty_variable($_smarty_tpl->tpl_vars['rightbar_i']->value+1, null, 0);?><?php }?>
    <?php if (!$_smarty_tpl->tpl_vars['st_hide_left_column']->value){?><?php $_smarty_tpl->tpl_vars["rightbar_i"] = new Smarty_variable($_smarty_tpl->tpl_vars['rightbar_i']->value+1, null, 0);?><?php }?>
    <?php if (!$_smarty_tpl->tpl_vars['st_hide_right_column']->value){?><?php $_smarty_tpl->tpl_vars["rightbar_i"] = new Smarty_variable($_smarty_tpl->tpl_vars['rightbar_i']->value+1, null, 0);?><?php }?>
    <?php if ((!isset($_smarty_tpl->tpl_vars['sttheme']->value['scroll_to_top'])||(isset($_smarty_tpl->tpl_vars['sttheme']->value['scroll_to_top'])&&$_smarty_tpl->tpl_vars['sttheme']->value['scroll_to_top']))){?><?php $_smarty_tpl->tpl_vars["rightbar_i"] = new Smarty_variable($_smarty_tpl->tpl_vars['rightbar_i']->value+1, null, 0);?><?php }?>
    
    <div id="rightbar" class="<?php if (!$_smarty_tpl->tpl_vars['rightbar_i']->value){?> hidden <?php }?>"> 
        <div id="rightbar_inner" class="clearfix rightbar_<?php echo $_smarty_tpl->tpl_vars['rightbar_i']->value;?>
">
        <?php echo Smarty::$_smarty_vars['capture']['rightbar_strightbarcart'];?>

        <?php echo Smarty::$_smarty_vars['capture']['rightbar_stcompare'];?>

        <?php echo Smarty::$_smarty_vars['capture']['rightbar_productlinknav_prev'];?>

        <?php echo Smarty::$_smarty_vars['capture']['rightbar_productlinknav_next'];?>

        <?php echo Smarty::$_smarty_vars['capture']['rightbar_bloglinknav_prev'];?>

        <?php echo Smarty::$_smarty_vars['capture']['rightbar_bloglinknav_next'];?>

        <?php if (!$_smarty_tpl->tpl_vars['st_hide_left_column']->value){?>
        <div id="switch_left_column_wrap" class="visible-phone">
            <a href="javascript:;" id="switch_left_column" data-column="left_column" class="icon_wrap" title="<?php echo smartyTranslate(array('s'=>"Display left column"),$_smarty_tpl);?>
"><i class="icon-right-open-1 icon-0x"></i><span class="icon_text"><?php echo smartyTranslate(array('s'=>"Left"),$_smarty_tpl);?>
</span></a>   
        </div>
        <?php }?>
        <?php if (!$_smarty_tpl->tpl_vars['st_hide_right_column']->value){?>
        <div id="switch_right_column_wrap" class="visible-phone">
            <a href="javascript:;" id="switch_right_column" data-column="right_column" class="icon_wrap" title="<?php echo smartyTranslate(array('s'=>"Display right column"),$_smarty_tpl);?>
"><i class="icon-left-open-1 icon-0x"></i><span class="icon_text"><?php echo smartyTranslate(array('s'=>"Right"),$_smarty_tpl);?>
</span></a>   
        </div>
        <?php }?>
        <?php if ((!isset($_smarty_tpl->tpl_vars['sttheme']->value['scroll_to_top'])||(isset($_smarty_tpl->tpl_vars['sttheme']->value['scroll_to_top'])&&$_smarty_tpl->tpl_vars['sttheme']->value['scroll_to_top']))){?>
        <div id="to_top_wrap">
            <div id="to_top"><a href="#top_bar" class="icon_wrap disabled" title="<?php echo smartyTranslate(array('s'=>"Back to top"),$_smarty_tpl);?>
"><i class="icon-up-open-2 icon-0x"></i><span class="icon_text"><?php echo smartyTranslate(array('s'=>"Top"),$_smarty_tpl);?>
</span></a></div>
        </div>
        <?php }?>
        </div>  
    </div>
	<?php }?>
    
    <?php if ($_smarty_tpl->tpl_vars['comparator_max_item']->value){?>
    <div id="compare_message" class="dialog_message">
        <div class="clearfix mar_b10">
            <div id="compare_pro_img" class="fl dialog_pro_img">
            </div>
            <div id="compare_pro_info" class="fr dialog_pro_info">
                <div id="compare_pro_title" class="dialog_pro_title"></div>
            </div>
        </div>
        <p id="compare_add_success" class="success hidden"><?php echo smartyTranslate(array('s'=>'has been added to compare.'),$_smarty_tpl);?>
</p>
        <p id="compare_remove_success" class="success hidden"><?php echo smartyTranslate(array('s'=>'has been removed from compare.'),$_smarty_tpl);?>
</p>
        <p id="compare_error" class="warning hidden"></p>
        <div class="dialog_action clearfix">
            <a id="compare_continue" class="fl button" href="javascript:;" rel="nofollow"><?php echo smartyTranslate(array('s'=>'Continue shopping'),$_smarty_tpl);?>
</a>
            <a class="fr button" href="<?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['link']->value->getPageLink('products-comparison'), 'htmlall', 'UTF-8');?>
" title="<?php echo smartyTranslate(array('s'=>'Compare'),$_smarty_tpl);?>
" rel="nofollow"><?php echo smartyTranslate(array('s'=>'Compare'),$_smarty_tpl);?>
</a>
        </div>
    </div>
    <script type="text/javascript">
    // <![CDATA[
    	var st_compare_min_item = '<?php echo smartyTranslate(array('s'=>'Please select at least one product','js'=>1),$_smarty_tpl);?>
';
    	var st_compare_max_item = "<?php echo smartyTranslate(array('s'=>'You cannot add more than %d product(s) to the product comparison','sprintf'=>$_smarty_tpl->tpl_vars['comparator_max_item']->value,'js'=>1),$_smarty_tpl);?>
";
    //]]>
    </script>
    <?php }?>
    <?php if ($_smarty_tpl->tpl_vars['isIntalledBlockWishlist']->value){?>
        <div id="wishlist_message" class="dialog_message">
            <p id="wishlist_pro_title" class="dialog_pro_title"></p>
            <p id="wishlist_add_success" class="success"><?php echo smartyTranslate(array('s'=>'has been added to your wishlist.'),$_smarty_tpl);?>
</p>
            <div class="clearfix">
                <a id="wishlist_continue" class="fl button" href="javascript:;" rel="nofollow"><?php echo smartyTranslate(array('s'=>'Continue shopping'),$_smarty_tpl);?>
</a>
                <a class="fr button" href="<?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['link']->value->getModuleLink('blockwishlist','mywishlist'), 'htmlall', 'UTF-8');?>
" title="<?php echo smartyTranslate(array('s'=>'My wishlists'),$_smarty_tpl);?>
" rel="nofollow"><?php echo smartyTranslate(array('s'=>'My wishlists'),$_smarty_tpl);?>
</a>
            </div>
        </div>
    <?php }?>
    <?php if (isset($_smarty_tpl->tpl_vars['sttheme']->value['tracking_code'])&&$_smarty_tpl->tpl_vars['sttheme']->value['tracking_code']){?><?php echo $_smarty_tpl->tpl_vars['sttheme']->value['tracking_code'];?>
<?php }?>
	</body>
</html><?php }} ?>