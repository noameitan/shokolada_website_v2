<?php /* Smarty version Smarty-3.1.14, created on 2014-01-06 20:12:35
         compiled from "D:\wamp\www\1561\prestashop\admin\themes\default\template\helpers\list\list_action_details.tpl" */ ?>
<?php /*%%SmartyHeaderCode:2306252cb0e337d5394-05695005%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '3a023b4b0863aafd87751805e0b576c283c3027c' => 
    array (
      0 => 'D:\\wamp\\www\\1561\\prestashop\\admin\\themes\\default\\template\\helpers\\list\\list_action_details.tpl',
      1 => 1384783796,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '2306252cb0e337d5394-05695005',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'params' => 0,
    'id' => 0,
    'action' => 0,
    'controller' => 0,
    'token' => 0,
    'json_params' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_52cb0e338346c8_00301852',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52cb0e338346c8_00301852')) {function content_52cb0e338346c8_00301852($_smarty_tpl) {?>

<a class="pointer" id="details_<?php echo $_smarty_tpl->tpl_vars['params']->value['action'];?>
_<?php echo $_smarty_tpl->tpl_vars['id']->value;?>
" title="<?php echo $_smarty_tpl->tpl_vars['action']->value;?>
" onclick="display_action_details('<?php echo $_smarty_tpl->tpl_vars['id']->value;?>
', '<?php echo $_smarty_tpl->tpl_vars['controller']->value;?>
', '<?php echo $_smarty_tpl->tpl_vars['token']->value;?>
', '<?php echo $_smarty_tpl->tpl_vars['params']->value['action'];?>
', <?php echo htmlspecialchars($_smarty_tpl->tpl_vars['json_params']->value, ENT_QUOTES, 'UTF-8', true);?>
); return false">
	<img src="../img/admin/more.png" alt="<?php echo $_smarty_tpl->tpl_vars['action']->value;?>
" />
</a>
<?php }} ?>