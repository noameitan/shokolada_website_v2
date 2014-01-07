<?php /* Smarty version Smarty-3.1.14, created on 2014-01-07 16:01:24
         compiled from "D:\wamp\www\1561\prestashop\modules\blockuserinfo_mod\views\templates\hook\blockuserinfo.tpl" */ ?>
<?php /*%%SmartyHeaderCode:950152cc08b4126528-25019459%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '69889f715ca8f357a2da91ac81d7e23b16fcaf65' => 
    array (
      0 => 'D:\\wamp\\www\\1561\\prestashop\\modules\\blockuserinfo_mod\\views\\templates\\hook\\blockuserinfo.tpl',
      1 => 1389102169,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '950152cc08b4126528-25019459',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'PS_CATALOG_MODE' => 0,
    'welcome' => 0,
    'welcome_link' => 0,
    'logged' => 0,
    'link' => 0,
    'cookie' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_52cc08b42942b3_90082555',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52cc08b42942b3_90082555')) {function content_52cc08b42942b3_90082555($_smarty_tpl) {?>

<!-- Block user information module HEADER -->
<div id="header_user_info" class="clearfix <?php if ($_smarty_tpl->tpl_vars['PS_CATALOG_MODE']->value){?> header_user_catalog <?php }?>">
    <?php if ($_smarty_tpl->tpl_vars['welcome']->value){?><?php if ($_smarty_tpl->tpl_vars['welcome_link']->value){?><a href="<?php echo $_smarty_tpl->tpl_vars['welcome_link']->value;?>
" class="welcome" rel="nofollow"><?php }else{ ?><span class="welcome"><?php }?><?php echo $_smarty_tpl->tpl_vars['welcome']->value;?>
<?php if ($_smarty_tpl->tpl_vars['welcome_link']->value){?></a><?php }else{ ?></span><?php }?><?php }?>
	<?php if ($_smarty_tpl->tpl_vars['logged']->value){?>
		<a href="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['link']->value->getPageLink('my-account',true), ENT_QUOTES, 'UTF-8', true);?>
" title="<?php echo smartyTranslate(array('s'=>'View my customer account','mod'=>'blockuserinfo_mod'),$_smarty_tpl);?>
" class="account" rel="nofollow"><?php echo $_smarty_tpl->tpl_vars['cookie']->value->customer_firstname;?>
 <?php echo $_smarty_tpl->tpl_vars['cookie']->value->customer_lastname;?>
</a>
        <a href="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['link']->value->getPageLink('my-account',true), ENT_QUOTES, 'UTF-8', true);?>
" title="<?php echo smartyTranslate(array('s'=>'View my customer account','mod'=>'blockuserinfo_mod'),$_smarty_tpl);?>
" class="my_account_link" rel="nofollow"><?php echo smartyTranslate(array('s'=>'My Account','mod'=>'blockuserinfo_mod'),$_smarty_tpl);?>
</a>
		<a href="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['link']->value->getPageLink('index',true,null,"mylogout"), ENT_QUOTES, 'UTF-8', true);?>
" title="<?php echo smartyTranslate(array('s'=>'Log me out','mod'=>'blockuserinfo_mod'),$_smarty_tpl);?>
" class="logout" rel="nofollow"><?php echo smartyTranslate(array('s'=>'Log out','mod'=>'blockuserinfo_mod'),$_smarty_tpl);?>
</a>
	<?php }else{ ?>
		<a href="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['link']->value->getPageLink('my-account',true), ENT_QUOTES, 'UTF-8', true);?>
" title="<?php echo smartyTranslate(array('s'=>'Login to your customer account','mod'=>'blockuserinfo_mod'),$_smarty_tpl);?>
" class="login" rel="nofollow"><?php echo smartyTranslate(array('s'=>'Login','mod'=>'blockuserinfo_mod'),$_smarty_tpl);?>
</a>
		<a href="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['link']->value->getPageLink('my-account',true), ENT_QUOTES, 'UTF-8', true);?>
" title="<?php echo smartyTranslate(array('s'=>'Login to your customer account','mod'=>'blockuserinfo_mod'),$_smarty_tpl);?>
" class="sing_up" rel="nofollow"><?php echo smartyTranslate(array('s'=>'Sign Up','mod'=>'blockuserinfo_mod'),$_smarty_tpl);?>
</a>
	<?php }?>  
</div>
<!-- /Block user information module HEADER -->
<?php }} ?>