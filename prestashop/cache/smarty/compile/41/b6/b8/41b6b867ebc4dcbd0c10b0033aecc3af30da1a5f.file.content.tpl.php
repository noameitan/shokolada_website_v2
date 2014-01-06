<?php /* Smarty version Smarty-3.1.14, created on 2014-01-06 20:12:17
         compiled from "D:\wamp\www\1561\prestashop\admin\themes\default\template\controllers\emails\content.tpl" */ ?>
<?php /*%%SmartyHeaderCode:1821552cb0e215b8fe7-32713000%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '41b6b867ebc4dcbd0c10b0033aecc3af30da1a5f' => 
    array (
      0 => 'D:\\wamp\\www\\1561\\prestashop\\admin\\themes\\default\\template\\controllers\\emails\\content.tpl',
      1 => 1384783796,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1821552cb0e215b8fe7-32713000',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'token' => 0,
    'content' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_52cb0e2160c4b5_39320919',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52cb0e2160c4b5_39320919')) {function content_52cb0e2160c4b5_39320919($_smarty_tpl) {?>

<script type="text/javascript">
	var textMsg = "<?php echo smartyTranslate(array('s'=>'This is a test message. Your server is now configured to send email.','js'=>1),$_smarty_tpl);?>
";
	var textSubject = "<?php echo smartyTranslate(array('s'=>'Test message -- Prestashop','js'=>1),$_smarty_tpl);?>
";
	var textSendOk = "<?php echo smartyTranslate(array('s'=>'A test email has been sent to the email address you provided.','js'=>1),$_smarty_tpl);?>
";
	var textSendError= "<?php echo smartyTranslate(array('s'=>'Error: Please check your configuration','js'=>1),$_smarty_tpl);?>
";
	var token_mail = '<?php echo $_smarty_tpl->tpl_vars['token']->value;?>
';
	var errorMail = "<?php echo smartyTranslate(array('s'=>'This email address is not valid','js'=>1),$_smarty_tpl);?>
";
	$(document).ready(function() {
		if ($('input[name=PS_MAIL_METHOD]:checked').val() == 2)
			$('#smtp').show();
	});
</script>
<script type="text/javascript" src="../js/sendMailTest.js"></script>

<?php echo $_smarty_tpl->tpl_vars['content']->value;?>



<?php }} ?>