<?php /* Smarty version Smarty-3.1.14, created on 2014-01-20 23:51:04
         compiled from "D:\wamp\www\1561\prestashop\themes\transformer\header.tpl" */ ?>
<?php /*%%SmartyHeaderCode:3148452dd9a481139b9-56736532%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '599917847e187768a81c5653acf78c8066cda8a7' => 
    array (
      0 => 'D:\\wamp\\www\\1561\\prestashop\\themes\\transformer\\header.tpl',
      1 => 1389102132,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '3148452dd9a481139b9-56736532',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'lang_iso' => 0,
    'meta_title' => 0,
    'meta_description' => 0,
    'meta_keywords' => 0,
    'sttheme' => 0,
    'meta_language' => 0,
    'nobots' => 0,
    'nofollow' => 0,
    'favicon_url' => 0,
    'img_update_time' => 0,
    'content_dir' => 0,
    'base_uri' => 0,
    'static_token' => 0,
    'token' => 0,
    'priceDisplayPrecision' => 0,
    'currency' => 0,
    'priceDisplay' => 0,
    'roundMode' => 0,
    'js_dir' => 0,
    'css_files' => 0,
    'css_uri' => 0,
    'media' => 0,
    'js_files' => 0,
    'js_uri' => 0,
    'css_dir' => 0,
    'HOOK_HEADER' => 0,
    'page_name' => 0,
    'hide_left_column' => 0,
    'hide_right_column' => 0,
    'content_only' => 0,
    'restricted_country_mode' => 0,
    'geolocation_country' => 0,
    'HOOK_TOP_BAR' => 0,
    'HOOK_TOP_LEFT' => 0,
    'logo_left_center' => 0,
    'base_dir' => 0,
    'shop_name' => 0,
    'logo_url' => 0,
    'logo_image_width' => 0,
    'logo_image_height' => 0,
    'HOOK_TOP' => 0,
    'HOOK_TOP_SECONDARY' => 0,
    'st_hide_left_column' => 0,
    'HOOK_LEFT_COLUMN' => 0,
    'st_hide_right_column' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_52dd9a49096255_52901645',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52dd9a49096255_52901645')) {function content_52dd9a49096255_52901645($_smarty_tpl) {?><?php if (!is_callable('smarty_modifier_escape')) include 'D:\\wamp\\www\\1561\\prestashop\\tools\\smarty\\plugins\\modifier.escape.php';
?>

<!DOCTYPE html>
<!--[if lt IE 7]> <html class="no-js lt-ie9 lt-ie8 lt-ie7 " lang="<?php echo $_smarty_tpl->tpl_vars['lang_iso']->value;?>
"> <![endif]-->
<!--[if IE 7]><html class="no-js lt-ie9 lt-ie8 ie7" lang="<?php echo $_smarty_tpl->tpl_vars['lang_iso']->value;?>
"> <![endif]-->
<!--[if IE 8]><html class="no-js lt-ie9 ie8" lang="<?php echo $_smarty_tpl->tpl_vars['lang_iso']->value;?>
"> <![endif]-->
<!--[if gt IE 8]> <html class="no-js ie9" lang="<?php echo $_smarty_tpl->tpl_vars['lang_iso']->value;?>
"> <![endif]-->
<html lang="<?php echo $_smarty_tpl->tpl_vars['lang_iso']->value;?>
">
	<head>
		<title><?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['meta_title']->value, 'htmlall', 'UTF-8');?>
</title>
<?php if (isset($_smarty_tpl->tpl_vars['meta_description']->value)&&$_smarty_tpl->tpl_vars['meta_description']->value){?>
		<meta name="description" content="<?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['meta_description']->value, 'html', 'UTF-8');?>
" />
<?php }?>
<?php if (isset($_smarty_tpl->tpl_vars['meta_keywords']->value)&&$_smarty_tpl->tpl_vars['meta_keywords']->value){?>
		<meta name="keywords" content="<?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['meta_keywords']->value, 'html', 'UTF-8');?>
" />
<?php }?>
        <?php if (isset($_smarty_tpl->tpl_vars['sttheme']->value['responsive'])&&$_smarty_tpl->tpl_vars['sttheme']->value['responsive']){?>
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <?php }?>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta http-equiv="content-language" content="<?php echo $_smarty_tpl->tpl_vars['meta_language']->value;?>
" />
		<meta name="robots" content="<?php if (isset($_smarty_tpl->tpl_vars['nobots']->value)){?>no<?php }?>index,<?php if (isset($_smarty_tpl->tpl_vars['nofollow']->value)&&$_smarty_tpl->tpl_vars['nofollow']->value){?>no<?php }?>follow" />
		<link rel="icon" type="image/vnd.microsoft.icon" href="<?php echo $_smarty_tpl->tpl_vars['favicon_url']->value;?>
?<?php echo $_smarty_tpl->tpl_vars['img_update_time']->value;?>
" />
		<link rel="shortcut icon" type="image/x-icon" href="<?php echo $_smarty_tpl->tpl_vars['favicon_url']->value;?>
?<?php echo $_smarty_tpl->tpl_vars['img_update_time']->value;?>
" />
        <?php if (isset($_smarty_tpl->tpl_vars['sttheme']->value['icon_iphone_57'])&&$_smarty_tpl->tpl_vars['sttheme']->value['icon_iphone_57']){?>
        <link rel="apple-touch-icon" sizes="57x57" href="<?php echo $_smarty_tpl->tpl_vars['sttheme']->value['icon_iphone_57'];?>
" />
        <?php }?>
        <?php if (isset($_smarty_tpl->tpl_vars['sttheme']->value['icon_iphone_72'])&&$_smarty_tpl->tpl_vars['sttheme']->value['icon_iphone_72']){?>
        <link rel="apple-touch-icon" sizes="72x72" href="<?php echo $_smarty_tpl->tpl_vars['sttheme']->value['icon_iphone_72'];?>
" />
        <?php }?>
        <?php if (isset($_smarty_tpl->tpl_vars['sttheme']->value['icon_iphone_114'])&&$_smarty_tpl->tpl_vars['sttheme']->value['icon_iphone_114']){?>
        <link rel="apple-touch-icon" sizes="114x114" href="<?php echo $_smarty_tpl->tpl_vars['sttheme']->value['icon_iphone_114'];?>
" />
        <?php }?>
        <?php if (isset($_smarty_tpl->tpl_vars['sttheme']->value['icon_iphone_144'])&&$_smarty_tpl->tpl_vars['sttheme']->value['icon_iphone_144']){?>
        <link rel="apple-touch-icon" sizes="144x144" href="<?php echo $_smarty_tpl->tpl_vars['sttheme']->value['icon_iphone_144'];?>
" />
        <?php }?>
		<script type="text/javascript">
			var baseDir = '<?php echo addslashes($_smarty_tpl->tpl_vars['content_dir']->value);?>
';
			var baseUri = '<?php echo addslashes($_smarty_tpl->tpl_vars['base_uri']->value);?>
';
			var static_token = '<?php echo addslashes($_smarty_tpl->tpl_vars['static_token']->value);?>
';
			var token = '<?php echo addslashes($_smarty_tpl->tpl_vars['token']->value);?>
';
			var priceDisplayPrecision = <?php echo $_smarty_tpl->tpl_vars['priceDisplayPrecision']->value*$_smarty_tpl->tpl_vars['currency']->value->decimals;?>
;
			var priceDisplayMethod = <?php echo $_smarty_tpl->tpl_vars['priceDisplay']->value;?>
;
			var roundMode = <?php echo $_smarty_tpl->tpl_vars['roundMode']->value;?>
;
		</script>
        <!--[if lt IE 9]>
        <script type="text/javascript" src="<?php echo $_smarty_tpl->tpl_vars['js_dir']->value;?>
html5shiv.js"></script>
        <?php if (isset($_smarty_tpl->tpl_vars['sttheme']->value['responsive'])&&$_smarty_tpl->tpl_vars['sttheme']->value['responsive']){?>
        <script type="text/javascript" src="<?php echo $_smarty_tpl->tpl_vars['js_dir']->value;?>
css3-mediaqueries.js" ></script>
        <?php }?>
        <![endif]-->
<?php if (isset($_smarty_tpl->tpl_vars['css_files']->value)){?>
	<?php  $_smarty_tpl->tpl_vars['media'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['media']->_loop = false;
 $_smarty_tpl->tpl_vars['css_uri'] = new Smarty_Variable;
 $_from = $_smarty_tpl->tpl_vars['css_files']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['media']->key => $_smarty_tpl->tpl_vars['media']->value){
$_smarty_tpl->tpl_vars['media']->_loop = true;
 $_smarty_tpl->tpl_vars['css_uri']->value = $_smarty_tpl->tpl_vars['media']->key;
?>
	<link href="<?php echo $_smarty_tpl->tpl_vars['css_uri']->value;?>
" rel="stylesheet" type="text/css" media="<?php echo $_smarty_tpl->tpl_vars['media']->value;?>
" />
	<?php } ?>
<?php }?>
<?php if (isset($_smarty_tpl->tpl_vars['sttheme']->value['custom_css'])&&$_smarty_tpl->tpl_vars['sttheme']->value['custom_css']){?>
	<link href="<?php echo $_smarty_tpl->tpl_vars['sttheme']->value['custom_css'];?>
" rel="stylesheet" type="text/css" media="<?php echo $_smarty_tpl->tpl_vars['sttheme']->value['custom_css_media'];?>
" />
<?php }?>
<?php if (isset($_smarty_tpl->tpl_vars['js_files']->value)){?>
	<?php  $_smarty_tpl->tpl_vars['js_uri'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['js_uri']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['js_files']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['js_uri']->key => $_smarty_tpl->tpl_vars['js_uri']->value){
$_smarty_tpl->tpl_vars['js_uri']->_loop = true;
?>
	<script type="text/javascript" src="<?php echo $_smarty_tpl->tpl_vars['js_uri']->value;?>
"></script>
	<?php } ?>
<?php }?>
<?php if (isset($_smarty_tpl->tpl_vars['sttheme']->value['custom_js'])&&$_smarty_tpl->tpl_vars['sttheme']->value['custom_js']){?>
	<script type="text/javascript" src="<?php echo $_smarty_tpl->tpl_vars['sttheme']->value['custom_js'];?>
"></script>
<?php }?>
        <!--[if lt IE 9]>
        <link rel="stylesheet" type="text/css" href="<?php echo $_smarty_tpl->tpl_vars['css_dir']->value;?>
ie8.css" media="all" />
        <script type="text/javascript" src="<?php echo $_smarty_tpl->tpl_vars['js_dir']->value;?>
ie8.js" ></script>
        <![endif]-->
        
		<?php echo $_smarty_tpl->tpl_vars['HOOK_HEADER']->value;?>

        <?php if (isset($_smarty_tpl->tpl_vars['sttheme']->value['google_font_links'])){?><?php echo $_smarty_tpl->tpl_vars['sttheme']->value['google_font_links'];?>
<?php }?>
	</head>
	
 	<body <?php if (isset($_smarty_tpl->tpl_vars['page_name']->value)){?>id="<?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['page_name']->value, 'htmlall', 'UTF-8');?>
"<?php }?> class="<?php if (isset($_smarty_tpl->tpl_vars['page_name']->value)){?><?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['page_name']->value, 'htmlall', 'UTF-8');?>
<?php }?><?php if ($_smarty_tpl->tpl_vars['hide_left_column']->value){?> hide-left-column<?php }?><?php if ($_smarty_tpl->tpl_vars['hide_right_column']->value){?> hide-right-column<?php }?><?php if ($_smarty_tpl->tpl_vars['content_only']->value){?> content_only<?php }?>">
    <?php if (!$_smarty_tpl->tpl_vars['content_only']->value){?>
	<div id="body_wrapper">
    <?php if (isset($_smarty_tpl->tpl_vars['sttheme']->value['boxstyle'])&&$_smarty_tpl->tpl_vars['sttheme']->value['boxstyle']==2){?><div id="page_wrapper"><?php }?>
		<?php if (isset($_smarty_tpl->tpl_vars['restricted_country_mode']->value)&&$_smarty_tpl->tpl_vars['restricted_country_mode']->value){?>
		<div id="restricted-country">
			<p><?php echo smartyTranslate(array('s'=>'You cannot place a new order from your country.'),$_smarty_tpl);?>
 <span class="bold"><?php echo $_smarty_tpl->tpl_vars['geolocation_country']->value;?>
</span></p>
		</div>
		<?php }?>

			<!-- Header -->
            <header id="page_header">
            <?php if (isset($_smarty_tpl->tpl_vars['HOOK_TOP_BAR']->value)&&$_smarty_tpl->tpl_vars['HOOK_TOP_BAR']->value){?>
            <section id="top_bar">
                <div class="container">
                <div class="row">
                    <div class="span12 clearfix">
                        <?php echo $_smarty_tpl->tpl_vars['HOOK_TOP_BAR']->value;?>

                    </div>
                </div>
                </div>
            </section>
            <?php }?>
            <?php if (isset($_smarty_tpl->tpl_vars['sttheme']->value['logo_position'])&&$_smarty_tpl->tpl_vars['sttheme']->value['logo_position']){?>
                <?php $_smarty_tpl->tpl_vars["logo_left_center"] = new Smarty_variable(1, null, 0);?>
            <?php }else{ ?>
                <?php $_smarty_tpl->tpl_vars["logo_left_center"] = new Smarty_variable(0, null, 0);?>
            <?php }?>
            <?php if (isset($_smarty_tpl->tpl_vars['HOOK_TOP_LEFT']->value)){?>
                <?php if ($_smarty_tpl->tpl_vars['HOOK_TOP_LEFT']->value){?><?php $_smarty_tpl->tpl_vars["logo_left_center"] = new Smarty_variable(2, null, 0);?><?php }?>
            <?php }else{ ?>
                <?php $_smarty_tpl->_capture_stack[0][] = array("top_left", null, null); ob_start(); ?>
                    <?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['hook'][0][0]->smartyHook(array('h'=>'displayTopLeft'),$_smarty_tpl);?>

                <?php list($_capture_buffer, $_capture_assign, $_capture_append) = array_pop($_smarty_tpl->_capture_stack[0]);
if (!empty($_capture_buffer)) {
 if (isset($_capture_assign)) $_smarty_tpl->assign($_capture_assign, ob_get_contents());
 if (isset( $_capture_append)) $_smarty_tpl->append( $_capture_append, ob_get_contents());
 Smarty::$_smarty_vars['capture'][$_capture_buffer]=ob_get_clean();
} else $_smarty_tpl->capture_error();?>
                <?php if (trim(Smarty::$_smarty_vars['capture']['top_left'])){?><?php $_smarty_tpl->tpl_vars["logo_left_center"] = new Smarty_variable(3, null, 0);?><?php }?>
            <?php }?>
			<section id="header" class="<?php if ($_smarty_tpl->tpl_vars['logo_left_center']->value){?> logo_center <?php }?>">
                <div class="wide_container">
                <div class="container">
                    <div class="row">
                        <?php if ($_smarty_tpl->tpl_vars['logo_left_center']->value){?>
        				<div id="header_left" class="span3 posi_rel">
                            <div id="header_left_inner" class="clearfix"><?php if ($_smarty_tpl->tpl_vars['logo_left_center']->value==2){?><?php echo $_smarty_tpl->tpl_vars['HOOK_TOP_LEFT']->value;?>
<?php }elseif($_smarty_tpl->tpl_vars['logo_left_center']->value==3){?><?php echo Smarty::$_smarty_vars['capture']['top_left'];?>
<?php }?></div>
                        </div>
                        <?php }?>
                        <div id="logo_wrapper" class="<?php if ($_smarty_tpl->tpl_vars['logo_left_center']->value){?> span6 <?php }else{ ?> span4 <?php }?>">
                        <div id="header_logo_inner">
        				<a id="header_logo" href="<?php echo $_smarty_tpl->tpl_vars['base_dir']->value;?>
" title="<?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['shop_name']->value, 'htmlall', 'UTF-8');?>
">
        					<img class="logo" src="<?php echo $_smarty_tpl->tpl_vars['logo_url']->value;?>
" alt="<?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['shop_name']->value, 'htmlall', 'UTF-8');?>
" <?php if ($_smarty_tpl->tpl_vars['logo_image_width']->value){?>width="<?php echo $_smarty_tpl->tpl_vars['logo_image_width']->value;?>
"<?php }?> <?php if ($_smarty_tpl->tpl_vars['logo_image_height']->value){?>height="<?php echo $_smarty_tpl->tpl_vars['logo_image_height']->value;?>
" <?php }?> />
        				</a>
                        </div>
                        </div>
        				<div id="header_right" class="<?php if ($_smarty_tpl->tpl_vars['logo_left_center']->value){?> span3 <?php }else{ ?> span8 <?php }?> posi_rel">
                            <div id="header_right_inner" class="clearfix"><?php echo $_smarty_tpl->tpl_vars['HOOK_TOP']->value;?>
</div>
                        </div>
                    </div>
                </div>
                </div>
			</section>
            <?php if (isset($_smarty_tpl->tpl_vars['HOOK_TOP_SECONDARY']->value)&&$_smarty_tpl->tpl_vars['HOOK_TOP_SECONDARY']->value){?>
            <section id="top_extra">
                <?php echo $_smarty_tpl->tpl_vars['HOOK_TOP_SECONDARY']->value;?>

            </section>
            <?php }?>
            </header>
            
            <div id="main_content_area">
            <!-- Main slideshow -->
            <?php if ($_smarty_tpl->tpl_vars['page_name']->value=='index'){?>
            <?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['hook'][0][0]->smartyHook(array('h'=>'displayAnywhere','function'=>"displayMainSlide",'mod'=>'stcameraslideshow','caller'=>'stcameraslideshow'),$_smarty_tpl);?>

            <?php }?>
            <?php if ($_smarty_tpl->tpl_vars['page_name']->value=='module-stblog-default'){?>
            <?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['hook'][0][0]->smartyHook(array('h'=>'displayAnywhere','function'=>"displayBlogMainSlide",'mod'=>'stcameraslideshow','caller'=>'stcameraslideshow'),$_smarty_tpl);?>

            <?php }?>
			<!--/ Main slideshow -->
            <!-- Breadcrumb -->         
            <?php if ($_smarty_tpl->tpl_vars['page_name']->value!='index'&&$_smarty_tpl->tpl_vars['page_name']->value!='pagenotfound'&&$_smarty_tpl->tpl_vars['page_name']->value!='module-stblog-default'){?>
            <div id="breadcrumb_wrapper" class="<?php if (isset($_smarty_tpl->tpl_vars['sttheme']->value['body_has_background'])&&$_smarty_tpl->tpl_vars['sttheme']->value['body_has_background']){?> wide_container <?php }?>"><div class="container"><div class="row">
                <div class="span12">
                <?php echo $_smarty_tpl->getSubTemplate (((string)$_smarty_tpl->tpl_vars['tpl_dir']->value)."./breadcrumb.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

                </div>
            </div></div></div>
            <?php }?>
			<!--/ Breadcrumb -->
            <div class="wide_container">
			<div id="columns" class="container">
                <div class="row">
                
				<!-- Left -->
                <?php if (!$_smarty_tpl->tpl_vars['st_hide_left_column']->value){?>
				<div id="left_column" class="span3">
					<?php echo $_smarty_tpl->tpl_vars['HOOK_LEFT_COLUMN']->value;?>

				</div>
                <?php }?>
				<!--/ Left -->
                
				<!-- Center -->
				<div id="center_column" class="<?php if (!$_smarty_tpl->tpl_vars['st_hide_left_column']->value&&!$_smarty_tpl->tpl_vars['st_hide_right_column']->value){?>span6<?php }elseif(!$_smarty_tpl->tpl_vars['st_hide_left_column']->value||!$_smarty_tpl->tpl_vars['st_hide_right_column']->value){?>span9<?php }else{ ?>span12<?php }?>">
	<?php }?><?php }} ?>