<?php /* Smarty version Smarty-3.1.14, created on 2014-01-07 16:42:23
         compiled from "D:\wamp\www\1561\prestashop\modules\steasytabs\views\templates\hook\tab.tpl" */ ?>
<?php /*%%SmartyHeaderCode:1879152cc124f67be66-71054167%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '11d318fbe4c4823fffc497dd6fef4113c404392b' => 
    array (
      0 => 'D:\\wamp\\www\\1561\\prestashop\\modules\\steasytabs\\views\\templates\\hook\\tab.tpl',
      1 => 1389102210,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1879152cc124f67be66-71054167',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'tabsHeader' => 0,
    'th' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_52cc124f6c9dc0_51713453',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52cc124f6c9dc0_51713453')) {function content_52cc124f6c9dc0_51713453($_smarty_tpl) {?>
<?php  $_smarty_tpl->tpl_vars['th'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['th']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['tabsHeader']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['th']->key => $_smarty_tpl->tpl_vars['th']->value){
$_smarty_tpl->tpl_vars['th']->_loop = true;
?>
<li><a href="#idTab31<?php echo $_smarty_tpl->tpl_vars['th']->value['id_st_easy_tabs'];?>
" class="idTabHrefShort"><?php if ($_smarty_tpl->tpl_vars['th']->value['title']){?><?php echo $_smarty_tpl->tpl_vars['th']->value['title'];?>
<?php }else{ ?><?php echo smartyTranslate(array('s'=>'Custom tab','mod'=>'steasytabs'),$_smarty_tpl);?>
<?php }?></a></li>
<?php } ?><?php }} ?>