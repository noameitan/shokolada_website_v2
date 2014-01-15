<?php /* Smarty version Smarty-3.1.14, created on 2014-01-15 18:24:33
         compiled from "D:\wamp\www\1561\prestashop\themes\transformer\index.tpl" */ ?>
<?php /*%%SmartyHeaderCode:1395852d6b64187c5a4-53678344%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '18685a0777ce492102acd8bda43f2a1dfbe08e4f' => 
    array (
      0 => 'D:\\wamp\\www\\1561\\prestashop\\themes\\transformer\\index.tpl',
      1 => 1389102133,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1395852d6b64187c5a4-53678344',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'HOOK_HOME_TOP' => 0,
    'HOOK_HOME' => 0,
    'HOOK_HOME_SECONDARY_LEFT' => 0,
    'HOOK_HOME_SECONDARY_RIGHT' => 0,
    'HOOK_LEFT_COLUMN' => 0,
    'HOOK_RIGHT_COLUMN' => 0,
    'HOOK_HOME_BOTTOM' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_52d6b64192fa28_09514150',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52d6b64192fa28_09514150')) {function content_52d6b64192fa28_09514150($_smarty_tpl) {?>

<?php echo $_smarty_tpl->tpl_vars['HOOK_HOME_TOP']->value;?>

<?php echo $_smarty_tpl->tpl_vars['HOOK_HOME']->value;?>

<?php if ($_smarty_tpl->tpl_vars['HOOK_HOME_SECONDARY_LEFT']->value||(isset($_smarty_tpl->tpl_vars['HOOK_HOME_SECONDARY_RIGHT']->value)&&$_smarty_tpl->tpl_vars['HOOK_HOME_SECONDARY_RIGHT']->value)){?>
<div class="row">
    <div id="home_secondary_left" class="<?php if (!$_smarty_tpl->tpl_vars['HOOK_LEFT_COLUMN']->value&&!$_smarty_tpl->tpl_vars['HOOK_RIGHT_COLUMN']->value&&(!isset($_smarty_tpl->tpl_vars['HOOK_HOME_SECONDARY_RIGHT']->value)||!$_smarty_tpl->tpl_vars['HOOK_HOME_SECONDARY_RIGHT']->value)){?> span12 <?php }else{ ?> span9 <?php }?>">
        <?php echo $_smarty_tpl->tpl_vars['HOOK_HOME_SECONDARY_LEFT']->value;?>

    </div>
    <?php if (!$_smarty_tpl->tpl_vars['HOOK_LEFT_COLUMN']->value&&!$_smarty_tpl->tpl_vars['HOOK_RIGHT_COLUMN']->value&&(isset($_smarty_tpl->tpl_vars['HOOK_HOME_SECONDARY_RIGHT']->value)&&$_smarty_tpl->tpl_vars['HOOK_HOME_SECONDARY_RIGHT']->value)){?>
    <div id="home_secondary_right" class="span3 visible-desktop">
        <?php echo $_smarty_tpl->tpl_vars['HOOK_HOME_SECONDARY_RIGHT']->value;?>

    </div>
    <?php }?>
</div>
<?php }?>
<?php echo $_smarty_tpl->tpl_vars['HOOK_HOME_BOTTOM']->value;?>
<?php }} ?>