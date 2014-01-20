<?php /* Smarty version Smarty-3.1.14, created on 2014-01-20 16:53:45
         compiled from "D:\wamp\www\1561\prestashop\modules\blockcurrencies_mod\views\templates\hook\blockcurrencies.tpl" */ ?>
<?php /*%%SmartyHeaderCode:2631552dd3879a79283-65325931%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '7b535cca2d43946d383732afc298369e6ba1e1d6' => 
    array (
      0 => 'D:\\wamp\\www\\1561\\prestashop\\modules\\blockcurrencies_mod\\views\\templates\\hook\\blockcurrencies.tpl',
      1 => 1389102168,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '2631552dd3879a79283-65325931',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'blockcurrencies_sign' => 0,
    'blockcurrencies_iso_code' => 0,
    'currencies' => 0,
    'request_uri' => 0,
    'cookie' => 0,
    'f_currency' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_52dd3879af70f5_63393224',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52dd3879af70f5_63393224')) {function content_52dd3879af70f5_63393224($_smarty_tpl) {?>

<!-- Block currencies module -->

<dl id="currencies_block_top" class="fl dropdown_wrap">
    <dt class="dropdown_tri">
        <div class="dropdown_tri_inner">
        <?php echo $_smarty_tpl->tpl_vars['blockcurrencies_sign']->value;?>
&nbsp;<?php echo $_smarty_tpl->tpl_vars['blockcurrencies_iso_code']->value;?>
<?php if (count($_smarty_tpl->tpl_vars['currencies']->value)>1){?><b></b><?php }?>
        </div>
    </dt>
	<dd class="dropdown_list">
    <form id="setCurrency" action="<?php echo $_smarty_tpl->tpl_vars['request_uri']->value;?>
" method="post">
        <ul>
			<?php  $_smarty_tpl->tpl_vars['f_currency'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['f_currency']->_loop = false;
 $_smarty_tpl->tpl_vars['k'] = new Smarty_Variable;
 $_from = $_smarty_tpl->tpl_vars['currencies']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['f_currency']->key => $_smarty_tpl->tpl_vars['f_currency']->value){
$_smarty_tpl->tpl_vars['f_currency']->_loop = true;
 $_smarty_tpl->tpl_vars['k']->value = $_smarty_tpl->tpl_vars['f_currency']->key;
?>
            <?php if ($_smarty_tpl->tpl_vars['cookie']->value->id_currency!=$_smarty_tpl->tpl_vars['f_currency']->value['id_currency']){?>
				<li>
					<a href="javascript:setCurrency(<?php echo $_smarty_tpl->tpl_vars['f_currency']->value['id_currency'];?>
);" title="<?php echo $_smarty_tpl->tpl_vars['f_currency']->value['name'];?>
" rel="nofollow"><?php echo $_smarty_tpl->tpl_vars['f_currency']->value['sign'];?>
&nbsp;<?php echo $_smarty_tpl->tpl_vars['f_currency']->value['iso_code'];?>
</a>
				</li>
            <?php }?>
			<?php } ?>
		</ul>
		<input type="hidden" name="id_currency" id="id_currency" value=""/>
		<input type="hidden" name="SubmitCurrency" value="" />
	</form>
    </dd>
</dl>
<!-- /Block currencies module -->
<?php }} ?>