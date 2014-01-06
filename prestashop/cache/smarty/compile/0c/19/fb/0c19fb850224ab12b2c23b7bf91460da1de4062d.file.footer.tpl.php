<?php /* Smarty version Smarty-3.1.14, created on 2014-01-06 20:11:31
         compiled from "D:\wamp\www\1561\prestashop\themes\default\footer.tpl" */ ?>
<?php /*%%SmartyHeaderCode:911852cb0df3b7fc70-12150278%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '0c19fb850224ab12b2c23b7bf91460da1de4062d' => 
    array (
      0 => 'D:\\wamp\\www\\1561\\prestashop\\themes\\default\\footer.tpl',
      1 => 1384783796,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '911852cb0df3b7fc70-12150278',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'content_only' => 0,
    'HOOK_RIGHT_COLUMN' => 0,
    'HOOK_FOOTER' => 0,
    'PS_ALLOW_MOBILE_DEVICE' => 0,
    'link' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_52cb0df3bed0c3_44737397',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52cb0df3bed0c3_44737397')) {function content_52cb0df3bed0c3_44737397($_smarty_tpl) {?>

		<?php if (!$_smarty_tpl->tpl_vars['content_only']->value){?>
				</div>

<!-- Right -->
				<div id="right_column" class="column grid_2 omega">
					<?php echo $_smarty_tpl->tpl_vars['HOOK_RIGHT_COLUMN']->value;?>

				</div>
			</div>

<!-- Footer -->
			<div id="footer" class="grid_9 alpha omega clearfix">
				<?php echo $_smarty_tpl->tpl_vars['HOOK_FOOTER']->value;?>

				<?php if ($_smarty_tpl->tpl_vars['PS_ALLOW_MOBILE_DEVICE']->value){?>
					<p class="center clearBoth"><a href="<?php echo $_smarty_tpl->tpl_vars['link']->value->getPageLink('index',true);?>
?mobile_theme_ok"><?php echo smartyTranslate(array('s'=>'Browse the mobile site'),$_smarty_tpl);?>
</a></p>
				<?php }?>
			</div>
		</div>
	<?php }?>
	</body>
</html>
<?php }} ?>